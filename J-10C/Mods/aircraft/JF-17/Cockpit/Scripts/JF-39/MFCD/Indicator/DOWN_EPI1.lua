-- 页面: EPI1
dofile(LockOn_Options.script_path .. "MFCD/MFCDs_defs.lua")

local page_root = create_page_root()


local MFCD_TEX_IND1 = "mfcd_tex_ind1" --MakeMaterial(path_fuel_dds2, MFCD_COLOR_DEF)


local EPI1_LEVEL = PAGE_LEVEL_DOWN_EPI1 + 2

local TEX_SIZE_X = 2048
local TEX_SIZE_Y = 2048


local text_strpoly

--- 文字部分
local textsDown = {
    --OSB
    {-- NORM
        init_pos = {MFCD_FONT_L_HORI_X, MFCD_FONT_LR6_Y},  value = "NORM", alignment = "LeftCenter", stringdefs = MFCD_STRINGDEFS_DEF_X08,
    },
    --[[{-- SMS
        init_pos = {MFCD_FONT_UD4_X, MFCD_FONT_D_Y},  value = "SMS",  alignment = "LeftCenter", stringdefs = MFCD_STRINGDEFS_DEF_X08,
    },]]
    --[[{-- SET
        init_pos = {MFCD_FONT_L_HORI_X, MFCD_FONT_LR8_Y},  value = "SET",  alignment = "LeftCenter",  stringdefs = MFCD_STRINGDEFS_DEF_X08,
    },]]
    
    {-- EPI1
        init_pos = {MFCD_FONT_R_HORI_X, MFCD_FONT_LR6_Y}, value = "EPI1", alignment = "RightCenter", stringdefs = MFCD_STRINGDEFS_DEF_X08,
    },
    {-- RTN
        init_pos = {MFCD_FONT_R_HORI_X, MFCD_FONT_LR8_Y}, value = "RTN",  alignment = "RightCenter", stringdefs = MFCD_STRINGDEFS_DEF_X08,
    },
    
    --PAGE
    {-- N2
        init_pos = {-641.667/1000, 280/1000}, value = "N2",
    },
    {-- N2数字
        init_pos = {-473.333/1000, 280/1000}, formats = {"%02.1f", "%s"},
        --params = {"EFM_RPM"},
        --ctrls = {{"text_using_parameter",0,0},{"EPI1_N2_Color"}},
        ctrls = {{"EPI1_N2_Text"},{"EPI1_N2_Color"}},
        size = 0.8,
    },
    
    {-- T4
        init_pos = {-48.333/1000, 280/1000}, value = "T4",
    },
    {-- T4数字
        init_pos = { 123.333/1000, 280/1000}, formats = {"%01.0f", "%s"},
        --params = {"EFM_T4"},
        --ctrls = {{"text_using_parameter",0,0},{"EPI1_T4_Color"}},
        ctrls = {{"EPI1_T4_Text"},{"EPI1_T4_Color"}},
        size = 0.8,
    },
    
    
    {-- TOTAL
        init_pos = { 476.667/1000, 266.667/1000}, value = "TOTAL",
    },
    {-- TOTAL数字
        init_pos = { 471.667/1000, -153.333/1000}, formats = {"%01.0f", "%s"},
        ctrls = {{"EPI1_Fuel_Total_Text"},{"EPI1_Fuel_Total_Color"}},
        size = 0.8,
    },
    
    {-- FEED
        init_pos = { 738.333/1000, 266.667/1000}, value = "FEED",
    },
    {-- FEED数字
        init_pos = { 731.667/1000, -153.333/1000}, formats = {"%01.0f", "%s"},
        ctrls = {{"EPI1_Fuel_Feed_Text"},{"EPI1_Fuel_Feed_Color"}},
        size = 0.8,
    },
    
    {-- TANK1
        init_pos = {-595/1000, -150/1000}, value = "TANK 1",
    },
    {-- TANK3
        init_pos = {-1.667/1000, -150/1000}, value = "TANK 3",
    },
}

