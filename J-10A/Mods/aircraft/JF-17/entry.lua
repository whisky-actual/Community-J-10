
local self_ID  = 'JF-17 by Deka Ironwork Simulations'
local ac_name  = 'JF-17'
local bin_name = 'JF-17_ASM'

dofile(current_mod_path .. '/preload.lua')

declare_plugin(self_ID, {
    installed     = true,
    dirName       = current_mod_path,
    displayName   = _(ac_name),
    shortName     = ac_name,
    fileMenuName  = _(ac_name),
    version       = "1.4.0",
    state         = 'installed',
    developerName = _('J-10A Community Mod: https://github.com/whisky-actual/Community-J-10-A'),
    info          = _("J-10A Community Mod: THIS MATERIAL IS NOT MADE OR SUPPORTED BY EAGLE DYNAMICS SA"),
    binaries      = { bin_name, },
    update_id     = 'DEKA_JF-17',
    InputProfiles = {
        [ac_name] = current_mod_path .. '/Input/JF-17',
    },
    Skins = {
        { name = ac_name, dir = 'Skins/2' },
    },
    Missions = {
        { name = _(ac_name), dir = 'Missions', CLSID = '{JF-17 missions}', },
    },
    LogBook = {
        { name = _(ac_name), type = ac_name },
    },
    Options =
    {
        {
            name   = _(ac_name),
            nameId = ac_name,
            dir    = 'Options',
            CLSID  = '{JF-17 options}',
            --AircraftSettingsFile = 'AircraftSettings.lua'
        },
    },
    preload_resources = preload_files,
    infoWaitScreen = _('DCS : J-10A Community MOD'),
})

---------------------------------------------------------------------------------------
mount_vfs_model_path	(current_mod_path .. "/Shapes")
mount_vfs_texture_path  (current_mod_path .. "/Theme")
mount_vfs_texture_path  (current_mod_path .. "/ImagesGUI")
mount_vfs_texture_path  (current_mod_path .. "/Textures/ExteriorTextures")
mount_vfs_texture_path  (current_mod_path .. "/Textures/WeaponsTextures")
mount_vfs_texture_path  (current_mod_path .. "/Textures/Liveries/")
mount_vfs_liveries_path (current_mod_path .. "/Liveries")
mount_vfs_model_path   (current_mod_path .. '/Cockpit/Shapes')
mount_vfs_texture_path (current_mod_path .. '/Cockpit/Shapes/Textures')
mount_vfs_texture_path (current_mod_path .. '/Cockpit/Textures/IndicationTextures')
mount_vfs_liveries_path(current_mod_path .. '/Liveries')
mount_vfs_texture_path (current_mod_path .. '/Skins/2/ME')

