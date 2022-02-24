local inputpath = folder.."../../../Input/JF-17/"
local cscripts = folder.."../../../Cockpit/Scripts/"
dofile(cscripts.."command_defs.lua")
dofile(cscripts.."devices.lua")

local res = external_profile("Config/Input/Aircrafts/common_keyboard_binding.lua")

local arcade_binding = external_profile(inputpath.."thunder_arcade_binding_keyboard.lua")
join(res.keyCommands, arcade_binding.keyCommands)

local click_binding = external_profile(inputpath.."thunder_click_binding.lua")
join(res.keyCommands, click_binding.keyCommands)

join(res.keyCommands,{

-- 拉烟
{combos = {{key = 'T'}}, down = iCommandPlaneWingtipSmokeOnOff, name = _('Smoke'), category = _('Systems')},

----------------------------------------------------------------------------------------------------------------
-- joystick mapping: T = Throttle, S = Stick
----------------------------------------------------------------------------------------------------------------
-- Modes
-- T1: MMS
{combos = {{key = '1'}},    down = key_cmds.HOTAS_Throttle_T1_Center,       name = _(cmd_names.HOTAS_Throttle_T1_Center),    category = {_('Modes'), _('HOTAS')}},
{combos = {{key = '2'}},    down = key_cmds.HOTAS_Throttle_T1_Forward,      name = _(cmd_names.HOTAS_Throttle_T1_Forward),   category = {_('Modes'), _('HOTAS')}},
{combos = {{key = '7'}},    down = key_cmds.HOTAS_Throttle_T1_Backward,     name = _(cmd_names.HOTAS_Throttle_T1_Backward),  category = {_('Modes'), _('HOTAS')}},
{                           down = key_cmds.HOTAS_Throttle_T1_MMS_Cycle_Next,  name = _(cmd_names.HOTAS_Throttle_T1_MMS_Cycle_Next),  category = _('HOTAS')},
{                           down = key_cmds.HOTAS_Throttle_T1_MMS_Cycle_Prev,  name = _(cmd_names.HOTAS_Throttle_T1_MMS_Cycle_Prev),  category = _('HOTAS')},

-- T2: CMS
{combos = {{key = 'E'}},    down = key_cmds.HOTAS_Throttle_T2_Forward,      name = _(cmd_names.HOTAS_Throttle_T2_Forward),   category = {_('Sensors'), _('HOTAS')}},
{combos = {{key = 'Q'}},    down = key_cmds.HOTAS_Throttle_T2_Backward,     name = _(cmd_names.HOTAS_Throttle_T2_Backward),  category = {_('Sensors'), _('HOTAS')}},
{                           down = key_cmds.HOTAS_Throttle_T2_Press,        name = _(cmd_names.HOTAS_Throttle_T2_Press),     category = {_('Sensors'), _('HOTAS')}},

-- T3: Air Brake
{combos = {{key = 'B'}}, down = key_cmds.AirBrake, name = _(cmd_names.AirBrake), cockpit_device_id = devices.FCS, category = {_('FCS'), _('HOTAS')}},
{combos = {{key = 'B', reformers = {'LShift'}}}, pressed = key_cmds.AirBrakeOn, name = _(cmd_names.AirBrakeOn),  cockpit_device_id = devices.FCS, category = {_('FCS'), _('HOTAS')}},
{combos = {{key = 'B', reformers = {'LCtrl'}}}, pressed = key_cmds.AirBrakeOff, name = _(cmd_names.AirBrakeOff), cockpit_device_id = devices.FCS, category = {_('FCS'), _('HOTAS')}},

{                        down = key_cmds.HOTAS_Throttle_T3_Forward,  name = _(cmd_names.HOTAS_Throttle_T3_Forward),  category = {_('HOTAS')}},
{                        down = key_cmds.HOTAS_Throttle_T3_Backward, name = _(cmd_names.HOTAS_Throttle_T3_Backward), category = {_('HOTAS')}},

-- T4: PTT
{combos = {{key = '\\', reformers = {'RAlt'}}},  down = key_cmds.HOTAS_Throttle_T4_Forward,  name = _(cmd_names.HOTAS_Throttle_T4_Forward),  cockpit_device_id = devices.INTERCOM,  category = {_('Radio'), _('HOTAS')}},
{combos = {{key = '\\', reformers = {'RCtrl'}}}, down = key_cmds.HOTAS_Throttle_T4_Backward, name = _(cmd_names.HOTAS_Throttle_T4_Backward), cockpit_device_id = devices.INTERCOM,  category = {_('Radio'), _('HOTAS')}},

-- pure voip
{down = key_cmds.HOTAS_Throttle_T4_Forward_VOIP_down,  up = key_cmds.HOTAS_Throttle_T4_Forward_VOIP_up,  name = _(cmd_names.HOTAS_Throttle_T4_Forward_VOIP),  cockpit_device_id = devices.INTERCOM,  category = {_('Radio'), _('HOTAS')}},
{down = key_cmds.HOTAS_Throttle_T4_Backward_VOIP_down, up = key_cmds.HOTAS_Throttle_T4_Backward_VOIP_up, name = _(cmd_names.HOTAS_Throttle_T4_Backward_VOIP), cockpit_device_id = devices.INTERCOM,  category = {_('Radio'), _('HOTAS')}},

-- radio menu + voip (short press/release for menu, long press for voip)
{down = key_cmds.HOTAS_Throttle_T4_Forward_w_VOIP_down,  up = key_cmds.HOTAS_Throttle_T4_Forward_w_VOIP_up,  name = _(cmd_names.HOTAS_Throttle_T4_Forward_w_VOIP),  cockpit_device_id = devices.INTERCOM,  category = {_('Radio'), _('HOTAS')}},
{down = key_cmds.HOTAS_Throttle_T4_Backward_w_VOIP_down, up = key_cmds.HOTAS_Throttle_T4_Backward_w_VOIP_up, name = _(cmd_names.HOTAS_Throttle_T4_Backward_w_VOIP), cockpit_device_id = devices.INTERCOM,  category = {_('Radio'), _('HOTAS')}},


{combos = {{key = 'I'}}, down = key_cmds.HOTAS_Throttle_T4_Press, up = key_cmds.HOTAS_Throttle_T4_Press, value_down = 1.0, value_up = 0.0,   name = _(cmd_names.HOTAS_Throttle_T4_Press), category = {_('IFF'), _('HOTAS')}},

-- T5: TDC
{combos = {{key = 'Enter'}}, down   = key_cmds.HOTAS_Throttle_T5_Press,     name = _(cmd_names.HOTAS_Throttle_T5_Press),    category = {_('Sensors'), _('HOTAS')}},
--{combos = {{key = ';'}},    pressed = key_cmds.HOTAS_Throttle_T5_Up,        name = _(cmd_names.HOTAS_Throttle_T5_Up),       category = {_('Sensors'), _('HOTAS')}},
--{combos = {{key = '.'}},    pressed = key_cmds.HOTAS_Throttle_T5_Down,      name = _(cmd_names.HOTAS_Throttle_T5_Down),     category = {_('Sensors'), _('HOTAS')}},
--{combos = {{key = ','}},    pressed = key_cmds.HOTAS_Throttle_T5_Left,      name = _(cmd_names.HOTAS_Throttle_T5_Left),     category = {_('Sensors'), _('HOTAS')}},
--{combos = {{key = '/'}},    pressed = key_cmds.HOTAS_Throttle_T5_Right,     name = _(cmd_names.HOTAS_Throttle_T5_Right),    category = {_('Sensors'), _('HOTAS')}},

{combos = {{key = ';'}},    pressed = key_cmds.HOTAS_Throttle_T5_Up,    up = key_cmds.HOTAS_Throttle_T5_UD_Stop,    name = _(cmd_names.HOTAS_Throttle_T5_Up),       category = {_('Sensors'), _('HOTAS')}},
{combos = {{key = '.'}},    pressed = key_cmds.HOTAS_Throttle_T5_Down,  up = key_cmds.HOTAS_Throttle_T5_UD_Stop,    name = _(cmd_names.HOTAS_Throttle_T5_Down),     category = {_('Sensors'), _('HOTAS')}},
{combos = {{key = ','}},    pressed = key_cmds.HOTAS_Throttle_T5_Left,  up = key_cmds.HOTAS_Throttle_T5_LR_Stop,    name = _(cmd_names.HOTAS_Throttle_T5_Left),     category = {_('Sensors'), _('HOTAS')}},
{combos = {{key = '/'}},    pressed = key_cmds.HOTAS_Throttle_T5_Right, up = key_cmds.HOTAS_Throttle_T5_LR_Stop,    name = _(cmd_names.HOTAS_Throttle_T5_Right),   category = {_('Sensors'), _('HOTAS')}},



-- S1: SS (sensor select)
{combos = {{key = '3'}},                        down = key_cmds.HOTAS_Stick_S1_Forward,   name = _(cmd_names.HOTAS_Stick_S1_Forward),  category = {_('Modes'), _('HOTAS')}},
{combos = {{key = '2', reformers = {'LCtrl'}}}, down = key_cmds.HOTAS_Stick_S1_Backward,  name = _(cmd_names.HOTAS_Stick_S1_Backward), category = {_('HOTAS')}},
{combos = {{key = '1', reformers = {'LCtrl'}}}, down = key_cmds.HOTAS_Stick_S1_Left,      name = _(cmd_names.HOTAS_Stick_S1_Left),     category = {_('HOTAS')}},
{combos = {{key = '3', reformers = {'LCtrl'}}}, down = key_cmds.HOTAS_Stick_S1_Right,     name = _(cmd_names.HOTAS_Stick_S1_Right),    category = {_('HOTAS')}},
{combos = {{key = '0'}},                        down = key_cmds.HOTAS_Stick_S1_Press,     name = _(cmd_names.HOTAS_Stick_S1_Press),    category = {_('HOTAS')}},

-- S2: SC senser control
{combos = {{key = '='}},                         down = key_cmds.HOTAS_Stick_S2_Forward,   name = _(cmd_names.HOTAS_Stick_S2_Forward),  category = {_('Sensors'), _('HOTAS')}},
{combos = {{key = '-'}},                         down = key_cmds.HOTAS_Stick_S2_Backward,  name = _(cmd_names.HOTAS_Stick_S2_Backward), category = {_('Sensors'), _('HOTAS')}},
{combos = {{key = 'I', reformers = {'RAlt'}}},   down = key_cmds.HOTAS_Stick_S2_Left,      name = _(cmd_names.HOTAS_Stick_S2_Left),     category = {_('Sensors'), _('HOTAS')}},
{combos = {{key = 'I', reformers = {'RShift'}}}, down = key_cmds.HOTAS_Stick_S2_Right,     name = _(cmd_names.HOTAS_Stick_S2_Right),    category = {_('Sensors'), _('HOTAS')}},
{combos = {{key = 'Back'}},                      down = key_cmds.HOTAS_Stick_S2_Press,     name = _(cmd_names.HOTAS_Stick_S2_Press),    category = {_('Sensors'), _('HOTAS')}},

-- S3: Weapon launch
{combos = {{key = 'Space', reformers = {'RAlt'}}}, down = key_cmds.HOTAS_Stick_S3, value_down = 1.0, up = key_cmds.HOTAS_Stick_S3, value_up = 0.0, name = _(cmd_names.HOTAS_Stick_S3),  category = {_('Weapons'), _('HOTAS')}},

-- S4: Main Gun Fire
{combos = {{key = 'Space'}},    down = key_cmds.HOTAS_Stick_S4, value_down = 1.0, up = key_cmds.HOTAS_Stick_S4, value_up = 0.0, name = _(cmd_names.HOTAS_Stick_S4), category = {_('Weapons'), _('HOTAS')}},

-- S5: Change Weapon Station
--{combos = {{key = 'D', reformers = {'LAlt'}}}, down = key_cmds.HOTAS_Stick_S5,         name = _('Change Weapon Station'),    category = _('Weapons')},
{combos = {{key = 'D',     reformers = {'LAlt'}}}, down = key_cmds.HOTAS_Stick_S5, value_down = 1.0, up = key_cmds.HOTAS_Stick_S5, value_up = 0.0, name = _(cmd_names.HOTAS_Stick_S5),  category = {_('Weapons'), _('HOTAS')}},

-- S6: Trim
{combos = {{key = ';', reformers = {'RCtrl'}}}, pressed = key_cmds.HOTAS_Stick_S6_Up,      name = _(cmd_names.HOTAS_Stick_S6_Up),      category = {_('AutoPilot'), _('HOTAS')}},
{combos = {{key = '.', reformers = {'RCtrl'}}}, pressed = key_cmds.HOTAS_Stick_S6_Down,    name = _(cmd_names.HOTAS_Stick_S6_Down),    category = {_('AutoPilot'), _('HOTAS')}},
{combos = {{key = ',', reformers = {'RCtrl'}}}, pressed = key_cmds.HOTAS_Stick_S6_Left,    name = _(cmd_names.HOTAS_Stick_S6_Left),    category = {_('AutoPilot'), _('HOTAS')}},
{combos = {{key = '/', reformers = {'RCtrl'}}}, pressed = key_cmds.HOTAS_Stick_S6_Right,   name = _(cmd_names.HOTAS_Stick_S6_Right),   category = {_('AutoPilot'), _('HOTAS')}},

-- S7: Auto pilot OFF
{                               down = key_cmds.HOTAS_Stick_S7,         name = _(cmd_names.HOTAS_Stick_S7),  category = {_('AutoPilot'), _('HOTAS')}},

-- S8: Change weapon
{combos = {{key = 'D'}},        down = key_cmds.HOTAS_Stick_S8,         name = _(cmd_names.HOTAS_Stick_S8),  category = {_('Weapons'), _('HOTAS')}},
----------------------------------------------------------------------------------------------------------------

-- Seat Adjustment
{pressed = key_cmds.SeatAdjustment_Up,         cockpit_device_id = devices.MISC, name = _(cmd_names.SeatAdjustment_Up),    category = {_('Seat')}},
{pressed = key_cmds.SeatAdjustment_Down,       cockpit_device_id = devices.MISC, name = _(cmd_names.SeatAdjustment_Down),  category = {_('Seat')}},

-- DTC
{ down = key_cmds.DTC_Install,  name = _(cmd_names.DTC_Install),  category = _('Systems')},
{ down = key_cmds.DTC_Remove,   name = _(cmd_names.DTC_Remove),   category = _('Systems')},

-- HUD UFCP
{ down = key_cmds.HUD_BRT_Inc,  name = _(cmd_names.HUD_BRT_Inc),  category = _('HUD')},
{ down = key_cmds.HUD_BRT_Dec,  name = _(cmd_names.HUD_BRT_Dec),  category = _('HUD')},
{ down = key_cmds.UFCP_BRT_Inc, name = _(cmd_names.UFCP_BRT_Inc), category = _('UFCP')},
{ down = key_cmds.UFCP_BRT_Dec, name = _(cmd_names.UFCP_BRT_Dec), category = _('UFCP')},

-- radio
{ down = key_cmds.RADIO_Mode_CW,   name = _(cmd_names.RADIO_Mode_CW),   category = _('Radio Control Box')},
{ down = key_cmds.RADIO_Mode_CCW,  name = _(cmd_names.RADIO_Mode_CCW),  category = _('Radio Control Box')},

-- misc
{ down = key_cmds.Stick_Show_Hide_Toggle,   name = _(cmd_names.Stick_Show_Hide_Toggle),   category = _('Systems')},

-- ACP
{ down = key_cmds.ACP_Com1_Vol_Inc,     name = _(cmd_names.PNT_934 .. " - Inc"), category = _('ACP')},
{ down = key_cmds.ACP_Com1_Vol_Dec,     name = _(cmd_names.PNT_934 .. " - Dec"), category = _('ACP')},
{ down = key_cmds.ACP_Com2_Vol_Inc,     name = _(cmd_names.PNT_938 .. " - Inc"), category = _('ACP')},
{ down = key_cmds.ACP_Com2_Vol_Dec,     name = _(cmd_names.PNT_938 .. " - Dec"), category = _('ACP')},
{ down = key_cmds.ACP_TCN_ILS_Vol_Inc,  name = _(cmd_names.PNT_939 .. " - Inc"), category = _('ACP')},
{ down = key_cmds.ACP_TCN_ILS_Vol_Dec,  name = _(cmd_names.PNT_939 .. " - Dec"), category = _('ACP')},
{ down = key_cmds.ACP_MSL_Vol_Inc,      name = _(cmd_names.PNT_940 .. " - Inc"), category = _('ACP')},
{ down = key_cmds.ACP_MSL_Vol_Dec,      name = _(cmd_names.PNT_940 .. " - Dec"), category = _('ACP')},

})
return res
