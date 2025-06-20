dofile(LockOn_Options.script_path .. "MFCD/MFCDs_defs.lua")

local page_root = create_page_root()

--dofile(LockOn_Options.script_path .. "MFCD/Indicator/UP_R1_SMS_Base.lua")
dofile(LockOn_Options.script_path .. "MFCD/Indicator/UP_R1_SMS_Load_Base.lua")

MFCD_TEX_IND1 = "mfcd_tex_ind1"
MFCD_TEX_IND2 = "mfcd_tex_ind2"

TEX_SIZE_X = 2048
TEX_SIZE_Y = 2048

---- 贴图部分
local texs = {
    {-- <----
        cx = -0.85, cy = MFCD_FONT_LR4_Y, hw = 233.333/2000, hh = 100/2000, ulx = 1480, uly = 1008, w = 140, h = 60,
        mat = MFCD_TEX_IND1, tex_sx = TEX_SIZE_X, tex_sy = TEX_SIZE_Y, ctrls = {{"sms_load_pylon_selected", 1}, {"mfcd_isedit_show", 0}}
    },
    {-- <----
        cx = -0.85, cy = MFCD_FONT_LR5_Y, hw = 233.333/2000, hh = 100/2000, ulx = 1480, uly = 1008, w = 140, h = 60,
        mat = MFCD_TEX_IND1, tex_sx = TEX_SIZE_X, tex_sy = TEX_SIZE_Y, ctrls = {{"sms_load_pylon_selected", 1}, {"mfcd_isedit_show", 0}}
    },
    {-- ---->  2
        cx = 0.85, cy = MFCD_FONT_LR5_Y, hw = 233.333/2000, hh = 100/2000, ulx = 1480, uly = 948, w = 140, h = 60,
        mat = MFCD_TEX_IND1, tex_sx = TEX_SIZE_X, tex_sy = TEX_SIZE_Y, ctrls = {{"sms_load_pylon_selected", 1}, {"mfcd_isedit_show", 0}}
    },
    
    -- selection box for 1-7,GUN
    {
        cx = MFCD_BOX3_L_VERT_X, cy = MFCD_FONT_LR1_Y, hw = 173.333/2000, hh = 173.333/2000, ulx =   0, uly = 1944, w = 104, h = 104,
        ctrls = {{"sms_load_pylon_select_box", 0}, {"mfcd_isedit_show", 0}},
    },
    {
        cx = MFCD_FONT_UD1_X, cy = MFCD_FONT_U_Y, hw = 173.333/2000, hh = 173.333/2000, ulx =   0, uly = 1944, w = 104, h = 104,
        ctrls = {{"sms_load_pylon_select_box", 1}, {"mfcd_isedit_show", 0}},
    },
    {
        cx = MFCD_FONT_UD2_X, cy = MFCD_FONT_U_Y, hw = 173.333/2000, hh = 173.333/2000, ulx =   0, uly = 1944, w = 104, h = 104,
        ctrls = {{"sms_load_pylon_select_box", 2}, {"mfcd_isedit_show", 0}},
    },
    {
        cx = MFCD_FONT_UD3_X, cy = MFCD_FONT_U_Y, hw = 173.333/2000, hh = 173.333/2000, ulx =   0, uly = 1944, w = 104, h = 104,
        ctrls = {{"sms_load_pylon_select_box", 3}, {"mfcd_isedit_show", 0}},
    },
    {
        cx = MFCD_FONT_UD4_X, cy = MFCD_FONT_U_Y, hw = 173.333/2000, hh = 173.333/2000, ulx =   0, uly = 1944, w = 104, h = 104,
        ctrls = {{"sms_load_pylon_select_box", 4}, {"mfcd_isedit_show", 0}},
    },
    {
        cx = MFCD_FONT_UD5_X, cy = MFCD_FONT_U_Y, hw = 173.333/2000, hh = 173.333/2000, ulx =   0, uly = 1944, w = 104, h = 104,
        ctrls = {{"sms_load_pylon_select_box", 5}, {"mfcd_isedit_show", 0}},
    },
    {
        cx = MFCD_BOX3_R_VERT_X, cy = MFCD_FONT_LR1_Y, hw = 173.333/2000, hh = 173.333/2000, ulx =   0, uly = 1944, w = 104, h = 104,
        ctrls = {{"sms_load_pylon_select_box", 6}, {"mfcd_isedit_show", 0}},
    },
    {
        cx = MFCD_BOX3_R_HORI_X, cy = MFCD_FONT_LR2_Y, hw = 116/160 * 266.667/2000, hh = 133.333/2000, ulx =  72, uly = 1770, w = 116, h = 80,
        mat = MFCD_TEX_IND2, ctrls = {{"sms_load_pylon_select_box", 7}, {"mfcd_isedit_show", 0}},
    },
}


