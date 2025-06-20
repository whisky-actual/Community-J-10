dofile(LockOn_Options.script_path .. "MFCD/MFCDs_defs.lua")

local page_root = create_page_root()

local osb_txt = {
    {value="RTN",    init_pos={MFCD_FONT_UD1_X, MFCD_FONT_U_Y}, align="CenterCenter"},
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

-- Title
local Poly_Text       = CreateElement "ceStringPoly"
Poly_Text.material    = MFCD_FONT_DEF
Poly_Text.stringdefs  = MFCD_STRINGDEFS_DEF_X15
Poly_Text.init_pos    = {0, 0.6, 0}
Poly_Text.alignment   = "CenterCenter"
Poly_Text.value       = "GROUP LIST"
AddToUpper(Poly_Text)
Poly_Text = nil

local Category_Text       = CreateElement "ceStringPoly"
Category_Text.material    = MFCD_FONT_DEF
Category_Text.stringdefs  = MFCD_STRINGDEFS_DEF
Category_Text.init_pos    = {(MFCD_FONT_UD1_X+MFCD_FONT_UD2_X)/2, 0.4, 0}
Category_Text.alignment   = "LeftCenter"
Category_Text.value       = "TN       FLT   ROLE      FUEL"
AddToUpper(Category_Text)
Category_Text = nil

local text_strpoly
for i=0,10 do
    text_strpoly                 = CreateElement "ceStringPoly"
    text_strpoly.name            = "clink_group_list_" .. i
    text_strpoly.material        = MFCD_FONT_DEF
    text_strpoly.stringdefs      = MFCD_STRINGDEFS_DEF
    text_strpoly.init_pos        = {(MFCD_FONT_UD1_X+MFCD_FONT_UD2_X)/2, 0.4 - 0.1 * (i + 1), 0}
    text_strpoly.alignment       = "LeftCenter"
    text_strpoly.value           = "XXXX"
    text_strpoly.controllers     = {{"clink_group_list", i}}
    AddToUpper(text_strpoly)
    text_strpoly = nil
end
