dofile(LockOn_Options.script_path .. "MFCD/MFCDs_defs.lua")

local page_root = create_page_root()


MFCD_TEX_IND1 = "mfcd_tex_ind1"

TEX_SIZE_X = 2048
TEX_SIZE_Y = 2048


---- 文字部分
local strs_tcn = {
    {
        cx = 0, cy = MFCD_FONT_LR3_Y, value = "TACAN OFF", strdef = MFCD_STRINGDEFS_DEF_X15,
        ctrls = {{"tcn_state_label"}},
    },
    {
        cx = MFCD_FONT_UD1_X, cy = MFCD_FONT_U_Y, value = "TACAN",
        ctrls = {{"tcn_number"}},
    },
    {
        cx = 0, cy = 0.6, value = "PROG 01",
        ctrls = {{"tcn_prog"}},
    },

}

for i=1, #(strs_tcn) do
    text_strpoly            = CreateElement "ceStringPoly"
    text_strpoly.material   = MFCD_FONT_DEF
    text_strpoly.stringdefs = MFCD_STRINGDEFS_DEF_X08
    text_strpoly.init_pos   = {strs_tcn[i].cx, strs_tcn[i].cy, 0}
    text_strpoly.alignment  = "CenterCenter"
    
    if strs_tcn[i].strdef then
        text_strpoly.stringdefs     = strs_tcn[i].strdef
    end
    if strs_tcn[i].alignment then
        text_strpoly.alignment      = strs_tcn[i].alignment
    end    
    if strs_tcn[i].formats then
        text_strpoly.formats        = strs_tcn[i].formats
    end
    if strs_tcn[i].params then
        text_strpoly.element_params = strs_tcn[i].params
    end
    if strs_tcn[i].ctrls then
        text_strpoly.controllers    = strs_tcn[i].ctrls
    end
    if strs_tcn[i].value then
        text_strpoly.value          = strs_tcn[i].value
    end
    AddToUpper(text_strpoly)
    text_strpoly = nil
end


lr_bias = 0.027

