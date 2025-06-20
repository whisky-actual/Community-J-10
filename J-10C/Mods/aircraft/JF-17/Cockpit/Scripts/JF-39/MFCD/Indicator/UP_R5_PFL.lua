dofile(LockOn_Options.script_path .. "MFCD/MFCDs_defs.lua")

local page_root = create_page_root()

MFCD_TEX_IND2   = "mfcd_tex_ind2"
MFCD_TEX_IND4   = "mfcd_tex_ind4"

TEX_SIZE_X = 2048
TEX_SIZE_Y = 2048



--OSB
local osb_txt = {
    {value = "PFL",    init_pos = {MFCD_FONT_UD1_X,    MFCD_FONT_U_Y},   align = "CenterCenter"},
    {value = "STEP",   init_pos = {MFCD_FONT_R_HORI_X, MFCD_FONT_LR4_Y}, align = "RightCenter"},
    {value = "BACK",   init_pos = {MFCD_FONT_R_HORI_X, MFCD_FONT_LR5_Y}, align = "RightCenter"},
    
    {value = "FCS",    init_pos = {MFCD_FONT_L_HORI_X, MFCD_FONT_LR1_Y}, align = "LeftCenter"},
    {value = "FIRE",   init_pos = {MFCD_FONT_L_HORI_X, MFCD_FONT_LR2_Y}, align = "LeftCenter"},
    {value = "ENG",    init_pos = {MFCD_FONT_L_HORI_X, MFCD_FONT_LR3_Y}, align = "LeftCenter"},
    {value = "INS",    init_pos = {MFCD_FONT_L_HORI_X, MFCD_FONT_LR4_Y}, align = "LeftCenter"},
    {value = "SMS",    init_pos = {MFCD_FONT_L_HORI_X, MFCD_FONT_LR5_Y}, align = "LeftCenter"},
    
    {
        value = "PILOT FAILURE LIST", init_pos = {-198.333/1000, 560/1000}, align = "CenterCenter",
        --ctrls = pfl_type_title
    },
    {
        value = "1/1", init_pos = {MFCD_FONT_UD5_X, MFCD_FONT_U_Y}, align = "CenterCenter",
        ctrls = {{"pfl_page_indicator"}},
    },
}

local text_strpoly
local mesh_poly

for i=1, #(osb_txt) do
    text_strpoly                = CreateElement "ceStringPoly"
    text_strpoly.material       = MFCD_FONT_DEF
    text_strpoly.stringdefs     = MFCD_STRINGDEFS_DEF_X08
    text_strpoly.init_pos       = osb_txt[i].init_pos
    text_strpoly.alignment      = osb_txt[i].align
    text_strpoly.value          = osb_txt[i].value
    
    if osb_txt[i].strdefs then
        text_strpoly.stringdefs = osb_txt[i].strdefs
    end
    
    if osb_txt[i].ctrls then
        text_strpoly.controllers = osb_txt[i].ctrls
    end
    
    AddToUpper(text_strpoly)
    text_strpoly = nil
end


local text_strpoly
for i=0,10-1 do
    text_strpoly                = CreateElement "ceStringPoly"
    text_strpoly.name           = "PFL_txt_" .. i
    text_strpoly.material       = MFCD_FONT_DEF
    text_strpoly.stringdefs     = MFCD_STRINGDEFS_DEF
    text_strpoly.init_pos       = {-658.333/1000, 417/1000 - 0.1 * i, 0}
    text_strpoly.alignment      = "LeftCenter"
    text_strpoly.value          = "FAILURE_TXT" .. i
    text_strpoly.controllers    = {{"pfl_failure_txt", i}}
    AddToUpper(text_strpoly)
    text_strpoly = nil
end


-- 列表方框
local pfl_failure_list_frame     = CreateElement "ceSimpleLineObject"
pfl_failure_list_frame.material  = MFCD_MATERIAL_WHITE
pfl_failure_list_frame.width     = 0.005
pfl_failure_list_frame.init_pos  = {0, 0, 0}
pfl_failure_list_frame.vertices  = {{-731.5/1000,  493.5/1000, 0},
                                    { 731.5/1000,  493.5/1000, 0},
                                    { 731.5/1000, -729.5/1000, 0},
                                    {-731.5/1000, -729.5/1000, 0},
                                    {-731.5/1000,  493.5/1000, 0},}
AddToUpper(pfl_failure_list_frame)


texs = {
    {-- 下划线FCS
        cx = -906.665/1000, cy = MFCD_FONT_LR1_Y, hw = 130/2000, hh = 81/2000, ulx = 1816, uly = 1760, w = 78, h = 49,
        mat = MFCD_TEX_IND2,
        ctrls = {{"pfl_type_selected", 0}},
    },
    {-- 下划线FIRE
        cx = -888.332/1000, cy = MFCD_FONT_LR2_Y, hw = 154.667/2000, hh = 81/2000, ulx = 1816, uly = 1710, w = 93, h = 49,
        mat = MFCD_TEX_IND2,
        ctrls = {{"pfl_type_selected", 1}},
    },
    {-- 下划线ENG
        cx = -906.665/1000, cy = MFCD_FONT_LR3_Y, hw = 130/2000, hh = 81/2000, ulx = 1816, uly = 1760, w = 78, h = 49,
        mat = MFCD_TEX_IND2,
        ctrls = {{"pfl_type_selected", 2}},
    },
    {-- 下划线UNK1
        cx = -888.332/1000, cy = MFCD_FONT_LR4_Y, hw = 154.667/2000, hh = 81/2000, ulx = 1816, uly = 1710, w = 93, h = 49,
        mat = MFCD_TEX_IND2,
        ctrls = {{"pfl_type_selected", 3}},
    },
    {-- 下划线UNK1
        cx = -888.332/1000, cy = MFCD_FONT_LR5_Y, hw = 154.667/2000, hh = 81/2000, ulx = 1816, uly = 1710, w = 93, h = 49,
        mat = MFCD_TEX_IND2,
        ctrls = {{"pfl_type_selected", 4}},
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

