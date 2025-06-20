dofile(LockOn_Options.script_path.."command_defs.lua")
dofile(LockOn_Options.script_path.."damage_list.lua")

local gettext = require("i_18n")
_ = gettext.translate

-- debugGUI = true

dtime = 1.0 / 32

use_ed_render_target = true
use_ed_camera_render = false

overheat_time = 600.0
cooldown_time = 30.0

need_to_be_closed = true
