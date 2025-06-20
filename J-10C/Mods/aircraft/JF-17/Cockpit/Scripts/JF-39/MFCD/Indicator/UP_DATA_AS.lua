dofile(LockOn_Options.script_path .. "MFCD/MFCDs_defs.lua")

local page_root = create_page_root()


MFCD_TEX_IND1  = "mfcd_tex_ind1"

TEX_SIZE_X = 2048
TEX_SIZE_Y = 2048


---- 贴图部分
local texs = {
    {-- <----
        cx = -0.85, cy = MFCD_FONT_LR2_Y, hw = 233.333/2000, hh = 100/2000, ulx = 1480, uly = 1008, w = 140, h = 60,
        mat = MFCD_TEX_IND1, tex_sx = TEX_SIZE_X, tex_sy = TEX_SIZE_Y,
        ctrls = {{"sms_state_draw"}, {"mfcd_isedit_show", 0}},
    },
    {-- <----
        cx = -0.85, cy = MFCD_FONT_LR3_Y, hw = 233.333/2000, hh = 100/2000, ulx = 1480, uly = 1008, w = 140, h = 60,
        mat = MFCD_TEX_IND1, tex_sx = TEX_SIZE_X, tex_sy = TEX_SIZE_Y,
        ctrls = {{"sms_state_draw"}, {"mfcd_isedit_show", 0}},
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
                            {-texs[i].hw, texs[i].hh} }
    tex_poly.indices     = DEF_BOX_INDICES

    if texs[i].mat then
        tex_poly.material = texs[i].mat
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

-- Data
local data_txt = {
    {
        value="AS DATA", init_pos={MFCD_FONT_UD1_X, MFCD_FONT_U_Y}, align="CenterCenter",
    },
    {
        value="DTOS DEP\n\n", init_pos={MFCD_FONT_UD2_X, MFCD_FONT_LR2_Y}, align="CenterCenter",
    },
    {
        value="\n\n    50",   init_pos={MFCD_FONT_UD2_X, MFCD_FONT_LR2_Y}, align="CenterCenter",
        ctrl = {{"data_as_dtos_dep"}},
    },
    {
        value="DIR DEP\n\n",  init_pos={MFCD_FONT_UD2_X, MFCD_FONT_LR3_Y}, align="CenterCenter",
    },
    {
        value="\n\n   150",   init_pos={MFCD_FONT_UD2_X, MFCD_FONT_LR3_Y}, align="CenterCenter",
        ctrl = {{"data_as_dir_dep"}},
    },
}

local text_strpoly
local mesh_poly

for i=1, #(data_txt) do
    text_strpoly              = CreateElement "ceStringPoly"
    text_strpoly.material     = MFCD_FONT_DEF
    text_strpoly.stringdefs   = MFCD_STRINGDEFS_DEF_X08
    text_strpoly.init_pos     = data_txt[i].init_pos
    text_strpoly.alignment    = data_txt[i].align
    text_strpoly.value        = data_txt[i].value
    if data_txt[i].ctrl then
        text_strpoly.controllers  = data_txt[i].ctrl
    end
    AddToUpper(text_strpoly)
    text_strpoly = nil
end

