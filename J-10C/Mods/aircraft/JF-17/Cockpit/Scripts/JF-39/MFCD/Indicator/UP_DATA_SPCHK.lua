dofile(LockOn_Options.script_path .. "MFCD/MFCDs_defs.lua")

local page_root = create_page_root()


local MFCD_TEX_IND2 = "mfcd_tex_ind2"

local SPCHK_LEVEL = PAGE_LEVEL_DATA

local TEX_SIZE_X = 2048
local TEX_SIZE_Y = 2048


local spchk_background       = CreateElement "ceTexPoly"
spchk_background.material    = MFCD_TEX_IND2
spchk_background.tex_coords  = MFCD_tex_coord(0, 0, 836, 776, TEX_SIZE_X, TEX_SIZE_Y)
spchk_background.init_pos    = {0, 46.667/1000, 0}
spchk_background.vertices    = {{ 1393.333/2000,  1293.333/2000},
                                { 1393.333/2000, -1293.333/2000},
                                {-1393.333/2000, -1293.333/2000},
                                {-1393.333/2000,  1293.333/2000},}
spchk_background.indices     = DEF_BOX_INDICES
--spchk_background.h_clip_relation = h_clip_relations.COMPARE -- now compare with mask poly(set by .level)
spchk_background.level           = SPCHK_LEVEL
spchk_background.isdraw          = true
spchk_background.isvisible       = true
spchk_background.use_mipfilter   = true
spchk_background.additive_alpha  = true
AddToUpper(spchk_background)



local spchk_roll_box       = CreateElement "ceTexPoly"
spchk_roll_box.material    = MFCD_TEX_IND2
spchk_roll_box.tex_coords  = MFCD_tex_coord(1060, 0, 396, 214, TEX_SIZE_X, TEX_SIZE_Y)
spchk_roll_box.init_pos    = {0, 148.333/1000, 0}
spchk_roll_box.vertices    = {{ 660/2000,  356.667/2000},
                              { 660/2000, -356.667/2000},
                              {-660/2000, -356.667/2000},
                              {-660/2000,  356.667/2000},}
spchk_roll_box.indices     = DEF_BOX_INDICES
--spchk_roll_box.h_clip_relation = h_clip_relations.COMPARE -- now compare with mask poly(set by .level)
spchk_roll_box.level           = SPCHK_LEVEL
spchk_roll_box.isdraw          = true
spchk_roll_box.isvisible       = true
spchk_roll_box.use_mipfilter   = true
spchk_roll_box.additive_alpha  = true
spchk_roll_box.controllers     = {{"spchk_fcs_level"}}
AddToUpper(spchk_roll_box)



local spchk_pitch_box       = CreateElement "ceTexPoly"
spchk_pitch_box.material    = MFCD_TEX_IND2
spchk_pitch_box.tex_coords  = MFCD_tex_coord(836, 0, 224, 652, TEX_SIZE_X, TEX_SIZE_Y)
spchk_pitch_box.init_pos    = {0, 33.333/1000, 0}
spchk_pitch_box.vertices    = {{ 373.333/2000,  1086.667/2000},
                               { 373.333/2000, -1086.667/2000},
                               {-373.333/2000, -1086.667/2000},
                               {-373.333/2000,  1086.667/2000},}
spchk_pitch_box.indices     = DEF_BOX_INDICES
--spchk_pitch_box.h_clip_relation = h_clip_relations.COMPARE -- now compare with mask poly(set by .level)
spchk_pitch_box.level           = SPCHK_LEVEL
spchk_pitch_box.isdraw          = true
spchk_pitch_box.isvisible       = true
spchk_pitch_box.use_mipfilter   = true
spchk_pitch_box.additive_alpha  = true
spchk_pitch_box.controllers     = {{"spchk_fcs_level"}}
AddToUpper(spchk_pitch_box)


local spchk_roll_indicator       = CreateElement "ceTexPoly"
spchk_roll_indicator.material    = MFCD_TEX_IND2
spchk_roll_indicator.tex_coords  = MFCD_tex_coord(886, 652, 44, 54, TEX_SIZE_X, TEX_SIZE_Y)
spchk_roll_indicator.init_pos    = {0, 213.333/1000, 0}
spchk_roll_indicator.vertices    = {{ 73.333/2000,  90/2000},
                                    { 73.333/2000, -90/2000},
                                    {-73.333/2000, -90/2000},
                                    {-73.333/2000,  90/2000},}
spchk_roll_indicator.indices     = DEF_BOX_INDICES
--spchk_roll_indicator.h_clip_relation = h_clip_relations.COMPARE -- now compare with mask poly(set by .level)
spchk_roll_indicator.level           = SPCHK_LEVEL
spchk_roll_indicator.isdraw          = true
spchk_roll_indicator.isvisible       = true
spchk_roll_indicator.use_mipfilter   = true
spchk_roll_indicator.additive_alpha  = true
spchk_roll_indicator.controllers     = {{"spchk_fcs_roll", 516/1000}} -- 541.667
AddToUpper(spchk_roll_indicator)


