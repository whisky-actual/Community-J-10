
JF17_FM = 
{
    disable_built_in_oxygen_system = true,
    center_of_mass    = { 0.25, -0.020, 0.00},--{ 0.25, -0.026, 0.00} / { 0.05, 0.0, 0.0},
	moment_of_inertia	= {12875.0, 85552.0, 75674.0, -1331.0},--{12793.0, 82531.8, 75190, 1081.0} 
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
			anti_skid_installed							= false,
			amortizer_min_length						= 0.0,
			amortizer_max_length						= 0.244,	
			amortizer_basic_length						= 0.244,	
			amortizer_spring_force_factor				= 5200000,	
			amortizer_spring_force_factor_rate			= 3,
			amortizer_static_force						= 1000,
			amortizer_reduce_length						= 0.05,
			amortizer_direct_damper_force_factor		= 35000,
			amortizer_back_damper_force_factor			= 15000,

			

			wheel_radius								= 0.42,	-- 18 / 2 (inch) 0.2286 /0.25
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
			arg_wheel_damage	= 134,
			collision_shell_name = 'WHEEL_F',
		},
        {
            mass         = 200,
            wheel_radius = 0.78, --0.35 / 0.33
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
            wheel_radius = 0.78, --0.35 / 0.33
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