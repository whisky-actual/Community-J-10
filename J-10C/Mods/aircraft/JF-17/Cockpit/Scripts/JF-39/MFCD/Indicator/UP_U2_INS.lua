dofile(LockOn_Options.script_path .. "MFCD/MFCDs_defs.lua")

local page_root = create_page_root()


local Poly_Text

--N
tbl_left_col_align  = -0.42
tbl_right_col_align = 0.04


local texts = {
    {-- OSB
        cx = MFCD_FONT_UD1_X, cy = MFCD_FONT_U_Y, value = "INS", alignment = "CenterCenter", strdef = MFCD_STRINGDEFS_DEF_X08,
        --ctrls = {{"mfcd_isedit_show", 0}},
    },
    {-- Running State
        cx = 0, cy = MFCD_FONT_LR3_Y, value = "INS OFF", alignment = "CenterCenter", strdef = MFCD_STRINGDEFS_DEF_X15,
        ctrls = {{"INS_state_label"}},
    },
    {-- Title
        cx = 0, cy = MFCD_FONT_LR1_Y, value = "INS", alignment = "CenterCenter", strdef = MFCD_STRINGDEFS_DEF_X15,
        ctrls = {{"INS_state_draw"}},
    },
    {-- INS align
        cx = 0, cy = (MFCD_FONT_LR1_Y+MFCD_FONT_LR2_Y)/2, value = "STBY", alignment = "CenterCenter", strdef = MFCD_STRINGDEFS_DEF,
        ctrls = {{"INS_align_state"}},
    },
    {-- INS timeout
        cx = 0, cy = (MFCD_FONT_LR2_Y+MFCD_FONT_LR3_Y)/2, value = "REMAIN", alignment = "CenterCenter", strdef = MFCD_STRINGDEFS_DEF,
        ctrls = {{"INS_timeout"}},
    },

    -----

    {-- align type
        cx = tbl_left_col_align, cy = MFCD_FONT_LR3_Y, value = "ALIGN", alignment = "LeftCenter", strdef = MFCD_STRINGDEFS_DEF,
        ctrls = {{"INS_align_type"}},
    },
    {-- remain
        cx = tbl_right_col_align, cy = MFCD_FONT_LR3_Y, value = "REMAIN", alignment = "LeftCenter", strdef = MFCD_STRINGDEFS_DEF,
        ctrls = {{"INS_align_remain"}},
    },

    {-- N/S
        cx = tbl_left_col_align, cy = MFCD_FONT_LR4_Y, value = "N", alignment = "LeftCenter", strdef = MFCD_STRINGDEFS_DEF,
        ctrls = {{"INS_latlong_NS"}},
    },
    {-- E/W
        cx = tbl_right_col_align, cy = MFCD_FONT_LR4_Y, value = "E", alignment = "LeftCenter", strdef = MFCD_STRINGDEFS_DEF,
        ctrls = {{"INS_latlong_EW"}},
    },
    {-- ALT
        cx = tbl_left_col_align, cy = MFCD_FONT_LR5_Y, value = "0000", alignment = "LeftCenter", strdef = MFCD_STRINGDEFS_DEF,
        ctrls = {{"INS_alt"}},
    },
    {-- ALT
        cx = tbl_right_col_align, cy = MFCD_FONT_LR5_Y, value = "000", alignment = "LeftCenter", strdef = MFCD_STRINGDEFS_DEF,
        ctrls = {{"INS_thdg"}},
    },
}

for i=1, #(texts) do
    text_strpoly            = CreateElement "ceStringPoly"
    text_strpoly.material   = MFCD_FONT_DEF
    text_strpoly.stringdefs = MFCD_STRINGDEFS_DEF
    text_strpoly.init_pos   = {texts[i].cx, texts[i].cy, 0}
    text_strpoly.alignment  = "CenterCenter"
    
    if texts[i].strdef then
        text_strpoly.stringdefs      = texts[i].strdef
    end    
    if texts[i].alignment then
        text_strpoly.alignment      = texts[i].alignment
    end    
    if texts[i].formats then
        text_strpoly.formats        = texts[i].formats
    end
    if texts[i].params then
        text_strpoly.element_params = texts[i].params
    end
    if texts[i].value then
        text_strpoly.value          = texts[i].value
    end
    if texts[i].ctrls then
        text_strpoly.controllers    = texts[i].ctrls
    end
    AddToUpper(text_strpoly)
    text_strpoly = nil
end


MFCD_TEX_IND1 = "mfcd_tex_ind1"

TEX_SIZE_X = 2048
TEX_SIZE_Y = 2048

lr_bias = 0.027

---- 贴图部分
local texs = {
    {-- 4格方框
        cx= 0, cy = (MFCD_FONT_LR4_Y+MFCD_FONT_LR5_Y)/2, hw = 996.667/2000, hh = 703.333/2000, ulx = 0, uly = 656, w = 598, h = 422,
        mat = MFCD_TEX_IND1, tex_sx = TEX_SIZE_X, tex_sy = TEX_SIZE_Y,
        ctrls = {{"INS_state_table", 0}}
    },
    {-- 6格方框
        cx= 0, cy = MFCD_FONT_LR4_Y,                     hw = 996.667/2000, hh = 1023.333/2000, ulx = 598, uly = 1188, w = 598, h = 614,
        mat = MFCD_TEX_IND1, tex_sx = TEX_SIZE_X, tex_sy = TEX_SIZE_Y,
        ctrls = {{"INS_state_table", 1}},
    },
    
    --[[
    {-- <----
        cx = -0.85, cy = MFCD_FONT_LR4_Y, hw = 0.1, hh = 0.03, ulx = 16, uly = 231, w = 90, h = 30,
        tex_sx = TEX_SIZE_X, tex_sy = TEX_SIZE_Y,
        ctrls = {{"INS_state_draw"}}
    },
    {-- <----
        cx = -0.85, cy = MFCD_FONT_LR5_Y, hw = 0.1, hh = 0.03, ulx = 16, uly = 231, w = 90, h = 30,
        tex_sx = TEX_SIZE_X, tex_sy = TEX_SIZE_Y,
        ctrls = {{"INS_state_draw"}}
    },
    {-- ---->
        cx = 0.85, cy = MFCD_FONT_LR4_Y, hw = 0.1, hh = 0.03, ulx = 10, uly = 104, w = 90, h = 30,
        tex_sx = TEX_SIZE_X, tex_sy = TEX_SIZE_Y,
        ctrls = {{"INS_state_draw"}}
    },
    ]]
    {-- ----> thdg
        cx = 0.85, cy = MFCD_FONT_LR5_Y, hw = 233.333/2000, hh = 100/2000, ulx = 1480, uly = 948, w = 140, h = 60,
        tex_sx = TEX_SIZE_X, tex_sy = TEX_SIZE_Y, mat = MFCD_TEX_IND1,
        ctrls = {{"INS_align_thdg"}, {"mfcd_isedit_show", 0}}
    },

    {-- R5
        cx= (MFCD_FONT_UD3_X+MFCD_FONT_UD4_X)/2 + lr_bias, cy = MFCD_FONT_LR5_Y, hw = 490/2000, hh = 343.333/2000, ulx = 1196, uly = 1390, w = 294, h = 206,
        ctrls = {{"ins_prog_select_box", 7}}, mat = MFCD_TEX_IND1, tex_sx = TEX_SIZE_X, tex_sy = TEX_SIZE_Y,
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

