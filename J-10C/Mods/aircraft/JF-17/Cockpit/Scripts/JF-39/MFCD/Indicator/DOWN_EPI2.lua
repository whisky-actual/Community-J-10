dofile(LockOn_Options.script_path .. "MFCD/MFCDs_defs.lua")

local page_root = create_page_root()

local EPI2_LEVEL = PAGE_LEVEL_DOWN_EPI2 + 2

--活动部分
local MFCD_TEX_IND1   = "mfcd_tex_ind1" --MakeMaterial(path_fuel_dds2, MFCD_COLOR_DEF)
local MFCD_TEX_IND1_W = "mfcd_tex_ind1_w" --MakeMaterial(path_fuel_dds2, MFCD_COLOR_DEF)

local TEX_SIZE_X = 2048
local TEX_SIZE_Y = 2048

local BRK_L_CX = -786.666/1000
local BRK_L_CY = 56.667/1000
local BRK_R_CX = -180/1000
local BRK_R_CY = 56.667/1000

local HYD_1_CX = 180/1000
local HYD_1_CY = 56.667/1000
local HYD_2_CX = 786.666/1000
local HYD_2_CY = 56.667/1000

local HW = 620/2000
local HH = HW
local arc_mask_y_factor = 1.3
local arc_bar_y_factor  = 1.1

local frame_bar_vert = {{ HW, HW},
                        { HW,-HW},
                        {-HW,-HW},
                        {-HW, HW}}

local frame_needle_vert = {{ 292/276*460/2000,  88.333/2000},
                           { 292/276*460/2000, -88.333/2000},
                           {-292/276*460/2000, -88.333/2000},
                           {-292/276*460/2000,  88.333/2000},}
                        
local delta_l_mask = {{ 0.0, 0.0},
                      { HW, HH * arc_mask_y_factor},
                      { HW,-HH * arc_mask_y_factor},}

local delta_r_mask = {{ 0.0, 0.0},
                      {-HW, HH * arc_mask_y_factor},
                      {-HW,-HH * arc_mask_y_factor},}

--- 文字部分
local textsDown = {
    --OSB
    {-- NORM
        init_pos = {MFCD_FONT_L_HORI_X, MFCD_FONT_LR6_Y}, value = "NORM", align = "LeftCenter", stringdefs = MFCD_STRINGDEFS_DEF_X08,
    },
    --[[{-- SMS
        init_pos = {MFCD_FONT_UD4_X, MFCD_FONT_D_Y}, value = "SMS",  align = "LeftCenter", stringdefs = MFCD_STRINGDEFS_DEF_X08,
    },]]
    --[[{-- SET
        init_pos = {MFCD_FONT_L_HORI_X, MFCD_FONT_LR8_Y}, value = "SET",  align = "LeftCenter", stringdefs = MFCD_STRINGDEFS_DEF_X08,
    },]]

    {-- EPI1
        init_pos = { MFCD_FONT_R_HORI_X, MFCD_FONT_LR6_Y}, value = "EPI2", align = "RightCenter",stringdefs = MFCD_STRINGDEFS_DEF_X08,
    },
    {-- RTN
        init_pos = { MFCD_FONT_R_HORI_X, MFCD_FONT_LR8_Y}, value = "RTN",  align = "RightCenter",stringdefs = MFCD_STRINGDEFS_DEF_X08,
    },
    
    ---- PAGE
    {--VOLT
       init_pos = {-478.333/1000, -280/1000}, value = "VOLT 28.0 V", stringdefs = MFCD_STRINGDEFS_DEF,
    },
    {--CP
       init_pos = { 478.333/1000, -280/1000}, value = "CP 2.0 PSI", stringdefs = MFCD_STRINGDEFS_DEF,
    },
    {--L-BRK-R
       init_pos = {-486.666/1000,  360/1000}, value = "L-BRK-R", stringdefs = MFCD_STRINGDEFS_DEF,
    },
    {--1-HYD-2
       init_pos = { 486.666/1000,  360/1000}, value = "1-HYD-2", stringdefs = MFCD_STRINGDEFS_DEF,
    },
    
    --BRK-L
    {--值
       init_pos = {-786.666/1000, 56.667/1000}, value = "1800", stringdefs = MFCD_STRINGDEFS_DEF, ctrls = {{"EPI2_BRK_L_TEXT"},},
    },
    
    --BRK-R
    {--值
       init_pos = {-180/1000, 56.667/1000}, value = "1800", stringdefs = MFCD_STRINGDEFS_DEF, ctrls = {{"EPI2_BRK_R_TEXT"},},
    },
    
    --HYD1
    {--值
       init_pos = { 180/1000, 56.667/1000}, value = "1800", stringdefs = MFCD_STRINGDEFS_DEF, ctrls = {{"EPI2_H1_TEXT"},},
    },
    
    --HYD2
    {--值
       init_pos = { 786.666/1000, 56.667/1000}, value = "1800", stringdefs = MFCD_STRINGDEFS_DEF, ctrls = {{"EPI2_H2_TEXT"},},
    },
    
}

