dofile(LockOn_Options.script_path .. "MFCD/MFCDs_defs.lua")

local page_root = create_page_root()

local Poly_Text        = CreateElement "ceStringPoly"
Poly_Text.material    = MFCD_FONT_DEF
Poly_Text.stringdefs= MFCD_STRINGDEFS_DEF_X2
Poly_Text.init_pos    = {0, 0, 0}
Poly_Text.alignment    = "CenterCenter"
Poly_Text.value        = "NO AUX CONNECTION"
AddToUpper(Poly_Text)
Poly_Text = nil