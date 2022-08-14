
local ld10_name = 'YJ-91'
local ld10_mass = 600.0
local pylon_mass = 90.0
local pylon_dual_mass = 160.0

local LD_10_warhead =
{
    mass                 = 87,
    caliber              = 360,
    expl_mass            = 87,
    piercing_mass        = 7.2,
    other_factors        = { 1.0, 1.0, 1.0 },
    concrete_factors     = { 1.0, 1.0, 1.0 },
    concrete_obj_factor  = 1.0,
    obj_factors          = { 2.0, 1.0 },
    cumulative_factor    = 2.0,
    cumulative_thickness = 0.0,
}

local use_agm88_scheme_sead = false

LD_10_ARM = {
    category        = CAT_MISSILES,
    name            = ld10_name,
    model           = 'x-31',
    user_name       = _(ld10_name),
    wsTypeOfWeapon  = {4,4,8,WSTYPE_PLACEHOLDER},
    mass            = ld10_mass,

    Escort          = 0,
    Head_Type       = 3,
    sigma           = {10, 10, 10},
    M               = ld10_mass,
    H_max           = 25000.0,
    H_min           = -1.0,
    Diam            = 203.0,
    Cx_pil          = 2,
    D_max           = 80000.0,
    D_min           = 700.0,
    Head_Form       = 1,
    Life_Time       = 180.0,
    Nr_max          = 25,
    v_min           = 140.0,
    v_mid           = 900.0,
    Mach_max        = 4.0,
    t_b             = 0.0,
    t_acc           = 3.0,
    t_marsh         = 5.0,
    Range_max       = 80000.0,
    H_min_t         = 1.0,
    Fi_start        = 0.5236,
    Fi_rak          = 3.14152,
    Fi_excort       = 1.05,
    Fi_search       = 1.05,
    OmViz_max       = 0.52,
    exhaust         = { 1, 1, 1, 0.5 },
    X_back          = -1.74,
    Y_back          = -0.11,
    Z_back          = 0.0,
    Reflection      = 0.27,
    KillDistance    = 7.0,

    shape_table_data = {
        {
            name     = ld10_name,
            file     = 'x-31',
            life     = 1,
            fire     = {0, 1},
            username = ld10_name,
            index    = WSTYPE_PLACEHOLDER,
        },
    },

    warhead     = LD_10_warhead,
    warhead_air = LD_10_warhead,

	LaunchDistData = 
	{ 
		19, 	8, 
						200, 		250, 			300, 			350, 			400, 			450, 			500, 			550, 
		100, 	51220 * 1.1, 		53740 * 1.1, 	55680 * 1.1, 	57240 * 1.1, 	58580 * 1.1, 	59960 * 1.1, 	61340 * 1.1, 	62620 * 1.1, 
		300, 	52500 * 1.1, 		55100 * 1.1, 	57140 * 1.1, 	58780 * 1.1, 	60180 * 1.1, 	61580 * 1.1, 	63020 * 1.1, 	64300 * 1.1, 
		500, 	53790 * 1.1, 		56490 * 1.1, 	58560 * 1.1, 	60270 * 1.1, 	61740 * 1.1, 	63240 * 1.1, 	64710 * 1.1, 	66090 * 1.1, 
		700, 	55050 * 1.1, 		57900 * 1.1, 	60030 * 1.1, 	61830 * 1.1, 	63360 * 1.1, 	64890 * 1.1, 	66450 * 1.1, 	67860 * 1.1, 
		1000, 	56950 * 1.1, 		60000 * 1.1, 	62250 * 1.1, 	64150 * 1.1, 	65800 * 1.1, 	67400 * 1.1, 	69050 * 1.1, 	70600 * 1.1, 
		2000, 	61950 * 1.1, 		65600 * 1.1, 	68300 * 1.1, 	72200 * 1.1, 	74250 * 1.1, 	76350 * 1.1, 	78350 * 1.1, 	80100 * 1.1, 
		3000, 	68400 * 1.1, 		72900 * 1.1, 	76275 * 1.1,	79050 * 1.1, 	81450 * 1.1, 	85800 * 1.1, 	88350 * 1.1, 	90375 * 1.1, 
		4000, 	74475 * 1.1, 		80175 * 1.1, 	84450 * 1.1, 	87900 * 1.1, 	91125 * 1.1, 	94350 * 1.1, 	97275 * 1.1, 	101475 * 1.1, 
		5000, 	79950 * 1.1, 		87300 * 1.1, 	92700 * 1.1, 	97200 * 1.1, 	101400 * 1.1, 	105600 * 1.1, 	109200 * 1.1, 	112200 * 1.1, 
		6000, 	84600 * 1.1, 		94350 * 1.1, 	101400 * 1.1, 	107400 * 1.1, 	112950 * 1.1, 	118500 * 1.1, 	123000 * 1.1, 	126600 * 1.1, 
		7000,	88050 * 1.1, 		100950 * 1.1, 	110250 * 1.1, 	117900 * 1.1, 	125100 * 1.1, 	132000 * 1.1, 	137400 * 1.1, 	141750 * 1.1, 
		8000, 	88250 * 1.1, 		105750 * 1.1, 	117750 * 1.1, 	127750 * 1.1, 	137000 * 1.1, 	145250 * 1.1, 	151250 * 1.1, 	156500 * 1.1, 
		9000, 	83750 * 1.1, 		107500 * 1.1, 	123500 * 1.1, 	136000 * 1.1, 	147500 * 1.1, 	156750 * 1.1, 	163750 * 1.1, 	169250* 1.1, 
		10000 , 72000 * 1.1, 		103500 * 1.1, 	125000 * 1.1, 	141250 * 1.1, 	155500 * 1.1, 	166250 * 1.1, 	169250 * 1.1, 	170000 * 1.1, 
		11000, 	48000 * 1.1, 		91000 * 1.1, 	121500 * 1.1,	142500 * 1.1, 	160000 * 1.1, 	169500 * 1.1, 	170000 * 1.1, 	170000 * 1.1, 
		12000, 	45500 * 1.1, 		74500 * 1.1, 	111500 * 1.1, 	139000 * 1.1, 	160500 * 1.1, 	169500 * 1.1, 	170000 * 1.1, 	170000 * 1.1, 
		13000, 	46000 * 1.1, 		57500 * 1.1, 	97000 * 1.1, 	132000 * 1.1, 	157000 * 1.1, 	169500 * 1.1, 	170000 * 1.1, 	170000 * 1.1, 
		14000, 	47000 * 1.1, 		57500 * 1.1, 	84500 * 1.1, 	122000 * 1.1, 	151500 * 1.1, 	168500 * 1.1, 	170000 * 1.1, 	170000 * 1.1, 
		15000, 	52500 * 1.1, 		58000 * 1.1, 	66500 * 1.1, 	113500 * 1.1, 	146500 * 1.1, 	164000 * 1.1, 	170000 * 1.1, 	170000 * 1.1, },
		
		MinLaunchDistData = { 19, 8, 200, 250, 300, 350, 400, 450, 500, 550, 100, 26460, 27940, 29100, 30100, 30980, 31920, 32840, 33760, 300, 26680, 28180, 29400, 30420, 31360, 32260, 33240, 34160, 500, 26880, 28440, 29640, 30720, 31680, 32670, 33630, 34590, 700, 27090, 28710, 29940, 31050, 32040, 33030, 34080, 35040, 1000, 27350, 29050, 30400, 31550, 32600, 33550, 34650, 35700, 2000, 7350, 7750, 8000, 33000, 34350, 35600, 36800, 37900, 3000, 9075, 9825, 10200, 10500, 10725, 37050, 38850, 40200, 4000, 10575, 11550, 12225, 12600, 12975, 13350, 13575, 41175, 5000, 11700, 13200, 14100, 14850, 15150, 15600, 16050, 16350, 6000, 12900, 14550, 15900, 16800, 17550, 18000, 18450, 18900, 7000, 13650, 15900, 17400, 18600, 19650, 20400, 21000, 21450, 8000, 14250, 16750, 19000, 20500, 21750, 22750, 23500, 24000, 9000, 14500, 17500, 20000, 22000, 23750, 25000, 25750, 26500, 10000, 14250, 18000, 20750, 23250, 25500, 27000, 27750, 28000, 11000, 12500, 18000, 21000, 24000, 26500, 28500, 29000, 29500, 12000, 13000, 16500, 21000, 24500, 27500, 29500, 30500, 31000, 13000, 13000, 16000, 21000, 24500, 28000, 30500, 32000, 32500, 14000, 13500, 16500, 20000, 25000, 29000, 31500, 32500, 33500, 15000, 14000, 16500, 19500, 25000, 29000, 32000, 33500, 35000 },

	}

