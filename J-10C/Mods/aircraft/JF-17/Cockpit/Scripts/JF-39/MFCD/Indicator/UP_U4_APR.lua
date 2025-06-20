dofile(LockOn_Options.script_path .. "MFCD/MFCDs_defs.lua")

local page_root = create_page_root()


-- FULL MFCD
local Poly_Text
local cur_text
local Poly_Text

--OSB
local osb_text = {
    {
        value = "APR", init_pos = {MFCD_FONT_UD1_X, MFCD_FONT_U_Y}, alignment = "CenterCenter",        
    },
}
for i=1, #osb_text do
    cur_text            = CreateElement "ceStringPoly"
    cur_text.material   = MFCD_FONT_DEF
    cur_text.stringdefs = MFCD_STRINGDEFS_DEF_X08
    cur_text.init_pos   = osb_text[i].init_pos
    cur_text.alignment  = osb_text[i].alignment
    cur_text.value      = osb_text[i].value
    
    if osb_text[i].stringdefs ~= nil then
        cur_text.stringdefs = osb_text[i].stringdefs
    end
    if osb_text[i].ctrls ~= nil then
        cur_text.controllers = osb_text[i].ctrls
    end
    --AddElementObject(cur_text)
    AddToUpper(cur_text)
end

-----------

MFCD_TEX_IND1  = "mfcd_tex_ind1"
MFCD_TEX_IND2  = "mfcd_tex_ind2"

TEX_SIZE_X = 2048
TEX_SIZE_Y = 2048


---- 贴图部分
local texs = {
    {-- <----
        cx = MFCD_FONT_UD3_X, cy = MFCD_FONT_U_Y-0.05, hw = 233.333/2000, hh = 100/2000, ulx = 1480, uly = 1008, w = 140, h = 60,
        tex_sx = TEX_SIZE_X, tex_sy = TEX_SIZE_Y,
        rx = -90,
        ctrls = {{"mfcd_isedit_show", 0}}
    },
    
    {-- <----
        cx = -0.85, cy = MFCD_FONT_LR1_Y, hw = 233.333/2000, hh = 100/2000, ulx = 1480, uly = 1008, w = 140, h = 60,
        tex_sx = TEX_SIZE_X, tex_sy = TEX_SIZE_Y,
        ctrls = {{"mfcd_isedit_show", 0}}
    },
    {-- <----
        cx = -0.85, cy = MFCD_FONT_LR2_Y, hw = 233.333/2000, hh = 100/2000, ulx = 1480, uly = 1008, w = 140, h = 60,
        tex_sx = TEX_SIZE_X, tex_sy = TEX_SIZE_Y,
        ctrls = {{"mfcd_isedit_show", 0}}
    },
    {-- <----
        cx = -0.85, cy = MFCD_FONT_LR4_Y, hw = 233.333/2000, hh = 100/2000, ulx = 1480, uly = 1008, w = 140, h = 60,
        tex_sx = TEX_SIZE_X, tex_sy = TEX_SIZE_Y,
        ctrls = {{"mfcd_isedit_show", 0}}
    },
    {-- ---->
        cx = 0.85, cy = MFCD_FONT_LR1_Y, hw = 233.333/2000, hh = 100/2000, ulx = 1480, uly = 948, w = 140, h = 60,
        tex_sx = TEX_SIZE_X, tex_sy = TEX_SIZE_Y,
        ctrls = {{"mfcd_isedit_show", 0}}
    },
    {-- ---->
        cx = 0.85, cy = MFCD_FONT_LR2_Y, hw = 233.333/2000, hh = 100/2000, ulx = 1480, uly = 948, w = 140, h = 60,
        tex_sx = TEX_SIZE_X, tex_sy = TEX_SIZE_Y,
        ctrls = {{"mfcd_isedit_show", 0}}
    },
    {-- ---->
        cx = 0.85, cy = MFCD_FONT_LR3_Y, hw = 233.333/2000, hh = 100/2000, ulx = 1480, uly = 948, w = 140, h = 60,
        tex_sx = TEX_SIZE_X, tex_sy = TEX_SIZE_Y,
        ctrls = {{"mfcd_isedit_show", 0}}
    },
    {-- ---->
        cx = 0.85, cy = MFCD_FONT_LR4_Y, hw = 233.333/2000, hh = 100/2000, ulx = 1480, uly = 948, w = 140, h = 60,
        tex_sx = TEX_SIZE_X, tex_sy = TEX_SIZE_Y,
        ctrls = {{"mfcd_isedit_show", 0}}
    },
    
}

local tex_poly
for i=1, #(texs) do
    tex_poly             = CreateElement "ceTexPoly"
    tex_poly.material    = MFCD_TEX_IND1
    tex_poly.tex_coords  = MFCD_tex_coord(texs[i].ulx, texs[i].uly, texs[i].w, texs[i].h, texs[i].tex_sx, texs[i].tex_sy)
    tex_poly.init_pos    = {texs[i].cx, texs[i].cy, 0}
    tex_poly.vertices    = {{ texs[i].hw, texs[i].hh},
                            { texs[i].hw,-texs[i].hh},
                            {-texs[i].hw,-texs[i].hh},
                            {-texs[i].hw, texs[i].hh},}
    tex_poly.indices     = DEF_BOX_INDICES

    if texs[i].mat then
        tex_poly.material = texs[i].mat
    end
    if texs[i].rx then
        tex_poly.init_rot = {texs[i].rx, 0, 0}
    end
    if texs[i].params then
        tex_poly.element_params = texs[i].params
    end
    if texs[i].ctrls then
        tex_poly.controllers    = texs[i].ctrls
    end

    AddToUpper(tex_poly)
    tex_poly = nil
