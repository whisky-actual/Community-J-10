dofile(LockOn_Options.script_path .. "MFCD/MFCDs_defs.lua")

local page_root = create_page_root()

-- general elements
dofile(LockOn_Options.script_path .. "MFCD/Indicator/UP_U1_RDR_AG_Base.lua")
--dofile(LockOn_Options.script_path .. "MFCD/Indicator/UP_U1_RDR_Base.lua")


-- local
local texs_local = {
    
    -- OSB state
    {-- CNTL
        cx = MFCD_FONT_UD5_X, cy = MFCD_FONT_U_Y, hw = 138/160 * 266.667/2000, hh = 133.333/2000, ulx =   72, uly = 1850, w = 138, h = 80,
        mat = MFCD_TEX_IND2,
    },
    {
        cx = MFCD_BOX3_R_VERT_X, cy = MFCD_FONT_LR5_Y, hw = 120/2000, hh = 293.333/2000, ulx =  210, uly = 1770, w = 72, h = 176,
        mat = MFCD_TEX_IND2,
        ctrls = {{"rdr_osb_state_dclt"},{"mfcd_isedit_show", 0}},
    },
    
    -- TA
    {-- 上三角
        cx = MFCD_BOX3_L_VERT_X, cy = MFCD_FONT_LR1_Y, hw = 113.333/2000, hh = 113.333/2000, ulx = 1196, uly = 1596, w = 68, h = 68,
        mat = MFCD_TEX_IND1,
        ctrls = {{"rdr_ta_margin_state",0},{"mfcd_isedit_show", 0},{"rdr_state_draw"}},
    },
    {-- 下三角
        cx = MFCD_BOX3_L_VERT_X, cy = MFCD_FONT_LR2_Y, hw = 113.333/2000, hh = 113.333/2000, ulx = 1196, uly = 1664, w = 68, h = 68,
        mat = MFCD_TEX_IND1,
        ctrls = {{"rdr_ta_margin_state",0},{"mfcd_isedit_show", 0},{"rdr_state_draw"}},
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


-- local
local texts_local = {
    -- OSB TOP
    --[[{-- 雷达当前目标历史记录数
        cx = MFCD_FONT_UD3_X, cy = MFCD_FONT_U_Y, align = "CenterCenter", strdefs = MFCD_STRINGDEFS_DEF_X08,
        ctrls = {{"rdr_contact_history"}},
    },]]
    {-- 雷达CNTL
        cx = MFCD_FONT_UD5_X, cy = MFCD_FONT_U_Y, value = "CNTL", align = "CenterCenter", strdefs = MFCD_STRINGDEFS_DEF_X08,
    },
    
    -- OSB RIGHT
    {-- BCN code
        cx = 0, cy = MFCD_FONT_LR2_Y, value = "BEACON CODE - XX", align = "CenterCenter", strdefs = MFCD_STRINGDEFS_DEF_X1,
        mat = MFCD_FONT_W,
        ctrls = {{"rdr_bcn_code", 0}}
    },
    {-- BCN label
        cx = MFCD_FONT_R_HORI_X, cy = MFCD_FONT_LR4_Y, value = "BCN\n00", align = "RightCenter", strdefs = MFCD_STRINGDEFS_DEF_X08,
        ctrls = {{"rdr_bcn_code", 1},{"mfcd_isedit_show", 0}}
    },
    {-- DCLT
        cx = MFCD_FONT_R_VERT_X, cy = MFCD_FONT_LR5_Y, value = "D\nC\nL\nT", align = "RightCenter", strdefs = MFCD_STRINGDEFS_DEF_X08,
        ctrls = {{"mfcd_isedit_show", 0}}
    },
    
    -- TA
    {-- 飞机到清洁区顶距离
        cx = MFCD_FONT_L_HORI_X, cy = (MFCD_FONT_LR1_Y + MFCD_FONT_LR2_Y) / 2, value = "0", align = "LeftCenter", strdefs = MFCD_STRINGDEFS_DEF_X08,
        ctrls = {{"rdr_ta_margin_state",1},{"mfcd_isedit_show", 0}},
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
