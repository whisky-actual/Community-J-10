
local gb6a_name = "GB-6A"
local gb6a_mass = 972
local pylon_mass = 52.0

    
local GB6AHE_warhead = 
{
    mass                 = 500, 
    caliber              = 377,
    expl_mass            = 500,
    piercing_mass        = 0.0,
    other_factors        = { 1.0, 1.0, 1.0 },
    concrete_factors     = { 3.0, 1.0, 1.0 },
    concrete_obj_factor  = 2.0,
    obj_factors          = { 3.0, 1.0 },
    cumulative_factor    = 3.0,
    cumulative_thickness = 0.0,
}



-- GB6A_HE
GB6A_HE =
{
    category        = CAT_MISSILES,
    name            = gb6a_name .. '-HE',
    user_name       = _(gb6a_name ..'-HE'),
	scheme          = "sat_cruise_missile",
    class_name      = "wAmmunitionAntiShip",
--	scheme			= "cruise_missile",
--	class_name		= "wAmmunitionCruise",
    model           = "jas39_stormshadow",
    mass            = gb6a_mass,
    
    wsTypeOfWeapon  = {wsType_Weapon,wsType_Missile,wsType_AS_Missile,WSTYPE_PLACEHOLDER},

    Escort          = 0,
    Head_Type       = 5,
    sigma           = {20, 20, 20},
    M               = gb6a_mass,
    H_max           = 13000.0,
    H_min           = -1,
    Diam            = 330.0,
    Cx_pil          = 10,
    D_max           = 300000.0,
    D_min           = 10000.0,
    Head_Form       = 1,
    Life_Time       = 9999,
    Nr_max          = 10,
    v_min           = 10.0,
    v_mid           = 200.0,
    Mach_max        = 1.7,
    t_b             = 0.0,
    t_acc           = 0.0,
    t_marsh         = 0.0,
    Range_max       = 300000.0,
    H_min_t         = 0.0,
    Fi_start        = 3.14152,
    Fi_rak          = 3.14152,
    Fi_excort       = 3.14152,
    Fi_search       = 99.9,
    OmViz_max       = 99.9,
	X_back = -3.392,
	Y_back = 0.064,
	Z_back = 0.0,
    Reflection      = 0.1,
    KillDistance    = 0.0,
	
	add_attributes = {"Cruise missiles"},
	
	
	encyclopediaAnimation = {
		args = {
			[25] = 1.000000, -- wings open
		},
	},
		
    --[[
    LaunchDistData =
    {
        19,        10,

                100,    150,    200,    250,    300,    350,    400,    450,    500,    550,        
        100,    0,        0,        0,        10100,    20100,    28025,    33575,    37975,    41250,    44125,    
        200,    0,        0,        0,        10800,    20650,    28225,    34650,    38700,    41975,    44850,    
        400,    0,        0,        0,        11250,    21825,    29900,    35975,    39875,    43375,    46200,    
        700,    0,        0,        0,        12200,    23875,    31475,    37900,    41800,    45050,    48475,    
        1000,    0,        0,        7850,    13150,    22500,    33450,    38450,    42150,    45250,    48250,    
        2000,    0,        0,        11200,    19000,    28650,    40000,    45650,    49550,    52850,    55950,    
        3000,    0,        12000,    15000,    23000,    32000,    46600,    52300,    56400,    63000,    66800,    
        4000,    14400,    16800,    18300,    26200,    34400,    47200,    58800,    62700,    66800,    70900,    
        5000,    20000,    22500,    23600,    29500,    37800,    48700,    64600,    69000,    73600,    77300,    
        6000,    25700,    25900,    26100,    33700,    42500,    49500,    70000,    75600,    79600,    84000,    
        7000,    30250,    30250,    30500,    39250,    45000,    53750,    60500,    83000,    85000,    90000,    
        8000,    34250,    34250,    34500,    41500,    50750,    57000,    63750,    85000,    89500,    96000,    
        9000,    39250,    39250,    40250,    46250,    54250,    60500,    67500,    73500,    96750,    105000,    
        10000,    53750,    54250,    67250,    78750,    86750,    92500,    96000,    98500,    99000,    106250,    
        11000,    60000,    64500,    74500,    84000,    91000,    96500,    100000,    101000,    104000,    109500,    
        12000,    63500,    70500,    80000,    89000,    96000,    101500,    104500,    106500,    109500,    113500,    
        13000,    67500,    76000,    84500,    93500,    101000,    106000,    110000,    112000,    113500,    118500,    
        14000,    70500,    81500,    88500,    98000,    105000,    110500,    112500,    115500,    118500,    121500,    
        15000,    73000,    85500,    92500,    101000,    109000,    113500,    117000,    119500,    122000,    126000,    
    },

    MinLaunchDistData =
    {
        19,        10,

                100,    150,    200,    250,    300,    350,    400,    450,    500,    550,        
        100,    0,        0,        0,        9775,    7175,    11725,    17700,    21600,    24750,    27500,    
        200,    0,        0,        0,        8150,    7175,    11325,    17325,    21275,    24375,    27250,    
        400,    0,        0,        0,        7350,    6400,    10475,    16550,    20550,    23725,    26600,    
        700,    0,        0,        0,        7775,    4675,    8925,    15150,    19225,    22475,    25425,    
        1000,    0,        0,        7750,    6850,    3950,    5800,    3100,    3500,    4100,    6400,    
        2000,    0,        0,        6900,    5000,    4750,    5000,    5750,    5400,    5950,    6350,    
        3000,    0,        7000,    5800,    6200,    6500,    5600,    5600,    5800,    30000,    33800,    
        4000,    9200,    5500,    6600,    7000,    7100,    8100,    6000,    6000,    6100,    10100,    
        5000,    3600,    5800,    6100,    6200,    7100,    6800,    8300,    5400,    8300,    10200,    
        6000,    3300,    5100,    5800,    6400,    8300,    9400,    9900,    7700,    9500,    11700,    
        7000,    4750,    5000,    6750,    7750,    9000,    10500,    15250,    9750,    11500,    13500,    
        8000,    5250,    5750,    7500,    8000,    10250,    11000,    16500,    11500,    13500,    15500,    
        9000,    6000,    6250,    8250,    8500,    8750,    11500,    11750,    14500,    15250,    57250,    
        10000,    1250,    4000,    9000,    9250,    9500,    10250,    11750,    18500,    20250,    23000,    
        11000,    5000,    7000,    7500,    8000,    8500,    9500,    13000,    14500,    17000,    24500,    
        12000,    1000,    7500,    8500,    9000,    9000,    10500,    15500,    14500,    17000,    26000,    
        13000,    5500,    8000,    9000,    10000,    11500,    10500,    20000,    22000,    25500,    27500,    
        14000,    5500,    8000,    9500,    10500,    10500,    11000,    17000,    18500,    25500,    30500,    
        15000,    1000,    8500,    10500,    11500,    11000,    12000,    19000,    26000,    29000,    31500,    
    },
        ]]
    shape_table_data =
    {
        {
            name     = gb6a_name .. '-HE',
            file     = "jas39_stormshadow",
            life     = 1,
            fire     = {0, 1},
            username = gb6a_name .. '-HE',
            index    = WSTYPE_PLACEHOLDER,
        },
    },
	
	controller = {
        boost_start = 0.001,
        march_start = 0.8,
    },
    
    fm = {
        mass                = gb6a_mass,  
        caliber             = 0.3,  
        cx_coeff            = {1, 0.8, 0.8, 0.15, 1.5},
        L                   = 4.5,
        I                   = 1 / 12 * gb6a_mass * 4.5 * 4.5,
        Ma                  = 2,
        Mw                  = 7,
        wind_sigma          = 0.0,
        wind_time           = 0.0,
        Sw                  = 1.2,
        dCydA               = {0.07, 0.036},
        A                   = 0.15,
        maxAoa              = 0.4,
        finsTau             = 0.2,
        Ma_x                = 2,
        Ma_z                = 2,
        Mw_x                = 1.4,
        
        addDeplSw           = 0.6,
        no_wings_A_mlt      = 2,
        wingsDeplProcTime   = 5,
        wingsDeplDelay      = 1,
    },
    
    seeker = {
        coalition                = 2,
        coalition_rnd_coeff      = 5.0,
        can_update_target_pos    = 1,
    },
	--[[
	simple_seeker = {
		sensitivity     = 0,
		delay		= 0.0,
		FOV			= 0.6,
		maxW		= 500,
		opTime		= 9999,
	},]]
    
    control_block = {
        seeker_activation_dist       = 20000,
        default_cruise_height        = 65,
        obj_sensor                   = 0,
        can_update_target_pos        = 1,
        turn_before_point_reach      = 0,
        turn_hor_N               = 0.8,
        turn_max_calc_angle_deg  = 90,
        turn_point_trigger_dist  = 100,
        use_horiz_dist           = 1,
    },
	
	final_autopilot = {
		delay = 0,
		K					= 60,
		Ki					= 0,
		Kg					= 4,
		finsLimit			= 0.8,
		useJumpByDefault	= 1,
		J_Power_K			= 1.5,
		J_Diff_K			= 0.4,
		J_Int_K				= 0,
		J_Angle_K			= 0.18,
		J_FinAngle_K		= 0.32,
		J_Angle_W			= 0.8,
		J_Trigger_Vert		= 1,
		hKp_err				= 120,
		hKp_err_croll		= 0.04,
		hKd					= 0.005,
		max_roll			= 0.8,
    },
    
    cruise_autopilot = {
        delay                 = 1,
        Kp_hor_err            = 240,
        Kp_hor_err_croll      = 0.08,
        Kd_hor                = 0,
        Kp_ver                = 8,
        Kii_ver               = 0.3,
        Kd_ver                = 0.02,
        Kp_eng                = 200,
        Ki_eng                = 0.005,
        Kd_eng                = 0,
        Kp_ver_st1            = 0.009,
        Kd_ver_st1            = 0.015,
        Kp_ver_st2            = 0.00018,
        Kd_ver_st2            = 0.00005,
        
        auto_terrain_following           = 1,
        auto_terrain_following_height    = 65,
        
        alg_points_num           = 7,
        alg_calc_time            = 1.5,
        alg_vel_k                = 6,
        alg_div_k                = 2,
        alg_max_sin_climb        = 0.8,
        alg_section_temp_points  = 3,
        alg_tmp_point_vel_k      = 1.5,
        no_alg_vel_k             = 10,
        
        max_roll                 = 0.7,
        max_start_y_vel          = 15,
        stab_vel                 = 250,
        finsLimit                = 0.8,
        estimated_N_max          = 6,
        eng_min_thrust           = -100,
        eng_max_thrust           = 3000,
    },
	
	final_ap_trigger = {
		trigger_dist			= 5000
	},
    
   boost = { -- air launch - no booster
        impulse                              = 0,
        fuel_mass                            = 0,
        work_time                            = 0,
        boost_time                           = 0,
        boost_factor                         = 0,
        nozzle_position                      = {{0, 0, 0}},
        nozzle_orientationXYZ                = {{0, 0, 0}},
        tail_width                           = 0,
        smoke_color                          = {0.0, 0.0, 0.0},
        smoke_transparency                   = 0.0,
        custom_smoke_dissipation_factor      = 0.0,                
    },
    
    booster_animation = {
        start_val = 0,
    },
    
    play_booster_animation = {
        val = 0,
    },

    march = {
        impulse           = 690,
        fuel_mass         = 153,
        work_time         = 9999,
        min_fuel_rate     = 0.005,
        min_thrust        = -100,
        max_thrust        = 3000,
        thrust_Tau        = 0.0017,
        
        nozzle_position                  = {{-3.392, 0.064, 0.0}},
        nozzle_orientationXYZ            = {{0.0, 0.0, 0.0}},
        tail_width                       = 0.5,
        smoke_color                      = {0.0, 0.0, 0.0},
        smoke_transparency               = 0.2,
        custom_smoke_dissipation_factor  = 0.2,

        start_burn_effect           = 0,
        start_effect_delay          = {0.0,   0.3,    0.8},
        start_effect_time           = {0.7,   1.0,    0.1},
        start_effect_size           = {0.09,  0.104,  0.11},
        start_effect_smoke          = {0.01,  0.4,    0.01},
        start_effect_x_pow          = {1.0,   1.0,    1.0},
        start_effect_x_dist         = {1.1,   0.9,    0.0},
        start_effect_x_shift        = {0.15,  0.15,   0.2},
        
    },
        
    warhead     = GB6AHE_warhead,
    warhead_air = GB6AHE_warhead,
}

declare_weapon(GB6A_HE)
--[[
declare_loadout({
    category         = CAT_MISSILES,
    CLSID            = 'DIS_GB6_HE',
    attribute        = GB6A_HE.wsTypeOfWeapon,
    Count            = 1,
    Cx_pil           = 0.0024,
    Picture          = "gb6.png",
    displayName      = _(gb6a_name .. '-HE cruise-missile'),
    Weight           = GB6A_HE.mass + pylon_mass,
    Elements         = {{ShapeName = "jas39_stormshadow"}},
    ejectImpulse     = 140,
})
]]