for i=1, #(textsDown) do
    local text_strpoly          = CreateElement "ceStringPoly"
    text_strpoly.material       = MFCD_FONT_DEF
    text_strpoly.stringdefs     = MFCD_STRINGDEFS_DEF_X08
    text_strpoly.init_pos       = textsDown[i].init_pos or {0.0, 0.0, 0.0}
    text_strpoly.alignment      = "CenterCenter"
    
    if textsDown[i].stringdefs then
        text_strpoly.stringdefs = textsDown[i].stringdefs
    end   
    if textsDown[i].align then
        text_strpoly.alignment = textsDown[i].align
    end    
    if textsDown[i].formats then
        text_strpoly.formats = textsDown[i].formats
    end
    if textsDown[i].params then
        text_strpoly.element_params = textsDown[i].params
    end
    if textsDown[i].ctrls then
        text_strpoly.controllers = textsDown[i].ctrls
    end
    if textsDown[i].value then
        text_strpoly.value = textsDown[i].value
    end
    AddToLOWER(text_strpoly)
    --AddElementObject(text_strpoly)
    text_strpoly = nil
end


---------- L_BRK_R 贴图部分
---- BRK_L中心
local BRK_L_Center               = CreateElement "ceSimple"
BRK_L_Center.name                = "EPI2_BRK_L_Center"
BRK_L_Center.init_pos            = {BRK_L_CX , BRK_L_CY}
BRK_L_Center.h_clip_relation     = h_clip_relations.COMPARE
BRK_L_Center.level               = EPI2_LEVEL
BRK_L_Center.isdraw              = true
BRK_L_Center.isvisible           = false
AddToLOWER(BRK_L_Center)

-- BRK_L frame
local BRK_L_Bar_Frame           = CreateElement "ceTexPoly"
BRK_L_Bar_Frame.vertices        = frame_bar_vert
BRK_L_Bar_Frame.indices         = DEF_BOX_INDICES
BRK_L_Bar_Frame.parent_element  = "EPI2_BRK_L_Center"

BRK_L_Bar_Frame.material        = MFCD_TEX_IND1_W
BRK_L_Bar_Frame.tex_coords      = MFCD_tex_coord(1676, 324, 372, 372, TEX_SIZE_X, TEX_SIZE_Y)

AddToLOWER(BRK_L_Bar_Frame)

-- BRK_L Mask
local BRK_L_bar_mask           = CreateElement "ceMeshPoly"
BRK_L_bar_mask.material        = MFCD_MATERIAL_W_BASE
BRK_L_bar_mask.vertices        = delta_l_mask
BRK_L_bar_mask.indices         = {0, 1, 2}
BRK_L_bar_mask.init_pos        = {0, 0, 0}
BRK_L_bar_mask.primitivetype   = "triangles"
BRK_L_bar_mask.parent_element  = "EPI2_BRK_L_Center"
BRK_L_bar_mask.h_clip_relation = h_clip_relations.REWRITE_LEVEL -- this element will sit on level(.level + 1)
BRK_L_bar_mask.level           = EPI2_LEVEL + 2
BRK_L_bar_mask.isvisible       = false -- IMPORTANT: do not show this MeshPoly, used as mask poly
BRK_L_bar_mask.isdraw          = true
AddToLOWER(BRK_L_bar_mask)

-- BRK_L指针和转盘
local BRK_L_Bar           = CreateElement "ceTexPoly"
BRK_L_Bar.material        = MFCD_TEX_IND1
BRK_L_Bar.tex_coords      = MFCD_tex_coord(1676, 1440, 372, 372, TEX_SIZE_X, TEX_SIZE_Y)
BRK_L_Bar.vertices        = frame_bar_vert
BRK_L_Bar.indices         = DEF_BOX_INDICES
BRK_L_Bar.init_pos        = {0, 0, 0}
BRK_L_Bar.init_rot        = {0, 0, 0}
BRK_L_Bar.parent_element  = "EPI2_BRK_L_Center"
BRK_L_Bar.h_clip_relation = h_clip_relations.COMPARE
BRK_L_Bar.level           = EPI2_LEVEL + 2
BRK_L_Bar.controllers     = {{"EPI2_BRK_L", arc_bar_y_factor},}
AddToLOWER(BRK_L_Bar)