if use_agm88_scheme_sead then

    LD_10_ARM.class_name      = "wAmmunitionSelfHoming"
    LD_10_ARM.scheme          = "anti_rad_missile"

    LD_10_ARM.controller = {
        boost_start = 0.5,
        march_start = 1.5,
    }

    LD_10_ARM.boost = {
        impulse                              = 242,
        fuel_mass                            = 57.6,
        work_time                            = 6.0,
        nozzle_position                      = {{-2.1, 0, 0}},
        nozzle_orientationXYZ                = {{0.0, 0.0, 0.0}},
        tail_width                           = 0.4,
        smoke_color                          = {0.9, 0.9, 0.9},
        smoke_transparency                   = 0.1,
        custom_smoke_dissipation_factor      = 0.3,
    }

    LD_10_ARM.march = {
        impulse                              = 236,
        fuel_mass                            = 11.6,
        work_time                            = 4.0,
        nozzle_position                      = {{-1.74, -0.11, 0}},
        nozzle_orientationXYZ                = {{0.0, 0.0, 0.0}},
        tail_width                           = 0.3,
        smoke_color                          = {0.6, 0.6, 0.6},
        smoke_transparency                   = 0.8,
        custom_smoke_dissipation_factor      = 0.2,
    }

    LD_10_ARM.fm = {
        mass                = ld10_mass,
        caliber             = 0.203,
        wind_sigma          = 0.0,
        wind_time           = 0.0,
        tail_first          = 1,
        fins_part_val       = 0,
        rotated_fins_inp    = 0,
        delta_max           = math.rad(20),
        L                   = 0.203,
        S                   = 0.0324,
        Ix                  = 1.5,
        Iy                  = 190,
        Iz                  = 190,

        Mxd                 = 0.3 * 57.3,
        Mxw                 = -44.5,

        table_scale    = 0.2,
        table_degree_values = 1,
        --    Mach      | 0.0        0.2        0.4        0.6        0.8        1.0        1.2        1.4        1.6        1.8        2.0        2.2        2.4        2.6        2.8        3.0        3.2        3.4        3.6        3.8        4.0     |
        Cx0 = {    0.4727,    0.4727,    0.4727,    0.4727,    0.4838,    0.7609,     0.8869,     0.86198,    0.81793,     0.76899,     0.72481,     0.68476,    0.64836,    0.61529,    0.58515,    0.55744,    0.53195,    0.50829,    0.48624,    0.46561,    0.4461,     0.42772,    0.41035,    0.3941,     0.37898,    0.366    },
        CxB = {    0.021,     0.021,     0.021,     0.021,     0.021,     0.138,      0.153,      0.146,      0.1382,      0.1272,      0.1167,      0.1073,     0.0987,     0.0909,     0.0837,     0.077,      0.0708,     0.065,      0.0595,     0.0544,     0.0495,     0.0449,     0.0406,     0.0364,     0.0324,     0.0286    },
        K1  = {    0.00264,   0.00264,   0.00264,   0.00264,   0.00264,   0.00264,    0.0022,     0.001873,   0.0016435,   0.0014752,   0.0013448,   0.0012436,  0.0011534,  0.0010742,  0.0010149,  0.0009484,  0.0009016,  0.0008476,  0.000795,   0.0007529,  0.0007122,  0.0006727,  0.0006343,  0.0006058,  0.0005781,  0.00056    },
        K2  = {    -0.00257,  -0.00257,  -0.00257,  -0.00257,  -0.00257,  -0.00265,   -0.002274,  -0.002034,  -0.0018241,  -0.0016225,  -0.0014468,  -0.001275,  -0.0011248, -0.0009777, -0.0008514, -0.0007274, -0.0006236, -0.0005217, -0.0004393, -0.0003584, -0.0002968, -0.0002363, -0.0001949, -0.0001546, -0.0001335, -0.000114    },
        Cya = {    0.3207,    0.3207,    0.3207,    0.3207,    0.3381,    0.4226,     0.4651,     0.5049,     0.5175,      0.5033,      0.4919,      0.4815,     0.4729,     0.4653,     0.4586,     0.4528,     0.4479,     0.444,      0.441,      0.4371,     0.4341,     0.4321,     0.43,       0.4271,     0.426,      0.424    },
        Cza = {    0.3207,    0.3207,    0.3207,    0.3207,    0.3381,    0.4226,     0.4651,     0.5049,     0.5175,      0.5033,      0.4919,      0.4815,     0.4729,     0.4653,     0.4586,     0.4528,     0.4479,     0.444,      0.441,      0.4371,     0.4341,     0.4321,     0.43,       0.4271,     0.426,      0.424    },
        Mya       = { -0.5,    -0.5},
        Mza       = { -0.5,    -0.5},
        Myw       = { -2.0,    -2.0},
        Mzw       = { -2.0,    -2.0},
        A1trim    = { 10.0,    10.0},
        A2trim    = { 10.0,    10.0},

        model_roll = math.rad(45),
        fins_stall = 1,
    }

    LD_10_ARM.proximity_fuze = {
        radius       = 8,
        arm_delay    = 1.6,
    }

    LD_10_ARM.seeker = {
        delay               = 2.4,
        op_time             = 240,
        FOV                 = math.rad(60),
        max_w_LOS           = math.rad(20),
        sens_near_dist      = 100,
        sens_far_dist       = 70000,

        keep_aim_time       = 5,
        pos_memory_time     = 150,
        err_correct_time    = 2.0,
        calc_aim_dist       = 500000,
        blind_rad_val       = 0.1,
        aim_y_offset        = 2.5,

        ang_err_val         = math.rad(0.008),
        abs_err_val         = 2,
    }

    LD_10_ARM.autopilot = {
        delay                = 1.0,
        x_channel_delay      = 1.0,
        op_time              = 240,
        Kconv                = 6.0,
        Knv                  = 0.0025,
        Kd                   = 0.4,
        Ki                   = 0.01,
        Kout                 = 1.0,
        Kx                   = 0.04,
        Krx                  = 2.0,
        fins_limit           = math.rad(20),
        fins_limit_x         = math.rad(5),
        Areq_limit           = 14.0,
        bang_bang            = 0,
        max_signal_Fi        = math.rad(12),
        rotate_fins_output   = 0,
        alg                  = 0,
        PN_dist_data         = {15000,    0,
                                 5000,    1},
        null_roll            = math.rad(45),
        
        min_a_conv_approach_vel = 100,

        K_heading_hor                = 0.5,
        K_heading_ver                = 0.3,
        K_loft                       = 3.3,
        loft_active_by_default       = 1,
        loft_min_trig_ang            = math.rad(5),
        loft_trig_ang                = math.rad(20),
        loft_trig_max_alt            = 3000,
        loft_trig_change_min_dist    = 20000,
        loft_trig_change_max_dist    = 35000,
        
        loft_min_dist                = 5000,
        loft_min_add_pitch           = math.rad(10),
        loft_add_pitch               = math.rad(20),
        
        min_horiz_time               = 3.0,
        max_pitch_cmd                = math.rad(32),
    }