for i=1, #(textsDown) do
    text_strpoly                 = CreateElement "ceStringPoly"
    text_strpoly.material        = MFCD_FONT_DEF
    text_strpoly.stringdefs      = MFCD_STRINGDEFS_DEF_X075
    text_strpoly.init_pos        = textsDown[i].init_pos or {0.0, 0.0, 0.0}
    text_strpoly.alignment       = "CenterCenter"
    
    if textsDown[i].stringdefs then
        text_strpoly.stringdefs  = textsDown[i].stringdefs
    end   
    if textsDown[i].alignment then
        text_strpoly.alignment   = textsDown[i].alignment
    end    
    if textsDown[i].formats then
        text_strpoly.formats     = textsDown[i].formats
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

--- 贴图部分
local texsUp = {    
    {-- N2 数字框
        cx = -470/1000, cy = 280/1000, hw = 172/134*223.333/2000, hh = 88/55*83.333/2000, ulx = 608, uly = 496, w = 172, h = 88,
    },
    {-- N2 0
        cx = -338.333/1000, cy = 210/1000, hw = 70/2000, hh = 80/2000, ulx = 1988, uly = 114, w = 42, h = 48,
    },
    {-- N2 110
        cx = -806.667/1000, cy = 230/1000, hw = 106.667/2000, hh = 80/2000, ulx = 1976, uly = 162, w = 64, h = 48,
    },
    
    
    {-- T4 数字框
        cx = 123.333/1000, cy = 280/1000, hw = 172/134*223.333/2000, hh = 88/55*83.333/2000, ulx = 608, uly = 496, w = 172, h = 88,
    },
    {-- T4 -60
        cx =  275/1000, cy = 210/1000, hw = 110/2000, hh = 80/2000, ulx =1912, uly = 274, w = 66, h = 48,
    },
    {-- T4 1000
        cx = -220/1000, cy = 230/1000, hw = 126.667/2000, hh = 80/2000, ulx = 1912, uly = 226, w = 76, h = 48,
    },
    
    
    {-- T1 油量框
        cx = -593.333/1000, cy = -218.333/1000, hw = 346.667/2000, hh = 116.667/2000, ulx = 608, uly = 356, w = 208, h = 70,
    },
    {-- T3 油量框
        cx = 0,             cy = -218.333/1000, hw = 346.667/2000, hh = 116.667/2000, ulx = 608, uly = 356, w = 208, h = 70,
    },
    
}

local tex_poly
for i=1, #(texsUp) do
    tex_poly            = CreateElement "ceTexPoly"
    tex_poly.material   = MFCD_TEX_IND1

    tex_poly.tex_coords = MFCD_tex_coord(texsUp[i].ulx, texsUp[i].uly, texsUp[i].w, texsUp[i].h, TEX_SIZE_X, TEX_SIZE_Y)
    tex_poly.init_pos   = {texsUp[i].cx, texsUp[i].cy, 0}
    tex_poly.vertices   = {{ texsUp[i].hw, texsUp[i].hh},
                           { texsUp[i].hw,-texsUp[i].hh},
                           {-texsUp[i].hw,-texsUp[i].hh},
                           {-texsUp[i].hw, texsUp[i].hh},}
    tex_poly.indices    = DEF_BOX_INDICES

    if texsUp[i].ctrls then
        tex_poly.controllers    = texsUp[i].ctrls
    end

    AddToLOWER(tex_poly)
    tex_poly = nil
end

-------------------------------------Moving Part

local total_feed_bar_vert = {{  196.667/2000,  396.667/2000},
                             {  196.667/2000, -396.667/2000},
                             { -196.667/2000, -396.667/2000},
                             { -196.667/2000,  396.667/2000},}

local total_feed_mask_vert = {{  133.333/2000,  333.333/2000},
                              {  133.333/2000, -333.333/2000},
                              { -133.333/2000, -333.333/2000},
                              { -133.333/2000,  333.333/2000},}
                         
--Total mask
local fuel_total_bar_mask       = CreateElement "ceMeshPoly"
fuel_total_bar_mask.material    = MFCD_MATERIAL_W_BASE
fuel_total_bar_mask.vertices    = total_feed_mask_vert
fuel_total_bar_mask.indices     = DEF_BOX_INDICES
fuel_total_bar_mask.init_pos    = {481.667/1000, 55/1000, 0} --cx = 2.5*1.0/5, cy = 2.0*0.40/2.5,
fuel_total_bar_mask.name        = create_guid_string()
fuel_total_bar_mask.primitivetype   = "triangles"
fuel_total_bar_mask.h_clip_relation = h_clip_relations.REWRITE_LEVEL -- this element will sit on level(.level + 1)
fuel_total_bar_mask.level           = EPI1_LEVEL + 1
fuel_total_bar_mask.isvisible       = false -- IMPORTANT: do not show this MeshPoly, used as mask poly
fuel_total_bar_mask.isdraw          = true
AddToLOWER(fuel_total_bar_mask)

