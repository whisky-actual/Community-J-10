dofile(LockOn_Options.script_path .. "MFCD/MFCDs_defs.lua")

page_root = create_page_root()

-- general elements
dofile(LockOn_Options.script_path .. "MFCD/Indicator/UP_U1_RDR_AA_Base.lua")

-- local
local texs_local = {
    {-- stby
        cx = MFCD_FONT_UD3_X, cy = MFCD_FONT_U_Y, hw = 138/160 * 266.667/2000, hh = 133.333/2000, ulx = 1816, uly = 1888, w = 138, h = 80,
        mat = MFCD_TEX_IND2, state_tex = true,
        multi_tex = {
            MFCD_tex_coord(1816, 1808, 116,  80, TEX_SIZE_X, TEX_SIZE_Y), -- slash
            MFCD_tex_coord(  72, 1770, 116,  80, TEX_SIZE_X, TEX_SIZE_Y), -- frame
        },
        ctrls = {{"rdr_osb_state_stby"}},
    },
    {-- sil
        cx = MFCD_FONT_UD4_X, cy = MFCD_FONT_U_Y, hw = 116/160 * 266.667/2000, hh = 133.333/2000, ulx = 1816, uly = 1808, w = 116, h = 80,
        mat = MFCD_TEX_IND2, state_tex = true,
        multi_tex = {
            MFCD_tex_coord(1816, 1808, 116,  80, TEX_SIZE_X, TEX_SIZE_Y), -- slash
            MFCD_tex_coord(  72, 1770, 116,  80, TEX_SIZE_X, TEX_SIZE_Y), -- frame
        },
        ctrls = {{"rdr_osb_state_sil"}},
    },
    
    {
        cx = MFCD_BOX3_L_VERT_X, cy = MFCD_FONT_LR2_Y, hw = 120/2000, hh = 293.333/2000, ulx =  210, uly = 1770, w = 72, h = 176,
        mat = MFCD_TEX_IND2,
        ctrls = {{"rdr_aa_exp_state",1}},
    },
    
    {-- 上三角
        cx = MFCD_BOX3_R_VERT_X, cy = MFCD_FONT_LR1_Y, hw = 113.333/2000, hh = 113.333/2000, ulx = 1196, uly = 1596, w = 68, h = 68,
        mat = MFCD_TEX_IND1,
        ctrls = {{"rdr_state_draw"}},
    },
    {-- 下三角
        cx = MFCD_BOX3_R_VERT_X, cy = MFCD_FONT_LR2_Y, hw = 113.333/2000, hh = 113.333/2000, ulx = 1196, uly = 1664, w = 68, h = 68,
        mat = MFCD_TEX_IND1,
        ctrls = {{"rdr_state_draw"}},
    },
}

for i=1, #(texs_local) do
    tex_poly            = CreateElement "ceTexPoly"
    tex_poly.material   = MFCD_TEX_IND3
    tex_poly.init_pos   = {texs_local[i].cx, texs_local[i].cy, 0}
    tex_poly.vertices   = {{ texs_local[i].hw, texs_local[i].hh},
                           { texs_local[i].hw,-texs_local[i].hh},
                           {-texs_local[i].hw,-texs_local[i].hh},
                           {-texs_local[i].hw, texs_local[i].hh},}
    tex_poly.indices    = DEF_BOX_INDICES
    
    if texs_local[i].mat then
        tex_poly.material = texs_local[i].mat
    end
    if texs_local[i].state_tex then
        tex_poly.state_tex_coords = texs_local[i].multi_tex
    else    
        tex_poly.tex_coords = MFCD_tex_coord(texs_local[i].ulx, texs_local[i].uly, texs_local[i].w, texs_local[i].h, TEX_SIZE_X, TEX_SIZE_Y)
    end
    
    if texs_local[i].name then
        tex_poly.name = texs_local[i].name
    end
    if texs_local[i].parent_element then
        tex_poly.parent_element = texs_local[i].parent_element
    end
    
    if texs_local[i].ctrls then
        tex_poly.controllers = texs_local[i].ctrls
    end

    AddToUpper(tex_poly)
    tex_poly = nil
end