local BRK_L_Needle           = CreateElement "ceTexPoly"
BRK_L_Needle.material        = MFCD_TEX_IND1
BRK_L_Needle.tex_coords      = MFCD_tex_coord(1264, 1649, 292, 53, TEX_SIZE_X, TEX_SIZE_Y)
BRK_L_Needle.vertices        = frame_needle_vert
BRK_L_Needle.indices         = DEF_BOX_INDICES
BRK_L_Needle.init_pos        = {0, 0, 0}
BRK_L_Needle.init_rot        = {232, 0, 0}
BRK_L_Needle.parent_element  = "EPI2_BRK_L_Center"
BRK_L_Needle.h_clip_relation = h_clip_relations.COMPARE
BRK_L_Needle.level           = EPI2_LEVEL + 2
BRK_L_Needle.controllers     = {{"EPI2_BRK_L", arc_bar_y_factor},}
AddToLOWER(BRK_L_Needle)

---- BRK_R中心
local BRK_R_Center               = CreateElement "ceSimple"
BRK_R_Center.name                = "EPI2_BRK_R_Center"
BRK_R_Center.init_pos            = {BRK_R_CX , BRK_R_CY}
BRK_R_Center.h_clip_relation     = h_clip_relations.COMPARE
BRK_R_Center.level               = EPI2_LEVEL
BRK_R_Center.isdraw              = true
BRK_R_Center.isvisible           = false
AddToLOWER(BRK_R_Center)

-- BRK_R frame
local BRK_R_Bar_Frame           = CreateElement "ceTexPoly"
BRK_R_Bar_Frame.vertices        = frame_bar_vert
BRK_R_Bar_Frame.indices         = DEF_BOX_INDICES
BRK_R_Bar_Frame.parent_element  = "EPI2_BRK_R_Center"

BRK_R_Bar_Frame.material        = MFCD_TEX_IND1_W
BRK_R_Bar_Frame.tex_coords      = MFCD_tex_coord(1676, 696, 372, 372, TEX_SIZE_X, TEX_SIZE_Y)

AddToLOWER(BRK_R_Bar_Frame)


-- BRK_R Mask
local BRK_R_bar_mask           = CreateElement "ceMeshPoly"
BRK_R_bar_mask.material        = MFCD_MATERIAL_W_BASE
BRK_R_bar_mask.vertices        = delta_r_mask
BRK_R_bar_mask.indices         = {0, 1, 2}
BRK_R_bar_mask.init_pos        = {0, 0, 0}
BRK_R_bar_mask.primitivetype   = "triangles"
BRK_R_bar_mask.parent_element  = "EPI2_BRK_R_Center"
BRK_R_bar_mask.h_clip_relation = h_clip_relations.REWRITE_LEVEL -- this element will sit on level(.level + 1)
BRK_R_bar_mask.level           = EPI2_LEVEL + 2
BRK_R_bar_mask.isvisible       = false -- IMPORTANT: do not show this MeshPoly, used as mask poly
BRK_R_bar_mask.isdraw          = true
AddToLOWER(BRK_R_bar_mask)


-- BRK_R指针和转盘
local BRK_R_Bar           = CreateElement "ceTexPoly"
BRK_R_Bar.material        = MFCD_TEX_IND1
BRK_R_Bar.tex_coords      = MFCD_tex_coord(1676, 1068, 372, 372, TEX_SIZE_X, TEX_SIZE_Y)
BRK_R_Bar.vertices        = frame_bar_vert
BRK_R_Bar.indices         = DEF_BOX_INDICES
BRK_R_Bar.init_pos        = {0, 0, 0}
BRK_R_Bar.init_rot        = {0, 0, 0}
BRK_R_Bar.parent_element  = "EPI2_BRK_R_Center"
BRK_R_Bar.h_clip_relation = h_clip_relations.COMPARE
BRK_R_Bar.level           = EPI2_LEVEL + 2
BRK_R_Bar.controllers     = {{"EPI2_BRK_R", arc_bar_y_factor},}
AddToLOWER(BRK_R_Bar)