--Total bar
local fuel_total_bar       = CreateElement "ceTexPoly"
fuel_total_bar.vertices    = total_feed_bar_vert
fuel_total_bar.indices     = DEF_BOX_INDICES
fuel_total_bar.init_pos    = {481.667/1000, 55/1000, 0}
fuel_total_bar.h_clip_relation = h_clip_relations.COMPARE -- now compare with mask poly(set by .level)
fuel_total_bar.level           = EPI1_LEVEL + 1
fuel_total_bar.isdraw          = true
fuel_total_bar.isvisible       = true
fuel_total_bar.use_mipfilter   = true
fuel_total_bar.additive_alpha  = true
fuel_total_bar.controllers     = {{"EPI1_Fuel_Total", 333.333/1000}, {"EPI1_Fuel_Total_Color"}}

fuel_total_bar.material    = MFCD_TEX_IND1
fuel_total_bar.tex_coords  = MFCD_tex_coord(1794, 86, 118, 238, TEX_SIZE_X, TEX_SIZE_Y)

AddToLOWER(fuel_total_bar)

--Total frame
local fuel_total_box       = CreateElement "ceTexPoly"
fuel_total_box.vertices    = total_feed_bar_vert
fuel_total_box.indices     = DEF_BOX_INDICES
fuel_total_box.init_pos    = {481.667/1000, 55/1000, 0}
fuel_total_box.level           = EPI1_LEVEL + 1
fuel_total_box.isdraw          = true
fuel_total_box.isvisible       = true
fuel_total_box.use_mipfilter   = true
fuel_total_box.additive_alpha  = true

fuel_total_box.material    = MFCD_TEX_IND1
fuel_total_box.tex_coords  = MFCD_tex_coord(1676, 86, 118, 238, TEX_SIZE_X, TEX_SIZE_Y)

AddToLOWER(fuel_total_box)


--Feed mask
local fuel_feed_bar_mask     = CreateElement "ceMeshPoly"
fuel_feed_bar_mask.material  = MFCD_MATERIAL_W_BASE
fuel_feed_bar_mask.vertices  = total_feed_mask_vert
fuel_feed_bar_mask.indices   = DEF_BOX_INDICES
fuel_feed_bar_mask.init_pos  = {741.667/1000, 55/1000, 0} 
fuel_feed_bar_mask.name      = create_guid_string()
fuel_feed_bar_mask.primitivetype   = "triangles"
fuel_feed_bar_mask.h_clip_relation = h_clip_relations.REWRITE_LEVEL -- this element will sit on level(.level + 1)
fuel_feed_bar_mask.level           = EPI1_LEVEL + 1
fuel_feed_bar_mask.isvisible       = false -- IMPORTANT: do not show this MeshPoly, used as mask poly
fuel_feed_bar_mask.isdraw          = true
AddToLOWER(fuel_feed_bar_mask)    
                            
--Feed bar
local fuel_feed_bar       = CreateElement "ceTexPoly"
fuel_feed_bar.vertices    = total_feed_bar_vert
fuel_feed_bar.indices     = DEF_BOX_INDICES
fuel_feed_bar.init_pos    = {741.667/1000, 55/1000, 0}
fuel_feed_bar.h_clip_relation = h_clip_relations.COMPARE -- now compare with mask poly(set by .level)
fuel_feed_bar.level           = EPI1_LEVEL + 1
fuel_feed_bar.isdraw          = true
fuel_feed_bar.isvisible       = true
fuel_feed_bar.use_mipfilter   = true
fuel_feed_bar.additive_alpha  = true
fuel_feed_bar.controllers     = {{"EPI1_Fuel_Feed", 333.333/1000}, {"EPI1_Fuel_Feed_Color"}} 

fuel_feed_bar.material    = MFCD_TEX_IND1
fuel_feed_bar.tex_coords  = MFCD_tex_coord(1794, 86, 118, 238, TEX_SIZE_X, TEX_SIZE_Y)