end


local Poly_Text = {
    {
        value = "M. RWY\n158", init_pos = {0, (MFCD_FONT_LR1_Y+MFCD_FONT_LR2_Y)/2, 0}, alignment = "CenterCenter",
        ctrls = {{"APR_runway_m"}},
    },
    
    {
        value = "ILS  SCA\n01", init_pos = {(MFCD_FONT_UD1_X+MFCD_FONT_UD2_X)/2, MFCD_FONT_LR1_Y, 0}, alignment = "LeftCenter",
        ctrls = {{"APR_mode"}},
    },
    {
        value = "TACAN\n69X", init_pos = {0.9*MFCD_FONT_UD4_X, MFCD_FONT_LR1_Y, 0}, alignment  = "LeftCenter",
        ctrls = {{"APR_tacan"}},
    },
    
    {
        value = "M. COURS\n180", init_pos = {(MFCD_FONT_UD1_X+MFCD_FONT_UD2_X)/2, MFCD_FONT_LR2_Y, 0}, alignment = "LeftCenter",
        ctrls = {{"APR_course_m"}},
    },
    {
        value = "M. COURS\n158", init_pos = {0.9*MFCD_FONT_UD4_X, MFCD_FONT_LR2_Y, 0}, alignment  = "LeftCenter",
        ctrls = {{"APR_tacan_course_m"}},
    },
    
    {
        value = "G. SLOPE\n3.0", init_pos = {(MFCD_FONT_UD1_X+MFCD_FONT_UD2_X)/2, MFCD_FONT_LR3_Y, 0}, alignment = "LeftCenter",
        ctrls = {{"APR_g_slope"}},
    },
    {
        value = "MIN\n400", init_pos = {0.9*MFCD_FONT_UD4_X, MFCD_FONT_LR3_Y, 0}, alignment  = "LeftCenter",
        ctrls = {{"APR_tacan_alt_min"}},
    },
    
    {
        value = "MIN\n0500 0500", init_pos = {(MFCD_FONT_UD1_X+MFCD_FONT_UD2_X)/2, MFCD_FONT_LR4_Y, 0}, alignment = "LeftCenter",
        ctrls = {{"APR_ils_sca_alt_min"}},
    },
    {
        value = "FAF\n09R", init_pos = {0.9*MFCD_FONT_UD4_X, MFCD_FONT_LR4_Y, 0}, alignment = "LeftCenter",
        ctrls = {{"APR_FAF"}},
    },
    

    {
        value = "N\n304142", init_pos = {(MFCD_FONT_UD1_X+MFCD_FONT_UD2_X)/2, MFCD_FONT_LR5_Y, 0}, alignment = "LeftCenter",
        ctrls = {{"APR_lat"}},
    },
    
    {
        value = "E\n1035152", init_pos = {0.6*(MFCD_FONT_UD2_X+MFCD_FONT_UD3_X)/2, MFCD_FONT_LR5_Y, 0}, alignment = "LeftCenter",
        ctrls = {{"APR_long"}},
    },
    
    {
        value = "ALT\n01700", init_pos = {0.9*MFCD_FONT_UD4_X, MFCD_FONT_LR5_Y, 0}, alignment = "LeftCenter",
        ctrls = {{"APR_alt"}},
    },
    
    -- for special edit
    {
        value = " ", init_pos = {MFCD_FONT_UD4_X, MFCD_FONT_U_Y, 0}, alignment = "CenterCenter",
        ctrls = {{"APR_special_edit", 0}},
    },
    {
        value = " ", init_pos = {MFCD_FONT_UD5_X, MFCD_FONT_U_Y, 0}, alignment = "CenterCenter",
        ctrls = {{"APR_special_edit", 1}},
    },
    
}

for i=1, #Poly_Text do
    cur_text             = CreateElement "ceStringPoly"
    cur_text.material    = MFCD_FONT_DEF
    cur_text.stringdefs  = MFCD_STRINGDEFS_DEF
    cur_text.init_pos    = Poly_Text[i].init_pos
    cur_text.alignment   = Poly_Text[i].alignment
    cur_text.value       = Poly_Text[i].value
    cur_text.controllers = Poly_Text[i].ctrls
    --AddElementObject(cur_text)
    AddToUpper(cur_text)
end


apr_mode_box             = CreateElement "ceTexPoly"
apr_mode_box.material    = MFCD_TEX_IND2
apr_mode_box.tex_coords  = MFCD_tex_coord(50, 1930, 160, 80, TEX_SIZE_X, TEX_SIZE_Y)
apr_mode_box.init_pos    = {(MFCD_FONT_UD1_X+MFCD_FONT_UD2_X)/2, MFCD_FONT_LR1_Y + 53.333/2000, 0}
apr_mode_box.vertices    = {{ 266.667/2000, 133.333/2000},
                            { 266.667/2000,-133.333/2000},
                            {-266.667/2000,-133.333/2000},
                            {-266.667/2000, 133.333/2000},}
apr_mode_box.indices     = DEF_BOX_INDICES
apr_mode_box.controllers = {{"APR_mode_select", 0.24, 0.05, 1.05}}
AddToUpper(apr_mode_box)
apr_mode_box = nil


