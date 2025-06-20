--dofile(LockOn_Options.script_path.."command_defs.lua")
local dev = GetSelf()

--local mainpanel = GetDevice(0)
local sensor_data = get_base_data()
local mainpanel = GetDevice(0)

local update_time_step = 0.05
local iCommandPlane_ShowControls = 851

make_default_activity(update_time_step)

dev:listen_command(iCommandPlane_ShowControls)


local function get_mechinfo()
    -- 需要转成角度值? 很多是[-1, 1]
	if get_aircraft_draw_argument_value(16) > 0.0 then
		get_param_handle("ASM_MECHINFO_LEFT_STAB"):set(get_aircraft_draw_argument_value(16))        -- 左平尾
    else
		get_param_handle("ASM_MECHINFO_LEFT_STAB"):set(get_aircraft_draw_argument_value(16) * 0.6)        -- 左平尾arg范围补偿
	end
	
	if get_aircraft_draw_argument_value(15) > 0.0 then
		get_param_handle("ASM_MECHINFO_RIGHT_STAB"):set(get_aircraft_draw_argument_value(15))       -- 右平尾
	else
		get_param_handle("ASM_MECHINFO_RIGHT_STAB"):set(get_aircraft_draw_argument_value(15) * 0.6)       -- 右平尾arg范围补偿
	end
		
    get_param_handle("ASM_MECHINFO_STABS"):set((get_param_handle("ASM_MECHINFO_LEFT_STAB"):get() + get_param_handle("ASM_MECHINFO_RIGHT_STAB"):get()) / 2.0) -- 平均平尾
	get_param_handle("ASM_MECHINFO_VERT_STAB"):set(get_aircraft_draw_argument_value(17))        -- 垂尾
    get_param_handle("ASM_MECHINFO_LEFT_AILERON"):set(get_aircraft_draw_argument_value(12))       -- 左副翼
    get_param_handle("ASM_MECHINFO_RIGHT_AILERON"):set(get_aircraft_draw_argument_value(11))      -- 右副翼
	
	--[[
	get_param_handle("ASM_MECHINFO_AFTER_LEFT_FLAP"):set(get_aircraft_draw_argument_value(10))    -- 后缘 左
    get_param_handle("ASM_MECHINFO_AFTER_RIGHT_FLAP"):set(get_aircraft_draw_argument_value(9))    -- 后缘 右
	
	get_param_handle("ASM_MECHINFO_FORWARD_INNER_LEFT_AILERON"):set(get_aircraft_draw_argument_value(130))    -- 前缘内侧 左
    get_param_handle("ASM_MECHINFO_FORWARD_INNER_RIGHT_AILERON"):set(get_aircraft_draw_argument_value(132))   -- 前缘内侧 右
    get_param_handle("ASM_MECHINFO_FORWARD_OUTTER_LEFT_AILERON"):set(get_aircraft_draw_argument_value(133))   -- 前缘外侧 左
    get_param_handle("ASM_MECHINFO_FORWARD_OUTTER_RIGHT_AILERON"):set(get_aircraft_draw_argument_value(131))  -- 前缘外侧 右
	]]
	
	get_param_handle("ASM_MECHINFO_CANOPYPOS"):set(get_aircraft_draw_argument_value(38))        -- 舱盖
    --get_param_handle("ASM_MECHINFO_SPEEDBREAK"):set(get_aircraft_draw_argument_value(21))       -- 减速板
    get_param_handle("ASM_MECHINFO_SPEEDBREAK"):set(sensor_data:getSpeedBrakePos())
    get_param_handle("ASM_MECHINFO_BREAKCHUTE"):set(get_aircraft_draw_argument_value(35))       -- 减速伞
    get_param_handle("ASM_MECHINFO_NOSEGEAR"):set(get_aircraft_draw_argument_value(0))          -- 前轮
    get_param_handle("ASM_MECHINFO_LEFT_MAINGEAR"):set(get_aircraft_draw_argument_value(3))     -- 主轮左
    get_param_handle("ASM_MECHINFO_RIGHT_MAINGEAR"):set(get_aircraft_draw_argument_value(5))    -- 主轮右

    -- RATE
    get_param_handle("ASM_RATE_YAW"):set(math.abs(math.deg(sensor_data:getRateOfYaw())))     -- Yaw
    get_param_handle("ASM_RATE_ROLL"):set(math.abs(math.deg(sensor_data:getRateOfRoll())))   -- Roll
    get_param_handle("ASM_RATE_PITCH"):set(math.abs(math.deg(sensor_data:getRateOfPitch()))) -- Pitch

    --print_message_to_user("pitch param: " .. get_param_handle("ASM_MECHINFO_FORWARD_INNER_LEFT_AILERON"):get())
end

function post_initialize()
    get_param_handle("CTRL_IND_ON_OFF"):set(0)
    get_mechinfo()
end

function SetCommand(command, value)
    if command == iCommandPlane_ShowControls then
        if get_param_handle("CTRL_IND_ON_OFF"):get() < 0.5 then
            get_param_handle("CTRL_IND_ON_OFF"):set(1)
        else
            get_param_handle("CTRL_IND_ON_OFF"):set(0)
        end
    end
end

function update()
    get_mechinfo()
end

need_to_be_closed = false

--[[
arg list by LJQC:
    平尾 左16 右15
    垂尾 17(18?)
    副翼 左12   右11
前缘内侧 左130 右132
前缘外侧 左133 右131
    后缘 左10  右9
]]--