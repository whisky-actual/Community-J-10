dofile(LockOn_Options.script_path.."command_defs.lua")
dofile(LockOn_Options.script_path .. "devices.lua")
--dofile(LockOn_Options.script_path .. "Other/store_values.lua")
--dofile(LockOn_Options.script_path .. "../../config.lua")
dev = GetSelf()
local update_time_step = 0.01 --update will be called 100 times per second
make_default_activity(update_time_step)
local sensor_data = get_base_data()

-- Conversions
dev:listen_command(2142) -- -162 to 162 degrees
dev:listen_command(2143) -- -90 to 110
dev:listen_command(click_cmds.PNT_915) --
dev:listen_command(key_cmds.AAP_HMD) --


local HORIZONTAL_POS_HMD = get_param_handle("HORIZONTAL_POS_HMD")
local VERTICAL_VIEW_HMD = get_param_handle("VERTICAL_VIEW_HMD")

local HMDTOGGLE = get_param_handle("HMDTOGGLE")
--local HORIZONTAL_VIEW_HMD = get_param_handle("HORIZONTAL_VIEW_HMD")
--get armament

dev:listen_event("WeaponRearmComplete")
dev:listen_event("UnlimitedWeaponStationRestore")

--hud indicator params
local CURR_IAS  = get_param_handle("CURR_IAS")	--Airspeed.
local MACH_A  	= get_param_handle("MACH_A")
local MACH_B  	= get_param_handle("MACH_B")	

local HUD_MACH = 0

local HUD_IAS = 0
local HUD_GS = 0

local OverSpeedBlink = 0
-- Direction related params

local PITCH_HUD  = get_param_handle("PITCH_HUD")

local ROLL_HUD  = get_param_handle("ROLL_HUD")

local HEADING_HMD = get_param_handle("HEADING_HMD")

local ALTITUDE_HUD = get_param_handle("ALTITUDE_HMD")

local VELVEC_HUD_Y  = get_param_handle("VELVEC_HUD_Y")

local G_HMD  = get_param_handle("G_HMD")

local RAD_TO_DEGREE  = 57.29577951308233

--loadout name list

loadout_stations = {
    get_param_handle("loadout_station_1"),
    get_param_handle("loadout_station_2"),
    get_param_handle("loadout_station_3"),
    get_param_handle("loadout_station_4"),
    get_param_handle("loadout_station_5"),
    get_param_handle("loadout_station_6"),
    get_param_handle("loadout_station_7"),
    get_param_handle("loadout_station_8"),
    get_param_handle("loadout_station_9"),
}

function post_initialize()
    VERTICAL_VIEW_HMD:set(0)
	update_loadout_info()
end



function SetCommand(command,value)
    if command == 2142 then
       -- print_message_to_user(value)
		HORIZONTAL_POS_HMD:set(value)
    end
end 

function update()
	
	
	--if HMDTOGGLE:get() == 1 then
		--print_message_to_user(VERTICAL_VIEW_HMD:get())
		--print_message_to_user(HORIZONTAL_VIEW:get())
	--end
	
	--engine
	set_aircraft_draw_argument_value(89, get_aircraft_draw_argument_value(90))
	
	-- air break
	set_aircraft_draw_argument_value(21, get_aircraft_draw_argument_value(182))
	
	-- Right LEF
	set_aircraft_draw_argument_value(13, get_aircraft_draw_argument_value(130))
	
	-- Left LEF
	set_aircraft_draw_argument_value(14, get_aircraft_draw_argument_value(132))
	
	
	

	ROLL_HUD:set(sensor_data.getRoll())

	PITCH_HUD:set(sensor_data.getPitch())
	
 local VelVec_y = -sensor_data.getAngleOfAttack() 

	VELVEC_HUD_Y:set(VelVec_y * (1.08))
	
	
	
	HMD_Heading = ((sensor_data.getMagneticHeading() * RAD_TO_DEGREE)-HORIZONTAL_POS_HMD:get())%360
	
	HEADING_HMD:set(math.floor(HMD_Heading))
	
	ALTITUDE_HUD:set(sensor_data.getBarometricAltitude() * 3.2808399)
	
	HUD_IAS = sensor_data.getIndicatedAirSpeed() * 1.94384449		 -- m/s to kts
	local self_vel_l,self_vel_v,self_vel_h = sensor_data.getSelfAirspeed()		-- Prereq for ground speed in kts
	HUD_GS = math.sqrt(self_vel_h^2 + self_vel_l^2)*1.94384449
-- Below 50 kts use ground speed reading instead
	if HUD_IAS < 50 then
		CURR_IAS:set(HUD_GS)
	else
		CURR_IAS:set(HUD_IAS)
	end
	
	HUD_MACH = sensor_data.getMachNumber()
	
	if HUD_MACH < 0.995 then
		HUD_MACH = HUD_MACH *100
	end
	
	MACH_A:set(sensor_data.getMachNumber())
	
	G_HMD:set(sensor_data.getVerticalAcceleration())

	
	--print_message_to_user(MACH_A:get())
	--print_message_to_user(CURR_IAS:get())
	--print_message_to_user(ALTITUDE_HUD:get())
	
	
	
end


-- if rearming occurs, update station info
function CockpitEvent(event, val)
    if event == "WeaponRearmComplete" or event == "UnlimitedWeaponStationRestore" then
        update_loadout_info()
    end
end


function update_loadout_info()
    for i=1,7 do
        local station = dev:get_station_info(i-1)
        local name = "UNKNOWN"
        local quantity = "-"
		--[[
		print_message_to_user(station)
        if loadout_names[station.CLSID] ~= nil then
            name = loadout_names[station.CLSID]
        end]]
        loadout_stations[i]:set(string.upper(name))
		print_message_to_user(name)
    end
end

need_to_be_closed = false