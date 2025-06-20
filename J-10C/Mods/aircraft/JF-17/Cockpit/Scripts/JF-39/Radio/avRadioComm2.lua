dofile(LockOn_Options.script_path.."command_defs.lua")
dofile(LockOn_Options.script_path.."damage_list.lua")

local gettext = require("i_18n")
_ = gettext.translate

local MODULATION_AM = 0
local MODULATION_FM = 1
local MODULATION_AM_AND_FM = 2

--debugGUI = true

dtime = 1.0 / 32

----
GUI = {
    range = {min = 225E6, max = 399.975E6, step = 500E3}, --Hz
    displayName = _('COMM2 UHF Radio'),
    AM = true,
    FM = false
}

--modulation = MODULATION_AM
squelch = true
volume  = 0.5

power   = 10.0    --Watts

channel = 0

presets = {}

-- define default 200 channels
local function default_preset_channels()
    local MAX_CHANNEL = 200
    local freq = GUI.range.min
    
    local i = 1
    while (i <= MAX_CHANNEL) and (freq <= GUI.range.max) do
        presets[i] = freq
        freq = freq + GUI.range.step
        i = i + 1
    end
    
    presets[MAX_CHANNEL - 1] =  422750000
    presets[MAX_CHANNEL]     = 1092500000
    presets[MAX_CHANNEL]     =  432750000
end

default_preset_channels()

---- TODO: load user defined (setting -> option dialog) channel freqs

----

need_to_be_closed = true
