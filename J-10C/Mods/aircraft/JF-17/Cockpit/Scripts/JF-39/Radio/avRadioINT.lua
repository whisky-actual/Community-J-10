dofile(LockOn_Options.script_path.."command_defs.lua")
dofile(LockOn_Options.script_path.."damage_list.lua")

local gettext = require("i_18n")
_ = gettext.translate

-- debugGUI = false

dtime = 0.1

GUI = {
    interphone = {
        interphone = true,
        displayName = _("Intercom")
    }
}


presets = {}

-- define default 200 channels
local MAX_CHANNEL = 200
local function default_preset_channels()
    local range_vhf = {min = 108E6, max = 173.975E6, step = 500E3}
    local range_uhf = {min = 225E6, max = 399.975E6, step = 1000E3}

    local i = 1
    local freq = range_vhf.min
    while (i <= MAX_CHANNEL/2) and (freq <= range_vhf.max) do
        presets[i] = freq
        freq = freq + range_vhf.step
        i = i + 1
    end

    freq = range_uhf.min
    while (i <= MAX_CHANNEL) and (freq <= range_uhf.max) do
        presets[i] = freq
        freq = freq + range_uhf.step
        i = i + 1
    end

    presets[MAX_CHANNEL - 1] =  422750000
    presets[MAX_CHANNEL]     = 1092500000
    presets[MAX_CHANNEL]     =  432750000
end

default_preset_channels()

-- customized radio freq
sfile = LockOn_Options.script_path.."/../../Doc/customerRadio.lua"
fattr = lfs.attributes(sfile) 
found_file = false
if fattr and fattr.mode == 'file' then
    found_file = true
else
    sfile = LockOn_Options.script_path.."JF-39/Radio//customerRadio.lua"
    fattr = lfs.attributes(sfile)
    if fattr and fattr.mode == 'file' then
        found_file = true
    end
end
if found_file == true then
    local func, err = loadfile(sfile)
    if func then
        presets_tmp = func()
        for k=1,1,MAX_CHANNEL do
            if presets_tmp[k] ~= nil then
                presets[k] = presets_tmp[k]
            end
        end
    else
        print("ERROR loadfile: ", err, sfile)
    end
end

-- ground crew messages
msg_ground_crew_warning_move = _(" Ground Crew: Hey! Do Not Move!")

msg_ground_crew_dtc_start  = _(" Ground Crew: Copy! Updating the DTC now!")
msg_ground_crew_dtc_unplug = _(" Ground Crew: Please unplug the card first!")
msg_ground_crew_dtc_finish = _(" Ground Crew: DTC update complete!")

msg_ground_crew_ins_finish = _(" Ground Crew: Coordinates for INS is ready!")

msg_ground_crew_pylon_incorrect = _(" Ground Crew: Incorrect payload! Please re-select!")
msg_ground_crew_pylon_none      = _(" Ground Crew: No ordnance, unable to program!")

msg_ground_crew_lasercode_start  = _(" Ground Crew: Roger! Standby! Configuring laser code!")
msg_ground_crew_lasercode_finish = _(" Ground Crew: Laser code ready!")

msg_ground_crew_aar_probe_start  = _(" Ground Crew: Copy! Be patient, configuring probe a bit time consuming!")
msg_ground_crew_aar_probe_finish = _(" Ground Crew: Finally done!")
msg_ground_crew_shutdown_eng     = _(" Ground Crew: Hey! Shutdown the engine and power first!")

msg_ground_crew_open_canopy  = _(" Ground Crew: Open the canopy!")

msg_ground_crew_supply_reset = _(" Ground Crew: Copy! To refill utilities!")
msg_ground_crew_supply_done  = _(" Ground Crew: Utilities refill complete!")

msg_ground_crew_airspace_change   = _(" Ground Crew: Switch air space source to ")
msg_ground_crew_airspace_clean    = _(" Ground Crew: Clean air space!")

msg_ground_crew_ladder_remove_start  = _(" Ground Crew: Copy! To remove inlet cover and ladder!")
msg_ground_crew_ladder_remove_finish = _(" Ground Crew: Inlet cover and ladder removed!")

msg_ground_crew_ladder_install_start  = _(" Ground Crew: Copy! To install inlet cover and ladder!")
msg_ground_crew_ladder_install_finish = _(" Ground Crew: Inlet cover and ladder installed!")

msg_ground_crew_ext_tank_refuel = _(" Ground Crew: Copy! Refuel external tanks!")
msg_ground_crew_ext_tank_exit   = _(" Ground Crew: Don't move! Refuel is terminated!")
msg_ground_crew_ext_tank_done   = _(" Ground Crew: External tank(s) refuel done!")

need_to_be_closed = true
