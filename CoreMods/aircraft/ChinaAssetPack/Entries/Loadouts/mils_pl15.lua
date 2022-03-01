
local pl15_name  = 'PL-15'
local pl15_mass  = 210.0
local pl15_model = 'Su30_PL-15'
local pylon_mass = 90.0
local pylon_dual_mass = 160.0

local pl15_warhead = enhanced_a2a_warhead(24, 203)

PL_15_AA = {
    category        = CAT_AIR_TO_AIR,
    name            = pl15_name,
    model           = pl15_model,
    user_name       = _("PL-15"),
    wsTypeOfWeapon  = {4,4,7,WSTYPE_PLACEHOLDER},
    mass            = pl15_mass,

    Escort          = 0,
    Head_Type       = 2,
    sigma           = {5, 5, 5},
    M               = pl15_mass,
    H_max           = 25000.0,
    H_min           = -1.0,
    Diam            = 203.0,
    Cx_pil          = 2,
    D_max           = 65000.0,
    D_min           = 1000.0,
    Head_Form       = 1,
    Life_Time       = 120.0,
    Nr_max          = 30,
    v_min           = 140.0,
    v_mid           = 1200.0,
    Mach_max        = 4.0,
    t_b             = 0.0,
    t_acc           = 6.0,
    t_marsh         = 4.0,
    Range_max       = 65000.0,
    H_min_t         = 3.0,
    Fi_start        = 0.5,
    Fi_rak          = 3.14152,
    Fi_excort       = 1.05,
    Fi_search       = 1.05,
    OmViz_max       = 0.52,
    exhaust         = tail_solid1;
    X_back          = -1.74,
    Y_back          = -0.11,
    Z_back          = 0.0,
    Reflection      = 0.045,
    KillDistance    = 11.0,

    warhead         = pl15_warhead,
    warhead_air     = pl15_warhead,

    shape_table_data = {
        {
            name     = pl15_name,
            file     = pl15_model,
            life     = 1,
            fire     = {0, 1},
            username = pl15_name,
            index    = WSTYPE_PLACEHOLDER,
        },
    },

    PN_coeffs = { 4,                 -- Number of Entries
                  12000.0, 1.00,
                  18000.0, 0.75,
                  30000.0, 0.50,     -- Less 5 km to target Pn = 1
                  48000.0, 0.20,     -- Between 15 and 5 km  to target, Pn smoothly changes from 0.4 to 1.0. Longer then 15 km Pn = 0.4.
                },

    supersonic_A_coef_skew = 0.1, -- slope of the direct polarity factor of the polar on supersonic
    nozzle_exit_area       = 0.025, -- the nozzle exit area

    class_name      = 'wAmmunitionSelfHoming',
    scheme          = 'aa_missile_amraam2',

    controller = {
        boost_start = 0.5,
        march_start = 12,
		
    },
		gimbal = {
			delay = 0,
			max_tracking_rate = math.rad(45),
			op_time = 245,
			pitch_max = math.rad(360),
			tracking_gain = 400, -- 50
			yaw_max = math.rad(360)
		},

    boost = {
        impulse                             = 275,
        fuel_mass                           = 39.2,
        work_time                           = 4.6,
        nozzle_position                     = {{-1.74, -0.11, 0}},
        nozzle_orientationXYZ               = {{0.0, 0.0, 0.0}},
        nozzle_exit_area                    = 0.025,
        tail_width                          = 0.4,
        smoke_color                         = {1.0, 1.0, 1.0},
        smoke_transparency                  = 0.05,
        custom_smoke_dissipation_factor     = 0.2,
    },

    march = {
        impulse                             = 269,
        fuel_mass                           = 60,
        work_time                           = 23.6,
      --  impulse                             = 269,
        nozzle_position                     = {{-1.74, -0.11, 0}},
        nozzle_orientationXYZ               = {{0.0, 0.0, 0.0}},
        nozzle_exit_area                    = 0.025,
        tail_width                          = 0.4,
        smoke_color                         = {0.8, 0.8, 0.8},
        smoke_transparency                  = 0.01,
        custom_smoke_dissipation_factor     = 0.1,

    },

    fm = {
        mass                = pl15_mass,
       caliber				= 0.203,  
		wind_sigma			= 0.0,
		wind_time			= 0.0,
		tail_first			= 0,
		fins_part_val		= 0,
		rotated_fins_inp	= 0,
		delta_max			= math.rad(20),
		draw_fins_conv		= {math.rad(90),1,1},
		L					= 0.178,
		S					= 0.0248,
		Ix					= 1.04,
		Iy					= 125.32,
		Iz					= 125.32,
		
		Mxd					= 0.1 * 57.3,
		Mxw					= -15.8,

		table_scale	= 0.2,
		table_degree_values = 1,
	--	Mach	  | 0.0		0.2		0.4		0.6		0.8		1.0		1.2		1.4		1.6		1.8		2.0		2.2		2.4		2.6		2.8		3.0		3.2		3.4		3.6		3.8		4.0	 	4.2		4.4		4.6		4.8		5.0 |
		Cx0 	= {	0.429,	0.429,	0.429,	0.429,	0.439,	0.67,	0.82,	0.8164,	0.7729,	0.7263,	0.6838,	0.6471,	0.6135,	0.5829,	0.555,	0.5293,	0.5056,	0.4835,	0.4629,	0.4434,	0.4231,	0.4074,	0.3907,	0.3750,	0.360,	0.346  },
		CxB 	= {	0.021,	0.021,	0.021,	0.021,	0.021,	0.138,	0.153,	0.146,	0.1382,	0.1272,	0.1167,	0.1073,	0.0987,	0.0909,	0.0837,	0.077,	0.0708,	0.065,	0.0595,	0.0544,	0.0495,	0.0449,	0.0406,	0.0364,	0.0324,	0.0286 },
		K1		= { 0.0025,	0.0025,	0.0025,	0.0025,	0.0025,	0.0024,	0.002,	 0.00172, 0.00151, 0.00135,0.00123, 0.00114, 0.00106, 0.00099,0.00094, 0.00088, 0.00084, 0.00079, 0.00074, 0.0007, 0.00066, 0.00062, 0.00058, 0.00055,0.00052, 0.0005  },
		K2		= {-0.0024,-0.0024,-0.0024,-0.0024,-0.0024,-0.0024,-0.00206,-0.00186,-0.00168,-0.0015,-0.00134,-0.00118,-0.00104,-0.0009,-0.00078,-0.00066,-0.00056,-0.00046,-0.00038,-0.0003,-0.00024,-0.00018,-0.00014,-0.0001,-0.00008,-0.00006 },
		Cya 	= { 0.3207, 0.3207, 0.3207, 0.3207, 0.3381, 0.4250, 0.4670, 0.5060, 0.5180, 0.5033, 0.4919, 0.4815, 0.4729, 0.4653, 0.4586, 0.4528, 0.4479, 0.444, 0.441, 0.4371, 0.4341, 0.4321, 0.43, 0.4271, 0.426, 0.424 },
		Cza 	= { 0.3207, 0.3207, 0.3207, 0.3207, 0.3381, 0.4250, 0.4670, 0.5060, 0.5180, 0.5033, 0.4919, 0.4815, 0.4729, 0.4653, 0.4586, 0.4528, 0.4479, 0.444, 0.441, 0.4371, 0.4341, 0.4321, 0.43, 0.4271, 0.426, 0.424 },
		Mya		= {-0.712, -0.712, -0.712, -0.712, -0.776, -0.916, -0.907, -0.825, -0.7191,-0.5719,-0.4711,-0.4019,-0.3538,-0.3193,-0.2934,-0.2728,-0.2553,-0.2398,-0.2254,-0.2119,-0.199, -0.1868,-0.1754,-0.1649,-0.1557,-0.149 },
		Mza		= {-0.712, -0.712, -0.712, -0.712, -0.776, -0.916, -0.907, -0.825, -0.7191,-0.5719,-0.4711,-0.4019,-0.3538,-0.3193,-0.2934,-0.2728,-0.2553,-0.2398,-0.2254,-0.2119,-0.199, -0.1868,-0.1754,-0.1649,-0.1557,-0.149 },
		Myw		= { -8.8081,-8.8081,-8.8081,-8.8081,-9.0256,-11.32,-10.0494,-10.0967,-10.111,-10.0959,-10.0547,-9.9906,-9.9065,-9.8052,-9.6892,-9.5609,-9.4224,-9.2756,-9.1223,-8.9639,-8.8019,-8.6373,-8.471,-8.3037,-8.1361,-7.9682 },
		Mzw		= { -8.8081,-8.8081,-8.8081,-8.8081,-9.0256,-11.32,-10.0494,-10.0967,-10.111,-10.0959,-10.0547,-9.9906,-9.9065,-9.8052,-9.6892,-9.5609,-9.4224,-9.2756,-9.1223,-8.9639,-8.8019,-8.6373,-8.471,-8.3037,-8.1361,-7.9682 },
		A1trim	= { 28,		28,		28,		28,		28,		31.2,	32.74,	33.39,	33.7,	33.89,	34.04,	34.18,	34.31,	34.44,	34.57,	34.7,	34.83,	34.96,	35.09,	35.22,	35.35,	35.48,	35.61,	35.74,	35.87,	36 },
		A2trim	= { 28,		28,		28,		28,		28,		31.2,	32.74,	33.39,	33.7,	33.89,	34.04,	34.18,	34.31,	34.44,	34.57,	34.7,	34.83,	34.96,	35.09,	35.22,	35.35,	35.48,	35.61,	35.74,	35.87,	36 },
		
		model_roll = math.rad(45),
		fins_stall = 1,
    },

    proximity_fuze = {
        radius      = 7.0,
        arm_delay   = 1.6,
    },

    seeker = {
        delay                       = 1.5,
        op_time                     = 220,
        FOV                         = math.rad(170),
        max_w_LOS                   = math.rad(70),
        sens_near_dist              = 5,
        sens_far_dist               = 350000,
        ccm_k0                      = 0.009,
        aim_sigma                   = 3,
        height_error_k              = 3,
        height_error_max_vel        = 5,
        height_error_max_h          = 4.5,
        hoj                         = 1,
        rad_correction              = 1,
        active_radar_lock_dist      = 20000.0,
        active_dist_trig_by_default = 1,
    },
	
	WCSE = {
	uplink_delay = 0.5,
	update_period = 0.5, 
	delta_pos_max = 2532, --512
	delta_vel_max = 1266, --256
	ecm_burn_thru_rng = 35000,
	quant_steps  = 240,
	},
	
	INS = {
	op_time = 220,
	},


	sensor = {
        delay                       = 1.5,
        op_time                     = 220,
        FOV                         = math.rad(40),
        max_w_LOS                   = math.rad(120),
        sens_near_dist              = 5,
        sens_far_dist               = 350000,
        ccm_k0                      = 0.0005,--0.0005
        aim_sigma                   = 3,
        height_error_k              = 7,
        height_error_max_vel        = 7,
        height_error_max_h          = 7,
        hoj                         = 1,
        --rad_correction              = 1,
        active_radar_lock_dist      = 16000.0,
        active_dist_trig_by_default = 1,
		vel_srch_max_rng			= 16000.0,
		max_range 					= 70000.0,
		lock_range_5sqm				= 30000.0,
        lock_range_passive          = 75000,
        max_range                   = 75000,
		
	},

    autopilot = {
		delay				= 1.0,
		op_time				= 220,
		Tf					= 0.1,
		Knav				= 4.0,
		Kd					= 180.0,
		Ka					= 16.0,
		T1					= 309.0,
		Tc					= 0.06,
		Kx					= 0.1,
		Krx					= 2.0,
		gload_limit			= 45.0,
		fins_limit			= math.rad(24),--math.rad(18)
		fins_limit_x		= math.rad(8),
		null_roll			= math.rad(45),
		accel_coeffs		= { 0, 11.5,-1.2,-0.25, 24.0,
								0.0248 * 0.75 * 0.0091 },
		
		loft_active			= 1,
		--loft_active			= 0,
		loft_factor			= 4.5,
		loft_sin			= math.sin(35/57.3),
        loft_min_range       = 18000,
        loft_off_range       = 9000,
        dV0                  = 393,
    },
    
    actuator = {
		Tf					= 0.005,
		D					= 250.0,
		T1					= 0.002,
		T2					= 0.006,
		max_omega			= math.rad(400),
		max_delta			= math.rad(20),
		fin_stall			= 1,
		sim_count			= 4,
    },   
    ModelData = {   
		58 ,  -- model params count
		0.4 ,   -- characteristic square (характеристическая площадь)
						
		-- параметры зависимости Сx
		0.029 , -- Cx_k0 планка Сx0 на дозвуке ( M << 1)
		0.06 , -- Cx_k1 высота пика волнового кризиса
		0.01 , -- Cx_k2 крутизна фронта на подходе к волновому кризису
		-0.245, -- Cx_k3 планка Cx0 на сверхзвуке ( M >> 1)
		0.08 , -- Cx_k4 крутизна спада за волновым кризисом 
		0.7 , -- коэффициент отвала поляры (пропорционально sqrt (M^2-1))
						
		-- параметры зависимости Cy
		1.4 , -- Cy_k0 планка Сy0 на дозвуке ( M << 1)
		0.6	 , -- Cy_k1 планка Cy0 на сверхзвуке ( M >> 1)
		1.2  , -- Cy_k2 крутизна спада(фронта) за волновым кризисом  
						
		0.2 , -- 7 Alfa_max  максимальный балансировачный угол, радианы
		5.0, --угловая скорость создаваймая моментом газовых рулей

        --    t_statr   t_b      t_accel  t_march   t_inertial   t_break  t_end
        -1.0,   -1.0,       12,     25.0,      0.0,          0.0,      1.0e9,           -- time interval
         0.0,    0.0,      10.0,     0.5,      0.0,          0.0,        0.0,           -- fuel flow rate in second kg/sec(секундный расход массы топлива кг/сек)
         0.0,    0.0,   16325.0,  2800.0,      0.0,          0.0,        0.0,           -- thrust

        1.0e9, -- таймер самоликвидации, сек  Self-destructive time, sec
        1000.0, -- время работы энергосистемы, сек  Working time of power system, sec
        0, -- абсолютная высота самоликвидации, м  Absolute height of self-destruction, M
        0.1, -- время задержки включения управления (маневр отлета, безопасности), сек  Connection delay time (shunting departure, safety), sec
        18000, -- дальность до цели в момент пуска, при превышении которой ракета выполняется маневр 'горка', м
        18000, -- дальность до цели, при которой маневр 'горка' завершается и ракета переходит на чистую пропорциональную навигацию (должен быть больше или равен предыдущему параметру), м
        0.52,  -- синус угла возвышения траектории набора горки
        30.0, -- продольное ускорения взведения взрывателя  Longitudinal acceleration of fuze arming
        0.0, -- модуль скорости сообщаймый катапультным устройством, вышибным зарядом и тд
        1.19, -- характристика системы САУ-РАКЕТА,  коэф фильтра второго порядка K0
        1.0, -- характристика системы САУ-РАКЕТА,  коэф фильтра второго порядка K1
        2.0, -- характристика системы САУ-РАКЕТА,  полоса пропускания контура управления
						
        -- DLZ data. Use numbers below for your implemetation.
        21.0, -- производная дальности по скорости носителя на высоте 1км, ППС
        -23.0, -- производная дальности по скорости цели на высоте 1км, ЗПС
        -3.0, -- производная по высоте производной дальности по скорости цели, ЗПС
        85000.0, -- дальность ракурс 180 град (навстречу), Н=5000м, V=900км/ч, м
        34000.0, -- дальность ракурс 0(в догон) град, Н=5000м, V=900км/ч, м
        194000.0, -- дальность ракурс 0(в догон) град, Н=10000м, V=900км/ч, м
        60000.0, -- дальность ракурс 180 град (навстречу), Н=1000м, V=900км/ч, м
        60000.0, -- дальность ракурс 180 град (навстречу), Н=1000м, V=900км/ч, м
        20600.0, -- дальность ракурс 0(в догон) град, Н=1000м, V=900км/ч, м 
        4000.0,
        0.4,
        -0.015,
        0.5,
						
    },
}