local BRK_R_Needle           = CreateElement "ceTexPoly"
BRK_R_Needle.material        = MFCD_TEX_IND1
BRK_R_Needle.tex_coords      = MFCD_tex_coord(1264, 1649, 292, 53, TEX_SIZE_X, TEX_SIZE_Y)
BRK_R_Needle.vertices        = frame_needle_vert
BRK_R_Needle.indices         = DEF_BOX_INDICES
BRK_R_Needle.init_pos        = {0, 0, 0}
BRK_R_Needle.init_rot        = {-52, 0, 0}
BRK_R_Needle.parent_element  = "EPI2_BRK_R_Center"
BRK_R_Needle.h_clip_relation = h_clip_relations.COMPARE
BRK_R_Needle.level           = EPI2_LEVEL + 2
BRK_R_Needle.controllers     = {{"EPI2_BRK_R", arc_bar_y_factor},}
AddToLOWER(BRK_R_Needle)

---------- 1_HYD_2 贴图部分
---- HYD_1中心
local HYD_1_Center               = CreateElement "ceSimple"
HYD_1_Center.name                = "EPI2_HYD_1_Center"
HYD_1_Center.h_clip_relation     = h_clip_relations.COMPARE
HYD_1_Center.level               = EPI2_LEVEL
HYD_1_Center.isdraw              = true
HYD_1_Center.isvisible           = false
HYD_1_Center.init_pos            = {HYD_1_CX , HYD_1_CY}
AddToLOWER(HYD_1_Center)

-- HYD_1转盘弧形框
local HYD_1_Bar_Frame           = CreateElement "ceTexPoly"
HYD_1_Bar_Frame.vertices        = frame_bar_vert
HYD_1_Bar_Frame.indices         = DEF_BOX_INDICES
HYD_1_Bar_Frame.parent_element  = "EPI2_HYD_1_Center"

HYD_1_Bar_Frame.material        = MFCD_TEX_IND1_W
HYD_1_Bar_Frame.tex_coords      = MFCD_tex_coord(1676, 324, 372, 372, TEX_SIZE_X, TEX_SIZE_Y)

AddToLOWER(HYD_1_Bar_Frame)

-- HYD_1转盘Mask
local HYD_1_bar_mask           = CreateElement "ceMeshPoly"
HYD_1_bar_mask.material        = MFCD_MATERIAL_W_BASE
HYD_1_bar_mask.vertices        = delta_l_mask
HYD_1_bar_mask.indices         = {0, 1, 2}
HYD_1_bar_mask.init_pos        = {0, 0, 0}
HYD_1_bar_mask.primitivetype   = "triangles"
HYD_1_bar_mask.parent_element  = "EPI2_HYD_1_Center"
HYD_1_bar_mask.h_clip_relation = h_clip_relations.REWRITE_LEVEL -- this element will sit on level(.level + 1)
HYD_1_bar_mask.level           = EPI2_LEVEL + 2
HYD_1_bar_mask.isvisible       = false -- IMPORTANT: do not show this MeshPoly, used as mask poly
HYD_1_bar_mask.isdraw          = true
AddToLOWER(HYD_1_bar_mask)

-- BRK_L指针和转盘
local HYD_1_Bar           = CreateElement "ceTexPoly"
HYD_1_Bar.material        = MFCD_TEX_IND1
HYD_1_Bar.tex_coords      = MFCD_tex_coord(1676, 1440, 372, 372, TEX_SIZE_X, TEX_SIZE_Y)
HYD_1_Bar.vertices        = frame_bar_vert
HYD_1_Bar.indices         = DEF_BOX_INDICES
HYD_1_Bar.init_pos        = {0, 0, 0}
HYD_1_Bar.init_rot        = {0, 0, 0}
HYD_1_Bar.parent_element  = "EPI2_HYD_1_Center"
HYD_1_Bar.h_clip_relation = h_clip_relations.COMPARE
HYD_1_Bar.level           = EPI2_LEVEL + 2
HYD_1_Bar.controllers     = {{"EPI2_H1", arc_bar_y_factor},}
AddToLOWER(HYD_1_Bar)

local HYD_1_Needle           = CreateElement "ceTexPoly"
HYD_1_Needle.material        = MFCD_TEX_IND1
HYD_1_Needle.tex_coords      = MFCD_tex_coord(1264, 1649, 292, 53, TEX_SIZE_X, TEX_SIZE_Y)
HYD_1_Needle.vertices        = frame_needle_vert
HYD_1_Needle.indices         = DEF_BOX_INDICES
HYD_1_Needle.init_pos        = {0, 0, 0}
HYD_1_Needle.init_rot        = {232, 0, 0}
HYD_1_Needle.parent_element  = "EPI2_HYD_1_Center"
HYD_1_Needle.h_clip_relation = h_clip_relations.COMPARE
HYD_1_Needle.level           = EPI2_LEVEL + 2
HYD_1_Needle.controllers     = {{"EPI2_H1", arc_bar_y_factor},}
AddToLOWER(HYD_1_Needle)

