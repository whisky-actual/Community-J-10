local base = external_profile("Config/Input/Aircrafts/common_joystick_binding.lua")
local cscripts = folder.."../../../Cockpit/Scripts/"
dofile(cscripts.."command_defs.lua")

join(base.keyCommands,{

--[[
-- Gameplay
{down = iCommandPlaneShipTakeOff, name = _('Ship Take Off Position'), category = _('General')},
{down = iCommandCockpitShowPilotOnOff, name = _('Show Pilot Body'), category = _('General')},

--Flight Control
{down = iCommandPlaneUpStart, up = iCommandPlaneUpStop, name = _('Aircraft Pitch Down'), category = _('Flight Control')},
{down = iCommandPlaneDownStart, up = iCommandPlaneDownStop, name = _('Aircraft Pitch Up'), category = _('Flight Control')},
{down = iCommandPlaneLeftStart, up = iCommandPlaneLeftStop, name = _('Aircraft Bank Left'), category = _('Flight Control')},
{down = iCommandPlaneRightStart, up = iCommandPlaneRightStop, name = _('Aircraft Bank Right'), category = _('Flight Control')},
{down = iCommandPlaneLeftRudderStart, up = iCommandPlaneLeftRudderStop, name = _('Aircraft Rudder Left'), category = _('Flight Control')},
{down = iCommandPlaneRightRudderStart, up = iCommandPlaneRightRudderStop, name = _('Aircraft Rudder Right'), category = _('Flight Control')},

{pressed = iCommandPlaneTrimUp, up = iCommandPlaneTrimStop, name = _('Trim: Nose Up'), category = _('Flight Control')},
{pressed = iCommandPlaneTrimDown, up = iCommandPlaneTrimStop, name = _('Trim: Nose Down'), category = _('Flight Control')},
{pressed = iCommandPlaneTrimLeft, up = iCommandPlaneTrimStop, name = _('Trim: Left Wing Down'), category = _('Flight Control')},
{pressed = iCommandPlaneTrimRight, up = iCommandPlaneTrimStop, name = _('Trim: Right Wing Down'), category = _('Flight Control')},
{pressed = iCommandPlaneTrimLeftRudder, up = iCommandPlaneTrimStop, name = _('Trim: Rudder Left'), category = _('Flight Control')},
{pressed = iCommandPlaneTrimRightRudder, up = iCommandPlaneTrimStop, name = _('Trim: Rudder Right'), category = _('Flight Control')},

{pressed = iCommandThrottleIncrease, up = iCommandThrottleStop,  name = _('Throttle Up'), category = _('Flight Control')},
{pressed = iCommandThrottleDecrease, up = iCommandThrottleStop,  name = _('Throttle Down'), category = _('Flight Control')},
{pressed = iCommandThrottle1Increase,up = iCommandThrottle1Stop, name = _('Throttle Left Up'), category = _('Flight Control')},
{pressed = iCommandThrottle1Decrease,up = iCommandThrottle1Stop, name = _('Throttle Left Down'), category = _('Flight Control')},
{pressed = iCommandThrottle2Increase,up = iCommandThrottle2Stop, name = _('Throttle Right Up'), category = _('Flight Control')},
{pressed = iCommandThrottle2Decrease,up = iCommandThrottle2Stop, name = _('Throttle Right Down'), category = _('Flight Control')},

{down = iCommandPlaneAUTIncreaseRegime, name = _('Throttle Step Up'), category = _('Flight Control')},
{down = iCommandPlaneAUTDecreaseRegime, name = _('Throttle Step Down'), category = _('Flight Control')},
{down = iCommandPlaneAUTIncreaseRegimeLeft, name = _('Throttle Step Up Left'), category = _('Flight Control')},
{down = iCommandPlaneAUTDecreaseRegimeLeft, name = _('Throttle Step Down Left'), category = _('Flight Control')},
{down = iCommandPlaneAUTIncreaseRegimeRight, name = _('Throttle Step Up Right'), category = _('Flight Control')},
{down = iCommandPlaneAUTDecreaseRegimeRight, name = _('Throttle Step Down Right'), category = _('Flight Control')},

-- Systems
{down = iCommandPowerOnOff, name = _('Electric Power Switch'), category = _('Systems')},
{down = iCommandPlaneAirBrake, name = _('Airbrake'), category = _('Systems')},
{down = iCommandPlaneAirBrakeOn, name = _('Airbrake On'), category = _('Systems')},
{down = iCommandPlaneAirBrakeOff, name = _('Airbrake Off'), category = _('Systems')},
{down = iCommandPlaneWingtipSmokeOnOff, name = _('Smoke'), category = _('Systems')},
{down = iCommandPlaneCockpitIllumination, name = _('Illumination Cockpit'), category = _('Systems')},
{down = iCommandPlaneLightsOnOff, name = _('Navigation lights'), category = _('Systems')},
{down = iCommandPlaneHeadLightOnOff, name = _('Gear Light Near/Far/Off'), category = _('Systems')},
{down = iCommandPlaneFlaps, name = _('Flaps Up/Down'), category = _('Systems')},
{down = iCommandPlaneFlapsOn, name = _('Flaps Landing Position'), category = _('Systems')},
{down = iCommandPlaneFlapsOff, name = _('Flaps Up'), category = _('Systems')},
{down = iCommandPlaneGear, name = _('Landing Gear Up/Down'), category = _('Systems')},
{down = iCommandPlaneGearUp, name = _('Landing Gear Up'), category = _('Systems')},
{down = iCommandPlaneGearDown, name = _('Landing Gear Down'), category = _('Systems')},
{down = iCommandPlaneWheelBrakeOn, up = iCommandPlaneWheelBrakeOff, name = _('Wheel Brake On'), category = _('Systems')},
{down = iCommandPlaneFonar, name = _('Canopy Open/Close'), category = _('Systems')},
{down = iCommandPlaneParachute, name = _('Dragging Chute'), category = _('Systems')},
{down = iCommandPlaneResetMasterWarning, name = _('Audible Warning Reset'), category = _('Systems')},
{down = iCommandPlaneJettisonWeapons,up = iCommandPlaneJettisonWeaponsUp, name = _('Weapons Jettison'), category = _('Systems')},
{down = iCommandPlaneEject, name = _('Eject (3 times)'), category = _('Systems')},
{down = iCommandFlightClockReset, name = _('Flight Clock Start/Stop/Reset'), category = _('Systems')},
{down = iCommandClockElapsedTimeReset, name = _('Elapsed Time Clock Start/Stop/Reset'), category = _('Systems')},
{down = iCommandEnginesStart, name = _('Engines Start'), category = _('Systems')},
{down = iCommandEnginesStop, name = _('Engines Stop'), category = _('Systems')},
{down = iCommandLeftEngineStart, name = _('Engine Left Start'), category = _('Systems')},
{down = iCommandLeftEngineStop, name = _('Engine Left Stop'), category = _('Systems')},
{down = iCommandRightEngineStart, name = _('Engine Right Start'), category = _('Systems')},
{down = iCommandRightEngineStop, name = _('Engine Right Stop'), category = _('Systems')},
{down = iCommandBrightnessILS, name = _('HUD Color'), category = _('Systems')},
{pressed = iCommandHUDBrightnessUp, name = _('HUD Brightness up'), category = _('Systems')},
{pressed = iCommandHUDBrightnessDown, name = _('HUD Brightness down'), category = _('Systems')},
{down = iCommandPlaneFuelOn, up = iCommandPlaneFuelOff, name = _('Fuel Dump'), category = _('Systems')},

-- Modes
{down = iCommandPlaneChangeTarget, name = _('Next Waypoint, Airfield Or Target'), category = _('Modes')},
{down = iCommandPlaneUFC_STEER_DOWN, name = _('Previous Waypoint, Airfield Or Target'), category = _('Modes')},
{down = iCommandPlaneModeNAV, name = _('(1) Navigation Modes'), category = _('Modes')},

-- Weapons                                                                        
--{combos = {{key = 'JOY_BTN1'}}, down = iCommandPlaneFire, up = iCommandPlaneFireOff, name = _('Weapon Fire'), category = _('Weapons')},
--{combos = {{key = 'JOY_BTN4'}}, down = iCommandPlaneChangeWeapon, name = _('Weapon Change'), category = _('Weapons')},
{combos = {{key = 'JOY_BTN5'}}, down = iCommandPlaneModeCannon, name = _('Cannon'), category = _('Weapons')},
{down = iCommandPlaneLaunchPermissionOverride, name = _('Launch Permission Override'), category = _('Weapons')},

-- Countermeasures
{down = iCommandPlaneDropSnar, name = _('Countermeasures Continuously Dispense'), category = _('Countermeasures')},
{down = iCommandPlaneDropSnarOnce, up = iCommandPlaneDropSnarOnceOff, name = _('Countermeasures Release'), category = _('Countermeasures')},
{down = iCommandPlaneDropFlareOnce, name = _('Countermeasures Flares Dispense'), category = _('Countermeasures')},
{down = iCommandPlaneDropChaffOnce, name = _('Countermeasures Chaff Dispense'), category = _('Countermeasures')},
{down = iCommandActiveJamming, name = _('ECM'), category = _('Countermeasures')},

-- Communications
{down = iCommandAWACSTankerBearing, name = _('Request AWACS Available Tanker'), category = _('Communications')},
{down = iCommandToggleReceiveMode, name = _('Receive Mode'), category = _('Communications')},

-- Cockpit Camera Motion (襄疱溻桄屙桢 赅戾瘥 ?赅徼礤)
{down = iCommandViewLeftMirrorOn ,    up = iCommandViewLeftMirrorOff , name = _('Mirror Left On'), category = _('View Cockpit')},
{down = iCommandViewRightMirrorOn,    up = iCommandViewRightMirrorOff, name = _('Mirror Right On'), category = _('View Cockpit')},
{down = iCommandToggleMirrors, name = _('Toggle Mirrors'), category = _('View Cockpit')},

-- Auto Lock On
{down = iCommandAutoLockOnNearestAircraft, name = _('Auto lock on nearest aircraft'), category = _('Simplifications')},
{down = iCommandAutoLockOnCenterAircraft, name = _('Auto lock on center aircraft'), category = _('Simplifications')},
{down = iCommandAutoLockOnNextAircraft, name = _('Auto lock on next aircraft'), category = _('Simplifications')},
{down = iCommandAutoLockOnPreviousAircraft, name = _('Auto lock on previous aircraft'), category = _('Simplifications')},
{down = iCommandAutoLockOnNearestSurfaceTarget, name = _('Auto lock on nearest surface target'), category = _('Simplifications')},
{down = iCommandAutoLockOnCenterSurfaceTarget, name = _('Auto lock on center surface target'), category = _('Simplifications')},
{down = iCommandAutoLockOnNextSurfaceTarget, name = _('Auto lock on next surface target'), category = _('Simplifications')},
{down = iCommandAutoLockOnPreviousSurfaceTarget, name = _('Auto lock on previous surface target'), category = _('Simplifications')},
]]
})



-- joystick axes 
join(base.axisCommands,{
--{action = iCommandPlaneThrustLeft            , name = _('Thrust Left')},
--{action = iCommandPlaneThrustRight            , name = _('Thrust Right')},
--{action = iCommandPlaneTrimPitchAbs        , name = _('Trim Pitch')},
--{action = iCommandPlaneTrimRollAbs        , name = _('Trim Roll')},
--{action = iCommandPlaneTrimRudderAbs        , name = _('Trim Rudder')},

})
return base