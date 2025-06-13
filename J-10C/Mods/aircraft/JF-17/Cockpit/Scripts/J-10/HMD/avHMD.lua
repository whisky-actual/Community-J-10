dofile(LockOn_Options.script_path.."command_defs.lua")
dofile(LockOn_Options.script_path.."damage_list.lua")
dofile(LockOn_Options.script_path .. "devices.lua")

make_default_activity(0.006)

dev = GetSelf()

local sensor_data = get_base_data()

-------------------------------------------------------
-- Local Variables
-------------------------------------------------------
local JF39_HMD_HORIZONTAL_VIEW = get_param_handle("JF39_HMD_HORIZONTAL_VIEW")
local JF39_HMD_VERTICAL_VIEW = get_param_handle("JF39_HMD_VERTICAL_VIEW")
local JF39_HMD_HDG = get_param_handle("JF39_HMD_HDG")
local RAD_TO_DEGREE  = 57.29577951308233

-------------------------------------------------------
-- Params
-------------------------------------------------------
dev:listen_command(2142) -- -162 to 162 degrees
dev:listen_command(2143) -- -90 to 110

-------------------------------------------------------
-- Functions
-------------------------------------------------------
function post_initialize()
    JF39_HMD_HORIZONTAL_VIEW:set(0)
    JF39_HMD_VERTICAL_VIEW:set(0)
    JF39_HMD_HDG:set(0)
end

function SetCommand(command, value)
    if command == 2142 then
        -- Update horizontal view param (your existing logic)
        if JF39_HMD_VERTICAL_VIEW:get() < 25 then
            JF39_HMD_HORIZONTAL_VIEW:set(math.abs(value))
        else
            JF39_HMD_HORIZONTAL_VIEW:set(30)
        end

        -- Get base heading in degrees
        local base_heading_rad = sensor_data:getHeading()
        local base_heading_deg = (base_heading_rad * RAD_TO_DEGREE)

        -- Combine base heading with horizontal view value
        local combined_heading = base_heading_deg - value

        -- Normalize combined heading between 0-360 degrees
        if combined_heading < 0 then
            combined_heading = combined_heading + 360
        elseif combined_heading >= 360 then
            combined_heading = combined_heading - 360
        end

        -- Update the JF39_HMD_HDG param
        JF39_HMD_HDG:set(math.abs(combined_heading))

        -- Optional debug message
        --print_message_to_user(string.format("Cmd2142=%.2f BaseHDG=%.2f CombinedHDG=%.2f", value, base_heading_deg, combined_heading))

    elseif command == 2143 then
        -- Update vertical view param (your existing logic)
        if JF39_HMD_HORIZONTAL_VIEW:get() < 45 then
            JF39_HMD_VERTICAL_VIEW:set(value * 2)
        else
            JF39_HMD_VERTICAL_VIEW:set(value)
        end
    end
end


local gettext = require("i_18n")
_ = gettext.translate

dtime = 1.0 / 32

need_to_be_closed = false

----------------------------------------------------------------------------------------
--                    File by whisky.actual@gmail.com - v.1.2.2                       --
----------------------------------------------------------------------------------------