AddToLOWER(fuel_feed_bar)

--Feed frame
local fuel_feed_box       = CreateElement "ceTexPoly"
fuel_feed_box.vertices    = total_feed_bar_vert
fuel_feed_box.indices     = DEF_BOX_INDICES
fuel_feed_box.init_pos    = {741.667/1000, 55/1000, 0}
fuel_feed_box.level           = EPI1_LEVEL + 1
fuel_feed_box.isdraw          = true
fuel_feed_box.isvisible       = true
fuel_feed_box.use_mipfilter   = true
fuel_feed_box.additive_alpha  = true

fuel_feed_box.material    = MFCD_TEX_IND1
fuel_feed_box.tex_coords  = MFCD_tex_coord(1676, 86, 118, 238, TEX_SIZE_X, TEX_SIZE_Y)

AddToLOWER(fuel_feed_box)

---- Tank 1&3
local tank1n3_bar_vert = {{ 346.667/2000,  116.667/2000},
                          { 346.667/2000, -116.667/2000},
                          {-346.667/2000, -116.667/2000},
                          {-346.667/2000,  116.667/2000},}

local tank1n3_mask_vert = {{ 283.333/2000,  53.333/2000},
                           { 283.333/2000, -53.333/2000},
                           {-283.333/2000, -53.333/2000},
                           {-283.333/2000,  53.333/2000},}

--Tank1 mask
local fuel_tank1_bar_mask     = CreateElement "ceMeshPoly"
fuel_tank1_bar_mask.material  = MFCD_MATERIAL_W_BASE
fuel_tank1_bar_mask.vertices  = tank1n3_mask_vert
fuel_tank1_bar_mask.indices   = DEF_BOX_INDICES
fuel_tank1_bar_mask.init_pos  = {-593.333/1000, -218.333/1000, 0} 
fuel_tank1_bar_mask.name      = create_guid_string()
fuel_tank1_bar_mask.primitivetype   = "triangles"
fuel_tank1_bar_mask.h_clip_relation = h_clip_relations.REWRITE_LEVEL -- this element will sit on level(.level + 1)
fuel_tank1_bar_mask.level           = EPI1_LEVEL + 1
fuel_tank1_bar_mask.isvisible       = false -- IMPORTANT: do not show this MeshPoly, used as mask poly
fuel_tank1_bar_mask.isdraw          = true
AddToLOWER(fuel_tank1_bar_mask)    
                            
--Tank1 bar
local fuel_tank1_bar       = CreateElement "ceTexPoly"
fuel_tank1_bar.vertices    = tank1n3_bar_vert
fuel_tank1_bar.indices     = DEF_BOX_INDICES
fuel_tank1_bar.init_pos    = {-593.333/1000, -218.333/1000, 0} 
fuel_tank1_bar.h_clip_relation = h_clip_relations.COMPARE -- now compare with mask poly(set by .level)
fuel_tank1_bar.level           = EPI1_LEVEL + 1
fuel_tank1_bar.isdraw          = true
fuel_tank1_bar.isvisible       = true
fuel_tank1_bar.use_mipfilter   = true
fuel_tank1_bar.additive_alpha  = true
fuel_tank1_bar.controllers     = {{"EPI1_Fuel_Tank1", 283.333/1000}, {"EPI1_Fuel_Tank1_Color"}}

fuel_tank1_bar.material    = MFCD_TEX_IND1
fuel_tank1_bar.tex_coords  = MFCD_tex_coord(608, 426, 208, 70, TEX_SIZE_X, TEX_SIZE_Y)

AddToLOWER(fuel_tank1_bar)


--Tank3 mask
local fuel_tank3_bar_mask     = CreateElement "ceMeshPoly"
fuel_tank3_bar_mask.material  = MFCD_MATERIAL_W_BASE
fuel_tank3_bar_mask.vertices  = tank1n3_mask_vert
fuel_tank3_bar_mask.indices   = DEF_BOX_INDICES
fuel_tank3_bar_mask.init_pos  = {0.0, -218.333/1000, 0.0}
fuel_tank3_bar_mask.name      = create_guid_string()
fuel_tank3_bar_mask.primitivetype   = "triangles"
fuel_tank3_bar_mask.h_clip_relation = h_clip_relations.REWRITE_LEVEL -- this element will sit on level(.level + 1)
fuel_tank3_bar_mask.level           = EPI1_LEVEL + 2
fuel_tank3_bar_mask.isvisible       = false -- IMPORTANT: do not show this MeshPoly, used as mask poly
fuel_tank3_bar_mask.isdraw          = true
AddToLOWER(fuel_tank3_bar_mask)    
                            
