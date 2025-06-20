dofile(LockOn_Options.script_path .. "MFCD/MFCDs_defs.lua")

local page_root = create_page_root()



-- Title
local Poly_Text        = CreateElement "ceStringPoly"
Poly_Text.material    = MFCD_FONT_DEF
Poly_Text.stringdefs= MFCD_STRINGDEFS_DEF_X2
Poly_Text.init_pos    = {0, 0.5, 0}
Poly_Text.alignment    = "CenterCenter"
Poly_Text.value        = "MENU"
AddToUpper(Poly_Text)
Poly_Text = nil

--[[
local line            = CreateElement "ceSimpleLineObject"
line.material        = MFCD_MATERIAL_WHITE
line.primitivetype    = "lines"
line.init_pos        = {0, 0, 0}
line.vertices        = {{-1.0, -0.3333, 0},{1.0, -0.3333, 0}}
AddElementObject(line)
line = nil
]]

-- OSB
local TXT_HW = 0.15
local HH = 0
--5 * H2W_SCALE

local osb_txt = {
    {value="RDR",    init_pos={ MFCD_FONT_UD1_X, MFCD_FONT_U_Y}, align="CenterCenter"},
    {value="INS",    init_pos={ MFCD_FONT_UD2_X, MFCD_FONT_U_Y}, align="CenterCenter"},
    {value="TACAN",  init_pos={ MFCD_FONT_UD3_X, MFCD_FONT_U_Y}, align="CenterCenter"},
    {value="APR",    init_pos={ MFCD_FONT_UD4_X, MFCD_FONT_U_Y}, align="CenterCenter"},
    {value="POD",    init_pos={ MFCD_FONT_UD5_X, MFCD_FONT_U_Y}, align="CenterCenter"},

    {value="SMS",    init_pos={ MFCD_FONT_R_HORI_X, MFCD_FONT_LR1_Y}, align="RightCenter"},
    {value="CMBT",   init_pos={ MFCD_FONT_R_HORI_X, MFCD_FONT_LR2_Y}, align="RightCenter"},
    {value="BIT",    init_pos={ MFCD_FONT_R_HORI_X, MFCD_FONT_LR3_Y}, align="RightCenter"},
    {value="CHKLS",  init_pos={ MFCD_FONT_R_HORI_X, MFCD_FONT_LR4_Y}, align="RightCenter"},
    {value="PFL",    init_pos={ MFCD_FONT_R_HORI_X, MFCD_FONT_LR5_Y}, align="RightCenter"},

    {value="HSD",    init_pos={MFCD_FONT_L_HORI_X, MFCD_FONT_LR1_Y}, align="LeftCenter"},
    {value="EFIS",   init_pos={MFCD_FONT_L_HORI_X, MFCD_FONT_LR2_Y}, align="LeftCenter"},
    {value="CLNK",   init_pos={MFCD_FONT_L_HORI_X, MFCD_FONT_LR3_Y}, align="LeftCenter"},
    {value="DATA",   init_pos={MFCD_FONT_L_HORI_X, MFCD_FONT_LR4_Y}, align="LeftCenter"},
}

local text_strpoly
local mesh_poly

for i=1, #(osb_txt) do
    text_strpoly                = CreateElement "ceStringPoly"
    text_strpoly.material        = MFCD_FONT_DEF
    text_strpoly.stringdefs        = MFCD_STRINGDEFS_DEF_X08
    text_strpoly.init_pos        = osb_txt[i].init_pos
    text_strpoly.alignment        = osb_txt[i].align
    text_strpoly.formats        = osb_txt[i].formats
    if osb_txt[i].params then
        text_strpoly.element_params    = osb_txt[i].params
    end
    if osb_txt[i].controller then
        text_strpoly.controllers    = osb_txt[i].controller
    end
    text_strpoly.name = "osb_txt_" .. i
    if osb_txt[i].value ~= nil then
        text_strpoly.value = osb_txt[i].value
    else
        text_strpoly.value = "OSB" .. i
    end
    AddToUpper(text_strpoly)
    text_strpoly = nil
end
