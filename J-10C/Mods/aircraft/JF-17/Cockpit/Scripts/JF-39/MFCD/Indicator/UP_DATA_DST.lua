dofile(LockOn_Options.script_path .. "MFCD/MFCDs_defs.lua")

local page_root = create_page_root()


MFCD_TEX_IND2   = "mfcd_tex_ind2"
MFCD_TEX_IND4   = "mfcd_tex_ind4"

TEX_SIZE_X = 2048
TEX_SIZE_Y = 2048


--OSB
local osb_txt = {
    {value="DST",    init_pos={MFCD_FONT_UD1_X, MFCD_FONT_U_Y}, align="CenterCenter"},
    {value="FP-A",   init_pos={MFCD_FONT_UD2_X, MFCD_FONT_U_Y}, align="CenterCenter", ctrls={{"dst_fp_toggle"}}},
    {value="CPY",    init_pos={MFCD_FONT_UD4_X, MFCD_FONT_U_Y}, align="CenterCenter", ctrls={{"dst_entry_copy_paste"}}},
    {value="CLR",    init_pos={MFCD_FONT_UD5_X, MFCD_FONT_U_Y}, align="CenterCenter"},
    {value="STEP",   init_pos={MFCD_FONT_L_HORI_X, MFCD_FONT_LR2_Y}, align="LeftCenter"},
    {value="BACK",   init_pos={MFCD_FONT_L_HORI_X, MFCD_FONT_LR3_Y}, align="LeftCenter"},
    
    {value="LAT",    init_pos={-273.333/1000, 560/1000}, align="CenterCenter"},
    {value="LONG",   init_pos={  81.667/1000, 560/1000}, align="CenterCenter"},
    {value="ALT",    init_pos={ 453.333/1000, 560/1000}, align="CenterCenter"},
}


for i=1, #(osb_txt) do
    text_strpoly              = CreateElement "ceStringPoly"
    text_strpoly.material     = MFCD_FONT_DEF
    text_strpoly.stringdefs   = MFCD_STRINGDEFS_DEF_X08
    text_strpoly.init_pos     = osb_txt[i].init_pos
    text_strpoly.alignment    = osb_txt[i].align
    text_strpoly.value        = osb_txt[i].value
    
    if osb_txt[i].ctrls then
        text_strpoly.controllers = osb_txt[i].ctrls
    end
    
    AddToUpper(text_strpoly)
    text_strpoly = nil
end


for i=0,9 do
    text_strpoly                 = CreateElement "ceStringPoly"
    text_strpoly.name            = "DST_WPT_txt" .. i
    text_strpoly.material        = MFCD_FONT_DEF
    text_strpoly.stringdefs      = MFCD_STRINGDEFS_DEF
    text_strpoly.init_pos        = {(MFCD_FONT_UD1_X+MFCD_FONT_UD2_X)/2, 0.4 - 0.1 * i, 0}
    text_strpoly.alignment       = "LeftCenter"
    text_strpoly.value           = "WPT" .. i
    text_strpoly.controllers     = {{"dst_wpt_list_item", i}}
    AddToUpper(text_strpoly)
    text_strpoly = nil
end


texs = {
    {-- 下划线LAT
        cx = -273.333/1000, cy = 560/1000, hw = 130/2000, hh = 81/2000, ulx = 1816, uly = 1760, w = 78, h = 49,
        mat = MFCD_TEX_IND2,
    },
    {-- 下划线LONG
        cx =   81.667/1000, cy = 560/1000, hw = 154.667/2000, hh = 81/2000, ulx = 1816, uly = 1710, w = 93, h = 49,
        mat = MFCD_TEX_IND2,
    },
    {-- 下划线ALT
        cx =  453.333/1000, cy = 560/1000, hw = 130/2000, hh = 81/2000, ulx = 1816, uly = 1760, w = 78, h = 49,
        mat = MFCD_TEX_IND2,
    },
    
    {-- 选中框
        cx = -(MFCD_FONT_UD1_X+MFCD_FONT_UD2_X)/2+0.05, cy = 0, hw = 2000/2000, hh = 80/2000, ulx = 0, uly = 2000, w = 1202, h = 48,
        mat = MFCD_TEX_IND4,
        ctrls = {{"dst_current_selection"}},
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

    AddToUpper(tex_poly)
    tex_poly = nil
end