local spchk_pitch_indicator       = CreateElement "ceTexPoly"
spchk_pitch_indicator.material    = MFCD_TEX_IND2
spchk_pitch_indicator.tex_coords  = MFCD_tex_coord(886, 652, 44, 54, TEX_SIZE_X, TEX_SIZE_Y)
spchk_pitch_indicator.init_pos    = {0, 213.333/1000, 0}
spchk_pitch_indicator.vertices    = {{ 73.333/2000,  90/2000},
                                     { 73.333/2000, -90/2000},
                                     {-73.333/2000, -90/2000},
                                     {-73.333/2000,  90/2000},}
spchk_pitch_indicator.indices     = DEF_BOX_INDICES
--spchk_pitch_indicator.h_clip_relation = h_clip_relations.COMPARE -- now compare with mask poly(set by .level)
spchk_pitch_indicator.level           = SPCHK_LEVEL
spchk_pitch_indicator.isdraw          = true
spchk_pitch_indicator.isvisible       = true
spchk_pitch_indicator.use_mipfilter   = true
spchk_pitch_indicator.additive_alpha  = true
spchk_pitch_indicator.controllers     = {{"spchk_fcs_pitch", -(571-198.333)/1000, -(505+198.333)/1000}} -- -(598-213)/1000, -(531.667-213.333)/1000
AddToUpper(spchk_pitch_indicator)


local spchk_rudder_scale       = CreateElement "ceTexPoly"
spchk_rudder_scale.material    = MFCD_TEX_IND2
spchk_rudder_scale.tex_coords  = MFCD_tex_coord(1124, 214, 836, 80, TEX_SIZE_X, TEX_SIZE_Y)
spchk_rudder_scale.init_pos    = {0, -726.667/1000, 0}
spchk_rudder_scale.vertices    = {{ 1393.333/2000,  133.333/2000},
                                  { 1393.333/2000, -133.333/2000},
                                  {-1393.333/2000, -133.333/2000},
                                  {-1393.333/2000,  133.333/2000},}
spchk_rudder_scale.indices     = DEF_BOX_INDICES
--spchk_rudder_scale.h_clip_relation = h_clip_relations.COMPARE -- now compare with mask poly(set by .level)
spchk_rudder_scale.level           = SPCHK_LEVEL
spchk_rudder_scale.isdraw          = true
spchk_rudder_scale.isvisible       = true
spchk_rudder_scale.use_mipfilter   = true
spchk_rudder_scale.additive_alpha  = true
AddToUpper(spchk_rudder_scale)


local spchk_rudder_indicator       = CreateElement "ceTexPoly"
spchk_rudder_indicator.material    = MFCD_TEX_IND2
spchk_rudder_indicator.tex_coords  = MFCD_tex_coord(836, 652, 50, 86, TEX_SIZE_X, TEX_SIZE_Y)
spchk_rudder_indicator.init_pos    = {0, -685/1000, 0}
spchk_rudder_indicator.vertices    = {{ 83.333/2000,  143.333/2000},
                                      { 83.333/2000, -143.333/2000},
                                      {-83.333/2000, -143.333/2000},
                                      {-83.333/2000,  143.333/2000},}
spchk_rudder_indicator.indices     = DEF_BOX_INDICES
--spchk_rudder_indicator.h_clip_relation = h_clip_relations.COMPARE -- now compare with mask poly(set by .level)
spchk_rudder_indicator.level           = SPCHK_LEVEL
spchk_rudder_indicator.isdraw          = true
spchk_rudder_indicator.isvisible       = true
spchk_rudder_indicator.use_mipfilter   = true
spchk_rudder_indicator.additive_alpha  = true
spchk_rudder_indicator.controllers     = {{"spchk_fcs_rudder", 645/1000}} -- 左右边界
AddToUpper(spchk_rudder_indicator)





local text_strpoly

--- 文字部分
local textsDown = {
    ---- OSB
    {-- FCS
        init_pos = {MFCD_FONT_UD1_X, MFCD_FONT_U_Y},  value = "SPCHK", alignment = "CenterCenter", stringdefs = MFCD_STRINGDEFS_DEF_X08,
    },
    {-- SPCHK
        init_pos = {MFCD_FONT_UD5_X, MFCD_FONT_U_Y},  value = "FCS", alignment = "CenterCenter", stringdefs = MFCD_STRINGDEFS_DEF_X08,
    },
    
    {-- 
        init_pos = {-713.333/1000, 213.333/1000},  value = "L", alignment = "CenterCenter", stringdefs = MFCD_STRINGDEFS_DEF_X08,
    },
    {-- 
        init_pos = {653.333/1000, 213.333/1000},  value = "R", alignment = "CenterCenter", stringdefs = MFCD_STRINGDEFS_DEF_X08,
    },
    {-- 
        init_pos = {-690/1000, -723.333/1000},  value = "L", alignment = "CenterCenter", stringdefs = MFCD_STRINGDEFS_DEF_X08,
    },
    {-- 
        init_pos = {683.333/1000, -723.333/1000},  value = "R", alignment = "CenterCenter", stringdefs = MFCD_STRINGDEFS_DEF_X08,
    },
    
    
    {-- FCS
        init_pos = {-1.667/1000, 690/1000},  value = "DFCS-A/A", alignment = "CenterCenter", stringdefs = MFCD_STRINGDEFS_DEF_X08,
        ctrls = {{"spchk_fcs_text"}}
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
    AddToUpper(text_strpoly)
    --AddElementObject(text_strpoly)
    text_strpoly = nil
end



