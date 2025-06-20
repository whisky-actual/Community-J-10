dofile(LockOn_Options.script_path.."command_defs.lua")
dofile(LockOn_Options.script_path.."damage_list.lua")

local gettext = require("i_18n")
_ = gettext.translate

-- debugGUI        = true
-- debugSADL       = true
-- debugLink16     = true

dtime = 0.1

sensitivity          = 0.0000025     -- V/m
frequency_accuracy   = 100.0         -- Hz
frequency            = 1092500000.0  -- Hz (960 .. 1215 MHz)
band_width           = 3000000.0     -- Hz
power                = 100.0         -- Wt

need_to_be_closed = true
