dofile(LockOn_Options.script_path .. "MFCD/MFCDs_defs.lua")

local page_root = create_page_root()

MFCD_TEX_IND1 = "mfcd_tex_ind1"

TEX_SIZE_X = 2048
TEX_SIZE_Y = 2048

tbl_bias_up =  0.06
tbl_bias_dn = -0.06

tbl_left_col_align  = -0.42
tbl_right_col_align =  0.04

lr_bias = 0.027

---- 贴图部分
local texs = {
    {-- 方框
        cx= 0, cy = MFCD_FONT_LR3_Y, hw = 996.667/2000, hh = 1023.333/2000, ulx = 598, uly = 1188, w = 598, h = 614,
        tex_sx = TEX_SIZE_X, tex_sy = TEX_SIZE_Y,
        ctrls = {{"clink_state_draw"}},
    },
    
    {-- <----
        cx = -0.85, cy = MFCD_FONT_LR3_Y, hw = 233.333/2000, hh = 100/2000, ulx = 1480, uly = 1008, w = 140, h = 60,
        mat = MFCD_TEX_IND1, tex_sx = TEX_SIZE_X, tex_sy = TEX_SIZE_Y,
        ctrls = {{"clink_state_draw"}, {"mfcd_isedit_show", 0}},
    },
    {-- ---->
        cx = 0.85, cy = MFCD_FONT_LR2_Y, hw = 233.333/2000, hh = 100/2000, ulx = 1480, uly = 948, w = 140, h = 60,
        mat = MFCD_TEX_IND1, tex_sx = TEX_SIZE_X, tex_sy = TEX_SIZE_Y,
        ctrls = {{"clink_state_draw"}, {"mfcd_isedit_show", 0}},
    },
    {-- ---->
        cx = 0.85, cy = MFCD_FONT_LR3_Y, hw = 233.333/2000, hh = 100/2000, ulx = 1480, uly = 948, w = 140, h = 60,
        mat = MFCD_TEX_IND1, tex_sx = TEX_SIZE_X, tex_sy = TEX_SIZE_Y,
        ctrls = {{"clink_state_draw"}, {"mfcd_isedit_show", 0}},
    },
    {-- ---->
        cx = 0.85, cy = MFCD_FONT_LR4_Y, hw = 233.333/2000, hh = 100/2000, ulx = 1480, uly = 948, w = 140, h = 60,
        mat = MFCD_TEX_IND1, tex_sx = TEX_SIZE_X, tex_sy = TEX_SIZE_Y,
        ctrls = {{"clink_state_draw"}, {"mfcd_isedit_show", 0}},
    },
    
    {-- L2
        cx= (MFCD_FONT_UD2_X+MFCD_FONT_UD3_X)/2 - lr_bias, cy = MFCD_FONT_LR2_Y, hw = 490/2000, hh = 343.333/2000, ulx = 1196, uly = 1390, w = 294, h = 206,
        ctrls = {{"clink_select_box", 0}}, mat = MFCD_TEX_IND1, tex_sx = TEX_SIZE_X, tex_sy = TEX_SIZE_Y,
    },
    {-- L3
        cx= (MFCD_FONT_UD2_X+MFCD_FONT_UD3_X)/2 - lr_bias, cy = MFCD_FONT_LR3_Y, hw = 490/2000, hh = 343.333/2000, ulx = 1196, uly = 1390, w = 294, h = 206,
        ctrls = {{"clink_select_box", 1}}, mat = MFCD_TEX_IND1, tex_sx = TEX_SIZE_X, tex_sy = TEX_SIZE_Y,
    },
    {-- R2
        cx= (MFCD_FONT_UD3_X+MFCD_FONT_UD4_X)/2 + lr_bias, cy = MFCD_FONT_LR2_Y, hw = 490/2000, hh = 343.333/2000, ulx = 1196, uly = 1390, w = 294, h = 206,
        ctrls = {{"clink_select_box", 4}}, mat = MFCD_TEX_IND1, tex_sx = TEX_SIZE_X, tex_sy = TEX_SIZE_Y,
    },
    {-- R3
        cx= (MFCD_FONT_UD3_X+MFCD_FONT_UD4_X)/2 + lr_bias, cy = MFCD_FONT_LR3_Y, hw = 490/2000, hh = 343.333/2000, ulx = 1196, uly = 1390, w = 294, h = 206,
        ctrls = {{"clink_select_box", 5}}, mat = MFCD_TEX_IND1, tex_sx = TEX_SIZE_X, tex_sy = TEX_SIZE_Y,
    },
    {-- R4
        cx= (MFCD_FONT_UD3_X+MFCD_FONT_UD4_X)/2 + lr_bias, cy = MFCD_FONT_LR4_Y, hw = 490/2000, hh = 343.333/2000, ulx = 1196, uly = 1390, w = 294, h = 206,
        ctrls = {{"clink_select_box", 6}}, mat = MFCD_TEX_IND1, tex_sx = TEX_SIZE_X, tex_sy = TEX_SIZE_Y,
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



---- 文字部分
local texts = {
    {-- CLINK
        cx = MFCD_FONT_UD1_X, cy = MFCD_FONT_U_Y, value = "CLINK",
    },    
    
    {
        cx = tbl_left_col_align, cy = MFCD_FONT_LR2_Y, value = "ID\n\nXX", align = "LeftCenter",
        ctrls = {{"clink_net_id"}}
    },    
    {
        cx = tbl_left_col_align, cy = MFCD_FONT_LR3_Y, value = "NET\n\nONOFF", align = "LeftCenter",
        ctrls = {{"clink_net_on_off"}}
    },
    {
        cx = tbl_right_col_align, cy = MFCD_FONT_LR2_Y, value = "MODE\n\nSLAVE", align = "LeftCenter",
        ctrls = {{"clink_net_mode"}}
    },
    {
        cx = tbl_right_col_align, cy = MFCD_FONT_LR3_Y, value = "CHNL ID\n\n10086", align = "LeftCenter",
        ctrls = {{"clink_chnl_id"}}
    },
    {
        cx = tbl_right_col_align, cy = MFCD_FONT_LR4_Y, value = "GROUP", align = "LeftCenter",
    },
    
}

for i=1, #(texts) do
    text_strpoly            = CreateElement "ceStringPoly"
    text_strpoly.material   = MFCD_FONT_DEF
    text_strpoly.stringdefs = MFCD_STRINGDEFS_DEF
    text_strpoly.init_pos   = {texts[i].cx, texts[i].cy, 0}
    text_strpoly.alignment  = "CenterCenter"
        
    if texts[i].align then
        text_strpoly.alignment      = texts[i].align
    end    
    if texts[i].formats then
        text_strpoly.formats        = texts[i].formats
    end
    if texts[i].params then
        text_strpoly.element_params = texts[i].params
    end
    if texts[i].ctrls then
        text_strpoly.controllers    = texts[i].ctrls
    end
    if texts[i].value then
        text_strpoly.value          = texts[i].value
    end
    AddToUpper(text_strpoly)
    text_strpoly = nil
end