---- 贴图部分
local texs = {
    {-- 6方框
        cx= 0, cy = MFCD_FONT_LR3_Y, hw = 996.667/2000, hh = 1023.333/2000, ulx = 598, uly = 1188, w = 598, h = 614,
        mat = MFCD_TEX_IND1, tex_sx = TEX_SIZE_X, tex_sy = TEX_SIZE_Y,
        ctrls = {{"tcn_state_draw"}},
    },
        
    {-- <----
        cx = -0.85, cy = MFCD_FONT_LR2_Y, hw = 233.333/2000, hh = 100/2000, ulx = 1480, uly = 1008, w = 140, h = 60,
        mat = MFCD_TEX_IND1, tex_sx = TEX_SIZE_X, tex_sy = TEX_SIZE_Y,
        ctrls = {{"tcn_state_draw"}, {"mfcd_isedit_show", 0}},
    },
    {-- <----
        cx = -0.85, cy = MFCD_FONT_LR3_Y, hw = 233.333/2000, hh = 100/2000, ulx = 1480, uly = 1008, w = 140, h = 60,
        mat = MFCD_TEX_IND1, tex_sx = TEX_SIZE_X, tex_sy = TEX_SIZE_Y,
        ctrls = {{"tcn_state_draw"}, {"mfcd_isedit_show", 0}},
    },
    {-- <----
        cx = -0.85, cy = MFCD_FONT_LR4_Y, hw = 233.333/2000, hh = 100/2000, ulx = 1480, uly = 1008, w = 140, h = 60,
        mat = MFCD_TEX_IND1, tex_sx = TEX_SIZE_X, tex_sy = TEX_SIZE_Y,
        ctrls = {{"tcn_state_draw"}, {"mfcd_isedit_show", 0}},
    },
    {-- ---->
        cx = 0.85, cy = MFCD_FONT_LR2_Y, hw = 233.333/2000, hh = 100/2000, ulx = 1480, uly = 948, w = 140, h = 60,
        mat = MFCD_TEX_IND1, tex_sx = TEX_SIZE_X, tex_sy = TEX_SIZE_Y,
        ctrls = {{"tcn_state_draw"}, {"mfcd_isedit_show", 0}},
    },
    {-- ---->
        cx = 0.85, cy = MFCD_FONT_LR3_Y, hw = 233.333/2000, hh = 100/2000, ulx = 1480, uly = 948, w = 140, h = 60,
        mat = MFCD_TEX_IND1, tex_sx = TEX_SIZE_X, tex_sy = TEX_SIZE_Y,
        ctrls = {{"tcn_state_draw"}, {"mfcd_isedit_show", 0}},
    },
    {-- ---->
        cx = 0.85, cy = MFCD_FONT_LR4_Y, hw = 233.333/2000, hh = 100/2000, ulx = 1480, uly = 948, w = 140, h = 60,
        mat = MFCD_TEX_IND1, tex_sx = TEX_SIZE_X, tex_sy = TEX_SIZE_Y,
        ctrls = {{"tcn_state_draw"}, {"mfcd_isedit_show", 0}},
    },
    
 
    {-- L3
        cx= (MFCD_FONT_UD2_X+MFCD_FONT_UD3_X)/2 - lr_bias, cy = MFCD_FONT_LR3_Y, hw = 490/2000, hh = 343.333/2000, ulx = 1196, uly = 1390, w = 294, h = 206,
        ctrls = {{"tcn_prog_select_box", 1}}, mat = MFCD_TEX_IND1, tex_sx = TEX_SIZE_X, tex_sy = TEX_SIZE_Y,
    },
    {-- L4
        cx= (MFCD_FONT_UD2_X+MFCD_FONT_UD3_X)/2 - lr_bias, cy = MFCD_FONT_LR4_Y, hw = 490/2000, hh = 343.333/2000, ulx = 1196, uly = 1390, w = 294, h = 206,
        ctrls = {{"tcn_prog_select_box", 2}}, mat = MFCD_TEX_IND1, tex_sx = TEX_SIZE_X, tex_sy = TEX_SIZE_Y,
    },
    {-- R2
        cx= (MFCD_FONT_UD3_X+MFCD_FONT_UD4_X)/2 + lr_bias, cy = MFCD_FONT_LR2_Y, hw = 490/2000, hh = 343.333/2000, ulx = 1196, uly = 1390, w = 294, h = 206,
        ctrls = {{"tcn_prog_select_box", 4}}, mat = MFCD_TEX_IND1, tex_sx = TEX_SIZE_X, tex_sy = TEX_SIZE_Y,
    },
    {-- R4
        cx= (MFCD_FONT_UD3_X+MFCD_FONT_UD4_X)/2 + lr_bias, cy = MFCD_FONT_LR4_Y, hw = 490/2000, hh = 343.333/2000, ulx = 1196, uly = 1390, w = 294, h = 206,
        ctrls = {{"tcn_prog_select_box", 6}}, mat = MFCD_TEX_IND1, tex_sx = TEX_SIZE_X, tex_sy = TEX_SIZE_Y,
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
    if texs[i].rx then
        tex_poly.init_rot    = {texs[i].rx, 0, 0}
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


local hw = 0.3
local hh = 0.2
tbl_left_col_align = -0.42
tbl_right_col_align = 0.04

local tcn_text = {
    {
        init_pos={tbl_left_col_align,  MFCD_FONT_LR2_Y, 0}, alignment = "LeftCenter", value = "TCN MODE\nOFF",
        controllers = {{"tcn_mode"}},
    },
    {
        init_pos={tbl_right_col_align, MFCD_FONT_LR2_Y, 0}, alignment = "LeftCenter", value = "CHANNAL\n180",
        controllers = {{"tcn_channel"}},
    },
    {
        init_pos={tbl_left_col_align,  MFCD_FONT_LR3_Y, 0}, alignment = "LeftCenter", value = "COURSE\n180",
        controllers = {{"tcn_course"}},
    },
    {
        init_pos={tbl_right_col_align, MFCD_FONT_LR3_Y, 0}, alignment = "LeftCenter", value = "BAND\nX",
        controllers = {{"tcn_band"}},
    },
    {
        init_pos={tbl_left_col_align,  MFCD_FONT_LR4_Y, 0}, alignment = "LeftCenter", value = "ALT\n+500",
        controllers = {{"tcn_alt"}},
    },
    {
        init_pos={tbl_right_col_align, MFCD_FONT_LR4_Y, 0}, alignment = "LeftCenter", value = "VAR\n5E",
        controllers = {{"tcn_var"}},
    },
}

for i=1, #tcn_text do
    cur_text             = CreateElement "ceStringPoly"
    cur_text.material    = MFCD_FONT_DEF
    cur_text.stringdefs  = MFCD_STRINGDEFS_DEF_X08
    cur_text.init_pos    = tcn_text[i].init_pos
    cur_text.alignment   = tcn_text[i].alignment
    cur_text.value       = tcn_text[i].value
    cur_text.controllers = tcn_text[i].controllers
    AddToUpper(cur_text)
end

