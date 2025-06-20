dofile(LockOn_Options.script_path .. "MFCD/MFCDs_defs.lua")

local page_root = create_page_root()

dofile(LockOn_Options.script_path .. "MFCD/Indicator/UP_U1_RDR_Base.lua")

dofile(LockOn_Options.script_path .. "MFCD/Indicator/UP_U1_RDR_Render.lua")

texs = {
    {-- 雷达框
        cx = 0, cy = 0, hw = 1666.67/2000, hh = 1666.67/2000, ulx = 0, uly = 0, w = 1000, h = 1000,
        mat = MFCD_TEX_IND4_W, state_tex = true,
        multi_tex = {
            MFCD_tex_coord(0,    0, 1000, 1000, TEX_SIZE_X, TEX_SIZE_Y), -- AA
            MFCD_tex_coord(0, 1000, 1000, 1000, TEX_SIZE_X, TEX_SIZE_Y), -- AG
        },
        ctrls = {{"rdr_frame_type"}, {"rdr_declutter_check"},},
    },

    {-- 雷达锁定hpt 指示符 垂直实线
        cx = 0, cy = 0, hw = 113.333/2000, hh = 1536.667/2000, ulx = 1000, uly = 0, w = 68, h = 922,
        mat = MFCD_TEX_IND4, name = "rdr_aa_beam_az_hpt_bar", state_tex = true,
        multi_tex = {
            MFCD_tex_coord(1000,    0,  68, 922, TEX_SIZE_X, TEX_SIZE_Y), -- solid
            MFCD_tex_coord(1068,    0,  68, 922, TEX_SIZE_X, TEX_SIZE_Y), -- dashed
        },
        ctrls = {{"rdr_aa_locked_hpt_spt", 0}},
    },
    {-- 雷达锁定spt 指示符 垂直实线
        cx = 0, cy = 0, hw = 113.333/2000, hh = 1536.667/2000, ulx = 1000, uly = 0, w = 68, h = 922,
        mat = MFCD_TEX_IND4, name = "rdr_aa_beam_az_spt_bar", state_tex = true,
        multi_tex = {
            MFCD_tex_coord(1000,    0,  68, 922, TEX_SIZE_X, TEX_SIZE_Y), -- solid
            MFCD_tex_coord(1068,    0,  68, 922, TEX_SIZE_X, TEX_SIZE_Y), -- dashed
        },
        ctrls = {{"rdr_aa_locked_hpt_spt", 1}},
    },
    
    {-- TDC游标
        cx = 0, cy = -740/1000, hw = 246.667/2000, hh = 246.667/2000, ulx = 0, uly = 592, w = 148, h = 148,
        mat = MFCD_TEX_IND3_W, name = "rdr_tdc_sym", ctrls = {{"rdr_tdc", 0}},
    },
    {-- TDC游标 竖线 (只属于MAP模式的，slave to 放大范围符号)
        cx = 0, cy = 0, hw = 113.333/2000, hh = 1536.667/2000, ulx = 1000, uly = 0, w = 68, h = 922,
        mat = MFCD_TEX_IND4_W, name = "rdr_ag_tdc_line_vert", ctrls = {{"rdr_tdc", 1, 1}},
        level = RDR_LEVEL, clip = h_clip_relations.COMPARE,
    },
    {-- TDC游标 横线 (只属于MAP模式的，slave to 放大范围符号)
        cx = 0, cy = -740/1000, hw = 1536.667/2000, hh = 113.333/2000, ulx = 1000, uly = 922, w = 922, h = 68,
        mat = MFCD_TEX_IND4_W, name = "rdr_ag_tdc_line_hori", ctrls = {{"rdr_tdc", 2, 1}},
        level = RDR_LEVEL, clip = h_clip_relations.COMPARE,
    },
}