declare_weapon(PL_15_AA)
PL_15_AA.shape_table_data.index = PL_15_AA.wsTypeOfWeapon[4]


declare_loadout({
    category       = CAT_AIR_TO_AIR,
    CLSID          = 'J10_PL-15_DUAL',
    Picture        = 'pl12.png',
    wsTypeOfWeapon = PL_15_AA.wsTypeOfWeapon,
    attribute      = {4,4,32,WSTYPE_PLACEHOLDER},
    displayName    = _('PL-15' .. ' x 2'),
    Cx_pil         = 0.000859765625 * 1.31,
    Count          = 2,
    Weight         = 2 * pl15_mass + pylon_dual_mass,
    Elements       = {
        { ShapeName = 'JF-17_PF12_twin', IsAdapter = true, },
        { ShapeName = pl15_model,        connector_name = 'dual_PF12L', },
        { ShapeName = pl15_model,        connector_name = 'dual_PF12R', },
    }, -- end of Elements
    JettisonSubmunitionOnly = true,
})

declare_loadout({
    category     = CAT_AIR_TO_AIR,
    CLSID        = 'DIS_PL-15',
    Picture      = 'pl12.png',
    attribute    = PL_15_AA.wsTypeOfWeapon,
    displayName  = _(pl15_name),
    Cx_pil       = 0.001959765625,
    Count        = 1,
    Weight       = pl15_mass + pylon_mass,
    Elements     = {
        [1] =
        {
            DrawArgs =
            {
                [1] = {1, 1},
                [2] = {2, 1},
            }, -- end of DrawArgs
            Position  = {0, 0, 0},
            ShapeName = pl15_model,
        },
    }, -- end of Elements
})
