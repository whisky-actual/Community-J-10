dofile(LockOn_Options.script_path .. "MFCD/MFCDs_defs.lua")

local page_root = create_page_root()

local osb_txt = {
    {
        value="LMFCD",    init_pos={ MFCD_FONT_UD1_X, MFCD_FONT_U_Y}, align="CenterCenter", BIT_ID = 1,
    },
    {
        value="RMFCD",    init_pos={ MFCD_FONT_UD2_X, MFCD_FONT_U_Y}, align="CenterCenter", BIT_ID = 2,
    },
    {
        value="CMFCD",    init_pos={ MFCD_FONT_UD3_X, MFCD_FONT_U_Y}, align="CenterCenter", BIT_ID = 3,
    },
    {
        value="HUD",      init_pos={ MFCD_FONT_UD4_X, MFCD_FONT_U_Y}, align="CenterCenter", BIT_ID = 4,
    },
    {
        value="EMMC",     init_pos={ MFCD_FONT_UD5_X, MFCD_FONT_U_Y}, align="CenterCenter", BIT_ID = 5,
    },

    {
        value="RDR",      init_pos={ MFCD_FONT_R_HORI_X, MFCD_FONT_LR1_Y}, align="RightCenter", BIT_ID = 6,
    },
    {
        value="INS",      init_pos={ MFCD_FONT_R_HORI_X, MFCD_FONT_LR2_Y}, align="RightCenter", BIT_ID = 7,
    },
    {
        value="SMS",      init_pos={ MFCD_FONT_R_HORI_X, MFCD_FONT_LR3_Y}, align="RightCenter", BIT_ID = 8,
    },
    {
        value="RWR",      init_pos={ MFCD_FONT_R_HORI_X, MFCD_FONT_LR4_Y}, align="RightCenter", BIT_ID = 9,
    },
    {
        value="OESP",     init_pos={ MFCD_FONT_R_HORI_X, MFCD_FONT_LR5_Y}, align="RightCenter", BIT_ID = 10,
    },

    {
        value="WMMC1M",   init_pos={MFCD_FONT_L_HORI_X, MFCD_FONT_LR1_Y}, align="LeftCenter", BIT_ID = 11,
    },
    {
        value="WMMC2",    init_pos={MFCD_FONT_L_HORI_X, MFCD_FONT_LR2_Y}, align="LeftCenter", BIT_ID = 12,
    },
    {
        value="CNI",      init_pos={MFCD_FONT_L_HORI_X, MFCD_FONT_LR3_Y}, align="LeftCenter", BIT_ID = 13,
    },
    
    {-- info title
        value="BIT",   init_pos={0 , (MFCD_FONT_LR1_Y + MFCD_FONT_LR2_Y)/2}, align="CenterCenter", stringdefs = MFCD_STRINGDEFS_DEF_X2, BIT_ID = -1,
        controller = {{"BIT_title"},},
    },
    {-- info txt
        value="INFO",   init_pos={(MFCD_FONT_UD1_X + MFCD_FONT_UD2_X) / 2, MFCD_FONT_LR2_Y }, align="LeftTop", BIT_ID = -1,
        controller = {{"BIT_subsys_bitinfo"},},
    },
    {-- page number
        value="1",   init_pos={MFCD_FONT_L_HORI_X, MFCD_FONT_LR5_Y }, align="LeftCenter", BIT_ID = -1,
        controller = {{"BIT_pageno"},},
    },
}

local function add_line(parent_name, parent_BITID, parent_align)
    local line              = CreateElement "ceSimpleLineObject"
    line.material            = MFCD_MATERIAL_DEF
    line.init_pos           = {0, 0, 0}
    if parent_align == 'LeftCenter' then
        line.init_pos       = {1.0/8, 0, 0}
    else 
        if parent_align == 'RightCenter' then
        line.init_pos       = {-1.0/8, 0, 0}
        end
    end
    
    line.width                = 0.005
    line.vertices            = {{-1.0/8, 0},{1.0/8, 0},}
    line.parent_element     = parent_name
    line.controllers        = {{"BIT_check_subsys_online", parent_BITID},}
    AddToUpper(line)
end

local function add_box(parent_name, parent_BITID, parent_align)
    local box               = CreateElement "ceSimpleLineObject"
    box.material            = MFCD_MATERIAL_DEF
    box.init_pos            = {0, 0, 0}
    if parent_align == 'LeftCenter' then
        box.init_pos       = {1.0/8, 0, 0}
    else 
        if parent_align == 'RightCenter' then
            box.init_pos       = {-1.0/8, 0, 0}
        end
    end
    box.width                = 0.005
    box.vertices            = {{-1.0/8, 0.3 * 1.0/8},{1.0/8, 0.3 * 1.0/8},{1.0/8, 0.3 * -1.0/8}, {-1.0/8, 0.3 * -1.0/8}, {-1.0/8, 0.3 * 1.0/8},}
    box.parent_element      = parent_name
    box.controllers        = {{"BIT_check_subsys_failexist", parent_BITID},},
    AddToUpper(box)
end

local text_strpoly
local mesh_poly

for i=1, #(osb_txt) do
    text_strpoly                = CreateElement "ceStringPoly"
    text_strpoly.material       = MFCD_FONT_DEF
    text_strpoly.stringdefs     = MFCD_STRINGDEFS_DEF_X08
    text_strpoly.init_pos       = osb_txt[i].init_pos
    text_strpoly.alignment      = osb_txt[i].align
    text_strpoly.formats        = osb_txt[i].formats
    
    if osb_txt[i].stringdefs then
        text_strpoly.stringdefs = osb_txt[i].stringdefs
    end
    
    if osb_txt[i].controller then
        text_strpoly.controllers       = osb_txt[i].controller
    end
    
    text_strpoly.name = "osb_txt_" .. i
    if osb_txt[i].name then
        text_strpoly.name = osb_txt[i].name
    end
    
    if osb_txt[i].parent_element then
        text_strpoly.parent_element = osb_txt[i].parent_element
    end
    
    if osb_txt[i].value ~= nil then
        text_strpoly.value = osb_txt[i].value
    else
        text_strpoly.value = "OSB" .. i
    end
    
    AddToUpper(text_strpoly)
    
    if osb_txt[i].BIT_ID > 0 then
        add_line(text_strpoly.name, osb_txt[i].BIT_ID, osb_txt[i].align)
        add_box( text_strpoly.name, osb_txt[i].BIT_ID, osb_txt[i].align)
    end
    
    text_strpoly = nil
end