for i=1, #(texs) do
    tex_poly            = CreateElement "ceTexPoly"
    tex_poly.material   = MFCD_TEX_IND3
    tex_poly.init_pos   = {texs[i].cx, texs[i].cy, 0}
    tex_poly.vertices   = {{ texs[i].hw, texs[i].hh},
                           { texs[i].hw,-texs[i].hh},
                           {-texs[i].hw,-texs[i].hh},
                           {-texs[i].hw, texs[i].hh},}
    tex_poly.indices    = DEF_BOX_INDICES
    
    
    if texs[i].init_rot then
        tex_poly.init_rot = texs[i].init_rot
    end
    
    if texs[i].mat then
        tex_poly.material = texs[i].mat
    end
    if texs[i].state_tex then
        tex_poly.state_tex_coords = texs[i].multi_tex
    else    
        tex_poly.tex_coords = MFCD_tex_coord(texs[i].ulx, texs[i].uly, texs[i].w, texs[i].h, TEX_SIZE_X, TEX_SIZE_Y)
    end
    
    if texs[i].name then
        tex_poly.name = texs[i].name
    end
    if texs[i].parent_element then
        tex_poly.parent_element = texs[i].parent_element
    end
    
    if texs[i].ctrls then
        tex_poly.controllers = texs[i].ctrls
    end

    if texs[i].level then
        tex_poly.level = texs[i].level
    end
    if texs[i].clip then
        tex_poly.h_clip_relation = texs[i].clip
    end
    
    AddToUpper(tex_poly)
    tex_poly = nil
end

---- 文字部分
local texts = {
    
    -- left
    {
        cx = MFCD_FONT_L_HORI_X, cy = MFCD_FONT_LR1_Y, value = "1", alignment = "LeftCenter", -- TODO: controller
        ctrls = {{"rdr_mode_list", 0}},
    },
    {
        cx = MFCD_FONT_L_HORI_X, cy = MFCD_FONT_LR2_Y, value = "2", alignment = "LeftCenter", -- TODO: controller
        ctrls = {{"rdr_mode_list", 1}},
    },
    {
        cx = MFCD_FONT_L_HORI_X, cy = MFCD_FONT_LR3_Y, value = "3", alignment = "LeftCenter", -- TODO: controller
        ctrls = {{"rdr_mode_list", 2}},
    },
    {
        cx = MFCD_FONT_L_HORI_X, cy = MFCD_FONT_LR4_Y, value = "4", alignment = "LeftCenter", -- TODO: controller
        ctrls = {{"rdr_mode_list", 3}},
    },
    {
        cx = MFCD_FONT_L_HORI_X, cy = MFCD_FONT_LR5_Y, value = "5", alignment = "LeftCenter", -- TODO: controller
        ctrls = {{"rdr_mode_list", 4}},
    },
    
    -- right
    {
        cx = MFCD_FONT_R_HORI_X, cy = MFCD_FONT_LR1_Y, value = "6", alignment = "RightCenter", -- TODO: controller
        ctrls = {{"rdr_mode_list", 5}},
    },
    {
        cx = MFCD_FONT_R_HORI_X, cy = MFCD_FONT_LR2_Y, value = "7", alignment = "RightCenter", -- TODO: controller
        ctrls = {{"rdr_mode_list", 6}},
    },
    {
        cx = MFCD_FONT_R_HORI_X, cy = MFCD_FONT_LR3_Y, value = "8", alignment = "RightCenter", -- TODO: controller
        ctrls = {{"rdr_mode_list", 7}},
    },
    {
        cx = MFCD_FONT_R_HORI_X, cy = MFCD_FONT_LR4_Y, value = "9", alignment = "RightCenter", -- TODO: controller
        ctrls = {{"rdr_mode_list", 8}},
    },
    {
        cx = MFCD_FONT_R_HORI_X, cy = MFCD_FONT_LR5_Y, value = "10", alignment = "RightCenter", -- TODO: controller
        ctrls = {{"rdr_mode_list", 9}},
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

--
dofile(LockOn_Options.script_path .. "MFCD/Indicator/UP_U1_RDR_AA_Contact.lua")

dofile(LockOn_Options.script_path .. "MFCD/Indicator/UP_U1_RDR_AG_Contact.lua")

