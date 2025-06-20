dofile(LockOn_Options.script_path.."command_defs.lua")
dofile(LockOn_Options.script_path .. "devices.lua")
make_default_activity(0.006)
dev = GetSelf()
--[[
-- ============= Show Param Handles List? ================
local SHOW_PARAMS_LIST = true

if SHOW_PARAMS_LIST then
    show_param_handles_list()
end
-- =======================================================
]]
---------------------------------------------------------------------------------------------
-- Parameter Handles
---------------------------------------------------------------------------------------------
local JF39_MFCD = get_param_handle("JF39_MFCD")
local JF39_HUD  = get_param_handle("JF39_HUD")
--local JF39_HMD   = get_param_handle("JF39_HMD")
local JF39_AP   = get_param_handle("JF39_AP")
local JF39_LCP   = get_param_handle("JF39_LCP")


local sensor_data = get_base_data()
local HORIZONTAL_VIEW_HMD = get_param_handle("HORIZONTAL_VIEW_HMD")
local VERTICAL_VIEW_HMD = get_param_handle("VERTICAL_VIEW_HMD")
local HMD_LIGHT = get_param_handle("HMD_LIGHT")
local HUD_MODE = get_param_handle("HUD_MODE")
local CANNON_MODE = get_param_handle("CANNON_MODE")
local JF39_HMD = get_param_handle("JF39_HMD")
local RAD_TO_DEGREE  = 57.29577951308233
local MainPower = get_param_handle("MAINPOWER")

local HUD_BRIGHTNESS = get_param_handle("HUD_BRIGHTNESS")
MainPower:set(1.0)
local button_depress = false
local first_run = true

---------------------------------------------------------------------------------------------
-- State Variables
---------------------------------------------------------------------------------------------
local first_run = true
local button_depress_ap = false

---------------------------------------------------------------------------------------------
-- Function 
---------------------------------------------------------------------------------------------

function post_initialize()
    HORIZONTAL_VIEW_HMD:set(0)
    VERTICAL_VIEW_HMD:set(0)
    HMD_LIGHT:set(1)
    JF39_HMD:set(1)
    CANNON_MODE:set(1)
	MainPower:set(1.0)
	HUD_BRIGHTNESS:set(1.0)
	HUD_MODE:set(1.0)
end

---------------------------------------------------------------------------------------------
-- Update Function 
---------------------------------------------------------------------------------------------
function update()
	if first_run then
		JF39_HMD:set(0)
		first_run = false
	end
	--print_message_to_user(get_cockpit_draw_argument_value(915))
	if get_cockpit_draw_argument_value(915) > 0.0 then
		--print_message_to_user('Clicked')
		button_depress = true
	else
		--if clicked
		if button_depress == true  then
			if JF39_HMD:get() == 0 then
				print_message_to_user('On')
				JF39_HMD:set(1)
				HMD_LIGHT:set(1) 
			else	
				print_message_to_user('Off')
				JF39_HMD:set(0)
				HMD_LIGHT:set(0) 
			end		
		end
		
		button_depress = false
	end 
	
	--get HMD brightness
	if get_cockpit_draw_argument_value(729) > 0.0 then
		HUD_BRIGHTNESS:set(get_cockpit_draw_argument_value(729))
	else
		HUD_BRIGHTNESS:set(0.0)
	end
	
end


--[[
function update()
    if first_run then
        JF39_MFCD:set(0)
        JF39_HUD:set(0)
        JF39_AP:set(0)
        first_run = false
    end

    -- MFCD Logic
    local switch_val = get_cockpit_draw_argument_value(907)
    local battery_val = get_cockpit_draw_argument_value(904)

    if switch_val > 0.5 and battery_val > 0.5 then
        JF39_MFCD:set(1)
    else
        JF39_MFCD:set(0)
    end

    -- HUD Toggle Logic
    local hud_switch_val = get_cockpit_draw_argument_value(729)
    local hud_battery_val = get_cockpit_draw_argument_value(904)

    if hud_switch_val > 0.01 and hud_battery_val > 0.5 then
        JF39_HUD:set(1)
    else
        JF39_HUD:set(0)
    end

    -- HMD Toggle Logic
    local hud_switch_val = get_cockpit_draw_argument_value(915)
    local hud_battery_val = get_cockpit_draw_argument_value(904)

    if hud_switch_val > 0.5 and hud_battery_val > 0.5 then
        JF39_HMD:set(1)
        --set_cockpit_draw_argument_value(264, 1)
    else
        JF39_HMD:set(0)
        --set_cockpit_draw_argument_value(264, 0)
    end

    -- LCP Toggle Logic
    local lcp_switch_val = get_cockpit_draw_argument_value(547)
    local lcp_battery_val = get_cockpit_draw_argument_value(904)
        
    if lcp_switch_val > 0.01 and lcp_battery_val > 0.5 then
        JF39_LCP:set(1)
    else
        JF39_LCP:set(0)
    end

    -- AP Toggle Logic
    if get_cockpit_draw_argument_value(719) > 0.0 then
        button_depress_ap = true
    else
        if button_depress_ap then
            JF39_AP:set(1 - JF39_AP:get())
        end
        button_depress_ap = false
    end
end
]]--
----------------------------------------------------------------------------------------
--                    File by whisky.actual@gmail.com - v.1.2.2                       --
----------------------------------------------------------------------------------------