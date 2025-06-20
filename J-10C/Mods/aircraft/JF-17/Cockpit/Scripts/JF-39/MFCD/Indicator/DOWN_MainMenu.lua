dofile(LockOn_Options.script_path .. "MFCD/MFCDs_defs.lua")

local page_root = create_page_root()

-- OSB
local TXT_HW = 0.15
local HH = 0
--5 * H2W_SCALE

local osb_txt = {
    --in base
    --{value="CMBT",   init_pos={-4*1.0/5, 0.2}, align="CenterCenter"},
    --{value="SMS",    init_pos={-2*1.0/5, 0.2}, align="CenterCenter"},

    {value="EPI1",   init_pos={MFCD_FONT_R_HORI_X, MFCD_FONT_LR6_Y}, align="RightCenter"},
    {value="EPI2",   init_pos={MFCD_FONT_R_HORI_X, MFCD_FONT_LR7_Y}, align="RightCenter"},
    {value="RTN",    init_pos={MFCD_FONT_R_HORI_X, MFCD_FONT_LR8_Y}, align="RightCenter"},

    {value="AFD",    init_pos={MFCD_FONT_L_HORI_X, MFCD_FONT_LR6_Y}, align="LeftCenter"}, -- data source: normal / backup
    {value="SMS",    init_pos={MFCD_FONT_L_HORI_X, MFCD_FONT_LR7_Y}, align="LeftCenter"},
    --{value="SET",    init_pos={-1.0,  0.0*0.40/2.5}, align="LeftCenter"},
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
    AddToLOWER(text_strpoly)
    text_strpoly = nil
end