local tex_poly
for i=1, #(texs) do
    tex_poly             = CreateElement "ceTexPoly"
    tex_poly.material    = MFCD_TEX_IND1
    tex_poly.tex_coords  = MFCD_tex_coord(texs[i].ulx, texs[i].uly, texs[i].w, texs[i].h, TEX_SIZE_X, TEX_SIZE_Y)
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
    {-- CLR D1
        cx = MFCD_FONT_UD1_X, cy = MFCD_FONT_D_Y - UP_CY, value = "CLR",
        ctrls = {{"sms_state_draw"}},
    },
    {-- CMBT D2
        cx = MFCD_FONT_UD2_X, cy = MFCD_FONT_D_Y - UP_CY, value = "COPY",
        ctrls = {{"sms_state_draw"}},
    },
    {-- JET D4
        cx = MFCD_FONT_UD4_X, cy = MFCD_FONT_D_Y - UP_CY, value = "SMS",
        ctrls = {{"sms_state_draw"}},
    },    
    
    {
        cx = MFCD_FONT_L_VERT_X, cy = MFCD_FONT_LR1_Y, value = "1", alignment = "LeftCenter", -- TODO: controller
        ctrls = {{"sms_state_draw"}, {"mfcd_isedit_show", 0}},
    },
    {
        cx = MFCD_FONT_UD1_X, cy = MFCD_FONT_U_Y, value = "2", -- TODO: controller
        ctrls = {{"sms_state_draw"}, {"mfcd_isedit_show", 0}},
    },
    {
        cx = MFCD_FONT_UD2_X, cy = MFCD_FONT_U_Y, value = "3", -- TODO: controller
        ctrls = {{"sms_state_draw"}, {"mfcd_isedit_show", 0}},
    },
    {
        cx = MFCD_FONT_UD3_X, cy = MFCD_FONT_U_Y, value = "4", -- TODO: controller
        ctrls = {{"sms_state_draw"}, {"mfcd_isedit_show", 0}},
    },
    {
        cx = MFCD_FONT_UD4_X, cy = MFCD_FONT_U_Y, value = "5", -- TODO: controller
        ctrls = {{"sms_state_draw"}, {"mfcd_isedit_show", 0}},
    },
    {
        cx = MFCD_FONT_UD5_X, cy = MFCD_FONT_U_Y, value = "6", -- TODO: controller
        ctrls = {{"sms_state_draw"}, {"mfcd_isedit_show", 0}},
    },
    {
        cx = MFCD_FONT_R_VERT_X, cy = MFCD_FONT_LR1_Y, value = "7", alignment = "RightCenter", -- TODO: controller
        ctrls = {{"sms_state_draw"}, {"mfcd_isedit_show", 0}},
    },    
    {
        cx = MFCD_FONT_R_VERT_X, cy = MFCD_FONT_LR2_Y, value = "GUN", alignment = "RightCenter", -- TODO: controller
        ctrls = {{"sms_state_draw"}, {"mfcd_isedit_show", 0}},
    },
    
    --[[
    {-- big LOAD
        cx = 0.00, cy = -0.48 + 0.38, value = "LOAD", alignment = "CenterCenter", str = MFCD_STRINGDEFS_DEF_X15,
        ctrls = {{"sms_load_pylon_selected", 0}}
    },
    {-- LOAD STA
        cx = -0.15, cy = -0.48 + 0.40, value = "LOAD STA 2", alignment = "LeftCenter", -- TODO: controller
        ctrls = {{"sms_load_pylon_selected", 1}, {"sms_load_pylon_id"}} -- TODO: controller
    },
    
    --
    {-- TYPE
        cx = tbl_left_col_align, cy = MFCD_FONT_LR4_Y + tbl_bias_up, value = "TYPE", alignment = "LeftCenter",
        ctrls = {{"sms_load_pylon_selected", 1}}
    },
    {
        cx = tbl_left_col_align, cy = MFCD_FONT_LR4_Y + tbl_bias_dn, value = "---", alignment = "LeftCenter",
        ctrls = {{"sms_load_pylon_selected", 1}, {"sms_load_type_disp"}} -- TODO: controller
    },
        
    {-- WPN
        cx = tbl_left_col_align, cy = MFCD_FONT_LR5_Y + tbl_bias_up, value = "WPN", alignment = "LeftCenter",
        ctrls = {{"sms_load_pylon_selected", 1}} -- TODO: controller
    },
    {
        cx = tbl_left_col_align, cy = MFCD_FONT_LR5_Y + tbl_bias_dn, value = "---", alignment = "LeftCenter",
        ctrls = {{"sms_load_pylon_selected", 1}, {"sms_load_wpn_disp"}} -- TODO: controller
    },
    
    {-- QTY
        cx = tbl_right_col_align, cy = MFCD_FONT_LR5_Y + tbl_bias_up, value = "QTY", alignment = "LeftCenter",
        ctrls = {{"sms_load_pylon_selected", 1}} -- TODO: controller
    },
    {
        cx = tbl_right_col_align, cy = MFCD_FONT_LR5_Y + tbl_bias_dn, value = "0", alignment = "LeftCenter",
        ctrls = {{"sms_load_pylon_selected", 1}, {"sms_load_qty_disp"}} -- TODO: controller
    },
    ]]
}

for i=1, #(texts) do
    text_strpoly            = CreateElement "ceStringPoly"
    text_strpoly.material   = MFCD_FONT_DEF
    text_strpoly.stringdefs = MFCD_STRINGDEFS_DEF
    text_strpoly.init_pos   = {texts[i].cx, texts[i].cy, 0}
    text_strpoly.alignment  = "CenterCenter"
    
    if texts[i].str then
        text_strpoly.stringdefs      = texts[i].str
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
