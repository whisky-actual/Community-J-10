dofile(LockOn_Options.script_path .. "MFCD/MFCDs_defs.lua")

__SHOW_ARM_STATE__ = true
dofile(LockOn_Options.script_path .. "MFCD/Indicator/UP_R1_SMS_Base.lua")

local page_root = create_page_root()

MFCD_TEX_IND1 = "mfcd_tex_ind1"
MFCD_TEX_IND2 = "mfcd_tex_ind2"

TEX_SIZE_X = 2048
TEX_SIZE_Y = 2048

-- for table text
tbl_bias_up = 0.06
tbl_bias_dn = -0.06

tbl_left_col_align = -0.42
tbl_right_col_align = 0.04

lr_bias = 0.027
y_bias = (MFCD_FONT_LR3_Y - MFCD_FONT_LR4_Y) / 3

---- 贴图部分
local texs = {

    {-- 方框
        cx= 0, cy = MFCD_FONT_LR4_Y, hw = 996.667/2000, hh = 1023.333/2000, ulx = 598, uly = 1188, w = 598, h = 614,
        mat = MFCD_TEX_IND1, tex_sx = TEX_SIZE_X, tex_sy = TEX_SIZE_Y,
        ctrls = {{"sms_state_draw"}},
    },

    {-- rdy disable X
        cx = -0.18, cy = MFCD_FONT_LR5_Y - 5/8 * (MFCD_FONT_LR4_Y - MFCD_FONT_LR5_Y),
        hw = 126.667/2000, hh = 126.667/2000, ulx = 1912, uly = 86, w = 76, h = 76,
        mat = MFCD_TEX_IND1, tex_sx = TEX_SIZE_X, tex_sy = TEX_SIZE_Y,
        ctrls = {{"sms_prog_la_state_mark"}, {"mfcd_isedit_show", 0}},
    },

    {-- <----
        cx = -0.85, cy = MFCD_FONT_LR3_Y, hw = 233.333/2000, hh = 100/2000, ulx = 1480, uly = 1008, w = 140, h = 60,
        mat = MFCD_TEX_IND1, tex_sx = TEX_SIZE_X, tex_sy = TEX_SIZE_Y,
        ctrls = {{"sms_state_draw"}, {"mfcd_isedit_show", 0}},
    },
    {-- <----
        cx = -0.85, cy = MFCD_FONT_LR4_Y, hw = 233.333/2000, hh = 100/2000, ulx = 1480, uly = 1008, w = 140, h = 60,
        mat = MFCD_TEX_IND1, tex_sx = TEX_SIZE_X, tex_sy = TEX_SIZE_Y,
        ctrls = {{"sms_state_draw"}, {"mfcd_isedit_show", 0}},
    },
    {-- <----
        cx = -0.85, cy = MFCD_FONT_LR5_Y, hw = 233.333/2000, hh = 100/2000, ulx = 1480, uly = 1008, w = 140, h = 60,
        mat = MFCD_TEX_IND1, tex_sx = TEX_SIZE_X, tex_sy = TEX_SIZE_Y,
        ctrls = {{"sms_state_draw"}, {"mfcd_isedit_show", 0}},
    },
    {-- ---->
        cx = 0.85, cy = MFCD_FONT_LR3_Y, hw = 233.333/2000, hh = 100/2000, ulx = 1480, uly = 948, w = 140, h = 60,
        mat = MFCD_TEX_IND1, tex_sx = TEX_SIZE_X, tex_sy = TEX_SIZE_Y,
        ctrls = {{"sms_state_draw"}, {"mfcd_isedit_show", 0}},
    },
    {-- ---->
        cx = 0.85, cy = MFCD_FONT_LR4_Y, hw = 233.333/2000, hh = 100/2000, ulx = 1480, uly = 948, w = 140, h = 60,
        mat = MFCD_TEX_IND1, tex_sx = TEX_SIZE_X, tex_sy = TEX_SIZE_Y,
        ctrls = {{"sms_state_draw"}, {"mfcd_isedit_show", 0}},
    },
    {-- ---->
        cx = 0.85, cy = MFCD_FONT_LR5_Y, hw = 233.333/2000, hh = 100/2000, ulx = 1480, uly = 948, w = 140, h = 60,
        mat = MFCD_TEX_IND1, tex_sx = TEX_SIZE_X, tex_sy = TEX_SIZE_Y,
        ctrls = {{"sms_state_draw"}, {"mfcd_isedit_show", 0}},
    },

    {-- L5
        cx= (MFCD_FONT_UD2_X+MFCD_FONT_UD3_X)/2 - lr_bias, cy = MFCD_FONT_LR5_Y, hw = 490/2000, hh = 343.333/2000, ulx = 1196, uly = 1390, w = 294, h = 206,
        ctrls = {{"sms_prog_select_box", 3}}, mat = MFCD_TEX_IND1, tex_sx = TEX_SIZE_X, tex_sy = TEX_SIZE_Y,
    },
    {-- R4
        cx= (MFCD_FONT_UD3_X+MFCD_FONT_UD4_X)/2 + lr_bias, cy = MFCD_FONT_LR4_Y, hw = 490/2000, hh = 343.333/2000, ulx = 1196, uly = 1390, w = 294, h = 206,
        ctrls = {{"sms_prog_select_box", 6}}, mat = MFCD_TEX_IND1, tex_sx = TEX_SIZE_X, tex_sy = TEX_SIZE_Y,
    },
    {-- R5
        cx= (MFCD_FONT_UD3_X+MFCD_FONT_UD4_X)/2 + lr_bias, cy = MFCD_FONT_LR5_Y, hw = 490/2000, hh = 343.333/2000, ulx = 1196, uly = 1390, w = 294, h = 206,
        ctrls = {{"sms_prog_select_box", 7}}, mat = MFCD_TEX_IND1, tex_sx = TEX_SIZE_X, tex_sy = TEX_SIZE_Y,
    },

    {-- L3 disable X
        cx = -0.5*238/512, cy = MFCD_FONT_LR3_Y, hw = 530/2000, hh = 336.667/2000, ulx = 1196, uly = 1188, w = 318, h = 202,
        mat = MFCD_TEX_IND1, tex_sx = TEX_SIZE_X, tex_sy = TEX_SIZE_Y,
        ctrls = {{"sms_prog_ag_l3_x_mark"}, {"mfcd_isedit_show", 0}},
    },
    {-- L4 disable X
        cx = -0.5*238/512, cy = MFCD_FONT_LR4_Y, hw = 530/2000, hh = 336.667/2000, ulx = 1196, uly = 1188, w = 318, h = 202,
        mat = MFCD_TEX_IND1, tex_sx = TEX_SIZE_X, tex_sy = TEX_SIZE_Y,
        ctrls = {{"sms_prog_ag_l4_x_mark"}, {"mfcd_isedit_show", 0}},
    },
    {-- L5 disable X
        cx = -0.5*238/512, cy = MFCD_FONT_LR5_Y, hw = 530/2000, hh = 336.667/2000, ulx = 1196, uly = 1188, w = 318, h = 202,
        mat = MFCD_TEX_IND1, tex_sx = TEX_SIZE_X, tex_sy = TEX_SIZE_Y,
        ctrls = {{"sms_prog_ag_l5_x_mark"}, {"mfcd_isedit_show", 0}},
    },
    {-- R3 disable X
        cx = 0.5*238/512, cy = MFCD_FONT_LR3_Y, hw = 530/2000, hh = 336.667/2000, ulx = 1196, uly = 1188, w = 318, h = 202,
        mat = MFCD_TEX_IND1, tex_sx = TEX_SIZE_X, tex_sy = TEX_SIZE_Y,
        ctrls = {{"sms_prog_ag_r3_x_mark"}, {"mfcd_isedit_show", 0}},
    },
    {-- R4 disable X
        cx = 0.5*238/512, cy = MFCD_FONT_LR4_Y, hw = 530/2000, hh = 336.667/2000, ulx = 1196, uly = 1188, w = 318, h = 202,
        mat = MFCD_TEX_IND1, tex_sx = TEX_SIZE_X, tex_sy = TEX_SIZE_Y,
        ctrls = {{"sms_prog_ag_r4_x_mark"}, {"mfcd_isedit_show", 0}},
    },
    {-- R5 disable X
        cx = 0.5*238/512, cy = MFCD_FONT_LR5_Y, hw = 530/2000, hh = 336.667/2000, ulx = 1196, uly = 1188, w = 318, h = 202,
        mat = MFCD_TEX_IND1, tex_sx = TEX_SIZE_X, tex_sy = TEX_SIZE_Y,
        ctrls = {{"sms_prog_ag_r5_x_mark"}, {"mfcd_isedit_show", 0}},
    },

    --[[
    {-- rdy disable X
        cx = -0.18, cy = MFCD_FONT_LR5_Y - 5/8 * (MFCD_FONT_LR4_Y - MFCD_FONT_LR5_Y),
        hw = 126.667/2000, hh = 126.667/2000, ulx = 1912, uly = 86, w = 76, h = 76,
        mat = MFCD_TEX_IND1, tex_sx = TEX_SIZE_X, tex_sy = TEX_SIZE_Y,
        ctrls = {{"sms_prog_la_state_mark"}, {"mfcd_isedit_show", 0}},
    },
    ]]

    {-- CNTL
        cx = MFCD_BOX4_L_HORI_X, cy = MFCD_FONT_LR1_Y, hw = 138/160 * 266.667/2000, hh = 133.333/2000, ulx = 72, uly = 1850, w = 138, h = 80,
        mat = MFCD_TEX_IND2, tex_sx = TEX_SIZE_X, tex_sy = TEX_SIZE_Y,
        ctrls = {{"mfcd_isedit_show", 0}},
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
    --[[
    {-- CLR D1
        cx = MFCD_FONT_UD1_X, cy = MFCD_FONT_D_Y - UP_CY, value = "CLR",
        ctrls = {{"sms_state_draw"}},
    },
    {-- CMBT D2
        cx = MFCD_FONT_UD2_X, cy = MFCD_FONT_D_Y - UP_CY, value = "CMBT",
        ctrls = {{"sms_state_draw"}},
    },
    {-- JET D4
        cx = MFCD_FONT_UD4_X, cy = MFCD_FONT_D_Y - UP_CY, value = "JET",
        ctrls = {{"sms_state_draw"}},
    },
    ]]
    {-- CLR D1
        cx = MFCD_FONT_UD1_X, cy = MFCD_FONT_D_Y - UP_CY, value = "CLR",
        ctrls = {{"sms_state_draw"}},
    },

    --[[
    {-- RETURN
        cx = MFCD_FONT_UD1_X, cy = MFCD_FONT_U_Y, value = "PROG", alignment = "LeftCenter",
        ctrls = {{"sms_state_draw"}, {"mfcd_isedit_show", 0}}
    },

    {-- WPN
        cx = MFCD_FONT_L_HORI_X, cy = MFCD_FONT_LR1_Y, value = "WPN", alignment = "LeftCenter",
        ctrls = {{"sms_ag_cfg_wpn"}, {"mfcd_isedit_show", 0}}
    },
    ]]
    {-- A/G PROG1
        cx = 0.00, cy = -0.48 + 0.72 - 0.02, value = "A/S PROG1",
        ctrls = {{"sms_program_indicator", 1}}
    },

    {-- AG WPN LA STATE
        cx = -0.24, cy = MFCD_FONT_LR5_Y - 5/8 * (MFCD_FONT_LR4_Y - MFCD_FONT_LR5_Y), value = "RDY", alignment = "LeftCenter",
        ctrls = {{"sms_prog_la_state_text"}}
    },

    --[[{-- WPN
        cx = MFCD_FONT_UD1_X, cy = MFCD_FONT_U_Y, value = "WPN", alignment = "CenterCenter",
        ctrls = {{"sms_ag_cfg_wpn"}, {"mfcd_isedit_show", 0}}
    },]]

    {-- CNTL
        cx = MFCD_FONT_L_HORI_X, cy = MFCD_FONT_LR1_Y, value = "CNTL", alignment = "LeftCenter",
        ctrls = {{"sms_state_draw"}, {"mfcd_isedit_show", 0}}
    },

    --[[{-- STA
        cx = MFCD_FONT_L_HORI_X, cy = MFCD_FONT_LR2_Y, value = "STA", alignment = "LeftCenter",
        ctrls = {{"sms_ag_cfg_sta"}, {"mfcd_isedit_show", 0}}
    },]]

    -- 3x2 table
    {
        cx = tbl_left_col_align, cy = MFCD_FONT_LR3_Y, value = "TGT MODE\n\nPP", alignment = "LeftCenter",
        ctrls = {{"sms_prog_ag_profile_release"}}
    },
    {
        cx = tbl_right_col_align, cy = MFCD_FONT_LR3_Y, value = "OAP\n\nOFF", alignment = "LeftCenter",
        ctrls = {{"sms_prog_ag_profile_oap"}}
    },
    {
        cx = tbl_left_col_align, cy = MFCD_FONT_LR4_Y, value = "WPT\n\n34", alignment = "LeftCenter",
        ctrls = {{"sms_prog_ag_profile_wpt"}}
    },
    {
        cx = tbl_right_col_align, cy = MFCD_FONT_LR4_Y, value = "ROUTE WP\n\n30", alignment = "LeftCenter",
        ctrls = {{"sms_prog_ag_profile_route_wp"}}
    },

    {
        cx = tbl_left_col_align, cy = MFCD_FONT_LR5_Y, value = "TERM AZ\n\n128", alignment = "LeftCenter",
        ctrls = {{"sms_prog_ag_profile_imp_az"}}
    },
    {
        cx = tbl_right_col_align, cy = MFCD_FONT_LR5_Y, value = "TERM EL\n\n-60", alignment = "LeftCenter",
        ctrls = {{"sms_prog_ag_profile_imp_el"}}
    },

    -- TODO: data block
    --[[{
        cx = tbl_left_col_align, cy = MFCD_FONT_LR1_Y + y_bias, value = "TGT", alignment = "LeftCenter",
        ctrls = {{"sms_prog_ag_profile_disp_title"}}
    },]]
    --[[{
        cx = -tbl_left_col_align, cy = MFCD_FONT_LR1_Y, value = "OAP", alignment = "LeftCenter",
        ctrls = {{"sms_state_draw"}}
    },]]
    --[[{
        cx = tbl_left_col_align+lr_bias, cy = MFCD_FONT_LR1_Y, value = "N    XX. XX' XX.XX\"", alignment = "LeftCenter",
        ctrls = {{"sms_prog_ag_profile_tgt_lat"}}
    },
    {
        cx = tbl_left_col_align+lr_bias, cy = MFCD_FONT_LR1_Y - y_bias, value = "W   XXX. XX' XX.XX\"", alignment = "LeftCenter",
        ctrls = {{"sms_prog_ag_profile_tgt_lon"}}
    },
    {
        cx = tbl_left_col_align+lr_bias, cy = MFCD_FONT_LR1_Y - 2*y_bias, value = "ALT  XXXXX FT", alignment = "LeftCenter",
        ctrls = {{"sms_prog_ag_profile_tgt_alt"}}
    },

    {
        cx = 0, cy = MFCD_FONT_LR1_Y - 3*y_bias, value = "ALIGN QUALITY", alignment = "CenterCenter",
        ctrls = {{"sms_prog_ag_profile_wpn_align_quality"}}
    },
    {
        cx = 0, cy = MFCD_FONT_LR1_Y - 4*y_bias, value = "ALIGN TIME", alignment = "CenterCenter",
        ctrls = {{"sms_prog_ag_profile_wpn_align_time"}}
    },]]

    --[[{
        cx = tbl_left_col_align, cy = MFCD_FONT_LR1_Y - 3.5*y_bias, value = "WP1: 30\nWP2: 31", alignment = "LeftCenter",
        ctrls = {{"sms_prog_ag_profile_tgt_route_wp", 0}}
    },
    {
        cx = tbl_right_col_align, cy = MFCD_FONT_LR1_Y - 3.5*y_bias, value = "WP3: 32\nWP4: 33", alignment = "LeftCenter",
        ctrls = {{"sms_prog_ag_profile_tgt_route_wp", 1}}
    },]]

}

for i=1, #(texts) do
    text_strpoly            = CreateElement "ceStringPoly"
    text_strpoly.material   = MFCD_FONT_DEF
    text_strpoly.stringdefs = MFCD_STRINGDEFS_DEF
    text_strpoly.init_pos   = {texts[i].cx, texts[i].cy, 0}
    text_strpoly.alignment  = "CenterCenter"

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


-- TODO: add controller
split_white_line                 = CreateElement "ceMeshPoly"
split_white_line.name            = "split_white_line"
split_white_line.material        = MFCD_MATERIAL_WHITE_Y
split_white_line.primitivetype   = "triangles"
split_white_line.vertices        = {{ 1.0,  0.006},
                                    { 1.0, -0.006},
                                    {-1.0, -0.006},
                                    {-1.0,  0.006},}
split_white_line.indices         = DEF_BOX_INDICES
split_white_line.init_pos        = {0, -0.4, 0}
--split_white_line.h_clip_relation = h_clip_relations.COMPARE
split_white_line.level           = PAGE_LEVEL_SMS
split_white_line.isdraw          = true
split_white_line.isvisible       = true
split_white_line.use_mipfilter   = true
split_white_line.additive_alpha  = true
split_white_line.collimated      = false
split_white_line.parent_element  = page_root.name
--split_white_line.controllers     = {{"apply_contrast"}}
--Add(split_white_line)
split_white_line = nil
