dofile(LockOn_Options.script_path .. "MFCD/MFCDs_defs.lua")

local page_root = create_page_root()



--OSB
local osb_txt = {
    {value="NAV DATA", init_pos={MFCD_FONT_UD1_X, MFCD_FONT_U_Y}, align="CenterCenter"},
}

local text_strpoly
local mesh_poly
local Poly_Text

for i=1, #(osb_txt) do
    text_strpoly             = CreateElement "ceStringPoly"
    text_strpoly.material    = MFCD_FONT_DEF
    text_strpoly.stringdefs  = MFCD_STRINGDEFS_DEF_X08
    text_strpoly.init_pos    = osb_txt[i].init_pos
    text_strpoly.alignment   = osb_txt[i].align
    text_strpoly.value       = osb_txt[i].value
    AddToUpper(text_strpoly)
    text_strpoly = nil
end

Poly_Text = {
    {
        init_pos={MFCD_FONT_UD2_X, MFCD_FONT_LR1_Y, 0}, alignment = "CenterCenter", value = "TAS\n200KTS", controllers = {{"DATA_nav_speeds", 0}}
    },
    {
        init_pos={MFCD_FONT_UD3_X, MFCD_FONT_LR1_Y, 0}, alignment = "CenterCenter", value = "CAS\n180KTS", controllers = {{"DATA_nav_speeds", 1}}
    },
    {
        init_pos={MFCD_FONT_UD4_X, MFCD_FONT_LR1_Y, 0}, alignment = "CenterCenter", value = "GS\n180KTS",  controllers = {{"DATA_nav_speeds", 2}}
    },
    {
        init_pos={0, (MFCD_FONT_LR2_Y+MFCD_FONT_LR2_Y)/2, 0}, alignment = "CenterCenter", value = "WIND\n10 KTS    10DEG\n5T    5R", controllers = {{"DATA_nav_wind"}},
    },
    {
        init_pos={0, MFCD_FONT_LR3_Y, 0}, alignment = "CenterCenter", value = " VAR\n03  E", controllers = {{"DATA_nav_var"}},
    },
    {
        init_pos={0, MFCD_FONT_LR4_Y, 0}, alignment = "CenterCenter", value = "BARO SETTING\n 29.99 IN", controllers = {{"DATA_nav_baro"}},
    },
    {
        init_pos={MFCD_FONT_UD4_X, MFCD_FONT_LR5_Y, 0}, alignment = "CenterCenter", value = "R-ALT MIN\n1000 FT", controllers = {{"DATA_nav_ralt_min"}}
    },
    {
        init_pos={MFCD_FONT_UD2_X, MFCD_FONT_LR5_Y, 0}, alignment = "CenterCenter", value = "QNH", controllers = {{"DATA_nav_qnh_qfe"}}
    },
}

for i=1, #Poly_Text do
    cur_text              = CreateElement "ceStringPoly"
    cur_text.material     = MFCD_FONT_DEF
    cur_text.stringdefs   = MFCD_STRINGDEFS_DEF
    cur_text.init_pos     = Poly_Text[i].init_pos
    cur_text.alignment    = Poly_Text[i].alignment
    cur_text.value        = Poly_Text[i].value
    if Poly_Text[i].controllers ~= nil then
        cur_text.controllers = Poly_Text[i].controllers
    end
    AddToUpper(cur_text)
end


MFCD_TEX_IND1  = "mfcd_tex_ind1"

TEX_SIZE_X = 2048
TEX_SIZE_Y = 2048

---- 贴图部分
local texs = {
    {-- <----
        cx = -0.85, cy = MFCD_FONT_LR2_Y, hw = 233.333/2000, hh = 100/2000, ulx = 1480, uly = 1008, w = 140, h = 60,
        mat = MFCD_TEX_IND1, tex_sx = TEX_SIZE_X, tex_sy = TEX_SIZE_Y,
        ctrls = {{"nav_wind_state_draw"}, {"mfcd_isedit_show", 0}},
    },
    {-- ----> wind dir to
        cx = 0.85, cy = MFCD_FONT_LR2_Y, hw = 233.333/2000, hh = 100/2000, ulx = 1480, uly = 948, w = 140, h = 60,
        tex_sx = TEX_SIZE_X, tex_sy = TEX_SIZE_Y,
        ctrls = {{"nav_wind_state_draw"}, {"mfcd_isedit_show", 0}}
    },
    {-- <----
        cx = -0.85, cy = MFCD_FONT_LR5_Y, hw = 233.333/2000, hh = 100/2000, ulx = 1480, uly = 1008, w = 140, h = 60,
        mat = MFCD_TEX_IND1, tex_sx = TEX_SIZE_X, tex_sy = TEX_SIZE_Y,
        ctrls = {{"mfcd_isedit_show", 0}},
    },
    {-- ----> ralt min
        cx = 0.85, cy = MFCD_FONT_LR5_Y, hw = 233.333/2000, hh = 100/2000, ulx = 1480, uly = 948, w = 140, h = 60,
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
    tex_poly.vertices    = {{ texs[i].hw,  texs[i].hh},
                            { texs[i].hw, -texs[i].hh},
                            {-texs[i].hw, -texs[i].hh},
                            {-texs[i].hw,  texs[i].hh}}
    tex_poly.indices     = DEF_BOX_INDICES

    if texs[i].mat then
        tex_poly.material       = texs[i].mat
    end
    if texs[i].rx then
        tex_poly.init_rot       = {texs[i].rx, 0, 0}
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
