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
local JF39_HMD   = get_param_handle("JF39_HMD")
local JF39_AP   = get_param_handle("JF39_AP")
local JF39_LCP   = get_param_handle("JF39_LCP")

---------------------------------------------------------------------------------------------
-- State Variables
---------------------------------------------------------------------------------------------
local first_run = true
local button_depress_ap = false

---------------------------------------------------------------------------------------------
-- Update Function 
---------------------------------------------------------------------------------------------
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
]]
----------------------------------------------------------------------------------------
--                    File by whisky.actual@gmail.com - v.1.2.2                       --
----------------------------------------------------------------------------------------