--Tank3 bar
local fuel_tank3_bar       = CreateElement "ceTexPoly"
fuel_tank3_bar.vertices    = tank1n3_bar_vert
fuel_tank3_bar.indices     = DEF_BOX_INDICES
fuel_tank3_bar.init_pos    = {0.0, -218.333/1000, 0.0} 
fuel_tank3_bar.h_clip_relation = h_clip_relations.COMPARE -- now compare with mask poly(set by .level)
fuel_tank3_bar.level           = EPI1_LEVEL + 2
fuel_tank3_bar.isdraw          = true
fuel_tank3_bar.isvisible       = true
fuel_tank3_bar.use_mipfilter   = true
fuel_tank3_bar.additive_alpha  = true
fuel_tank3_bar.controllers     = {{"EPI1_Fuel_Tank3", 283.333/1000}, {"EPI1_Fuel_Tank3_Color"}}

fuel_tank3_bar.material    = MFCD_TEX_IND1
fuel_tank3_bar.tex_coords  = MFCD_tex_coord(608, 426, 208, 70, TEX_SIZE_X, TEX_SIZE_Y)

AddToLOWER(fuel_tank3_bar)


--------

local n2_t4_arc_vert = {{ 593.333/2000,  593.333/2000},
                        { 593.333/2000, -593.333/2000},
                        {-593.333/2000, -593.333/2000},
                        {-593.333/2000,  593.333/2000},}

local n2_t4_mask_vert = {{ 593.333/2000,  0},
                         { 593.333/2000, -593.333/2000},
                         {-593.333/2000, -593.333/2000},
                         {-593.333/2000,  0},}
                         
local n2_t4_needle_vert = {{ 460/2000,  88.333/2000},
                           { 460/2000, -88.333/2000},
                           {-460/2000, -88.333/2000},
                           {-460/2000,  88.333/2000},}

-- N2指针
local N2_Needle       = CreateElement "ceTexPoly"
N2_Needle.vertices    = n2_t4_needle_vert
N2_Needle.indices     = DEF_BOX_INDICES
N2_Needle.init_pos    = {-590/1000, 210/1000, 0}
N2_Needle.init_rot    = {180, 0, 0}
N2_Needle.controllers = {{"EPI1_N2"}, {"EPI1_N2_Color"}}

N2_Needle.material   = MFCD_TEX_IND1
N2_Needle.tex_coords = MFCD_tex_coord(1264, 1596, 276, 53, TEX_SIZE_X, TEX_SIZE_Y)

AddToLOWER(N2_Needle)

--N2转盘弧形框
N2_Bar_Frame             = CreateElement "ceTexPoly"
N2_Bar_Frame.vertices    = n2_t4_arc_vert
N2_Bar_Frame.indices     = DEF_BOX_INDICES
N2_Bar_Frame.init_pos    = {-590/1000, 210/1000, 0}

N2_Bar_Frame.material    = MFCD_TEX_IND1
N2_Bar_Frame.tex_coords  = MFCD_tex_coord(608, 0, 356, 356, TEX_SIZE_X, TEX_SIZE_Y)

AddToLOWER(N2_Bar_Frame)

-- N2转盘Mask
local N2_bar_mask       = CreateElement "ceMeshPoly"
N2_bar_mask.material    = MFCD_MATERIAL_W_BASE
N2_bar_mask.vertices    = n2_t4_mask_vert
N2_bar_mask.indices     = DEF_BOX_INDICES
N2_bar_mask.init_pos    = {-590/1000, 210/1000, 0}
N2_bar_mask.name        = create_guid_string()
N2_bar_mask.primitivetype   = "triangles"
N2_bar_mask.h_clip_relation = h_clip_relations.REWRITE_LEVEL -- this element will sit on level(.level + 1)
N2_bar_mask.level           = EPI1_LEVEL + 2
N2_bar_mask.isvisible       = false -- IMPORTANT: do not show this MeshPoly, used as mask poly
N2_bar_mask.isdraw          = true
AddToLOWER(N2_bar_mask)    