else

    LD_10_ARM.class_name      = "wAmmunitionSelfHoming"
    LD_10_ARM.scheme          = "anti_radiation_missile_ramjet"

    LD_10_ARM.controller = {
		boost_start = 0.5,
        march_start = 2.5,
    }

    LD_10_ARM.boost = {
		
		impulse 							= 250,
		fuel_mass 							= 93, -- 93
		work_time 							= 2,
		boost_factor 						= 0,
		boost_time							= 0,
		nozzle_position 					= { { -2.2, -0.21, 0 } },
		nozzle_orientationXYZ 				= { { 1, 0, 0 } },
		tail_width 							= 0.9,
		smoke_color 						= { 0.8, 0.8, 0.8 },
		smoke_transparency					= 0.8,
		custom_smoke_dissipation_factor 	= 0.2,
		effect_type 						= 0,
    }

    LD_10_ARM.march = {
		
		impulse 							= 0,
		fuel_mass 							= 167,--55
		work_time 							= 0,
		AEC 								= 1.18,
		AFR_stoich 							= 14.9,
		LHVof_fuel							= 43000000,
		Tchamb_max 							= 2770,
		boost_factor 						= 0,
		boost_time							= 0,
		inlet_area 							= 0.044,
		custom_smoke_dissipation_factor 	= 0.45,
		effect_type 						= 1,
		min_start_speed 					= 400,
		nozzle_position						= { { -2.15, -0.21, 0 } },
		nozzle_orientationXYZ 				= { { 0, 0, 0 } },
		smoke_color 						= { 0.9, 0.9, 0.9 },
		smoke_transparency 					= 0.05,
		tail_width 							= 0.1,
    }

    LD_10_ARM.fm = {
		mass 		= 600,
		caliber		= 0.36,
		cx_coeff 	= { 1, 1, 0.85, 0.5, 1.5 },
		L 			= 4.7,
		I 			= 1104.5,
		Ma 			= 0.4,
		Mw 			= 1.2,
		wind_sigma 	= 0,
		wind_time 	= 0,
		Sw 			= 0.7,
		dCydA 		= { 0.07, 0.036 },
		A 			= 0.36,
        maxAoa      = 0.28,
		finsTau 	= 0.1,

		Ma_x 		= 0.001,
		Mw_x 		= 0.15,
		I_x 		= 60,
		
		lockRoll 	= 1,
		maxAoa 		= 0.28,
    }

    LD_10_ARM.seeker  = {
			
        delay               = 1.5,
        op_time             = 240,
        FOV                 = math.rad(70),
        max_w_LOS           = math.rad(30),
        sens_near_dist      = 100,
        sens_far_dist       = 120000,

        keep_aim_time       = 250,
        pos_memory_time     = 250,
        err_correct_time    = 1.0,
        calc_aim_dist       = 500000,
        blind_rad_val       = 0.1,
        aim_y_offset        = 2.0,

        ang_err_val         = math.rad(0.0008),
        abs_err_val         = 1,
		lock_manual_target_types_only = 0,
    }

    LD_10_ARM.fuze_proximity = {
        ignore_inp_armed    = 1,
        arm_delay           = 10,
        radius              = 10,
    }

    LD_10_ARM.autopilot = {
     --   K                = 100.0,
       -- Kg               = 6.0,
      --  Ki               = 0.0,
      --  finsLimit        = 0.22,
      --  useJumpByDefault = 1,
     --   J_Power_K        = 1.2,
     --   J_Diff_K         = 0.4,
     --   J_Int_K          = 0.0,
     --   J_Angle_K        = math.rad(12),
      --  J_FinAngle_K     = math.rad(18),
     --   J_Angle_W        = 3.5,
     --   delay            = 1.0,
		
			K = 50,
			K_loft_err = 1,
			Kd = 0.1,
			Ki = 0,
			Kix = 0,
			Ks = 10,
			Kw = 1.5,
			Kx = 0,
			PN_dist_data = { 3000, 0.9, 2000, 1 },
			add_err_val = 0.025,
			conv_input = 0,
			delay = 1,
			fins_limit = 0.61086523819802,
			fins_q_div = 1,
			loft_active_by_default = 1,
			loft_angle = math.rad(15),
			loft_trig_angle = 0.47123889803847,
			op_time = 200,
			rotated_WLOS_input = 0,
			w_limit = 0.17453292519943
    }