---- HYD_2中心
local HYD_2_Center               = CreateElement "ceSimple"
HYD_2_Center.name                = "EPI2_HYD_2_Center"
HYD_2_Center.init_pos            = {HYD_2_CX , HYD_2_CY}
HYD_2_Center.h_clip_relation     = h_clip_relations.COMPARE
HYD_2_Center.level               = EPI2_LEVEL
HYD_2_Center.isdraw              = true
HYD_2_Center.isvisible           = false
AddToLOWER(HYD_2_Center)

-- HYD_2转盘弧形框
local HYD_2_Bar_Frame           = CreateElement "ceTexPoly"
HYD_2_Bar_Frame.vertices        = frame_bar_vert
HYD_2_Bar_Frame.indices         = DEF_BOX_INDICES
HYD_2_Bar_Frame.parent_element  = "EPI2_HYD_2_Center"

HYD_2_Bar_Frame.material        = MFCD_TEX_IND1_W
HYD_2_Bar_Frame.tex_coords      = MFCD_tex_coord(1676, 696, 372, 372, TEX_SIZE_X, TEX_SIZE_Y)

AddToLOWER(HYD_2_Bar_Frame)

-- HYD_2转盘Mask
local HYD_2_bar_mask           = CreateElement "ceMeshPoly"
HYD_2_bar_mask.material        = MFCD_MATERIAL_W_BASE
HYD_2_bar_mask.vertices        = delta_r_mask
HYD_2_bar_mask.indices         = {0, 1, 2}
HYD_2_bar_mask.init_pos        = {0, 0, 0}
HYD_2_bar_mask.primitivetype   = "triangles"
HYD_2_bar_mask.parent_element  = "EPI2_HYD_2_Center"
HYD_2_bar_mask.h_clip_relation = h_clip_relations.REWRITE_LEVEL -- this element will sit on level(.level + 1)
HYD_2_bar_mask.level           = EPI2_LEVEL + 2
HYD_2_bar_mask.isvisible       = false -- IMPORTANT: do not show this MeshPoly, used as mask poly
HYD_2_bar_mask.isdraw          = true
AddToLOWER(HYD_2_bar_mask)


-- HYD_2指针和转盘
local HYD_2_Bar           = CreateElement "ceTexPoly"
HYD_2_Bar.material        = MFCD_TEX_IND1
HYD_2_Bar.tex_coords      = MFCD_tex_coord(1676, 1068, 372, 372, TEX_SIZE_X, TEX_SIZE_Y)
HYD_2_Bar.vertices        = frame_bar_vert
HYD_2_Bar.indices         = DEF_BOX_INDICES
HYD_2_Bar.init_pos        = {0, 0, 0}
HYD_2_Bar.init_rot        = {0, 0, 0}
HYD_2_Bar.parent_element  = "EPI2_HYD_2_Center"
HYD_2_Bar.h_clip_relation = h_clip_relations.COMPARE
HYD_2_Bar.level           = EPI2_LEVEL + 2
HYD_2_Bar.controllers     = {{"EPI2_H2", arc_bar_y_factor},}
AddToLOWER(HYD_2_Bar)

local HYD_2_Needle           = CreateElement "ceTexPoly"
HYD_2_Needle.material        = MFCD_TEX_IND1
HYD_2_Needle.tex_coords      = MFCD_tex_coord(1264, 1649, 292, 53, TEX_SIZE_X, TEX_SIZE_Y)
HYD_2_Needle.vertices        = frame_needle_vert
HYD_2_Needle.indices         = DEF_BOX_INDICES
HYD_2_Needle.init_pos        = {0, 0, 0}
HYD_2_Needle.init_rot        = {-52, 0, 0}
HYD_2_Needle.parent_element  = "EPI2_HYD_2_Center"
HYD_2_Needle.h_clip_relation = h_clip_relations.COMPARE
HYD_2_Needle.level           = EPI2_LEVEL + 2
HYD_2_Needle.controllers     = {{"EPI2_H2", arc_bar_y_factor},}
AddToLOWER(HYD_2_Needle)