-- N2转盘
local N2_bar       = CreateElement "ceTexPoly"
N2_bar.vertices    = n2_t4_arc_vert
N2_bar.indices     = DEF_BOX_INDICES
N2_bar.init_pos    = {-590/1000, 210/1000, 0}
N2_bar.init_rot    = {180, 0, 0}
N2_bar.h_clip_relation = h_clip_relations.COMPARE -- now compare with mask poly(set by .level)
N2_bar.level           = EPI1_LEVEL + 2
N2_bar.isdraw          = true
N2_bar.isvisible       = true
N2_bar.use_mipfilter   = true
N2_bar.additive_alpha  = true
N2_bar.controllers     = {{"EPI1_N2"}, {"EPI1_N2_Color"}}

N2_bar.material    = MFCD_TEX_IND1
N2_bar.tex_coords  = MFCD_tex_coord(1320, 0, 356, 356, TEX_SIZE_X, TEX_SIZE_Y)
                      
AddToLOWER(N2_bar)

-- -- T4指针
local T4_Needle       = CreateElement "ceTexPoly"
T4_Needle.vertices    = n2_t4_needle_vert
T4_Needle.indices     = DEF_BOX_INDICES
T4_Needle.init_pos    = {3.333/1000, 210/1000, 0}
T4_Needle.init_rot    = {180, 0, 0}
T4_Needle.controllers = {{"EPI1_T4"},{"EPI1_T4_Color"}}

T4_Needle.material    = MFCD_TEX_IND1
T4_Needle.tex_coords  = MFCD_tex_coord(1264, 1596, 276, 53, TEX_SIZE_X, TEX_SIZE_Y)

AddToLOWER(T4_Needle)

--T4转盘弧形框
T4_Bar_Frame             = CreateElement "ceTexPoly"
T4_Bar_Frame.vertices    = n2_t4_arc_vert
T4_Bar_Frame.indices     = DEF_BOX_INDICES
T4_Bar_Frame.init_pos    = {3.333/1000, 210/1000, 0}

T4_Bar_Frame.material    = MFCD_TEX_IND1
T4_Bar_Frame.tex_coords  = MFCD_tex_coord(964, 0, 356, 356, TEX_SIZE_X, TEX_SIZE_Y)

AddToLOWER(T4_Bar_Frame)

-- T4转盘Mask
local T4_bar_Mask       = CreateElement "ceMeshPoly"
T4_bar_Mask.material    = MFCD_MATERIAL_W_BASE
T4_bar_Mask.vertices    = n2_t4_mask_vert
T4_bar_Mask.indices     = DEF_BOX_INDICES
T4_bar_Mask.init_pos    = {3.333/1000, 210/1000, 0}
T4_bar_Mask.name        = create_guid_string()
T4_bar_Mask.primitivetype   = "triangles"
T4_bar_Mask.h_clip_relation = h_clip_relations.REWRITE_LEVEL -- this element will sit on level(.level + 1)
T4_bar_Mask.level           = EPI1_LEVEL + 2
T4_bar_Mask.isvisible       = false -- IMPORTANT: do not show this MeshPoly, used as mask poly
T4_bar_Mask.isdraw          = true
AddToLOWER(T4_bar_Mask)    

-- T4转盘
local T4_bar       = CreateElement "ceTexPoly"
T4_bar.vertices    = n2_t4_arc_vert
T4_bar.indices     = DEF_BOX_INDICES
T4_bar.init_pos    = {3.333/1000, 210/1000, 0}
T4_bar.init_rot    = {180, 0, 0}
T4_bar.h_clip_relation = h_clip_relations.COMPARE -- now compare with mask poly(set by .level)
T4_bar.level           = EPI1_LEVEL + 2
T4_bar.isdraw          = true
T4_bar.isvisible       = true
T4_bar.use_mipfilter   = true
T4_bar.additive_alpha  = true
T4_bar.controllers     = {{"EPI1_T4"},{"EPI1_T4_Color"}}

T4_bar.material    = MFCD_TEX_IND1
T4_bar.tex_coords  = MFCD_tex_coord(1320, 0, 356, 356, TEX_SIZE_X, TEX_SIZE_Y)

AddToLOWER(T4_bar)
