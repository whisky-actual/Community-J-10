local base = external_profile(folder.."common_keyboard_binding.lua")
local cscripts = folder.."../../../Cockpit/Scripts/"
dofile(cscripts.."command_defs.lua")
--dofile(cscripts.."devices.lua")
join(base.keyCommands,{

-- General (Gameplay)
{combos = {{key = 'P', reformers = {'RShift'}}}, down = iCommandCockpitShowPilotOnOff, name = _('Show Pilot Body'), category = _('General')},

--[[{combos = {{key = '.', reformers = {'RCtrl'}}}, pressed = iCommandPlaneTrimUp, up = iCommandPlaneTrimStop, name = _('Trim: Nose Up'), category = _('Flight Control')},
{combos = {{key = ';', reformers = {'RCtrl'}}}, pressed = iCommandPlaneTrimDown, up = iCommandPlaneTrimStop, name = _('Trim: Nose Down'), category = _('Flight Control')},
{combos = {{key = ',', reformers = {'RCtrl'}}}, pressed = iCommandPlaneTrimLeft, up = iCommandPlaneTrimStop, name = _('Trim: Left Wing Down'), category = _('Flight Control')},
{combos = {{key = '/', reformers = {'RCtrl'}}}, pressed = iCommandPlaneTrimRight, up = iCommandPlaneTrimStop, name = _('Trim: Right Wing Down'), category = _('Flight Control')},
{combos = {{key = 'Z', reformers = {'RCtrl'}}}, pressed = iCommandPlaneTrimLeftRudder, up = iCommandPlaneTrimStop, name = _('Trim: Rudder Left'), category = _('Flight Control')},
{combos = {{key = 'X', reformers = {'RCtrl'}}}, pressed = iCommandPlaneTrimRightRudder, up = iCommandPlaneTrimStop, name = _('Trim: Rudder Right'), category = _('Flight Control')},]]

--[[
{combos = {{key = 'PageUp'}}, down = iCommandPlaneAUTIncreaseRegime, name = _('Throttle Step Up'), category = _('Flight Control')},
{combos = {{key = 'PageDown'}}, down = iCommandPlaneAUTDecreaseRegime, name = _('Throttle Step Down'), category = _('Flight Control')},
{combos = {{key = 'PageUp', reformers = {'RAlt'}}}, down = iCommandPlaneAUTIncreaseRegimeLeft, name = _('Throttle Step Up Left'), category = _('Flight Control')},
{combos = {{key = 'PageDown', reformers = {'RAlt'}}}, down = iCommandPlaneAUTDecreaseRegimeLeft, name = _('Throttle Step Down Left'), category = _('Flight Control')},
{combos = {{key = 'PageUp', reformers = {'RShift'}}}, down = iCommandPlaneAUTIncreaseRegimeRight, name = _('Throttle Step Up Right'), category = _('Flight Control')},
{combos = {{key = 'PageDown', reformers = {'RShift'}}}, down = iCommandPlaneAUTDecreaseRegimeRight, name = _('Throttle Step Down Right'), category = _('Flight Control')},
]]

-- Systems

--{combos = {{key = 'L', reformers = {'RShift'}}}, down = iCommandPowerOnOff, name = _('Electric Power Switch'), category = _('Systems')},
--{combos = {{key = 'N', reformers = {'RShift'}}}, down = iCommandPlaneResetMasterWarning, name = _('Audible Warning Reset'), category = _('Systems')},
--{combos = {{key = 'W', reformers = {'LCtrl'}}}, down = iCommandPlaneJettisonWeapons,up = iCommandPlaneJettisonWeaponsUp, name = _('Weapons Jettison'), category = _('Systems')},
{combos = {{key = 'E', reformers = {'LCtrl'}}}, down = iCommandPlaneEject, name = _('Eject (3 times)'), category = _('Systems')},
--{combos = {{key = 'C', reformers = {'RShift'}}}, down = iCommandFlightClockReset, name = _('Flight Clock Start/Stop/Reset'), category = _('Systems')},
--{down = iCommandClockElapsedTimeReset, name = _('Elapsed Time Clock Start/Stop/Reset'), category = _('Systems')},
--{combos = {{key = 'Home', reformers = {'RShift'}}}, down = iCommandEnginesStart, name = _('Engines Start'), category = _('Systems')},
--{combos = {{key = 'End', reformers = {'RShift'}}}, down = iCommandEnginesStop, name = _('Engines Stop'), category = _('Systems')},
--{combos = {{key = 'Home', reformers = {'RAlt'}}}, down = iCommandLeftEngineStart, name = _('Engine Left Start'), category = _('Systems')},
--{combos = {{key = 'End', reformers = {'RAlt'}}}, down = iCommandLeftEngineStop, name = _('Engine Left Stop'), category = _('Systems')},
--{combos = {{key = 'Home', reformers = {'RCtrl'}}}, down = iCommandRightEngineStart, name = _('Engine Right Start'), category = _('Systems')},
--{combos = {{key = 'End', reformers = {'RCtrl'}}}, down = iCommandRightEngineStop, name = _('Engine Right Stop'), category = _('Systems')},
--{combos = {{key = 'H', reformers = {'RCtrl'}}}, down = iCommandBrightnessILS, name = _('HUD Color'), category = _('Systems')},
--{combos = {{key = 'H', reformers = {'RCtrl','RShift'}}}, pressed = iCommandHUDBrightnessUp, name = _('HUD Brightness up'), category = _('Systems')},
--{combos = {{key = 'H', reformers = {'RShift','RAlt'}}}, pressed = iCommandHUDBrightnessDown, name = _('HUD Brightness down'), category = _('Systems')},
--{combos = {{key = 'R'}}, down = iCommandPlaneFuelOn, up = iCommandPlaneFuelOff, name = _('Fuel Dump'), category = _('Systems')},

-- Modes
--{combos = {{key = '`', reformers = {'LCtrl'}}}, down = iCommandPlaneChangeTarget  , name = _('Next Waypoint, Airfield Or Target'), category = _('Modes')},
--{combos = {{key = '`', reformers = {'LShift'}}},  down = iCommandPlaneUFC_STEER_DOWN, name = _('Previous Waypoint, Airfield Or Target'), category = _('Modes')},
--{combos = {{key = '1'}}, down = iCommandPlaneModeNAV, name = _('(1) Navigation Modes'), category = _('Modes')},

--{combos = {{key = 'N'}},                                     down    = iCommandViewNightVisionGogglesOn   , name = _('Night Vision Goggles')             , category = _('Sensors')},
--{combos = {{key = 'N', reformers = {'RCtrl'}}},             pressed = iCommandPlane_Helmet_Brightess_Up  , name = _('Night Vision Goggles Gain Up')  , category = _('Sensors')},
--{combos = {{key = 'N', reformers = {'RCtrl','RShift'}}},     pressed = iCommandPlane_Helmet_Brightess_Down, name = _('Night Vision Goggles Gain Down'), category = _('Sensors')},


--[[
-- Countermeasures
{combos = {{key = 'Q', reformers = {'LShift'}}}, down = Keys.PlaneDropSnar, name = _('Countermeasures Continuously Dispense'), category = _('Countermeasures')},
{combos = {{key = 'Q'}}, down = Keys.PlaneDropSnarOnce, up = iCommandPlaneDropSnarOnceOff, name = _('Countermeasures Release'), category = _('Countermeasures')},
{combos = {{key = 'Delete'}}, down = Keys.PlaneDropFlareOnce, name = _('Countermeasures Flares Dispense'), category = _('Countermeasures')},
{combos = {{key = 'Insert'}}, down = Keys.PlaneDropChaffOnce, name = _('Countermeasures Chaff Dispense'), category = _('Countermeasures')},
]]--
--{combos = {{key = 'E'}}, down = iCommandActiveJamming, name = _('ECM'), category = _('Countermeasures')},

-- Communications
--{combos = {{key = 'I', reformers = {'LWin'}}}, down = iCommandAWACSTankerBearing, name = _('Request AWACS Available Tanker'), category = _('Communications')},
--{combos = {{key = '\\', reformers = {'RShift'}}, {key = 'M', reformers = {'RShift'}}}, down = iCommandToggleReceiveMode, name = _('Receive Mode'), category = _('Communications')},

-- Cockpit Camera Motion (Передвижение камеры в кабине)
--{combos = {{key = 'N', reformers = {'RAlt'}}}, down = iCommandViewLeftMirrorOn ,    up = iCommandViewLeftMirrorOff , name = _('Mirror Left On'), category = _('View Cockpit')},
--{combos = {{key = 'M', reformers = {'RAlt'}}}, down = iCommandViewRightMirrorOn,    up = iCommandViewRightMirrorOff, name = _('Mirror Right On'), category = _('View Cockpit')},
--{combos = {{key = 'M' }}, down = iCommandToggleMirrors, name = _('Toggle Mirrors'), category = _('View Cockpit')},

-- Auto Lock On 
--[[{combos = {{key = 'F5', reformers = {'RAlt'}}}, down = iCommandAutoLockOnNearestAircraft, name = _('Auto lock on nearest aircraft'), category = _('Simplifications')},
{combos = {{key = 'F6', reformers = {'RAlt'}}}, down = iCommandAutoLockOnCenterAircraft, name = _('Auto lock on center aircraft'), category = _('Simplifications')},
{combos = {{key = 'F7', reformers = {'RAlt'}}}, down = iCommandAutoLockOnNextAircraft, name = _('Auto lock on next aircraft'), category = _('Simplifications')},
{combos = {{key = 'F8', reformers = {'RAlt'}}}, down = iCommandAutoLockOnPreviousAircraft, name = _('Auto lock on previous aircraft'), category = _('Simplifications')},
{combos = {{key = 'F9', reformers = {'RAlt'}}}, down = iCommandAutoLockOnNearestSurfaceTarget, name = _('Auto lock on nearest surface target'), category = _('Simplifications')},
{combos = {{key = 'F10', reformers = {'RAlt'}}}, down = iCommandAutoLockOnCenterSurfaceTarget, name = _('Auto lock on center surface target'), category = _('Simplifications')},
{combos = {{key = 'F11', reformers = {'RAlt'}}}, down = iCommandAutoLockOnNextSurfaceTarget, name = _('Auto lock on next surface target'), category = _('Simplifications')},
{combos = {{key = 'F12', reformers = {'RAlt'}}}, down = iCommandAutoLockOnPreviousSurfaceTarget, name = _('Auto lock on previous surface target'), category = _('Simplifications')},]]

})
return base