end

declare_weapon(LD_10_ARM)
--LD_10_ARM.shape_table_data.index = LD_10_ARM.wsTypeOfWeapon[4]

declare_loadout({
    category    = CAT_MISSILES,
    CLSID       = 'DIS_LD-10',
    Picture     = 'kh31p.png',
    attribute   = LD_10_ARM.wsTypeOfWeapon,
    displayName = _('YJ-91 High Speed Anti-Radiation Missile'),
    Cx_pil      = 0.000859765625,
    Count       = 1,
    Weight      = ld10_mass + pylon_mass,
    Elements    = {
        [1] =
        {
            Position  = {0, 0, 0},
            ShapeName = 'x-31',
        },
    }, -- end of Elements
})

--[[
declare_loadout({
    category       = CAT_MISSILES,
    CLSID          = 'DIS_LD-10_DUAL_L',
    Picture        = 'pl12.png',
    wsTypeOfWeapon = LD_10_ARM.wsTypeOfWeapon,
    attribute      = {4,4,32,WSTYPE_PLACEHOLDER},
    displayName    = _(ld10_name .. ' x 2'),
    Cx_pil         = 0.000859765625 * 1.31,
    Count          = 2,
    Weight         = 2 * ld10_mass + pylon_dual_mass,
    Elements       = {
        { ShapeName = 'JF-17_PF12_twin', IsAdapter = true, },
        { ShapeName = 'ld10',            connector_name = 'dual_PF12L', },
        { ShapeName = 'ld10',            connector_name = 'dual_PF12R', },
    }, -- end of Elements
    JettisonSubmunitionOnly = true,
})

declare_loadout({
    category       = CAT_MISSILES,
    CLSID          = 'DIS_LD-10_DUAL_R',
    Picture     = 'pl12.png',
    attribute   = LD_10_ARM.wsTypeOfWeapon,
    displayName = _(ld10_name),
    Cx_pil      = 0.000859765625,
    Count       = 1,
    Weight      = ld10_mass + pylon_mass,
    Elements    = {
        [1] =
        {
            Position  = {0, 0, 0},
            ShapeName = 'x-31',
        },
    }, -- end of Elements
})
]]