local texts_local = {
    {-- 雷达STBY
        cx = MFCD_FONT_UD3_X, cy = MFCD_FONT_U_Y, value = "STBY", align = "CenterCenter", strdefs = MFCD_STRINGDEFS_DEF_X08,
        ctrls = {{"rdr_state_draw"}},
    },
    {-- 雷达SIL
        cx = MFCD_FONT_UD4_X, cy = MFCD_FONT_U_Y, value = "SIL", align = "CenterCenter", strdefs = MFCD_STRINGDEFS_DEF_X08,
        ctrls = {{"rdr_state_draw"}},
    },
    
    --[[{-- 雷达EXP
        cx = MFCD_FONT_UD2_X, cy = MFCD_FONT_U_Y, value = "EXP", align = "CenterCenter", strdefs = MFCD_STRINGDEFS_DEF_X08,
        ctrls = {{"rdr_state_draw"}},
    },]]
    
    -- OSB LEFT
    --[[{-- 切换到DGFT
        cx = MFCD_FONT_L_HORI_X, cy = MFCD_FONT_LR1_Y, value = "DGFT", align = "LeftCenter", strdefs = MFCD_STRINGDEFS_DEF_X08,
        ctrls = {{"rdr_state_draw"}},
    },]]
    {-- 雷达tws是否exp
        cx = MFCD_FONT_L_HORI_X, cy = MFCD_FONT_LR2_Y, value = "E\nX\nP", align = "LeftCenter", strdefs = MFCD_STRINGDEFS_DEF_X08,
        ctrls = {{"rdr_aa_exp_state",0}},
    },
    {-- 雷达当前az范围
        cx = MFCD_FONT_L_HORI_X, cy = MFCD_FONT_LR3_Y, value = "60", align = "LeftCenter", strdefs = MFCD_STRINGDEFS_DEF_X08,
        ctrls = {{"rdr_coverage_setting"}},
    },
    
    {-- 雷达天线管理
        cx = MFCD_FONT_L_HORI_X, cy = MFCD_FONT_LR4_Y, value = "N\nO\nR", align = "LeftCenter", strdefs = MFCD_STRINGDEFS_DEF_X08,
        ctrls = {{"rdr_aa_ant_manage"}},
    },
    {-- 雷达当前扫描线数
        cx = MFCD_FONT_L_HORI_X, cy = MFCD_FONT_LR5_Y, value = "4\nB\nR", align = "LeftCenter", strdefs = MFCD_STRINGDEFS_DEF_X08,
        ctrls = {{"rdr_aa_scan_line"}},
    },
    
    -- OSB RIGHT
    {-- 雷达当前显示距离
        cx = MFCD_FONT_R_HORI_X, cy = (MFCD_FONT_LR1_Y + MFCD_FONT_LR2_Y) / 2, align = "RightCenter", strdefs = MFCD_STRINGDEFS_DEF_X08,
        ctrls = {{"rdr_range"}},
    },
    {-- 雷达当前PRF设置
        cx = MFCD_FONT_R_HORI_X, cy = MFCD_FONT_LR5_Y, align = "RightCenter", strdefs = MFCD_STRINGDEFS_DEF_X08,
        ctrls = {{"rdr_aa_prf_setting"}},
    },
    
}

for i=1, #(texts_local) do
    text_strpoly            = CreateElement "ceStringPoly"
    text_strpoly.material   = MFCD_FONT_DEF
    text_strpoly.stringdefs = MFCD_STRINGDEFS_DEF
    text_strpoly.init_pos   = {texts_local[i].cx, texts_local[i].cy, 0}
    text_strpoly.alignment  = "CenterCenter"
    
    if texts_local[i].mat then
        text_strpoly.material       = texts_local[i].mat
    end    
    if texts_local[i].align then
        text_strpoly.alignment      = texts_local[i].align
    end
    if texts_local[i].strdefs then
        text_strpoly.stringdefs     = texts_local[i].strdefs
    end
    if texts_local[i].ctrls then
        text_strpoly.controllers    = texts_local[i].ctrls
    end
    if texts_local[i].value then
        text_strpoly.value          = texts_local[i].value
    end
    if texts_local[i].parent then
        text_strpoly.parent_element = texts_local[i].parent
    end
    
    AddToUpper(text_strpoly)
    text_strpoly = nil
end

