local category_device_special = 'Special For Devices'

local arcade_binding = {}

arcade_binding.keyCommands = {

-- NightVision
{combos = {{key = 'H', reformers = {'RShift'}}}        , down    = iCommandViewNightVisionGogglesOn   , name = _('Night Vision Goggle - Toggle'), category = _('Sensors')},
{combos = {{key = 'H', reformers = {'RShift','RCtrl'}}}, pressed = iCommandPlane_Helmet_Brightess_Up  , name = _('Goggle Gain - Inc'), category = _('Sensors')},
{combos = {{key = 'H', reformers = {'RShift','RAlt'}}} , pressed = iCommandPlane_Helmet_Brightess_Down, name = _('Goggle Gain - Dec'), category = _('Sensors')},

-- 光电传感器专用按键
{combos = {{key = 'O',reformers = {'RCtrl'}}},   down = key_cmds.Laser_OnOff,              name = _('Laser Designator On/Off'),    category = _('Sensors')},
{combos = {{key = '=',reformers = {'RAlt'}}},    pressed = key_cmds.Sensor_ZoomIn,         name = _('FOV Increase'),               category = _('Sensors')},
{combos = {{key = '-',reformers = {'RAlt'}}},    pressed = key_cmds.Sensor_ZoomOut,        name = _('FOV Decrease'),               category = _('Sensors')},

{combos = {{key = ';', reformers = {'RShift'}}},  pressed = key_cmds.Sensor_Antenna_Up,     name = _(cmd_names.Sensor_Up),    category = {_('Sensors'), _('HOTAS')}},
{combos = {{key = '.', reformers = {'RShift'}}},  pressed = key_cmds.Sensor_Antenna_Down,   name = _(cmd_names.Sensor_Down),  category = {_('Sensors'), _('HOTAS')}},
{combos = {{key = ',', reformers = {'RShift'}}},  pressed = key_cmds.Sensor_Antenna_Left,   name = _(cmd_names.Sensor_Left),  category = {_('Sensors')}},
{combos = {{key = '/', reformers = {'RShift'}}},  pressed = key_cmds.Sensor_Antenna_Right,  name = _(cmd_names.Sensor_Right), category = {_('Sensors')}},

{combos = {{key = 'Home', reformers = {'LWin'}}}, down = iCommandEnginesStart, name = _('Auto Start'), category = _('Cheat')},
{combos = {{key = 'End',  reformers = {'LWin'}}}, down = iCommandEnginesStop,  name = _('Auto Stop'),  category = _('Cheat')},


-- from base_binding (dont' use default base_binding, use our own)
{combos = {{key = 'M'}}, down = iCommandToggleMirrors, name = _('Toggle Mirrors'), category = _('View Cockpit'), features = {"Mirrors"}},
{combos = {{key = 'P', reformers = {'RShift'}}}, down = iCommandCockpitShowPilotOnOff, name = _('Show Pilot Body'), category = _('General')},
{combos = {{key = 'E', reformers = {'LCtrl'}}},  down = iCommandPlaneEject, name = _('Eject (3 times)'), category = _('Systems')},

-- Autopilot
{ down = key_cmds.AutoPilot_OnOff,   name = _(cmd_names.AutoPilot_OnOff),   cockpit_device_id = devices.UFCP, category = _('AutoPilot')},
{ down = key_cmds.AutoPilot_Att_Alt, name = _(cmd_names.AutoPilot_Att_Alt), cockpit_device_id = devices.UFCP, category = _('AutoPilot')},

-- FCS
{combos = {{key = 'F'}}, down = key_cmds.FLAP, name = _('Flaps Up/Down'), cockpit_device_id = devices.FCS, category = _('Systems')},
{combos = {{key = 'F', reformers = {'LShift'}}}, down = key_cmds.FLAP_DN, name = _('Flaps Down'), cockpit_device_id = devices.FCS, category = _('Systems')},
{combos = {{key = 'F', reformers = {'LCtrl'}}}, down = key_cmds.FLAP_UP, name = _('Flaps Up'), cockpit_device_id = devices.FCS, category = _('Systems')},
{combos = {{key = 'G'}}, down = key_cmds.Gear, name = _('Landing Gear Up/Down'), cockpit_device_id = devices.GEAR, category = _('Systems')},
{combos = {{key = 'G', reformers = {'LCtrl'}}}, down = key_cmds.GearUp, name = _('Landing Gear Up'), cockpit_device_id = devices.GEAR, category = _('Systems')},
{combos = {{key = 'G', reformers = {'LShift'}}}, down = key_cmds.GearDown, name = _('Landing Gear Down'), cockpit_device_id = devices.GEAR, category = _('Systems')},

{ down = key_cmds.FCS_AA_AG_Toggle, name = _(cmd_names.PNT_536.." - Toggle"), cockpit_device_id = devices.FCS, category = {_(category_device_special),_('FCS')}},


--{combos = {{key = 'C', reformers = {'LCtrl'}}}, down = key_cmds.Canopy, name = _('Canopy Open/Close'), category = _('Systems')},
{combos = {{key = 'P'}}, down = key_cmds.Chute, name = _('Dragging Chute'), cockpit_device_id = devices.FCS, category = _('Systems')},

{combos = {{key = 'W'}}, down = key_cmds.WheelBrakeD, up = key_cmds.WheelBrakeU, name = _('Wheel Brake On'), category = _('Systems')},
{                        down = key_cmds.WheelBrakeLeftD, up = key_cmds.WheelBrakeLeftU, name = _('Wheel Brake Left On'), category = _('Systems')},
{                        down = key_cmds.WheelBrakeRightD, up = key_cmds.WheelBrakeRightU, name = _('Wheel Brake Right On'), category = _('Systems')},

{combos = {{key = 'Num+'}}, pressed = key_cmds.THROTTLE_UP, name = _('Throttle Up'),   category = _('Flight Control')},
{combos = {{key = 'Num-'}}, pressed = key_cmds.THROTTLE_DN, name = _('Throttle Down'), category = _('Flight Control')},

-- Flight Control
{combos = {{key = 'Up'}}, down = key_cmds.PitchDownStart, up = key_cmds.PitchDownEnd, name = _('Aircraft Pitch Down'), category = _('Flight Control')},
{combos = {{key = 'Down'}}, down = key_cmds.PitchUpStart, up = key_cmds.PitchUpEnd, name = _('Aircraft Pitch Up'), category = _('Flight Control')},
{combos = {{key = 'Left'}}, down = key_cmds.RollLeftStart, up = key_cmds.RollLeftEnd, name = _('Aircraft Bank Left'), category = _('Flight Control')},
{combos = {{key = 'Right'}}, down = key_cmds.RollRightStart, up = key_cmds.RollRightEnd, name = _('Aircraft Bank Right'), category = _('Flight Control')},
{combos = {{key = 'Z'}}, down = key_cmds.YawLeftStart, up = key_cmds.YawLeftEnd, name = _('Aircraft Rudder Left'), category = _('Flight Control')},
{combos = {{key = 'X'}}, down = key_cmds.YawRightStart, up = key_cmds.YawRightEnd, name = _('Aircraft Rudder Right'), category = _('Flight Control')},

-- Systems
{ down = key_cmds.PrevOESPProg, name = _(cmd_names.PrevOESPProg), category = _('Systems')},
{ down = key_cmds.NextOESPProg, name = _(cmd_names.NextOESPProg), category = _('Systems')},

{ down = key_cmds.AfterburnerToggle, name = _(cmd_names.AfterburnerToggle), category = _('Engine')},

{ down    = key_cmds.QFE_Knob_Inc, name = _(cmd_names.QFE_Knob_Inc.." (Step)"), category = _('ADC')},
{ down    = key_cmds.QFE_Knob_Dec, name = _(cmd_names.QFE_Knob_Dec.." (Step)"), category = _('ADC')},
{ pressed = key_cmds.QFE_Knob_Inc, name = _(cmd_names.QFE_Knob_Inc.." (Press and Hold)"), category = _('ADC')},
{ pressed = key_cmds.QFE_Knob_Dec, name = _(cmd_names.QFE_Knob_Dec.." (Press and Hold)"), category = _('ADC')},

-- Lights
{ down    = key_cmds.Light_Inst_Knob_Inc, name = _(cmd_names.Light_Inst_Knob_Inc.." (Step)"), category = _('Lights')},
{ down    = key_cmds.Light_Inst_Knob_Dec, name = _(cmd_names.Light_Inst_Knob_Dec.." (Step)"), category = _('Lights')},
{ pressed = key_cmds.Light_Inst_Knob_Inc, name = _(cmd_names.Light_Inst_Knob_Inc.." (Press and Hold)"), category = _('Lights')},
{ pressed = key_cmds.Light_Inst_Knob_Dec, name = _(cmd_names.Light_Inst_Knob_Dec.." (Press and Hold)"), category = _('Lights')},

{ down    = key_cmds.Light_Console_Knob_Inc, name = _(cmd_names.Light_Console_Knob_Inc.." (Step)"), category = _('Lights')},
{ down    = key_cmds.Light_Console_Knob_Dec, name = _(cmd_names.Light_Console_Knob_Dec.." (Step)"), category = _('Lights')},
{ pressed = key_cmds.Light_Console_Knob_Inc, name = _(cmd_names.Light_Console_Knob_Inc.." (Press and Hold)"), category = _('Lights')},
{ pressed = key_cmds.Light_Console_Knob_Dec, name = _(cmd_names.Light_Console_Knob_Dec.." (Press and Hold)"), category = _('Lights')},

{ down    = key_cmds.Light_Flood_Knob_Inc, name = _(cmd_names.Light_Flood_Knob_Inc.." (Step)"), category = _('Lights')},
{ down    = key_cmds.Light_Flood_Knob_Dec, name = _(cmd_names.Light_Flood_Knob_Dec.." (Step)"), category = _('Lights')},
{ pressed = key_cmds.Light_Flood_Knob_Inc, name = _(cmd_names.Light_Flood_Knob_Inc.." (Press and Hold)"), category = _('Lights')},
{ pressed = key_cmds.Light_Flood_Knob_Dec, name = _(cmd_names.Light_Flood_Knob_Dec.." (Press and Hold)"), category = _('Lights')},

{ down    = key_cmds.Light_AAR_Knob_Inc, name = _(cmd_names.Light_AAR_Knob_Inc.." (Step)"), category = _('Lights')},
{ down    = key_cmds.Light_AAR_Knob_Dec, name = _(cmd_names.Light_AAR_Knob_Dec.." (Step)"), category = _('Lights')},
{ pressed = key_cmds.Light_AAR_Knob_Inc, name = _(cmd_names.Light_AAR_Knob_Inc.." (Press and Hold)"), category = _('Lights')},
{ pressed = key_cmds.Light_AAR_Knob_Dec, name = _(cmd_names.Light_AAR_Knob_Dec.." (Press and Hold)"), category = _('Lights')},
    
-- Nav
{combos = {{key = '`', reformers = {'LCtrl'}}},  down = key_cmds.Nav_Wpt_Next, name = _('Next Waypoint'), category = _('Navigation')},
{combos = {{key = '`', reformers = {'LShift'}}}, down = key_cmds.Nav_Wpt_Prev, name = _('Prev Waypoint'), category = _('Navigation')},

-- Weapon
{combos = {{key = 'C'}},        down = key_cmds.Gun_OnOff,              name = _('Gun Mode On/Off'), category = _('Weapons')},
{ down = key_cmds.MasterArmToggle, name = _(cmd_names.MasterArmToggle), category = _('Weapons')},

{ down = key_cmds.BackupReticle_OFF,  name = _(cmd_names.BackupReticle_OFF),  category = _('Weapons')},
{ down = key_cmds.BackupReticle_BOMB, name = _(cmd_names.BackupReticle_BOMB), category = _('Weapons')},
{ down = key_cmds.BackupReticle_IR,   name = _(cmd_names.BackupReticle_IR),   category = _('Weapons')},
{ down = key_cmds.BackupReticle_GUN,  name = _(cmd_names.BackupReticle_GUN),  category = _('Weapons')},

{ down = key_cmds.SMS_Jett_Emerge_Shortcut,    name = _(cmd_names.SMS_Jett_Emerge_Shortcut),  category = _('Weapons')},
{ down = key_cmds.OESP_Flare_Emerge_Shortcut,  name = _(cmd_names.OESP_Flare_Emerge_Shortcut),  category = _('Weapons')},

}

return arcade_binding
