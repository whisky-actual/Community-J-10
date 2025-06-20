dofile(LockOn_Options.script_path .. "MFCD/MFCDs_defs.lua")

local page_root = create_page_root()


__SHOW_ARM_STATE__ = true


dofile(LockOn_Options.script_path .. "MFCD/Indicator/UP_R1_SMS_Base.lua")

MFCD_TEX_IND1 = "mfcd_tex_ind1"

TEX_SIZE_X = 2048
TEX_SIZE_Y = 2048

---- 贴图部分
local texs = {
    {-- 方框 PL-5
        cx= 0, cy = (MFCD_FONT_LR4_Y + MFCD_FONT_LR5_Y)/2, hw = 996.667/2000, hh = 703.333/2000, ulx = 0, uly = 1078, w = 598, h = 422,
        mat = MFCD_TEX_IND1, tex_sx = TEX_SIZE_X, tex_sy = TEX_SIZE_Y,
        ctrls = {{"sms_aa_ir_msl", 1}},
    },
    {-- 方框 SD-10
        cx= 0, cy = MFCD_FONT_LR4_Y, hw = 996.667/2000, hh = 1023.333/2000, ulx = 598, uly = 1188, w = 598, h = 614,
        mat = MFCD_TEX_IND1, tex_sx = TEX_SIZE_X, tex_sy = TEX_SIZE_Y,
        ctrls = {{"sms_aa_ir_msl", 0}},
    },
    {-- rdy disable X
        cx = -0.18, cy = MFCD_FONT_LR5_Y - 5/8 * (MFCD_FONT_LR4_Y - MFCD_FONT_LR5_Y),
        hw = 126.667/2000, hh = 126.667/2000, ulx = 1912, uly = 86, w = 76, h = 76,
        mat = MFCD_TEX_IND1, tex_sx = TEX_SIZE_X, tex_sy = TEX_SIZE_Y,
        ctrls = {{"sms_prog_la_state_mark"}},
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
    
    {-- A/A PROG1
        cx = 0.00, cy = -0.48 + 0.40, value = "A/A PROG1",
        ctrls = {{"sms_program_indicator", 0}, {"sms_aa_ir_msl", 1}}
    },
    {-- A/A PROG1
        cx = 0.00, cy = -0.48 + 0.40 - (MFCD_FONT_LR4_Y - MFCD_FONT_LR3_Y), value = "A/A PROG1",
        ctrls = {{"sms_program_indicator", 0}, {"sms_aa_ir_msl", 0}}
    },
    
    
    {-- A/A1
        cx = MFCD_FONT_UD1_X, cy = MFCD_FONT_U_Y, value = "A/A1",
        ctrls = {{"sms_program_osb", 0}}
    },
    {-- LOAD
        cx = MFCD_FONT_UD5_X, cy = MFCD_FONT_U_Y, value = "LOAD",
        ctrls = {{"sms_state_draw"}},
    },
    {-- FEED
        name = "sms_aa_feed_osb",
        cx = MFCD_FONT_UD2_X, cy = MFCD_FONT_U_Y, value = "FEED",
        ctrls = {{"sms_feed_blink"}},
    },
    {-- GUN
        name = "sms_aa_gun_osb",
        cx = MFCD_FONT_L_HORI_X, cy = MFCD_FONT_LR2_Y, value = "GUN", alignment = "LeftCenter",
        ctrls = {{"sms_gun_blink"}, {"mfcd_isedit_show", 0}},
    },
    
    {-- AG WPN LA STATE
        cx = -0.24, cy = MFCD_FONT_LR5_Y - 5/8 * (MFCD_FONT_LR4_Y - MFCD_FONT_LR5_Y), value = "RDY", alignment = "LeftCenter",
        ctrls = {{"sms_prog_la_state_text"}}
    },
    
    --
    {-- WPN
        cx = tbl_left_col_align, cy = MFCD_FONT_LR4_Y + tbl_bias_up, value = "WPN", alignment = "LeftCenter",
        ctrls = {{"sms_state_draw"}},
    },
    {
        cx = tbl_left_col_align, cy = MFCD_FONT_LR4_Y + tbl_bias_dn, value = "---", alignment = "LeftCenter",
        ctrls = {{"sms_prog_aa_wpn"}}
    },
    
    {-- LIMITER
        cx = tbl_right_col_align, cy = MFCD_FONT_LR4_Y + tbl_bias_up, value = "LIMITER", alignment = "LeftCenter",
        ctrls = {{"sms_prog_aa_limiter", 1}, {"sms_state_draw"}},
    },
    {
        cx = tbl_right_col_align, cy = MFCD_FONT_LR4_Y + tbl_bias_dn, value = "OFF", alignment = "LeftCenter",
        ctrls = {{"sms_prog_aa_limiter"}}
    },
    
    {-- GUN SIGHT
        cx = tbl_right_col_align, cy = MFCD_FONT_LR5_Y + tbl_bias_up, value = "GUN SIGHT", alignment = "LeftCenter",
        ctrls = {{"sms_prog_aa_gun_sight", 1}, {"sms_state_draw"}},
    },
    {
        cx = tbl_right_col_align, cy = MFCD_FONT_LR5_Y + tbl_bias_dn, value = "LCOS", alignment = "LeftCenter",
        ctrls = {{"sms_prog_aa_gun_sight"}}
    },
    
    -- for SD-10
    {-- PREP MODE
        cx = tbl_left_col_align, cy = MFCD_FONT_LR3_Y + tbl_bias_up, value = "PREP MODE", alignment = "LeftCenter",
        ctrls = {{"sms_aa_ir_msl", 0}},
    },
    {
        cx = tbl_left_col_align, cy = MFCD_FONT_LR3_Y + tbl_bias_dn, value = "---", alignment = "LeftCenter",
        ctrls = {{"sms_prog_aa_prep_mode"}, {"sms_aa_ir_msl", 0}}
    },
    
    {-- TGT TYPE
        cx = tbl_right_col_align, cy = MFCD_FONT_LR3_Y + tbl_bias_up, value = "TGT TYPE", alignment = "LeftCenter",
        ctrls = {{"sms_aa_ir_msl", 0}},
    },
    {
        cx = tbl_right_col_align, cy = MFCD_FONT_LR3_Y + tbl_bias_dn, value = "---", alignment = "LeftCenter",
        ctrls = {{"sms_prog_aa_tgt_type"}, {"sms_aa_ir_msl", 0}}
    },
    
    {-- MSL BIT
        cx = tbl_left_col_align, cy = MFCD_FONT_LR5_Y + tbl_bias_up, value = "MSL BIT", alignment = "LeftCenter",
        ctrls = {{"sms_prog_aa_msl_bit", 1}, {"sms_aa_ir_msl", 0}},
    },
    {
        cx = tbl_left_col_align, cy = MFCD_FONT_LR5_Y + tbl_bias_dn, value = "---", alignment = "LeftCenter",
        ctrls = {{"sms_prog_aa_msl_bit"}, {"sms_aa_ir_msl", 0}}
    },
}

for i=1, #(texts) do
    text_strpoly            = CreateElement "ceStringPoly"
    text_strpoly.material   = MFCD_FONT_DEF
    text_strpoly.stringdefs = MFCD_STRINGDEFS_DEF
    text_strpoly.init_pos   = {texts[i].cx, texts[i].cy, 0}
    text_strpoly.alignment  = "CenterCenter"
    
    if texts[i].name then
        text_strpoly.name           = texts[i].name
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
    if texts[i].ctrls then
        text_strpoly.controllers    = texts[i].ctrls
    end
    if texts[i].value then
        text_strpoly.value          = texts[i].value
    end
    AddToUpper(text_strpoly)
    text_strpoly = nil
end
