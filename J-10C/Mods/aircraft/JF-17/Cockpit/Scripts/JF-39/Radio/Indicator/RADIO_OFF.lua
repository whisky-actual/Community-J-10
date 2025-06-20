dofile(LockOn_Options.script_path.."JF-39/Radio/Indicator/Radio_defs.lua")


local text_strpoly           = CreateElement "ceStringPoly"
text_strpoly.material        = RADIO_LCD_FONT
text_strpoly.init_pos        = {-0.85, 0, 0}
text_strpoly.alignment       = "LeftCenter"
text_strpoly.formats         = {"%s"}
text_strpoly.value           = ""
AddElementObject(text_strpoly)