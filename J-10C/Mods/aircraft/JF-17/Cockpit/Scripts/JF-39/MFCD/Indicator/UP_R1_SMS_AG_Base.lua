dofile(LockOn_Options.script_path .. "MFCD/MFCDs_defs.lua")

local page_root = create_page_root()


__SHOW_ARM_STATE__ = true


dofile(LockOn_Options.script_path .. "MFCD/Indicator/UP_R1_SMS_Base.lua")

MFCD_TEX_IND1 = "mfcd_tex_ind1"

TEX_SIZE_X = 2048
TEX_SIZE_Y = 2048


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
        --ctrls = {{"sms_prog_la_state_mark"}, {"mfcd_isedit_show", 0}},
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
    {-- A/G PROG1
        cx = 0.00, cy = -0.48 + 0.72 - 0.02, value = "A/S PROG1",
        ctrls = {{"sms_program_indicator", 1}}
    },
    
    {-- A/S1
        cx = MFCD_FONT_UD1_X, cy = MFCD_FONT_U_Y, value = "A/S1",
        ctrls = {{"sms_program_osb", 1}}
    },
    {-- FEED
        cx = MFCD_FONT_UD2_X, cy = MFCD_FONT_U_Y, value = "FEED",
        ctrls = {{"sms_feed_blink"}},
    },
    {-- LOAD
        cx = MFCD_FONT_UD5_X, cy = MFCD_FONT_U_Y, value = "LOAD",
        ctrls = {{"sms_state_draw"}},
    },
    {-- GUN
        cx = MFCD_FONT_L_HORI_X, cy = MFCD_FONT_LR2_Y, value = "GUN", alignment = "LeftCenter",
        ctrls = {{"sms_gun_blink"}, {"mfcd_isedit_show", 0}},
    },
        
    {-- AG WPN LA STATE
        cx = -0.24, cy = MFCD_FONT_LR5_Y - 5/8 * (MFCD_FONT_LR4_Y - MFCD_FONT_LR5_Y), value = "RDY", alignment = "LeftCenter",
        ctrls = {{"sms_prog_la_state_text"}}
    },
    
    --
    --[[{-- MODE
        cx = tbl_left_col_align, cy = MFCD_FONT_LR3_Y + tbl_bias_up, value = "MODE", alignment = "LeftCenter",
        ctrls = {{"sms_state_draw"}},
    },]]
    {
        cx = tbl_left_col_align, cy = MFCD_FONT_LR3_Y, value = "MODE\n\nVIP", alignment = "LeftCenter",
        ctrls = {{"sms_prog_ag_mode"}}
    },
    
    --[[{-- QTY
        cx = tbl_right_col_align, cy = MFCD_FONT_LR3_Y + tbl_bias_up, value = "QTY", alignment = "LeftCenter",
        ctrls = {{"sms_prog_ag_qty_gunlimiter"}},
    },]]
    {
        cx = tbl_right_col_align, cy = MFCD_FONT_LR3_Y, value = "QTY\n\n0", alignment = "LeftCenter",
        ctrls = {{"sms_prog_ag_qty"}}
    },
    
    --[[{-- WPN
        cx = tbl_left_col_align, cy = MFCD_FONT_LR4_Y + tbl_bias_up, value = "WPN", alignment = "LeftCenter",
        ctrls = {{"sms_state_draw"}},
    },]]
    {
        cx = tbl_left_col_align, cy = MFCD_FONT_LR4_Y, value = "WPN\n\nM82L", alignment = "LeftCenter",
        ctrls = {{"sms_prog_ag_wpn"}}
    },
    
    --[[{-- INTERV
        cx = tbl_right_col_align, cy = MFCD_FONT_LR4_Y + tbl_bias_up, value = "INTERV", alignment = "LeftCenter",
        ctrls = {{"sms_state_draw"}},
    },]]
    {
        cx = tbl_right_col_align, cy = MFCD_FONT_LR4_Y, value = "INTERV\n\n        0", alignment = "LeftCenter",
        ctrls = {{"sms_prog_ag_interv"}}
    },
    
    
    --[[{-- FUZE
        cx = tbl_left_col_align, cy = MFCD_FONT_LR5_Y + tbl_bias_up, value = "FUZE", alignment = "LeftCenter",
        ctrls = {{"sms_state_draw"}},
    },]]
    {
        cx = tbl_left_col_align, cy = MFCD_FONT_LR5_Y, value = "FUZE\n\nNOSE", alignment = "LeftCenter",
        ctrls = {{"sms_prog_ag_fuze"}}
    },
    
    --[[{-- BR ALT
        cx = tbl_right_col_align, cy = MFCD_FONT_LR5_Y + tbl_bias_up, value = "BR ALT", alignment = "LeftCenter",
        ctrls = {{"sms_state_draw"}},
    },]]
    {
        cx = tbl_right_col_align, cy = MFCD_FONT_LR5_Y, value = "BR ALT\n\n 1000", alignment = "LeftCenter",
        ctrls = {{"sms_prog_ag_brkalt"}}
    },
    
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

--[[
local pilon_pos = 
{
    {cx= -0.68, cy = 0.56,}, -- 0.56
    {cx= -0.48, cy = 0.40,}, -- 0.43
    {cx= -0.24, cy = 0.40,}, -- 0.42
    {cx=  0.00, cy = 0.40,},
    {cx=  0.24, cy = 0.40,},
    {cx=  0.48, cy = 0.40,},
    {cx=  0.68, cy = 0.56,},
}
]]

for i=1,7 do
    -- 所有符合投放程序的选中标记
    local hh = 0.04
    local box_scale = 1.2
    local tex_poly          = CreateElement "ceTexPoly"
    tex_poly.name           = "sms_pilon_prog_mark_" .. tostring(i)
    tex_poly.material       = MFCD_TEX_IND1
    tex_poly.init_pos       = {pilon_pos[i].cx, pilon_pos[i].cy, 0}
    tex_poly.vertices       = {{ 173.333/2000, 173.333/2000},
                               { 173.333/2000,-173.333/2000},
                               {-173.333/2000,-173.333/2000},
                               {-173.333/2000, 173.333/2000},}
    tex_poly.indices        = DEF_BOX_INDICES
    --tex_poly.tex_coords     = MFCD_tex_coord(155, 94, 194-155, 134-94, TEX_SIZE_X, TEX_SIZE_Y) -- 正方形: 选中标记
    tex_poly.state_tex_coords = {
                        MFCD_tex_coord(  0, 1944, 104, 104, TEX_SIZE_X, TEX_SIZE_Y), -- 单个
                        MFCD_tex_coord(104, 1944, 104, 104, TEX_SIZE_X, TEX_SIZE_Y), -- 多联 上
                        MFCD_tex_coord(208, 1944, 104, 104, TEX_SIZE_X, TEX_SIZE_Y), -- 多联 下
                        MFCD_tex_coord(312, 1944, 104, 104, TEX_SIZE_X, TEX_SIZE_Y), -- 多联 全
                    }
    tex_poly.controllers    = {{"sms_pilon_prog_selected", i-1}}
    tex_poly.isdraw         = false
    tex_poly.use_mipfilter  = true
    tex_poly.additive_alpha = true
    AddToUpper(tex_poly)
    tex_poly = nil

end

