dofile(LockOn_Options.script_path .. "MFCD/MFCDs_defs.lua")

local page_root = create_page_root()



--OSB
local osb_txt = {
    {value="DATA",   init_pos={MFCD_FONT_UD1_X,    MFCD_FONT_U_Y},     align="CenterCenter"},
    
    {value="RLS",    init_pos={MFCD_FONT_L_HORI_X, MFCD_FONT_LR1_Y},   align="LeftCenter"},
    {value="NAV",    init_pos={MFCD_FONT_L_HORI_X, MFCD_FONT_LR2_Y},   align="LeftCenter"},
    {value="AS",     init_pos={MFCD_FONT_L_HORI_X, MFCD_FONT_LR3_Y},   align="LeftCenter"},
    {value="FUEL",   init_pos={MFCD_FONT_L_HORI_X, MFCD_FONT_LR4_Y},   align="LeftCenter"},
    
    {value="DST",    init_pos={MFCD_FONT_R_HORI_X, MFCD_FONT_LR1_Y},   align="RightCenter"},
    {value="FCS",    init_pos={MFCD_FONT_R_HORI_X, MFCD_FONT_LR2_Y},   align="RightCenter"},
    {value="ENG",    init_pos={MFCD_FONT_R_HORI_X, MFCD_FONT_LR3_Y},   align="RightCenter"},
    {value="DTC",    init_pos={MFCD_FONT_R_HORI_X, MFCD_FONT_LR4_Y},   align="RightCenter"},
}

local text_strpoly
local mesh_poly

for i=1, #(osb_txt) do
    text_strpoly              = CreateElement "ceStringPoly"
    text_strpoly.material     = MFCD_FONT_DEF
    text_strpoly.stringdefs   = MFCD_STRINGDEFS_DEF_X08
    text_strpoly.init_pos     = osb_txt[i].init_pos
    text_strpoly.alignment    = osb_txt[i].align
    text_strpoly.value        = osb_txt[i].value
    AddToUpper(text_strpoly)
    text_strpoly = nil
end