-- FM
J10_FM = 
{
		[1] = self_ID,
		[2] = bin_name,
    disable_built_in_oxygen_system = true,
    center_of_mass    = {0.25, -0.020, 0.00},
	moment_of_inertia	= {12875.0, 85552.0, 75674.0, -1331.0},--Ix,Iy,Iz,Ixy			-- Ix(roll) = 9496, Iy(pitch) Ix(roll) = 9496, Iy(pitch) 
	suspension			= {
		{ -- NOSE WHEEL
			damage_element					= 83,
			wheel_axle_offset				= 0.0,
			self_attitude					= false,
			yaw_limit						= math.rad(32.0),
			moment_limit					= 750.0,
			damper_coeff					= 300.0,
			allowable_hard_contact_length	= 0.50,
			filter_yaw						= false,

			amortizer_min_length						= 0.0,
			amortizer_max_length						= 0.244,	-- (0.254 (strut stroke) * sin(70 deg)) = 0.239 + 0.0381 (wheel static axle)
			amortizer_basic_length						= 0.244,	-- (0.254 (strut stroke) * sin(70 deg)) = 0.239 + 0.0381 (wheel static axle)
			amortizer_spring_force_factor				= 5200000,	-- force = spring_force_factor * pow(reduce_length, amortizer_spring_force_factor_rate
			amortizer_spring_force_factor_rate			= 3,
			amortizer_static_force						= 1000,
			amortizer_reduce_length						= 0.05,
			amortizer_direct_damper_force_factor		= 35000,
			amortizer_back_damper_force_factor			= 15000,

			anti_skid_installed							= false,

			wheel_radius								= 0.42,	-- 18 / 2 (inch) 0.2286
			wheel_static_friction_factor				= 0.75,
			wheel_side_friction_factor					= 0.45,
			wheel_roll_friction_factor					= 0.05,
			wheel_glide_friction_factor					= 0.30,
			wheel_damage_force_factor					= 450.0,
			wheel_kz_factor								= 0.3,
			noise_k										= 1.0,
			wheel_damage_speedX							= 115,
			wheel_damage_delta_speedX					= 11.5,

			arg_post			= 0,
			arg_amortizer		= 1,
			arg_wheel_rotation	= 76,
			arg_wheel_damage	= 134
		},
        {
            mass         = 200,
            wheel_radius = 0.78,
            wheel_static_friction_factor  = 0.7 ,
            wheel_side_friction_factor    = 0.65 ,
            wheel_roll_friction_factor    = 0.04 ,
            wheel_glide_friction_factor   = 0.35 ,
            
            allowable_hard_contact_length = 0.196,
            
            anti_skid_installed = true,
            amortizer_min_length                 = 0.0,
            amortizer_max_length                 = 0.22,
            amortizer_basic_length               = 0.23,
            amortizer_spring_force_factor        = 10000000,
            amortizer_spring_force_factor_rate   = 3.0,
            amortizer_static_force               = 65000.0,
            amortizer_reduce_length              = 0.22,
            amortizer_direct_damper_force_factor = 40000.0,
            amortizer_back_damper_force_factor   = 20000.0,
            
            wheel_brake_moment_max               = 8200.0, 
            wheel_damage_force_factor            = 450.0,
            wheel_damage_speed                   = 115,
            wheel_damage_speedX                  = 115,


            arg_post             = 5,
            arg_amortizer        = 6,
            arg_wheel_rotation   = 102,
            arg_wheel_yaw        = -1,
            collision_shell_name = 'WHEEL_L',
        },
        {
            mass         = 200,
            wheel_radius = 0.78,
            wheel_static_friction_factor  = 0.7 ,
            wheel_side_friction_factor    = 0.65 ,
            wheel_roll_friction_factor    = 0.04 ,
            wheel_glide_friction_factor   = 0.35 ,
            
            allowable_hard_contact_length = 0.196,
            
            anti_skid_installed = true,
            amortizer_min_length                 = 0.0,
            amortizer_max_length                 = 0.22,
            amortizer_basic_length               = 0.23,
            amortizer_spring_force_factor        = 10000000,
            amortizer_spring_force_factor_rate   = 3.0,
            amortizer_static_force               = 65000.0,
            amortizer_reduce_length              = 0.22,
            amortizer_direct_damper_force_factor = 40000.0,
            amortizer_back_damper_force_factor   = 20000.0,
            
            wheel_brake_moment_max               = 8200.0, 
            wheel_damage_force_factor            = 450.0,
            wheel_damage_speed                   = 115,
            wheel_damage_speedX                  = 115,

            arg_post             = 3,
            arg_amortizer        = 4,
            arg_wheel_rotation   = 103,
            arg_wheel_yaw        = -1,
            collision_shell_name = 'WHEEL_R',
        },
    }
}
---local cfg_path = current_mod_path .. '/FM/config.lua'
--dofile(cfg_path)

--JF17_FM[1]           = self_ID
--JF17_FM[2]           = bin_name
--JF17_FM.config_path  = cfg_path
--JF17_FM.user_options = ac_name

---------------------------------------------------------------------------------------

dofile(current_mod_path .. '/Views.lua')

make_view_settings(ac_name, ViewSettings, SnapViews)
---------------------------------------------------------------------------------------
make_flyable(ac_name, current_mod_path .. '/Cockpit/Scripts/', J10_FM, current_mod_path .. '/Comm/comm.lua')
dofile(current_mod_path..'/J-10A.lua')
-------------------------------------------------------------------------------------
--J-10A lua
-------------------------------------------------------------------------------------
dofile(current_mod_path..'/Payload.lua')
dofile(current_mod_path..'/Config.lua')
-------------------------------------------------------------------------------------
plugin_done()
