local AIM_7E =
{
	category		= CAT_AIR_TO_AIR,
	name			= "PL-11A",
	displayName		= _("PL-11A Semi-Active Radar"),
	user_name		= _("PL-11A"),
	scheme			= "aa_missile_semi_active",
	class_name		= "wAmmunitionSelfHoming",
	model			= "aim-7",
	wsTypeOfWeapon 	= {wsType_Weapon,wsType_Missile,wsType_AA_Missile,WSTYPE_PLACEHOLDER},
	
	mass			= 230,
	Escort			= 1,
	Head_Type		= 6,
	sigma			= {5.6, 5, 5.6},
	H_max			= 24400.0,
	H_min			= 1.0,
	Diam			= 203.0,
	Cx_pil			= 2.21,
	D_max			= 20000.0,
	D_min			= 2000.0,
	Head_Form		= 1,
	Life_Time		= 90.0,
	Nr_max			= 30,
	v_min			= 140.0,
	v_mid			= 500.0,
	Mach_max		= 3.2,
	t_b				= 0.6,
	t_acc			= 3.3,
	t_marsh			= 11.0,
	Range_max		= 75000.0,
	H_min_t			= 15.0,
	Fi_start		= 0.4,
	Fi_rak			= 3.14152,
	Fi_excort		= 1.05,
	Fi_search		= 0.1,
	OmViz_max		= 0.35,
	exhaust			= {0.78, 0.78, 0.78, 0.3};
	X_back			= -2.0,
	Y_back			= -0.0,
	Z_back			= 0.0, -- -0.1,
	Reflection		= 0.08,
	KillDistance	= 12.0,
	M				= 230,
	
	ccm_k0 = 0.5,
	rad_correction = 0,
	--height_error_k = 110, -- если проекция скорости цели на линию визирования меньше этого значения, появляется ошибка
	--height_error_max_vel = 150, -- пропорциональный коэффициент
	--height_error_max_h = 450, -- максимальная высота, где появляется ошибка
	
	warhead		= predefined_warhead("AIM_7"),
	warhead_air = predefined_warhead("AIM_7"),
	
	shape_table_data =
	{
		{
			name  = "PL-11A";
			file  = "aim-7";
			life  = 1;
			fire  = { 0, 1};
			username = "PL-11A";
			index 	 = WSTYPE_PLACEHOLDER,
		},
	},
		
	ModelData = {   58 ,  -- model params count
					0.9 ,   -- characteristic square (характеристическая площадь)
			
					-- параметры зависимости Сx
					0.0125 , -- планка Сx0 на дозвуке ( M << 1)
					0.052 , -- высота пика волнового кризиса
					0.010 , -- крутизна фронта на подходе к волновому кризису
					0.002 , -- планка Cx0 на сверхзвуке ( M >> 1)
					0.5  , -- крутизна спада за волновым кризисом 
					1.2  , -- коэффициент отвала поляры
					
					-- параметры зависимости Cy
					2.20, -- планка Cya на дозвуке ( M << 1)
					1.05, -- планка Cya на сверхзвуке ( M >> 1)
					1.20, -- крутизна спада(фронта) за волновым кризисом  

					0.18, -- ~10 degrees Alfa_max  максимальный балансировачный угол, радианы
					0.00, --угловая скорость создаваймая моментом газовых рулей
						
					--	t_statr   t_b      t_accel  t_march   t_inertial   t_break  t_end
					-1.0,    -1.0 ,  	3.7  ,  10.8,      0.0,		   0.0,      1.0e9,           -- time interval
					 0.0,     0.0 ,   	10.4 ,  2.02,     0.0,         0.0,      0.0,           -- fuel flow rate in second kg/sec(секундный расход массы топлива кг/сек)
					 0.0,     0.0 ,   25192.0,  4140.0,   0.0,         0.0,      0.0,           -- thrust
					
					 1.0e9, -- таймер самоликвидации, сек
					 75.0, -- время работы энергосистемы
					 0.0, -- абсалютеая высота самоликвидации, м
					 1.5, -- время задержки включения управленя, сек
					 1.0e9, -- дальность до цели в момент пуска, выше которой выполняется маневр набора высоты 
					 1.0e9, -- дальность до цели на трассе, менее которой начинается завершение маневра набора высоты (длжен быть больше чем предылущий параметр) 
					 0.0,  -- синус угла возвышения траектории набора горки
					 50.0, -- продольное ускорения взведения взрывателя
					 0.0, -- модуль скорости сообщаймый катапультным устройством, вышибным зарядом и тд
					 1.19, -- характристика системы САУ-РАКЕТА,  коэф фильтра второго порядка K0
					 1.0, -- характристика системы САУ-РАКЕТА,  коэф фильтра второго порядка K1
					 2.0, -- характристика системы САУ-РАКЕТА,  полоса пропускания контура управления
					 -- ЗРП. Данные для рассчета дальностей пуска (индикация на прицеле)
					 14.0, -- производная дальности по скорости носителя на высоте 1км, ППС
					-21.0, -- производная дальности по скорости цели на высоте 1км, ЗПС
					-2.2, -- производная по высоте производной дальности по скорости цели, ЗПС
					 19000, -- дальность ракурс 180(навстречу) град, Н=5000м, V=900км/ч, м
					 5000.0, -- дальность ракурс 0(в догон) град, Н=5000м, V=900км/ч, м
					 27000.0, -- дальность ракурс 180(навстречу) град, Н=10000м, V=900км/ч, м
					 9000.0, -- дальность ракурс 0(в догон) град, Н=10000м, V=900км/ч, м
					 14000.0, -- дальность ракурс 180(навстречу) град, Н=1000м,  V=900км/ч, м
					 4000.0, -- дальность ракурс 0(в догон) град, Н=1000м, V=900км/ч, м
					 2500.0, -- смещение назад отнсительно нуля задней точки зоны достижимости
					 0.4, -- процент гарантированной дальности от дальности в ППС на высоте 1км
					-0.014, -- производная процента гарантированной дальности в ППС по высоте
					 0.5, -- Изменение коэффициентов наклона кривой в верхнюю и нижнюю полусферы от высоты носителя.
				},  
				
	controller = {
		boost_start = 0.0,
		march_start = 0.5,
	},
	
	boost = {
		impulse								= 218,
		fuel_mass							= 0,
		work_time							= 0,
		nozzle_position						= {{-1.9, 0, 0}},
		nozzle_orientationXYZ				= {{0.0, 0.0, 0.0}},
		tail_width							= 0.4,
		smoke_color							= {1.0, 1.0, 1.0},
		smoke_transparency					= 0.9,
		custom_smoke_dissipation_factor		= 0.2,	
	},
	
	march = {
		impulse								= 218,
		fuel_mass							= 54,
		work_time							= 3.5,
		nozzle_position						= {{-1.9, 0, 0}},
		nozzle_orientationXYZ				= {{0.0, 0.0, 0.0}},
		tail_width							= 0.4,
		smoke_color							= {1.0, 1.0, 1.0},
		smoke_transparency					= 0.9,
		custom_smoke_dissipation_factor		= 0.2,
	},
	
	fm = {
		mass				= 230,  
		caliber				= 0.2,  
		wind_sigma			= 0.0,
		wind_time			= 0.0,
		tail_first			= 1,
		fins_part_val		= 0,
		rotated_fins_inp	= 0,
		delta_max			= math.rad(20),
		draw_fins_conv		= {math.rad(90),1,1},
		L					= 0.2,
		S					= 0.0324,
		Ix					= 3.5,
		Iy					= 127.4,
		Iz					= 127.4,
		
		Mxd					= 0.3 * 57.3,
		Mxw					= -44.5,

		table_scale	= 0.2,
		table_degree_values = 1,
	--	Mach	  | 0.0		0.2		0.4		0.6		0.8		1.0		1.2		1.4		1.6		1.8		2.0		2.2		2.4		2.6		2.8		3.0		3.2		3.4		3.6		3.8		4.0	 |
		Cx0 	= {	0.34,	0.34,	0.34,	0.34,	0.35,	1.10,	1.27,	1.23,	1.19,	1.12,	1.05,	1.0,	0.95,	0.91,	0.87,	0.84,	0.81,	0.78,	0.76,	0.74,	0.72 },
		CxB 	= {	0.11,	0.11,	0.11,	0.11,	0.11,	0.40,	0.19,	0.17,	0.16,	0.14,	0.13,	0.12,	0.12,	0.11,	0.11,	0.10,	0.09,	0.09,	0.08,	0.08,	0.07 },
		K1		= { 0.0056,	0.0056,	0.0056,	0.0056,	0.0056,	0.0056,	0.0056,	0.0056,	0.0052,	0.0048,	0.0045,	0.0041,	0.0037,	0.0036,	0.0034,	0.0032,	0.0031,	0.0030,	0.0029,	0.0027,	0.0026 },
		K2		= { 0.0055,	0.0055,	0.0055,	0.0055,	0.0055,	0.0055,	0.0055,	0.0055,	0.0051,	0.0047,	0.0043,	0.0037,	0.0031,	0.0032,	0.0033,	0.0035,	0.0036,	0.0037,	0.0038,	0.0039,	0.0040 },
		Cya		= { 1.14,	1.14,	1.14,	1.14,	1.14,	1.42,	1.46,	1.39,	1.32,	1.15,	1.06,	1.00,	0.94,	0.89,	0.83,	0.78,	0.73,	0.69,	0.65,	0.61,	0.57 },
		Cza		= { 1.14,	1.14,	1.14,	1.14,	1.14,	1.42,	1.46,	1.39,	1.32,	1.15,	1.06,	1.00,	0.94,	0.89,	0.83,	0.78,	0.73,	0.69,	0.65,	0.61,	0.57 },
		Mya		= { -0.5,	-0.5},
		Mza		= { -0.5,	-0.5},
		Myw		= { -2.0,	-2.0},
		Mzw		= { -2.0,	-2.0},
		A1trim	= { 10.0,	10.0},
		A2trim	= { 10.0,	10.0},
		
		model_roll = math.rad(45),
		fins_stall = 1,
	},
	
	proximity_fuze = {
		radius		= 12,
		arm_delay	= 1.6,
	},
	
	seeker = {
		delay					= 1.5,
		op_time					= 75,
		FOV						= math.rad(120),
		max_w_LOS				= math.rad(20),
		sens_near_dist			= 100,
		sens_far_dist			= 60000,
		ccm_k0					= 0.5,
		aim_sigma				= 5.5,
		height_error_k			= 100;
		height_error_max_vel	= 138;
		height_error_max_h		= 300;
		hoj						= 1,
	},

	autopilot = {
		x_channel_delay		= 0.9,
		delay				= 1.5,
		op_time				= 75,
		Kconv				= 4.0,
		Knv					= 0.02,
		Kd					= 0.4,
		Ki					= 0.1,--0.15
		Kout				= 1.0,
		Kx					= 0.1,
		Krx					= 2.0,
		fins_limit			= math.rad(20),
		fins_limit_x		= math.rad(5),
		Areq_limit			= 25.0,
		bang_bang			= 0,
		max_side_N			= 10,
		max_signal_Fi		= math.rad(12),
		rotate_fins_output	= 0,
		alg					= 0,
		PN_dist_data 		= {	15000,	1,
								9000,	1},
		null_roll			= math.rad(45),
	},
}

declare_weapon(AIM_7E)

declare_loadout({
	category 		= CAT_AIR_TO_AIR,
	CLSID	 		= "DIS_PL-11",
	attribute		= AIM_7E.wsTypeOfWeapon,
	Count 			= 1,
	Cx_pil			= 0.000894765625,
	Picture			= "us_AIM-7.png",
    PictureBlendColor = "0xffffffff",
	displayName		= AIM_7E.displayName,
	Weight			= AIM_7E.mass,
	Elements  		= {{ShapeName = "aim-7"}},
})

declare_loadout(
    {
        category = CAT_PODS,
        CLSID = "{Jeff}",
        attribute = {wsType_Weapon, wsType_GContainer, 47, WSTYPE_PLACEHOLDER},
        Picture = "L005.png",
        displayName = _("Remove Drag"),
        Weight = 0,
        Cx_pil = -0.00348,
        shape_table_data =
        {
            {
                file = "",
                life = 1,
                fire = { 0, 1},
                username = "Blank",
                index = WSTYPE_PLACEHOLDER,
            },
        },
        Elements =
        {
            {
                Position = {0, 0, 0},
                ShapeName = "",
            },
        },
    }
)



-- WIP
local function add_aircraft_prop()
    acprop = {
        { id = "LaserCode100", control = 'spinbox',  label = _('Laser code for ordnance, 1x11'), defValue = 6, min = 5, max = 7, dimension = ' ', playerOnly = true},
        { id = "LaserCode10",  control = 'spinbox',  label = _('Laser code for ordnance, 11x1'), defValue = 8, min = 1, max = 8, dimension = ' ', playerOnly = true},
        { id = "LaserCode1",   control = 'spinbox',  label = _('Laser code for ordnance, 111x'), defValue = 8, min = 1, max = 8, dimension = ' ', playerOnly = true},
        { id = "AARProbe",     control = 'checkbox', label = _('Remove AAR Probe'),              defValue = false, weight = 20, arg = 901, playerOnly = true},
    }

    return acprop
end


local mech_anime = make_default_mech_animation()
mech_anime["ServiceHatches"] = {
    {Transition = {"Close", "Open"}, Sequence = {{C = {{"PosType", 3}, {"Sleep", "for", 30.0}}}, {C = {{"Arg", 24, "set", 1.0}}}}},
    {Transition = {"Open", "Close"}, Sequence = {{C = {{"PosType", 6}, {"Sleep", "for", 5.0}}},  {C = {{"Arg", 24, "set", 0.0}}}}},
}
mech_anime["CrewLadder"] = {
    {Transition = {"Dismantle", "Erect"}, Sequence = {
        {C = {{"PosType", 6}, {"Sleep", "for", 10.0}}},
        {C = {{"Arg", 91, "set", 1.0}}},
        {C = {{"PosType", 6}, {"Sleep", "for", 10.0}}},
    }},
    {Transition = {"Erect", "Dismantle"}, Sequence = {
        {C = {{"PosType", 6}, {"Sleep", "for", 10.0}}},
        {C = {{"Arg", 91, "set", 0.0}}},
        {C = {{"PosType", 6}, {"Sleep", "for", 10.0}}},
    }},
}

-----------------------------------------
-----------------------------------------
mount_vfs_model_path (current_mod_path .. '/Shapes/J-10A')
mount_vfs_texture_path (current_mod_path .. '/Textures/J-10A')
mount_vfs_texture_path (current_mod_path .. '/Liveries/J-10A')
--mount_vfs_sound_path   (current_mod_path..'/Sounds')	

local wheel_touch_comp = 0.02

-- WOLALIGHT_STROBES          = 1
-- WOLALIGHT_SPOTS            = 2
-- WOLALIGHT_LANDING_LIGHTS   = 2
-- WOLALIGHT_NAVLIGHTS        = 3
-- WOLALIGHT_FORMATION_LIGHTS = 4
-- WOLALIGHT_TIPS_LIGHTS      = 5
-- WOLALIGHT_TAXI_LIGHTS      = 6
-- WOLALIGHT_BEACONS          = 7
-- WOLALIGHT_CABIN_BOARDING   = 8
-- WOLALIGHT_CABIN_NIGHT      = 9
-- WOLALIGHT_REFUEL_LIGHTS    = 10
-- WOLALIGHT_PROJECTORS       = 11
-- WOLALIGHT_AUX_LIGHTS       = 12
-- WOLALIGHT_IR_FORMATION     = 13

local WOLALIGHT_CUSTOM_NAV    = WOLALIGHT_IR_FORMATION + 1
local WOLALIGHT_CUSTOM_ANTI   = WOLALIGHT_CUSTOM_NAV + 1

J_10A = {
    Name             = 'JF-17',
    DisplayName      = _('J-10A'),
    Picture          = 'J-10A.png',
    Rate             = 50, -- RewardPoint in Multiplayer
    Shape            = 'J-10A',
    shape_table_data = {
        {
            file        = 'J-10A',
            life        = 18, -- lifebar
            vis         = 3, -- visibility gain.
            desrt       = 'JF-17-oblomok', -- Name of destroyed object file name
            fire        = {300, 2}, -- Fire on the ground after destoyed: 300sec 2m
            username    = 'J-10A',
            index       = WSTYPE_PLACEHOLDER,
            classname   = "lLandPlane",
            positioning = "BYNORMAL",
        },
        {
            name = "JF-17-oblomok",
            file = "JF-17-oblomok",
            fire = {240, 2},
        },
    },

    -------------------------
    mapclasskey = "P0091000024",
    WorldID     = WSTYPE_PLACEHOLDER,
    attribute   = {wsType_Air, wsType_Airplane, wsType_Fighter, WSTYPE_PLACEHOLDER, "Multirole fighters", "Refuelable", "Datalink", "Link16"},
    Categories  = {"{78EFB7A2-FD52-4b57-A6A6-3BF0E1D6555F}", "Interceptor",},
    -- Countries   = {'China', 'Pakistan'},
    country_of_origin = 'CHN',
    date_of_introduction = 1998.3, --
    -------------------------
    -- add model draw args for network transmitting to this draw_args table (32 limit)
    net_animation =
    {
        -- light [8]
        83, 190, 191, 192, 200, 201, 208, 209,

        -- canopy/chock
        38, 23,
        -- LEF [4]
        130, 131, 132, 133,
        -- speedbrake [4]
        182, 184, 186, 188,
        -- drag chute
        35, 36, 37, 334, 335,
        611, 612, 613,

        419, 900, 901,

        -- test [10]
        950,
        951,
        952,
        953,
        954,
        955,
        956,
        957,
        958,
        959,
        961,
        962,
    },

    ColdStartDefaultControls = {
        [9]     =  0.0,     -- Right Flaps
        [10]    =  0.0,     -- Left  Flaps
        [11]    =  0.0,     -- Right Aileron
        [12]    =  0.0,     -- Left  Aileron
        [15]    =  0.0,     -- Right Elevators
        [16]    =  0.0,     -- Left  Elevators
        [18]    =  0.0,     -- Rudder
        [23]    =  1.0,     -- Wheele Choke
        --[38]    =  0.9,     -- Canopy
        [90]    =  1.0,     -- Engine Nozzle
        [130]   =  0.0,     -- Right inner  LEF
        [131]   =  0.0,     -- Right outter LEF
        [132]   =  0.0,     -- Left inner   LEF
        [133]   =  0.0,     -- Left outter  LEF
        --[602]   =  -1.0,    -- Right AoA sensor
        --[604]   =  -1.0,    -- Left AoA sensor
    },

    -- mechanimations = {
        -- Door0 = { -- Canopy
            -- {Transition = {"Close", "Open"},  Sequence = {{C = {{"VelType", 3}, {"Arg", 38, "to", 0.9, "in", 9.0},},},}, --[[Flags = {"Reversible"},]]},
            -- {Transition = {"Open", "Close"},  Sequence = {{C = {{"VelType", 3}, {"Arg", 38, "to", 0.0, "in", 6.0},},},}, --[[Flags = {"Reversible", "StepsBackwards"},]]},
            -- {Transition = {"Open", "Taxi"},   Sequence = {{C = {{"VelType", 3}, {"Arg", 38, "to", 0.0, "in", 6.0},},},}, --[[Flags = {"Reversible", "StepsBackwards"},]]},
            -- --{Transition = {"Close", "Taxi"},  Sequence = {{C = {{"Arg", 38, "set", 0.0},},},},},
            -- {Transition = {"Any", "Bailout"}, Sequence = {{C = {{"Arg", 38, "set", 1.0},},},},},
        -- },
        -- --ServiceHatches = {
        -- --    {Transition = {"Close", "Open"}, Sequence = {{C = {{"PosType", 3}, {"Sleep", "for", 10.0}}}, {C = {{"Arg", 23, "set", 1.0},},},},},
        -- --    {Transition = {"Open", "Close"}, Sequence = {{C = {{"PosType", 6}, {"Sleep", "for", 10.0}}}, {C = {{"Arg", 23, "set", 0.0},},},},},
        -- --    {Transition = {"Open", "Taxi"},  Sequence = {{C = {{"PosType", 6}, {"Sleep", "for",  5.0}}}, {C = {{"Arg", 23, "set", 0.0},},},},},
        -- --},
    -- },
    mechanimations = mech_anime,

    -------------------------
    M_empty                    = 5390.0,    -- JF-17 with pilot and nose load, kg --6586 --4840
    M_nominal                  = 5390+4500,    -- JF-17 kg (Empty Plus Full Internal Fuel) --8339.0
    M_max                      = 5390+4500+6600,   -- JF-17 kg (Maximum Take Off Weight)
    M_fuel_max                 = 4500.0,    -- JF-17 kg (Internal Fuel Only)
    H_max                      = 18000,     -- JF-17 m  (Maximum Operational Ceiling)
    average_fuel_consumption   = 0.065,     --
    CAS_min                    = 58,        --
    V_opt                      = 220,       --
    V_take_off                 = 65.0,    -- Take off speed in m/s (for AI)
    V_land                     = 60,      -- Land speed in m/s (for AI)
    V_max_sea_level            = 412,     -- Max speed at sea level in m/s (for AI)
    V_max_h                    = 700,     -- Max speed at max altitude in m/s (for AI)
    Vy_max                     = 304,     -- Max climb speed in m/s (for AI)
    Mach_max                   = 2.2,     -- Max speed in Mach (for AI)
    Ny_min                     = -3,        -- Min G (for AI)
    Ny_max                     = 9.0,     -- Max G (for AI)
    Ny_max_e                   = 9.0,     -- Max G (for AI)
    AOA_take_off               = 0.16,    -- AoA in take off (for AI)
    bank_angle_max             = 90,      -- Max bank angle (for AI)
    has_afteburner             = true,    -- AFB yes/no
    has_speedbrake             = true,    -- Speedbrake yes/no

    -----------------------------------------------------------------------
    ----------------- SUSPENSION CODE BEGINS
    -----------------------------------------------------------------------
    tand_gear_max                            = 0.57, --2.1445, -- tangent on maximum yaw angle of front wheel, 65 degrees tan(64deg)
    
	--nose_gear_pos                            = {3.752,	-1.9+wheel_touch_comp, 0.0},    -- nosegear coord==前轮
    nose_gear_pos                            = {4.074,   -1.95, -0.000},    -- nosegear coord==前轮
    nose_gear_wheel_diameter                 = 0.754,            -- in m
    nose_gear_amortizer_direct_stroke        = 0,              -- down from nose_gear_pos !!!
    nose_gear_amortizer_reversal_stroke      = -0.150293,                -- up
    nose_gear_amortizer_normal_weight_stroke = -0.14,                -- down from nose_gear_pos

    --main_gear_pos                            = {-0.53039, -1.345957-0.33+wheel_touch_comp, 1.14},    -- main gear coords==后轮
    --main_gear_pos                            = {-0.423,	-2.115+wheel_touch_comp, -1.387},    -- main gear coords==后轮
    main_gear_pos                            = {-0.423,  -1.96, -1.387},    -- main gear coords==后轮
    main_gear_wheel_diameter                 = 0.972,            -- in m
    main_gear_amortizer_direct_stroke        = 0,        -- down from main_gear_pos !!!
    main_gear_amortizer_reversal_stroke      = -0.164258,     -- up
    main_gear_amortizer_normal_weight_stroke = -0.150,                -- down from main_gear_pos
    -----------------------------------------------------------------------
    ----------------- SUSPENSION CODE ENDS
    -----------------------------------------------------------------------

    --brakeshute_name           = 4,        -- Landing - brake chute visual shape after separation
    brakeshute_name           = "JF-17_dragchute",

    tanker_type               = 4,        -- Tanker type if the plane is airrefuel capable (same type as F-14, aka drogue basket)
    is_tanker                 = false,    -- Tanker yes/no
    --air_refuel_receptacle_pos = {5.561657, 0.769126, 1.084903}, -- refuel coords
    air_refuel_receptacle_pos = {7.19,	1.145,	0.957}, -- refuel coords

    --wing_tip_pos              = {-2.9, -0.08, 4.48}, -- wingtip coords for visual effects
    wing_tip_pos              = {-4.132,	-0.307,	 4.859}, -- wingtip coords for visual effects
    wing_area                 = 37,        -- JF-17 wing area in m2
    wing_span                 = 9.8,        -- JF-17 wing spain in m,
    wing_type                 = 0,        -- Fixed wing
    flaps_maneuver            = 1.0,        -- Max flaps in take-off and maneuver (0.5 = 1st stage, 1.0 = 2nd stage) (for AI)

    thrust_sum_max            = 4449,
    thrust_sum_ab             = 7339,

    length                    = 16.9,    -- JF-17 full lenght in m
    height                    = 5.70,        -- JF-17 height in m
    range                     = 2480,        -- Max range in km (for AI)
    RCS                       = 4.0,        -- Radar Cross Section m2
    IR_emission_coeff         = 0.78,        -- Normal engine -- IR_emission_coeff = 1 is Su-27 without afterburner. It is reference.
    IR_emission_coeff_ab      = 2.5,        -- With afterburner
    --sound_name = "aircraft\JF-17\Sounds",

    engines_count   = 1, -- Engines count
    engines_nozzles = {
        [1] = {
            --pos                 = {-7.900, -0.375, 0.000}, -- nozzle coords
            pos                 = {-6.929,	0.302,	0}, -- nozzle coords
            elevation           = 0, -- AFB cone elevation
            diameter            = 1.137, -- AFB cone diameter
            exhaust_length_ab   = 8.6, -- lenght in m
            exhaust_length_ab_K = 0.629, -- AB animation
            smokiness_level     = 0.1,
            --afterburner_effect_texture = "afterburner_f-18c",
        }, -- end of [1]
    }, -- end of engines_nozzles
    apu_rpm_delay_ = 4, -- launch delay (for sound)

    crew_size    = 1,
    crew_members = {
        [1] = {
            ejection_through_canopy = true,
            ejection_play_arg   = 990,
            --ejection_seat_name  = "pilot_f15_00_seat", -- temp
            --pilot_name          = "pilot_f15_00", -- temp
          --  ejection_seat_name  = "JF-17_seat",
           -- pilot_name          = "JF-17_pilot",
			ejection_seat_name		= "M-2000C_pilotseat",
			pilot_name		   		= "M-2000C_pilot",
            drop_parachute_name = "JF-17_parachute",
            drop_canopy_name    = "JF-17_fonar",
            pos                 = {3.035,	0.169,	0.005},
            canopy_pos          = {2.677,	2.677,	0},
            g_suit              = 5,
        }, -- end of [1]
    }, -- end of crew_members

    Navpoint_Panel = true,
    Fixpoint_Panel = true,

    --dataCartridge = true,

    HumanRadio = {
        editable     = true,
        frequency    = 243.0,
        minFrequency = 30.000,
        maxFrequency = 399.975,
        rangeFrequency = {
            {min =  30.0, max =  87.995, modulation = MODULATION_FM},
            {min = 118.0, max = 135.995, modulation = MODULATION_AM},
            {min = 136.0, max = 155.995, modulation = MODULATION_AM_AND_FM},
            {min = 156.0, max = 173.995, modulation = MODULATION_FM},
            {min = 225.0, max = 399.975, modulation = MODULATION_AM_AND_FM}
        },
        modulation = MODULATION_AM,
    },

    TACAN_AA = true,

    panelRadio = {
        [1] = {
            name = _("COM 1/2 Preset"),
            range = {
                -- {min =  30.0, max =  87.995, modulation = MODULATION_FM},
                -- {min = 118.0, max = 135.995, modulation = MODULATION_AM},
                -- {min = 136.0, max = 155.995, modulation = MODULATION_AM_AND_FM},
                -- {min = 156.0, max = 173.995, modulation = MODULATION_FM},
                -- {min = 225.0, max = 399.975, modulation = MODULATION_AM_AND_FM},
                {min =  30.0, max = 399.995, modulation = MODULATION_AM_AND_FM},
            },
            channels = {
                [1]  = { name = _("Channel 1"),     default = 108.0, modulation = _("AM") },
                [2]  = { name = _("Channel 2"),     default = 108.5, modulation = _("AM") },
                [3]  = { name = _("Channel 3"),     default = 109.0, modulation = _("AM") },
                [4]  = { name = _("Channel 4"),     default = 109.5, modulation = _("AM") },
                [5]  = { name = _("Channel 5"),     default = 110.0, modulation = _("AM") },
                [6]  = { name = _("Channel 6"),     default = 110.5, modulation = _("AM") },
                [7]  = { name = _("Channel 7"),     default = 111.0, modulation = _("AM") },
                [8]  = { name = _("Channel 8"),     default = 111.5, modulation = _("AM") },
                [9]  = { name = _("Channel 9"),     default = 112.0, modulation = _("AM") },
                [10] = { name = _("Channel 10"),    default = 112.5, modulation = _("AM") },
                [11] = { name = _("Channel 11"),    default = 113.0, modulation = _("AM") },
                [12] = { name = _("Channel 12"),    default = 113.5, modulation = _("AM") },
                [13] = { name = _("Channel 13"),    default = 114.0, modulation = _("AM") },
                [14] = { name = _("Channel 14"),    default = 114.5, modulation = _("AM") },
                [15] = { name = _("Channel 15"),    default = 115.0, modulation = _("AM") },
                [16] = { name = _("Channel 16"),    default = 115.5, modulation = _("AM") },
                [17] = { name = _("Channel 17"),    default = 116.0, modulation = _("AM") },
                [18] = { name = _("Channel 18"),    default = 116.5, modulation = _("AM") },
                [19] = { name = _("Channel 19"),    default = 117.0, modulation = _("AM") },
                [20] = { name = _("Channel 20"),    default = 117.5, modulation = _("AM") },
            }
        },
    },

    -- Aircraft Additional Properties
    AddPropAircraft = add_aircraft_prop(),

    -- Countermeasures
    --[[Countermeasures = {
        ECM = "AN/ALQ-135",
    },]]

    passivCounterm = {
        CMDS_Edit         = true,
		SingleChargeTotal = 120,
		chaff = {default = 60, increment = 30, chargeSz = 1},
		flare = {default = 60, increment = 30, chargeSz = 1},
    },

    chaff_flare_dispenser = {
        [1] = { dir = {0, -1.0, 0.1}, pos = {-3.703, -0.302, 0.639}, }, -- Flares L
        [2] = { dir = {0, -1.0, -0.1}, pos = {-3.703, -0.302, -0.639}, }, -- Flares R
        [3] = { dir = {0, 1.0, 0}, pos = {-3.13, -0.1, 1.108}, }, -- Chaffs L
        [4] = { dir = {0, 1.0, 0}, pos = {-3.13, -0.1, -1.108}, }, -- Chaffs R
    },

    --sensors
    Sensors = {
        RADAR = "KLJ-7",
        RWR   = "Abstract RWR",
    },
    detection_range_max   = 180.0, --300000.00
    radar_can_see_ground  = true,
    EPLRS                 = true,

    CanopyGeometry = {
        azimuth   = {-170.0, 170.0}, --
        elevation = {-50.0, 90.0} --
    },

    Guns = {
        gun_mount("GSh_23_2",
        {
            count = 250
        },
        {
			muzzle_pos = { 2.901,	-0.583,	-0.371},
            --muzzle_pos_connector   = "GUN_POINT",
            supply_position        = {2.6, -0.4, 0.0},
            drop_cartridge         = 204,
            ejector_pos_connector  = "GUN_EJECTOR_01",
            ejector_dir            = {2,-2,0},
            -- elevation_initial = -1.50,
        }),
        --[[
        gun_mount("GSh_23_2", {count = 90}, {muzzle_pos_connector = "GUN_POINT_L",}),
        gun_mount("GSh_23_2", {count = 90}, {muzzle_pos_connector = "GUN_POINT_R",}),
        ]]
    },

    Pylons = {
        -- LEFT WING
        pylon(1, 0, -1.865, -0.776, -3.737,
            {
                use_full_connector_position = true, connector = "str_pnt_001", arg = 308, arg_value = 0
            },
            {
			-- IR AAM
                { CLSID = "DIS_PL-5EII", arg_value = 0.1, Cx_gain = 0.5}, -- wing tip gain
					---{ CLSID = "DIS_PL-8A", arg_value = 0.1, Cx_gain = 0.5,}, -- wing tip gain
					--{ CLSID = "DIS_PL-10", arg_value = 0.1, Cx_gain = 0.5,}, -- wing tip gain

                -- Smoke Generator pods
                { CLSID = 'DIS_SMOKE_GENERATOR_R'},
                { CLSID = 'DIS_SMOKE_GENERATOR_G'},
                { CLSID = 'DIS_SMOKE_GENERATOR_B'},
                { CLSID = 'DIS_SMOKE_GENERATOR_W'},
                { CLSID = 'DIS_SMOKE_GENERATOR_Y'},
                { CLSID = 'DIS_SMOKE_GENERATOR_O'},
            }
        ),
        pylon(2, 0, -1.865, -0.74, -2.585,
            {
                use_full_connector_position = true, connector = "str_pnt_002", arg = 309, arg_value = 0
            },
            {
			-- IR AAM 
                { CLSID = "DIS_PL-5EII", arg_value = 0.1 },
					--{ CLSID = "DIS_PL-8A", arg_value = 0.1, },
					--{ CLSID = "DIS_PL-10", arg_value = 0.1, },
						  
		-- BVRAAM
                { CLSID = "DIS_SD-10", arg_value = 0.1 },
                { CLSID = "DIS_SD-10_DUAL_L", arg_value = -1,  attach_point_position = {0, 0.525, -0.2}}, --attach_point_position = {0, 0.525, -0.2}
               -- { CLSID = "DIS_SD-10_DUAL_R", arg_value = -1,  attach_point_position = {0, 0.525, -0.2}}, --attach_point_position = {0, 0.525, -0.2}
			   --[[
					{ CLSID = "DIS_PL-11", arg_value = 0.1,
						 },
					{ CLSID = "J10_PL-15_DUAL", arg_value = -1,  attach_point_position = {0, 0.525, -0.2},
						},
					{ CLSID = "DIS_PL-15", arg_value = 0.1, 
						},]]
					
			-- AGM
                { CLSID = "DIS_LD-10", arg_value = 0.2 },
				
                { CLSID = "DIS_C-802AK", arg_value = 1.0, Type = 1 },
                { CLSID = 'DIS_CM-802AKG', arg_value = 1.0, Type = 1 },
                { CLSID = 'DIS_KD-88_AI', arg_value = 1.0, Type = 1 },

			-- Guide Bombs
                { CLSID = "DIS_LS_6_500", arg_value = 0.5, Type = 1 },
                { CLSID = "DIS_GB6", arg_value = 1.0, Type = 1 },  
                { CLSID = "DIS_GB6_TSP", arg_value = 1.0, Type = 1 }, 
                { CLSID = "DIS_GB6_HE", arg_value = 1.0, Type = 1 }, 
				
                { CLSID = "DIS_GBU_10", arg_value = 1.0 }, -- GBU-10
                { CLSID = "DIS_GBU_16", arg_value = 1.0 }, -- GBU-16

			-- Unguided Bombs
               -- { CLSID = "{7A44FF09-527C-4B7E-B42B-3F111CFE50FB}", arg_value = 0.6 }, -- Mk-83
                { CLSID = "J10_BOMB_250_3", arg_value = 1.0 }, -- 250-3

                { CLSID = "DIS_MK_20", arg_value = 0.5 }, -- Mk-20 Rockeye --DIS_MK_20
				

                { CLSID = "DIS_TYPE200", arg_value = 0.5 },
                { CLSID = "DIS_TYPE200_DUAL_L", arg_value = 0.5 },

                -- dual bomb
                { CLSID = "DIS_MER2_250_3_L",  arg_value = 0.3 }, -- 250-3 x2 
                --{ CLSID = "DIS_MK_20_DUAL_GDJ_II19_L",  arg_value = 0.3 }, -- Mk-20 Rockeye x2 gjd-ii19

                -- rockets
                { CLSID = "DIS_BRM1_90", arg_value = 0.5 },
                { CLSID = "DIS_RKT_90_UG", arg_value = 0.5 },

                -- pod
                { CLSID = "DIS_WMD7",      arg_value = 0.7, forbidden = {{station = 4, loadout = {"DIS_WMD7"}},     {station = 6, loadout = {"DIS_WMD7"}}} },
                { CLSID = "DIS_AKG_DLPOD", arg_value = 0.7, forbidden = {{station = 4, loadout = {"DIS_AKG_DLPOD"}},{station = 6, loadout = {"DIS_AKG_DLPOD"}}} },

                -- Smoke Generator pods
                { CLSID = 'DIS_SMOKE_GENERATOR_R', arg_value = 0.1},
                { CLSID = 'DIS_SMOKE_GENERATOR_G', arg_value = 0.1},
                { CLSID = 'DIS_SMOKE_GENERATOR_B', arg_value = 0.1},
                { CLSID = 'DIS_SMOKE_GENERATOR_W', arg_value = 0.1},
                { CLSID = 'DIS_SMOKE_GENERATOR_Y', arg_value = 0.1},
                { CLSID = 'DIS_SMOKE_GENERATOR_O', arg_value = 0.1},
            }
        ),
        pylon(3, 0, -0.883, -0.74, -1.834,
            {
                use_full_connector_position = true, connector = "str_pnt_003", arg = 310, arg_value = 0
            },
            {
				-- Guided Bombs
                { CLSID = "DIS_LS_6_500", arg_value = 1.0, Type = 1 },
                { CLSID = "DIS_GB6", arg_value = 1.0, Type = 1 }, --, attach_point_position = {0, 0.325, 0}
                { CLSID = "DIS_GB6_TSP", arg_value = 1.0, Type = 1 }, --, attach_point_position = {0, 0.325, 0}
                { CLSID = "DIS_GB6_HE", arg_value = 1.0, Type = 1 }, --, attach_point_position = {0, 0.325, 0}

				-- Tanks
               -- { CLSID = "DIS_TANK800 ", arg_value = 1.0, --[[required = {{station = 5,loadout = {"DIS_TANK800"}}}]] }, 
                { CLSID = "DIS_TANK1100", arg_value = 1.0, }, 
               -- { CLSID = "DIS_TANK800_EMPTY", arg_value = 1.0,}, --, attach_point_position = {0, 0.325, 0}
                { CLSID = "DIS_TANK1100_EMPTY", arg_value = 1.0}, --, attach_point_position = {0, 0.325, 0}
				-- Plus center tank
                { CLSID = "DIS_TANK1500", arg_value = 1.0, required = {{station = 5,loadout = {"DIS_TANK1500"}}, {station = 9,loadout = {"DIS_CENTERTANK800"}}}}, 

				-- Unguided Bombs
                --{ CLSID = "{7A44FF09-527C-4B7E-B42B-3F111CFE50FB}", arg_value = 1.0 }, -- Mk-83
                --{ CLSID = "{AB8B8299-F1CC-4359-89B5-2172E0CF4A5A}", arg_value = 1.0 }, -- Mk-84
                { CLSID = "J10_BOMB_250_3", arg_value = 1.0 }, -- 250-3
                { CLSID = "DIS_MER2_250_3_L",  arg_value = 1.0 }, -- 250-3 x2 

                { CLSID = "DIS_MK_20", arg_value = 1.0 }, -- Mk-20 Rockeye --DIS_MK_20

                { CLSID = "DIS_GBU_10", arg_value = 1.0 }, -- GBU-10
                { CLSID = "DIS_GBU_16", arg_value = 1.0 }, -- GBU-16

                { CLSID = "DIS_TYPE200", arg_value = 1.0 },

                -- rockets
                 { CLSID = "DIS_BRM1_90", arg_value = 1.0 },
                 { CLSID = "DIS_RKT_90_UG", arg_value = 1.0 },

            }
        ),
        pylon(4, 0,   2.700000, -0.650000, 0.620000,
            {
                --use_full_connector_position = true, connector = "str_pnt_004", arg = 311, arg_value = 0
            },
            {
				-- Tanks
              --  { CLSID = "DIS_TANK800", arg_value =1.0, },
              --  { CLSID = "DIS_TANK800_EMPTY", arg_value = 1.0, },

               -- { CLSID = "{7A44FF09-527C-4B7E-B42B-3F111CFE50FB}", arg_value = 1.0 }, -- Mk-83
             --   { CLSID = "{AB8B8299-F1CC-4359-89B5-2172E0CF4A5A}", arg_value = 1.0 }, -- Mk-84

				-- Guided Bombs
             --   { CLSID = "DIS_GBU_10", arg_value =1.0 }, -- GBU-10
             --   { CLSID = "DIS_GBU_16", arg_value = 1.0 }, -- GBU-16 
			 
			 -- bomb
			 { CLSID = "DIS_MER4_250_3", arg_value = 1.0, attach_point_position = {0.0,  0.0,  -0.620} },
			 { CLSID = "DIS_MK_20_DUAL_GDJ_II19_L", arg_value = 1.0, attach_point_position = {0.0,  0.0,  -0.620} },

                { CLSID = "DIS_WMD7",      arg_value = 1.0, forbidden = {{station = 2, loadout = {"DIS_WMD7"}},     {station = 6, loadout = {"DIS_WMD7"}}} },
                { CLSID = "DIS_AKG_DLPOD", arg_value = 1.0, forbidden = {{station = 2, loadout = {"DIS_AKG_DLPOD"}},{station = 6, loadout = {"DIS_AKG_DLPOD"}}} },
                { CLSID = "DIS_SPJ_POD",   arg_value = 1.0, forbidden = {{station = 2, loadout = {"DIS_SPJ_POD"}},  {station = 6, loadout = {"DIS_SPJ_POD"}}} },

--[[
                -- Smoke Generator pods
                { CLSID = 'DIS_SMOKE_GENERATOR_R', arg_value = 1.0},
                { CLSID = 'DIS_SMOKE_GENERATOR_G', arg_value = 1.0},
                { CLSID = 'DIS_SMOKE_GENERATOR_B', arg_value = 1.0},
                { CLSID = 'DIS_SMOKE_GENERATOR_W', arg_value = 1.0},
                { CLSID = 'DIS_SMOKE_GENERATOR_Y', arg_value = 1.0},
                { CLSID = 'DIS_SMOKE_GENERATOR_O', arg_value = 1.0},]]
            }
        ),
        pylon(5, 0, -0.883, -0.7, 1.834,
            {
                use_full_connector_position = true, connector = "str_pnt_005", arg = 312, arg_value = 0
            },
            {
				-- Guided Bombs
                { CLSID = "DIS_LS_6_500", arg_value = 1.0, Type = 1 },
                { CLSID = "DIS_GB6", arg_value = 1.0, Type = 1 },  --, attach_point_position = {0, 0.325, 0}
                { CLSID = "DIS_GB6_TSP", arg_value = 1.0, Type = 1 }, --, attach_point_position = {0, 0.325, 0}
                { CLSID = "DIS_GB6_HE", arg_value = 1.0, Type = 1 }, --, attach_point_position = {0, 0.325, 0}
				
                { CLSID = "DIS_GBU_10", arg_value = 1.0 }, -- GBU-10
                { CLSID = "DIS_GBU_16", arg_value = 1.0 }, -- GBU-16

				-- Tanks
                { CLSID = "DIS_TANK800", arg_value = 1.0, --[[required = {{station = 3,loadout = {"DIS_TANK800"}}}]]},  --, attach_point_position = {0, 0.325, 0}
                { CLSID = "DIS_TANK1100", arg_value = 1.0, --[[required = {{station = 3,loadout = {"DIS_TANK1100"}}}]]},  --, attach_point_position = {0, 0.325, 0}
                { CLSID = "DIS_TANK800_EMPTY", arg_value = 1.0}, --, attach_point_position = {0, 0.325, 0}
                { CLSID = "DIS_TANK1100_EMPTY", arg_value = 1.0}, --, attach_point_position = {0, 0.325, 0}
				-- Plus center tank
                { CLSID = "DIS_TANK1500", arg_value = 1.0, required = {{station = 3,loadout = {"DIS_TANK1500"}}, {station = 9,loadout = {"DIS_CENTERTANK800"}}}}, 

			-- Unguided Bombs
                --{ CLSID = "{7A44FF09-527C-4B7E-B42B-3F111CFE50FB}", arg_value = 1.0 }, -- Mk-83
                --{ CLSID = "{AB8B8299-F1CC-4359-89B5-2172E0CF4A5A}", arg_value = 1.0 }, -- Mk-84
                { CLSID = "J10_BOMB_250_3", arg_value = 1.0 }, -- 250-3
                { CLSID = "DIS_MER2_250_3_L",  arg_value = 1.0 }, -- 250-3 x2 

                { CLSID = "DIS_MK_20", arg_value = 1.0 }, -- Mk-20 Rockeye --DIS_MK_20


                { CLSID = "DIS_TYPE200", arg_value = 1.0 },

                -- rockets
                 { CLSID = "DIS_BRM1_90", arg_value = 1.0 },
                 { CLSID = "DIS_RKT_90_UG", arg_value = 1.0 },
            }
        ),
        pylon(6, 0, -1.865, -0.74, 2.585,
            {
                use_full_connector_position = true, connector = "str_pnt_006", arg = 313, arg_value = 0
            },
            {
			-- IR AAM
                { CLSID = "DIS_PL-5EII", arg_value = 0.1 },
				--[[
					{ CLSID = "DIS_PL-8A", arg_value = 0.1, },
					{ CLSID = "DIS_PL-10", arg_value = 0.1, 
						  },]]
				
		-- BVRAAM
                { CLSID = "DIS_SD-10", arg_value = 0.1 },
                { CLSID = "DIS_SD-10_DUAL_R", arg_value = -1,  attach_point_position = {0, 0.525, 0.2}}, 
               -- { CLSID = "DIS_SD-10_DUAL_L", arg_value = -1,  attach_point_position = {0, 0.525, 0.2}}, 
			   --[[
					{ CLSID = "DIS_PL-11", arg_value = 0.1,
						},
					{ CLSID = "J10_PL-15_DUAL", arg_value = -1,  attach_point_position = {0, 0.525, 0.2}, --J10_PL-15_DUAL},
					{ CLSID = "DIS_PL-15", arg_value = 0.1, },]]
					

			-- AGM
                { CLSID = "DIS_LD-10", arg_value = 0.2 },
				
				
                { CLSID = "DIS_C-802AK", arg_value = 1.0, Type = 1 },
                { CLSID = 'DIS_CM-802AKG', arg_value = 1.0, Type = 1 },
                { CLSID = 'DIS_KD-88_AI', arg_value = 1.0, Type = 1 },

				-- Guided Bombs
                { CLSID = "DIS_LS_6_500", arg_value = 0.5, Type = 1 },
                { CLSID = "DIS_GB6", arg_value = 1.0, Type = 1 },  --, attach_point_position = {0, 0.325, 0}
                { CLSID = "DIS_GB6_TSP", arg_value = 1.0, Type = 1 }, --, attach_point_position = {0, 0.325, 0}
                { CLSID = "DIS_GB6_HE", arg_value = 1.0, Type = 1 }, --, attach_point_position = {0, 0.325, 0}
				
                { CLSID = "DIS_GBU_10", arg_value = 1.0 }, -- GBU-10
                { CLSID = "DIS_GBU_16", arg_value = 1.0 }, -- GBU-16

			-- Unguided Bombs
               -- { CLSID = "{7A44FF09-527C-4B7E-B42B-3F111CFE50FB}", arg_value = 0.6 }, -- Mk-83
                { CLSID = "J10_BOMB_250_3", arg_value = 1.0 }, -- 250-3

                { CLSID = "DIS_MK_20", arg_value = 0.5 }, -- Mk-20 Rockeye --DIS_MK_20
			   

                { CLSID = "DIS_TYPE200", arg_value = 0.5 },
                { CLSID = "DIS_TYPE200_DUAL_R", arg_value = 0.5 },

                -- dual bomb
                { CLSID = "DIS_MER2_250_3_R",  arg_value = 0.3 }, -- 250-3 x2 
           --     { CLSID = "DIS_MK_20_DUAL_GDJ_II19_R",  arg_value = 0.3 }, -- Mk-20 Rockeye x2 gjd-ii19

                -- rockets
                { CLSID = "DIS_BRM1_90", arg_value = 0.5 },
                { CLSID = "DIS_RKT_90_UG", arg_value = 0.5 },

                -- pod
                { CLSID = "DIS_WMD7",      arg_value = 0.7, forbidden = {{station = 2, loadout = {"DIS_WMD7"}},     {station = 4, loadout = {"DIS_WMD7"}}} },
                { CLSID = "DIS_AKG_DLPOD", arg_value = 0.7, forbidden = {{station = 2, loadout = {"DIS_AKG_DLPOD"}},{station = 4, loadout = {"DIS_AKG_DLPOD"}}} },

                -- Smoke Generator pods
                { CLSID = 'DIS_SMOKE_GENERATOR_R', arg_value = 0.1},
                { CLSID = 'DIS_SMOKE_GENERATOR_G', arg_value = 0.1},
                { CLSID = 'DIS_SMOKE_GENERATOR_B', arg_value = 0.1},
                { CLSID = 'DIS_SMOKE_GENERATOR_W', arg_value = 0.1},
                { CLSID = 'DIS_SMOKE_GENERATOR_Y', arg_value = 0.1},
                { CLSID = 'DIS_SMOKE_GENERATOR_O', arg_value = 0.1},
            }
        ),
        pylon(7, 0,  -1.865, -0.776, 3.737,
            {
                use_full_connector_position = true, connector = "str_pnt_007", arg = 314, arg_value = 0
            },
            {
			-- IR AAM
                { CLSID = "DIS_PL-5EII", arg_value = 0.1, Cx_gain = 0.5 }, -- no drag
				--	{ CLSID = "DIS_PL-8A", arg_value = 0.1, Cx_gain = 0.5,}, -- wing tip gain
				--	{ CLSID = "DIS_PL-10", arg_value = 0.1, Cx_gain = 0.5,}, -- wing tip gain

                -- Smoke Generator pods
                { CLSID = 'DIS_SMOKE_GENERATOR_R'},
                { CLSID = 'DIS_SMOKE_GENERATOR_G'},
                { CLSID = 'DIS_SMOKE_GENERATOR_B'},
                { CLSID = 'DIS_SMOKE_GENERATOR_W'},
                { CLSID = 'DIS_SMOKE_GENERATOR_Y'},
                { CLSID = 'DIS_SMOKE_GENERATOR_O'},
            }
        ),
        pylon(8, 0,0, 0, 0,
            {
               
            },
            {

                { CLSID = '{Jeff}'},
               -- { CLSID = 'DIS_SMOKE_GENERATOR_G'},
            }
        ),
        pylon(9, 0, -0.765, -0.765, 0, -- this is the center line tank position
            {
                DisplayName = "Center Line", use_full_connector_position = true, connector = "str_pnt_004", arg = 311, arg_value = 0
            },
            {

			  --  center tank
                { CLSID = "DIS_CENTERTANK800", arg_value =1.0, required = {{station = 3,loadout = {"DIS_TANK1500"}},{station = 5,loadout = {"DIS_TANK1500"}}} },
			   
                -- Smoke Generator pods
                { CLSID = 'DIS_SMOKE_GENERATOR_R', arg_value = 1.0},
                { CLSID = 'DIS_SMOKE_GENERATOR_G', arg_value = 1.0},
                { CLSID = 'DIS_SMOKE_GENERATOR_B', arg_value = 1.0},
                { CLSID = 'DIS_SMOKE_GENERATOR_W', arg_value = 1.0},
                { CLSID = 'DIS_SMOKE_GENERATOR_Y', arg_value = 1.0},
                { CLSID = 'DIS_SMOKE_GENERATOR_O', arg_value = 1.0},
            }
        ),
    },

    Tasks = {
        aircraft_task(Intercept), -- 10
        aircraft_task(CAP), -- 11
        --aircraft_task(Nothing), -- 15
        aircraft_task(AFAC), -- 16
        aircraft_task(Reconnaissance), -- 17
        aircraft_task(Escort), -- 18
        aircraft_task(FighterSweep), -- 19
        aircraft_task(SEAD), -- 29
        aircraft_task(AntishipStrike), -- 30
        aircraft_task(CAS), -- 31
        aircraft_task(GroundAttack), -- 32
        aircraft_task(PinpointStrike), -- 33
        aircraft_task(RunwayAttack), -- 34
    },

    DefaultTask = aircraft_task(CAP),

    SFM_Data = {
        aerodynamics = { -- Cx = Cx_0 + Cy^2*B2 +Cy^4*B4
            Cy0        = 0,      -- zero AoA lift coefficient
            Mzalfa     = 5.5,  -- coefficients for pitch agility
            Mzalfadt   = 0.8,    -- coefficients for pitch agility
            kjx        = 4.20,
            kjz        = 0.00125,
            Czbe       = -0.016, -- coefficient, along Z axis (perpendicular), affects yaw, negative value means force orientation in FC coordinate system
            cx_gear    = 0.08,    -- coefficient, drag, gear
            cx_flap    = 0.05,   -- coefficient, drag, full flaps
            cy_flap    = 0.56,    -- coefficient, normal force, lift, flaps
            cx_brk     = 0.12,   -- coefficient, drag, breaks
            table_data = {
                --          M       Cx0      Cya    B      B4  Omxmax  Aldop   Cymax
				--[[
                [1]  = { 0.000, 0.025, 0.070, 0.132, 0.032, 0.48, 27.000, 1.6 },
                [2]  = { 0.200, 0.025, 0.070, 0.132, 0.032, 1.47, 26.500, 1.6 },
                [3]  = { 0.400, 0.025, 0.071, 0.133, 0.032, 2.4, 25.500, 1.5 },
                [4]  = { 0.600, 0.025, 0.073, 0.133, 0.043, 3.5, 25.000, 1.4 },
                [5]  = { 0.700, 0.025, 0.076, 0.134, 0.045, 3.5, 24.000, 1.3 },
                [6]  = { 0.800, 0.025, 0.079, 0.137, 0.052, 3.5, 23.000, 1.2 },
                [7]  = { 0.900, 0.032, 0.083, 0.143, 0.058, 3.5, 22.000, 1.15 },
                [8]  = { 1.000, 0.0425, 0.086, 0.18, 0.10, 3.5, 21.250, 1.12 },
                [9]  = { 1.050, 0.056, 0.0875, 0.1975, 0.095, 3.5, 19.375, 1.1 },
                [10] = { 1.100, 0.055, 0.087, 0.215, 0.09, 3.15, 17.500, 1.05 },
                [11] = { 1.200, 0.055, 0.086, 0.228, 0.12, 2.45, 15.625, 1.00 },
                [12] = { 1.300, 0.054, 0.08, 0.237, 0.17, 1.979, 13.750, 0.912 },
                [13] = { 1.500, 0.0525, 0.067, 0.25, 0.20, 1.609, 10.000, 0.740 },
                [14] = { 1.650, 0.052, 0.06, 0.24, 2.50, 1.469, 10.000, 0.700 },
                [15] = { 1.850, 0.051, 0.05, 0.23, 2.98, 1.401, 10.000, 0.600 },
                [16] = { 2.000, 0.05, 0.03, 0.22, 3.20, 1.269, 10.000, 0.500 },]]
				
                --    M       	 Cx0        Cya     B            B4      Omxmax  Aldop       Cymax
				--[[
					{ 0.000,	 0.0165,	0.078,	0.0310*5.0,		 0.19*0.20,	 0.68,	 25.000,	 1.14 },
					{ 0.050, 	 0.0165, 	0.078, 	0.0310*5.0, 	 0.19*0.20,	 0.95, 	 25.000, 	 1.15}, 
					{ 0.100, 	 0.0165, 	0.078, 	0.0310*5.0, 	 0.19*0.20,	 1.20, 	 25.000, 	 1.16 },
					{ 0.200,	 0.0165,	0.078,	0.0295*5.0,		 0.19*0.20,	 2.15,	 25.000,	 1.170 },
					{ 0.300,	 0.0165,	0.076,	0.0295*5.0,		 0.19*0.20,	 2.80,	 25.000,	 1.177 },
					{ 0.400,	 0.0181,	0.075,	0.0280*5.0,		 0.15*0.20,	 3.70, 	 25.000,	 1.184 },
					{ 0.500,	 0.0181,	0.074,	0.0250*5.0,		 0.11*0.20,	 4.45, 	 25.000,	 1.192 },
					{ 0.600,	 0.0181,	0.073,	0.0250*5.0,		 0.11*0.20,	 4.55,	 25.000,	 1.200 },
					{ 0.700,	 0.0198,	0.070,	0.0290*5.0,		 0.11*0.20,	 4.55,	 25.000,	 1.200 },
					{ 0.800,	 0.0214,	0.068,	0.0318*5.0,		 0.13*0.20,	 4.50,	 25.000,	 1.200 },
					{ 0.850,	 0.0214,	0.065,	0.0348*5.0,		 0.16*0.20,	 4.47,	 25.000,	 1.210 },
					{ 0.900,	 0.0231,	0.055,	0.0370*5.0,		 0.16*0.20,	 4.45,	 25.000,	 1.220 },
																							
					{ 1.000,	 0.0247,	0.053,	0.0400*5.0, 	 0.16*0.20,	 4.10, 	 25.000,	 1.192 },
					{ 1.050,	 0.0264,	0.052,	0.0428*5.0,		 0.16*0.20,	 4.07,	 25.000,	 1.177 },
					{ 1.100,	 0.0264,	0.050, 	0.0459*5.0, 	 0.16*0.20,	 4.05,	 25.000,	 1.500 },
					{ 1.200,	 0.0272,	0.049, 	0.0500*5.0, 	 0.15*0.20,	 4.00, 	 25.000,	 1.300 },
					{ 1.300,	 0.0280,	0.049, 	0.0529*5.0, 	 0.15*0.20,	 3.97,	 25.000,	 1.100 },
					{ 1.500,	 0.0297,	0.049, 	0.0569*5.0, 	 0.14*0.20,	 3.84,	 25.000,	 0.900 },
					{ 1.700,	 0.0330,	0.048, 	0.0600*5.0, 	 0.13*0.20,	 3.76,	 25.000,	 0.800 },
					{ 1.850,	 0.0346,	0.048, 	0.0629*5.0, 	 0.12*0.20,	 3.69,	 25.000,	 0.600 },
					{ 2.000,	 0.0384,	0.048, 	0.0659*5.0, 	 0.12*0.20,	 3.56,	 25.000,	 0.500 },
					{ 2.200,	 0.0390,	0.048, 	0.0689*5.0, 	 0.12*0.20,	 3.45,	 25.000,	 0.400 }, 
																								
					{ 2.400,	 0.3300,	0.090, 	1.149*5.0, 		 1.69*0.20,	 0.70,	 25.000,	 0.400 },
					{ 2.500,	 0.6900,	0.040, 	1.35*5.0,		 1.10*0.20,	 0.70,	 25.000,	 0.400 },
					{ 3.900,	 0.6900,	0.040, 	1.35*5.0,		6.380*0.20,	 0.70,	 25.000, 	 0.400 },
					]]
					
					{ 0.000,	 0.0165,	0.065,	0.0310*3.3,		 0.19*0.16,	 0.68,	 25.000,	 1.907 },
					{ 0.050, 	 0.0165, 	0.063, 	0.0310*3.3, 	 0.19*0.17,	 0.95, 	 25.000, 	 1.907}, 
					{ 0.100, 	 0.0165, 	0.058, 	0.0310*3.3, 	 0.19*0.18,	 1.20, 	 25.000, 	 1.907 },
					{ 0.200,	 0.0165,	0.057,	0.0295*3.3,		 0.19*0.19,	 2.15,	 25.000,	 1.907 },
					{ 0.300,	 0.0165,	0.056,	0.0295*3.3,		 0.19*0.20,	 2.80,	 25.000,	 1.715 },
					{ 0.400,	 0.0181,	0.055,	0.0280*3.3,		 0.15*0.20,	 3.70, 	 25.000,	 1.524},
					{ 0.500,	 0.0181,	0.055,	0.0250*3.3,		 0.11*0.20,	 4.45, 	 25.000,	 1.524 },
					{ 0.600,	 0.0181,	0.055,	0.0250*3.3,		 0.11*0.20,	 4.55,	 25.000,	 1.426 },
					{ 0.700,	 0.0198,	0.055,	0.0290*3.3,		 0.11*0.20,	 4.55,	 25.000,	 1.377 },
					{ 0.800,	 0.0214,	0.055,	0.0318*3.3,		 0.13*0.20,	 4.50,	 25.000,	 1.410},
					{ 0.850,	 0.0214,	0.055,	0.0348*3.3,		 0.16*0.20,	 4.47,	 25.000,	 1.508 },
					{ 0.900,	 0.0231,	0.055,	0.0370*3.3,		 0.16*0.20,	 4.45,	 25.000,	 1.605 },
																							
					{ 1.000,	 0.0247,	0.053,	0.0400*3.3, 	 0.16*0.20,	 4.10, 	 25.000,	 1.931 },
					{ 1.050,	 0.0264,	0.052,	0.0428*3.3,		 0.16*0.20,	 4.07,	 25.000,	 1.931 },
					{ 1.100,	 0.0264,	0.050, 	0.0459*3.3, 	 0.16*0.20,	 4.05,	 25.000,	 1.931 },
					{ 1.200,	 0.0272,	0.049, 	0.0500*3.3, 	 0.15*0.20,	 4.00, 	 25.000,	 1.630 },
					{ 1.300,	 0.0280,	0.049, 	0.0529*3.3, 	 0.15*0.20,	 3.97,	 25.000,	 1.630 },
					{ 1.500,	 0.0297,	0.049, 	0.0569*3.3, 	 0.14*0.20,	 3.84,	 25.000,	 1.630 },
					{ 1.700,	 0.0330,	0.048, 	0.0600*3.3, 	 0.13*0.20,	 3.76,	 25.000,	 1.304 },
					{ 1.850,	 0.0346,	0.048, 	0.0629*3.3, 	 0.12*0.20,	 3.69,	 25.000,	 1.141 },
					{ 2.000,	 0.0384,	0.048, 	0.0659*3.3, 	 0.12*0.20,	 3.56,	 25.000,	 0.978 },
					{ 2.200,	 0.0390,	0.048, 	0.0689*3.3, 	 0.12*0.20,	 3.45,	 25.000,	 0.978 }, 
																								
					{ 2.400,	 0.3300,	0.090, 	1.149*3.3, 		 1.69*0.20,	 0.70,	 25.000,	 0.400 },
					{ 2.500,	 0.6900,	0.040, 	1.35*3.3,		 1.10*0.20,	 0.70,	 25.000,	 0.400 },
					{ 3.900,	 0.6900,	0.040, 	1.35*3.3,		6.380*0.20,	 0.70,	 25.000, 	 0.400 },
					
					--[[
				{0,	 	0.0165,		0.081*1.1,	0.1500*0.6,	0.1100,	0.680,	25.0,	1.907}, --1
				{0.05, 	0.0165,		0.079*1.1,	0.1500*0.6,	0.1000,	1.000,	25.0,	1.907},--1
				{0.1,	0.0165,		0.074*1.1,	0.1500*0.6,	0.0900,	2.800,	25.0,	1.907},--1
				{0.2,	0.0165,		0.069*1.1,	0.1500*0.6,	0.0750,	3.280,	25.0,	1.907},--1.24
				{0.3,	0.0165,		0.067*1.1,	0.1442*0.6,	0.3897,	3.400,	25.0,	1.715},--2
				{0.4,	0.0181,		0.064*1.1,	0.1383*0.6,	0.7044,	4.363,	25.0,	1.524},--3
				{0.6,	0.0181,		0.065*1.1,	0.1265*0.6,	1.3339,	4.854,	22.0,	1.426},--3
				{0.7,	0.0198,		0.065*1.1,	0.1206*0.6,	1.6486,	4.829,	22.0,	1.377},--2
				{0.8,	0.0214,		0.066*1.1,	0.1148*0.6,	1.9633,	4.803,	17.0,	1.410},--2
				{0.85,	0.0214,		0.067*1.1,	0.1118*0.6,	2.1206,	4.778,	17.0,	1.508},--2
				{0.9,	0.0231,		0.071*1.1,	0.1089*0.6,	2.2780,	4.752,	17.0,	1.605},
				{1,		0.0247,		0.082*1.1,	0.1030*0.6,	2.5927,	4.726,	17.0,	1.931},
				{1.05,	0.0264,		0.085*1.1,	0.1000*0.6,	2.7500,	4.713,	17.0,	1.931},
				{1.1,	0.0264,		0.086*1.1,	0.1035*0.6,	2.7586,	4.701,	17.0,	1.931},
				{1.2,	0.0272,		0.083*1.1,	0.1104*0.6,	2.7759,	4.675,	17.0,	1.630},
				{1.3,	0.0280,		0.077*1.1,	0.1173*0.6,	2.7931,	4.650,	16.0,	1.630},
				{1.5,	0.0297,		0.062*1.1,	0.1311*0.6,	2.8276,	4.598,	13.0,	1.630},
				{1.7,	0.0330,		0.051*1.1,  0.1449*0.6,	2.8621,	4.547,	12.0,	1.304},
				{1.8,	0.0346,		0.046*1.1,	0.1518*0.6,	2.8793,	4.522,	11.4,	1.141},
				{2,		0.0379,		0.039*1.1,	0.1656*0.6,	2.9138,	4.470,	10.2,	0.978},
				{2.1,	0.0396,		0.034*1.1,	0.1725*0.6,	2.9310,	4.445,	 9.0,	0.978},
				{2.2,	0.0404,		0.034*1.1,	0.1794*0.6,	2.9483,	4.419,	 9.0,	0.978},
				{2.5,	0.0495,		0.033*1.1,	0.2000*0.6,	3.0000,	3.500,	 9.0,	0.978},
					]]
					
			--	M		Cx0			Cya		B		B4		Omxmax	Aldop		Cymax
			--[[	{0,	 	0.0165,		0.078,	0.1320,	0.1100,	0.500,	24.0,	1.280},
				{0.05, 	0.0165,		0.078,	0.1320,	0.1000,	1.000,	29.0,	1.140},
				{0.1,	0.0165,		0.078,	0.1320,	0.0900,	2.800,	17.0,	1.070},
				{0.2,	0.0165,		0.078,	0.1320,	0.0750,	3.280,	17.0,	0.980},
				{0.3,	0.0165,		0.076,	0.1268,	0.3897,	3.400,	17.0,	0.950},
				{0.4,	0.0181,		0.075,	0.1217,	0.7044,	4.363,	17.0,	0.950},
				{0.6,	0.0181,		0.073,	0.1113,	1.3339,	4.854,	17.0,	0.950},
				{0.7,	0.0198,		0.070,	0.1061,	1.6486,	4.829,	17.0,	0.930},
				{0.8,	0.0214,		0.068,	0.1010,	1.9633,	4.803,	17.0,	0.925},
				{0.85,	0.0214,		0.065,	0.0983,	2.1206,	4.778,	17.0,	0.920},
				{0.9,	0.0231,		0.075,	0.0958,	2.2780,	4.752,	17.0,	0.915},
				{1,		0.0247,		0.082,	0.0906,	2.5927,	4.726,	17.0,	0.910},
				{1.05,	0.0264,		0.085,	0.0880,	2.7500,	4.713,	17.0,	0.905},
				{1.1,	0.0264,		0.086,	0.0910,	2.7586,	4.701,	17.0,	0.900},
				{1.2,	0.0272,		0.083,	0.0971,	2.7759,	4.675,	17.0,	0.900},
				{1.3,	0.0280,		0.077,	0.1032,	2.7931,	4.650,	16.0,	0.900},
				{1.5,	0.0297,		0.062,	0.1153,	2.8276,	4.598,	13.0,	0.900},
				{1.7,	0.0330,		0.051,  0.1275,	2.8621,	4.547,	12.0,	0.700},
				{1.8,	0.0346,		0.046,	0.1335,	2.8793,	4.522,	11.4,	0.640},
				{2,		0.0379,		0.039,	0.1457,	2.9138,	4.470,	10.2,	0.520},
				{2.1,	0.0396,		0.034,	0.1518,	2.9310,	4.445,	 9.0,	0.400},
				{2.2,	0.0404,		0.034,	0.1578,	2.9483,	4.419,	 9.0,	0.400},
				{2.5,	0.0495,		0.033,	0.2000,	3.0000,	3.500,	 9.0,	0.400},]]
            }, -- end of table_data
            -- M    - Mach number
            -- Cx0    - Coefficient, drag, profile, of the airplane
            -- Cya    - Normal force coefficient of the wing and body of the aircraft in the normal direction to that of flight. Inversely proportional to the available G-loading at any Mach value. (lower the Cya value, higher G available) per 1 degree AOA
            -- B    - Polar quad coeff
            -- B4    - Polar 4th power coeff
            -- Omxmax    - roll rate, rad/s
            -- Aldop    - Alfadop Max AOA at current M - departure threshold
            -- Cymax    - Coefficient, lift, maximum possible (ignores other calculations if current Cy > Cymax)
        }, -- end of aerodynamics

        engine = {
            Nmg        = 67.5,    -- RPM at idle
            MinRUD     = 0,    -- Min state of the throttle
            MaxRUD     = 1,    -- Max state of the throttle
            MaksRUD    = 0.85,    -- Military power state of the throttle
            ForsRUD    = 0.91,    -- Afterburner state of the throttle
            typeng     = 4,
                --[[
                    E_TURBOJET = 0
                    E_TURBOJET_AB = 1
                    E_PISTON = 2
                    E_TURBOPROP = 3
                    E_TURBOFAN    = 4
                    E_TURBOSHAFT = 5
                --]]
            hMaxEng    = 19,        -- Max altitude for safe engine operation in km
            dcx_eng    = 0.0144,    -- Engine drag coeficient
            cemax      = 1.24,      -- not used for fuel calulation , only for AI routines to check flight time ( fuel calculation algorithm is built in )
            cefor      = 2.56,      -- not used for fuel calulation , only for AI routines to check flight time ( fuel calculation algorithm is built in )
            dpdh_m     = 6200,      --  altitude coefficient for max thrust
            dpdh_f     = 9500,      --  altitude coefficient for AB thrust
            table_data = {
            --            M     Pmax     Pfor
			--[[
                [1]  =  { 0.00, 44453 * 0.87,  75008 * 0.87 },
                [2]  =  { 0.20, 43262 * 0.93,  74957 * 0.93 },
                [3]  =  { 0.30, 44896 * 0.94,  75608 * 0.94 },
                [4]  =  { 0.40, 45535 * 0.95,  80328 * 0.95 },
                [5]  =  { 0.50, 47803 * 0.96,  82429 * 0.96 },
                [6]  =  { 0.60, 49979 * 0.97,  85230 * 0.97 },
                [7]  =  { 0.70, 51133 * 0.98,  88896 * 0.98 },
                [8]  =  { 0.80, 52093 * 0.99,  97547 * 0.99 },
                [9]  =  { 0.90, 49117, 104027 },
                [10] =  { 1.00, 44651, 110000 },
                [11] =  { 1.05, 42569, 112500 },
                [12] =  { 1.10, 40486, 115021 },
                [13] =  { 1.15, 38698, 117576 },
                [14] =  { 1.20, 36910, 120103 },
                [15] =  { 1.30, 33933, 121449 },
                [16] =  { 1.40, 32150, 120915 },
                [17] =  { 1.50, 30362, 113733 },
                [18] =  { 1.60, 28579, 111436 },
                [19] =  { 1.70, 26791,  97549 },
                [20] =  { 1.85, 25003,  77117 },
                [21] =  { 1.90, 23220,  63387 },
                [22] =  { 3.50, 19649,  31279 },]]
				[1] =	{0,		50020,	70362.3  * 1.00}, -- 1.05
				[2] =	{0.2,	48071,	71360.3  * 1.00},-- 1.05
				[3] =	{0.4,	48071,	74853.5  * 1.00},-- 1.13
				[4] =	{0.6,	55217,	82338.8  * 1.00},-- 1.19
				[5] =	{0.7,	55217,	94194.3	 * 1.05},-- 1.37
				[6] =	{0.8,	58465,	101989.7 * 1.13},-- 1.32
				[7] =	{0.9,	61063,	107836.3 * 1.23},-- 1.34
				[8] =	{1,		64961,	110434.7 * 1.31},-- 1.35
				[9] =	{1.096,	62363,	111084.3 * 1.37},-- 1.50
				[10] =	{1.2,	55866,	111084.3 * 1.38},-- 1.54
				[11] =	{1.3,	44173,	112383.6 * 1.39},-- 1.56
				[12] =	{1.4,	35728,	114332.4 * 1.40},-- 1.50
				[13] =	{1.6,	36378,	114332.4 * 1.43},-- 1.45
				[14] =	{1.8,	36378,	119529.4 * 1.47},-- 1.54
				[15] =	{2.2,	33780,	112383.6 * 1.50},-- 1.70
				[16] =	{2.35,	27933,	101989.7 * 1.49},-- 1.70
				[17] =	{3.9,	16240,	78367.3 * 1.46},
            }, -- end of table_data
            -- M    - Mach number
            -- Pmax    - Engine thrust at military power
            -- Pfor    - Engine thrust at AFB
        }, -- end of engine
    },

    fires_pos = {
        [1] = {-3.484, -0.004, -0.149}, -- After maingear, fuselage bottom
        [2] = {-2.518,  0.055,  1.216}, -- Wing inner Left
        [3] = {-2.518,  0.055, -1.216}, -- Wing inner Right
        [4] = {-6.250,  0.525,  0.000}, -- Engine damage big
        [5] = {-6.750,  0.525,  0.000}, -- Engine damage small
        [6] = {-2.346, -0.448,  0.000}, -- Air intake bottom L
        [7] = { 2.346, -0.448,  0.000}, -- Air intake bottom R
    }, -- end of fires_pos

    effects_presets = {
        { effect = 'OVERWING_VAPOR',    file = current_mod_path .. '/Effects/JF-17_overwingVapor.lua', preset = "JF17" },

        -- TODO: NOT WORK
        --{ effect = "APU_STARTUP_BLAST", file = current_mod_path .. '/Effects/JF-17_JFS_Blast.lua', preset = "JF17", ttl = 3.0, },
        --{ effect = 'LERX_VORTEX',       file = current_mod_path .. '/Effects/JF-17_LERXVortex.lua', preset = 'JF17', },
    },

    --
    --Damage = {
	--[[
        [0]   = {critical_damage =    3, args = {82}},                                 -- NOSE_CENTER             /雷达罩
        [1]   = {critical_damage =    3, args = {150}},                                -- NOSE_LEFT_SIDE          /机头左侧
        [2]   = {critical_damage =    3, args = {149}},                                -- NOSE_RIGHT_SIDE         /机头右侧
        [3]   = {critical_damage =    2, args = {65}},                                 -- COCKPIT                 /座舱盖区域
        [4]   = {critical_damage =    2, args = {298}},                                -- CABIN_LEFT_SIDE         /座舱左侧
        [5]   = {critical_damage =    2, args = {301}},                                -- CABIN_RIGHT_SIDE        /座舱右侧
        [6]   = {critical_damage =    3, args = {299}},                                -- CABIN_BOTTOM            /座舱底部
        [7]   = {critical_damage =    2, args = {296}},                                -- GUN                     /机炮
        [8]   = {critical_damage =    2, args = {265}},                                -- FRONT_GEAR_BOX          /前起落架舱
        [9]   = {critical_damage =    3, args = {154}},                                -- FUSELAGE_LEFT_SIDE      /机身左侧
        [10]  = {critical_damage =    3, args = {153}},                                -- FUSELAGE_RIGHT_SIDE     /机身右侧
        [11]  = {critical_damage =  1.5, args = {271}},                                -- ENGINE                  /发动机喷口
        [13]  = {critical_damage =    2, args = {166}},                                -- MTG_L_BOTTOM            /发动机左下侧蒙皮
        [14]  = {critical_damage =    2, args = {160}},                                -- MTG_R_BOTTOM            /发动机右下侧蒙皮
        [15]  = {critical_damage =    2, args = {267}},                                -- LEFT_GEAR_BOX           /左主起落架舱盖
        [16]  = {critical_damage =    2, args = {266}},                                -- RIGHT_GEAR_BOX          /右主起落架舱盖
        [17]  = {critical_damage =    2, args = {168}},                                -- MTG_L                   /发动机左上侧蒙皮
        [18]  = {critical_damage =    2, args = {162}},                                -- MTG_R                   /发动机右上侧蒙皮
        [19]  = {critical_damage =    1, args = {189}},                                -- AIR_BRAKE_L             /左下侧减速板
        [20]  = {critical_damage =    1, args = {187}},                                -- AIR_BRAKE_R             /右下侧减速板
        [21]  = {critical_damage =  1.5, args = {232},
                droppable = true,  droppable_shape = "JF-17-oblomok-L-part"},          -- WING_L_PART_OUT         /左翼外侧前缘襟翼
        [22]  = {critical_damage =  1.5, args = {222},
                droppable = true,  droppable_shape = "JF-17-oblomok-R-part"},          -- WING_R_PART_OUT         /右翼外侧前缘襟翼
        [23]  = {critical_damage =    4, args = {223}, deps_cells = {21,25}},          -- WING_L_OUT              /左翼外侧
        [24]  = {critical_damage =    4, args = {213}, deps_cells = {22,26}},          -- WING_R_OUT              /右翼外侧
        [25]  = {critical_damage =    2, args = {226},
                droppable = true,  droppable_shape = "JF-17-oblomok-L-part"},          -- AILERON_L               /左侧副翼
        [26]  = {critical_damage =    2, args = {216},
                droppable = true,  droppable_shape = "JF-17-oblomok-R-part"},          -- AILERON_R               /右侧副翼
        [27]  = {critical_damage =    1, args = {185}},                                -- WING_L_PART_CENTER      /左上侧减速板
        [28]  = {critical_damage =    1, args = {183}},                                -- WING_R_PART_CENTER      /右上侧减速板
        [29]  = {critical_damage =    5, args = {224}, deps_cells = {23,33,37}},       -- WING_L_CENTER           /左翼中间
        [30]  = {critical_damage =    5, args = {214}, deps_cells = {24,34,38}},       -- WING_R_CENTER           /右翼中间
        [33]  = {critical_damage =  1.5, args = {230},
                droppable = true,  droppable_shape = "JF-17-oblomok-L-part"},          -- WING_L_PART_IN          /左翼内侧前缘襟翼
        [34]  = {critical_damage =  1.5, args = {220},
                droppable = true,  droppable_shape = "JF-17-oblomok-R-part"},          -- WING_R_PART_IN          /右翼内侧前缘襟翼
        [35]  = {critical_damage =    6, args = {225}, deps_cells = {29},
                droppable = true,  droppable_shape = "JF-17-oblomok-wing-L"},          -- WING_L_IN               /左翼内侧
        [36]  = {critical_damage =    6, args = {215}, deps_cells = {30},
                droppable = true,  droppable_shape = "JF-17-oblomok-wing-R"},          -- WING_R_IN               /右翼内侧
        [37]  = {critical_damage =    2, args = {228},
                droppable = true,  droppable_shape = "JF-17-oblomok-L-part"},          -- FLAP_L                  /左侧襟翼
        [38]  = {critical_damage =    2, args = {218},
                droppable = true,  droppable_shape = "JF-17-oblomok-R-part"},          -- FLAP_R                  /右侧襟翼
        [40]  = {critical_damage =    2, args = {241}, deps_cells = {53},
                droppable = false},                                                    -- FIN_R_TOP               /垂尾顶部
        [42]  = {critical_damage =    3, args = {242}, deps_cells = {40},},            -- FIN_R_CENTER            /垂尾根部
        [43]  = {critical_damage =    2, args = {246}},                                -- Line_KIL_L              /左侧腹鳍
        [44]  = {critical_damage =    2, args = {243}},                                -- Line_KIL_R              /右侧腹鳍
        [49]  = {critical_damage =  1.5, args = {239}},                                -- ELEVATOR_L_OUT          /左侧平尾外侧
        [50]  = {critical_damage =  1.5, args = {237}},                                -- ELEVATOR_R_OUT          /右侧平尾外侧
        [51]  = {critical_damage =    2, args = {240}, deps_cells = {49}},             -- ELEVATOR_L_IN           /左侧平尾内侧
        [52]  = {critical_damage =    2, args = {238}, deps_cells = {50}},             -- ELEVATOR_R_IN           /右侧平尾内侧
        [53]  = {critical_damage =    2, args = {247},},                               -- RUDDER                  /方向舵
        [55]  = {critical_damage =    4, args = {155}, deps_cells = {42,58}},          -- TAIL                    /垂尾根部尾椎
        [56]  = {critical_damage =    3, args = {158}},                                -- TAIL_LEFT_SIDE          /发动机左侧尾椎
        [57]  = {critical_damage =    3, args = {157}},                                -- TAIL_RIGHT_SIDE         /发动机右侧尾椎
        [58]  = {critical_damage =    1, args = {159}},                                -- TAIL_BOTTOM             /减速伞盖
        [59]  = {critical_damage =    3, args = {148}},                                -- NOSE_BOTTOM             /机头底部
        [61]  = {critical_damage =    3, args = {303}},                                -- FUEL_TANK_LEFT_SIDE     /机背油箱处左侧蒙皮
        [62]  = {critical_damage =    3, args = {302}},                                -- FUEL_TANK_RIGHT_SIDE    /机背油箱处右侧蒙皮
        [63]  = {critical_damage =    2, args = {147}},                                -- ROTOR                   /机头顶部
        [64]  = {critical_damage =    3, args = {227}},                                -- BLADE_1_IN              /左上侧进气道
        [65]  = {critical_damage =  1.5, args = {231}},                                -- BLADE_1_CENTER          /左侧边条
        [66]  = {critical_damage =    3, args = {229}},                                -- BLADE_1_OUT             /左下侧进气道
        [67]  = {critical_damage =    3, args = {217}},                                -- BLADE_2_IN              /右上侧进气道
        [68]  = {critical_damage =  1.5, args = {221}},                                -- BLADE_2_CENTER          /右侧边条
        [69]  = {critical_damage =    3, args = {219}},                                -- BLADE_2_OUT             /右下侧进气道
        [71]  = {critical_damage =    3, args = {156}},                                -- BLADE_3_CENTER          /进气道处机腹
        [82]  = {critical_damage =    3, args = {152}},                                -- FUSELAGE_BOTTOM         /机身底部
        [83]  = {critical_damage =    2, args = {134}},                                -- WHEEL_F                 /前起落架
        [84]  = {critical_damage =    3, args = {136}},                                -- WHEEL_L                 /左侧主起落架
        [85]  = {critical_damage =    3, args = {135}},                                -- WHEEL_R                 /右侧主起落架
        [90]  = {critical_damage =    1},                                              -- PILOT
        [99]  = {critical_damage =    2, args = {151}},                                -- FUSELAGE_TOP            /前部脊背
        [100] = {critical_damage =    2, args = {300}},                                -- TAIL_TOP                /后部脊背]]
		--[[
        [0]   = {critical_damage =    3, args = {146}},                                 -- NOSE_CENTER             /雷达罩
        [1]   = {critical_damage =    3, args = {150}},                                -- NOSE_LEFT_SIDE          /机头左侧
        [2]   = {critical_damage =    3, args = {149}},                                -- NOSE_RIGHT_SIDE         /机头右侧
        [3]   = {critical_damage =    2, args = {65}},                                 -- COCKPIT                 /座舱盖区域
        [4]   = {critical_damage =    2, args = {298}},                                -- CABIN_LEFT_SIDE         /座舱左侧
        [5]   = {critical_damage =    2, args = {299}},                                -- CABIN_RIGHT_SIDE        /座舱右侧
        [6]   = {critical_damage =    3, args = {152}},                                -- CABIN_BOTTOM            /座舱底部
        [7]   = {critical_damage =    2, args = {296}},                                -- GUN                     /机炮
        [8]   = {critical_damage =    2, args = {265}},                                -- FRONT_GEAR_BOX          /前起落架舱
        [9]   = {critical_damage =    3, args = {154}},                                -- FUSELAGE_LEFT_SIDE      /机身左侧
        [10]  = {critical_damage =    3, args = {153}},                                -- FUSELAGE_RIGHT_SIDE     /机身右侧
        [11]  = {critical_damage =  1.5, args = {160}},                                -- ENGINE                  /发动机喷口
        [13]  = {critical_damage =    2, args = {166}},                                -- MTG_L_BOTTOM            /发动机左下侧蒙皮
        [14]  = {critical_damage =    2, args = {160}},                                -- MTG_R_BOTTOM            /发动机右下侧蒙皮
        [15]  = {critical_damage =    2, args = {267}},                                -- LEFT_GEAR_BOX           /左主起落架舱盖
        [16]  = {critical_damage =    2, args = {266}},                                -- RIGHT_GEAR_BOX          /右主起落架舱盖
        [17]  = {critical_damage =    2, args = {168}},                                -- MTG_L                   /发动机左上侧蒙皮
        [18]  = {critical_damage =    2, args = {162}},                                -- MTG_R                   /发动机右上侧蒙皮
        [19]  = {critical_damage =    1, args = {183}},                                -- AIR_BRAKE_L             /左下侧减速板
        [20]  = {critical_damage =    1, args = {185}},                                -- AIR_BRAKE_R             /右下侧减速板
        [21]  = {critical_damage =  1.5, args = {232},
                droppable = true,  droppable_shape = "JF-17-oblomok-L-part"},          -- WING_L_PART_OUT         /左翼外侧前缘襟翼
        [22]  = {critical_damage =  1.5, args = {222},
                droppable = true,  droppable_shape = "JF-17-oblomok-R-part"},          -- WING_R_PART_OUT         /右翼外侧前缘襟翼
        [23]  = {critical_damage =    4, args = {223}, deps_cells = {21,25}},          -- WING_L_OUT              /左翼外侧
        [24]  = {critical_damage =    4, args = {213}, deps_cells = {22,26}},          -- WING_R_OUT              /右翼外侧
        [25]  = {critical_damage =    2, args = {226},
                droppable = true,  droppable_shape = "JF-17-oblomok-L-part"},          -- AILERON_L               /左侧副翼
        [26]  = {critical_damage =    2, args = {216},
                droppable = true,  droppable_shape = "JF-17-oblomok-R-part"},          -- AILERON_R               /右侧副翼
        [27]  = {critical_damage =    1, args = {185}},                                -- WING_L_PART_CENTER      /左上侧减速板
        [28]  = {critical_damage =    1, args = {183}},                                -- WING_R_PART_CENTER      /右上侧减速板
        [29]  = {critical_damage =    5, args = {224}, deps_cells = {23,33,37}},       -- WING_L_CENTER           /左翼中间
        [30]  = {critical_damage =    5, args = {214}, deps_cells = {24,34,38}},       -- WING_R_CENTER           /右翼中间
        [33]  = {critical_damage =  1.5, args = {230},
                droppable = true,  droppable_shape = "JF-17-oblomok-L-part"},          -- WING_L_PART_IN          /左翼内侧前缘襟翼
        [34]  = {critical_damage =  1.5, args = {220},
                droppable = true,  droppable_shape = "JF-17-oblomok-R-part"},          -- WING_R_PART_IN          /右翼内侧前缘襟翼
        [35]  = {critical_damage =    6, args = {225}, deps_cells = {29},
                droppable = true,  droppable_shape = "JF-17-oblomok-wing-L"},          -- WING_L_IN               /左翼内侧
        [36]  = {critical_damage =    6, args = {215}, deps_cells = {30},
                droppable = true,  droppable_shape = "JF-17-oblomok-wing-R"},          -- WING_R_IN               /右翼内侧
        [37]  = {critical_damage =    2, args = {228},
                droppable = true,  droppable_shape = "JF-17-oblomok-L-part"},          -- FLAP_L                  /左侧襟翼
        [38]  = {critical_damage =    2, args = {218},
                droppable = true,  droppable_shape = "JF-17-oblomok-R-part"},          -- FLAP_R                  /右侧襟翼
        [40]  = {critical_damage =    2, args = {241}, deps_cells = {53},
                droppable = false},                                                    -- FIN_R_TOP               /垂尾顶部
        [42]  = {critical_damage =    3, args = {242}, deps_cells = {40},},            -- FIN_R_CENTER            /垂尾根部
        [43]  = {critical_damage =    2, args = {246}},                                -- Line_KIL_L              /左侧腹鳍
        [44]  = {critical_damage =    2, args = {243}},                                -- Line_KIL_R              /右侧腹鳍
        [49]  = {critical_damage =  1.5, args = {239}},                                -- ELEVATOR_L_OUT          /左侧平尾外侧
        [50]  = {critical_damage =  1.5, args = {237}},                                -- ELEVATOR_R_OUT          /右侧平尾外侧
        [51]  = {critical_damage =    2, args = {240}, deps_cells = {49}},             -- ELEVATOR_L_IN           /左侧平尾内侧
        [52]  = {critical_damage =    2, args = {238}, deps_cells = {50}},             -- ELEVATOR_R_IN           /右侧平尾内侧
        [53]  = {critical_damage =    2, args = {247},},                               -- RUDDER                  /方向舵
        [55]  = {critical_damage =    4, args = {155}, deps_cells = {42,58}},          -- TAIL                    /垂尾根部尾椎
        [56]  = {critical_damage =    3, args = {158}},                                -- TAIL_LEFT_SIDE          /发动机左侧尾椎
        [57]  = {critical_damage =    3, args = {157}},                                -- TAIL_RIGHT_SIDE         /发动机右侧尾椎
        [58]  = {critical_damage =    1, args = {159}},                                -- TAIL_BOTTOM             /减速伞盖
        [59]  = {critical_damage =    3, args = {148}},                                -- NOSE_BOTTOM             /机头底部
        [61]  = {critical_damage =    3, args = {303}},                                -- FUEL_TANK_LEFT_SIDE     /机背油箱处左侧蒙皮
        [62]  = {critical_damage =    3, args = {302}},                                -- FUEL_TANK_RIGHT_SIDE    /机背油箱处右侧蒙皮
        [63]  = {critical_damage =    2, args = {147}},                                -- ROTOR                   /机头顶部
        [64]  = {critical_damage =    3, args = {227}},                                -- BLADE_1_IN              /左上侧进气道
        [65]  = {critical_damage =  1.5, args = {231}},                                -- BLADE_1_CENTER          /左侧边条
        [66]  = {critical_damage =    3, args = {229}},                                -- BLADE_1_OUT             /左下侧进气道
        [67]  = {critical_damage =    3, args = {217}},                                -- BLADE_2_IN              /右上侧进气道
        [68]  = {critical_damage =  1.5, args = {221}},                                -- BLADE_2_CENTER          /右侧边条
        [69]  = {critical_damage =    3, args = {219}},                                -- BLADE_2_OUT             /右下侧进气道
        [71]  = {critical_damage =    3, args = {156}},                                -- BLADE_3_CENTER          /进气道处机腹
        [82]  = {critical_damage =    3, args = {152}},                                -- FUSELAGE_BOTTOM         /机身底部
        [83]  = {critical_damage =    2, args = {134}},                                -- WHEEL_F                 /前起落架
        [84]  = {critical_damage =    3, args = {136}},                                -- WHEEL_L                 /左侧主起落架
        [85]  = {critical_damage =    3, args = {135}},                                -- WHEEL_R                 /右侧主起落架
        [90]  = {critical_damage =    1},                                              -- PILOT
        [99]  = {critical_damage =    2, args = {151}},                                -- FUSELAGE_TOP            /前部脊背
        [100] = {critical_damage =    2, args = {300}},                                -- TAIL_TOP                /后部脊背
    },]]
	Damage = verbose_to_dmg_properties({
		["NOSE_CENTER"]				= {args = {146},	critical_damage = 3},
		["NOSE_BOTTOM"]				= {args = {148},	critical_damage = 3},	-- Inlet	-- arg?

		["COCKPIT"]					= {args = {65},		critical_damage = 1},	-- arg?
		["CABIN_LEFT_SIDE"]			= {args = {298},	critical_damage = 3},	-- arg?
		["CABIN_RIGHT_SIDE"]		= {args = {299},	critical_damage = 3},	-- arg?
		["CABIN_BOTTOM"]			= {args = {152},	critical_damage = 3},	-- arg?
		["WHEEL_F"]					= {args = {135},	critical_damage = 3},	-- arg?

		["FUSELAGE_LEFT_SIDE"]		= {args = {154},	critical_damage = 3},	-- arg?
		["FUSELAGE_RIGHT_SIDE"]		= {args = {153},	critical_damage = 3},	-- arg?
		["FUSELAGE_BOTTOM"]			= {args = {152},	critical_damage = 4},	-- arg?
		["WHEEL_L"]					= {args = {137},	critical_damage = 3},	-- arg?
		["WHEEL_R"]					= {args = {136},	critical_damage = 3},	-- arg?

		["TAIL_LEFT_SIDE"]			= {args = {158},	critical_damage = 3},	-- arg?
		["TAIL_RIGHT_SIDE"]			= {args = {157},	critical_damage = 3},	-- arg?
		["TAIL_BOTTOM"]				= {args = {156},	critical_damage = 3},	-- arg?

		["ENGINE_R"]				= {args = {160},	critical_damage = 2},	-- arg?

		["AIR_BRAKE_L"]				= {args = {183}, critical_damage = 1},		-- arg?
		["AIR_BRAKE_R"]				= {args = {185}, critical_damage = 1},		-- arg?
		
		["WING_L_IN"]				= {args = {225}, 	critical_damage = 5, deps_cells = {"WING_L_CENTER", "WING_L_OUT", "WING_L_PART_IN", "AILERON_L"}},
		["WING_L_CENTER"]			= {args = {224}, 	critical_damage = 4, deps_cells = {"WING_L_OUT", "WING_L_PART_IN", "AILERON_L"}},
		["WING_L_OUT"]				= {args = {223},	critical_damage = 2, deps_cells = {"WING_L_PART_IN"}},
		["AILERON_L"]				= {args = {226},	critical_damage = 3},
		["WING_L_PART_IN"]			= {args = {230},	critical_damage = 2},
		
		["WING_R_IN"]				= {args = {215},	critical_damage = 5, deps_cells = {"WING_R_CENTER", "WING_R_OUT", "WING_R_PART_IN", "AILERON_R"}},
		["WING_R_CENTER"]			= {args = {214},	critical_damage = 4, deps_cells = {"WING_R_OUT", "WING_R_PART_IN", "AILERON_R"}},
		["WING_R_OUT"]				= {args = {213},	critical_damage = 2, deps_cells = {"WING_R_PART_IN"}},
		["AILERON_R"]				= {args = {216},	critical_damage = 3},
		["WING_R_PART_IN"]			= {args = {220},	critical_damage = 2},
		
		["ELEVATOR_L_IN"]			= {args = {240},	critical_damage = 2, deps_cells = {"ELEVATOR_L_OUT"}},
		["ELEVATOR_L_OUT"]			= {args = {239},	critical_damage = 1},
		["ELEVATOR_R_IN"]			= {args = {238},	critical_damage = 2, deps_cells = {"ELEVATOR_R_OUT"}},
		["ELEVATOR_R_OUT"]			= {args = {237},	critical_damage = 1},
		
		["FIN_R_BOTTOM"]			= {args = {243},	critical_damage = 4, deps_cells = {"FIN_R_TOP"}, {"FIN_R_CENTER"}, {"RUDDER_R"}},
		["FIN_R_CENTER"]			= {args = {242},	critical_damage = 3, deps_cells = {"FIN_R_TOP"}, {"RUDDER_R"}},
		["FIN_R_TOP"]				= {args = {241},	critical_damage = 2, deps_cells = {"RUDDER_R"}},
		["RUDDER_R"]				= {args = {247},	critical_damage = 1},
	}),-- end of Damage

    DamageParts =
    {
        [1] = "JF-17-oblomok-wing-L",
        [2] = "JF-17-oblomok-wing-R",
        [3] = "JF-17-oblomok-L-part",
        [4] = "JF-17-oblomok-R-part",
        -- [5] = "JF-17-oblomok-tail",
        -- [6] = "JF-17-oblomok-Rudder",
    },

    -- 故障
    Failures = {
        -- power system
        {
            id = 'EMMC_FAILURE_BATTERY_DC1',
            label = _('EMMC_FAILURE_BATTERY_DC1'),
            enable = false, hh = 0, mm = 0, mmint = 1, prob = 100
        },
        {
            id = 'EMMC_FAILURE_BATTERY_DC2',
            label = _('EMMC_FAILURE_BATTERY_DC2'),
            enable = false, hh = 0, mm = 0, mmint = 1, prob = 100
        },
        {
            id = 'EMMC_FAILURE_BATTERY_FCS1',
            label = _('EMMC_FAILURE_BATTERY_FCS1'),
            enable = false, hh = 0, mm = 0, mmint = 1, prob = 100
        },
        {
            id = 'EMMC_FAILURE_BATTERY_FCS2',
            label = _('EMMC_FAILURE_BATTERY_FCS2'),
            enable = false, hh = 0, mm = 0, mmint = 1, prob = 100
        },
        {
            id = 'EMMC_FAILURE_DC_GENERATOR_VOLTAGE_LOW',
            label = _('EMMC_FAILURE_DC_GENERATOR_VOLTAGE_LOW'),
            enable = false, hh = 0, mm = 0, mmint = 1, prob = 100
        },
        {
            id = 'EMMC_FAILURE_DC_GENERATOR_VOLTAGE_HIGH',
            label = _('EMMC_FAILURE_DC_GENERATOR_VOLTAGE_HIGH'),
            enable = false, hh = 0, mm = 0, mmint = 1, prob = 100
        },
        {
            id = 'EMMC_FAILURE_DC_GENERATOR',
            label = _('EMMC_FAILURE_DC_GENERATOR'),
            enable = false, hh = 0, mm = 0, mmint = 1, prob = 100
        },
        {
            id = 'EMMC_FAILURE_DC_GENERATOR_CONTROLLER',
            label = _('EMMC_FAILURE_DC_GENERATOR_CONTROLLER'),
            enable = false, hh = 0, mm = 0, mmint = 1, prob = 100
        },
        {
            id = 'EMMC_FAILURE_DC_GENERATOR_SUBSYSTEM',
            label = _('EMMC_FAILURE_DC_GENERATOR_SUBSYSTEM'),
            enable = false, hh = 0, mm = 0, mmint = 1, prob = 100
        },
        {
            id = 'EMMC_FAILURE_AC_GENERATOR_FEED_LINE',
            label = _('EMMC_FAILURE_AC_GENERATOR_FEED_LINE'),
            enable = false, hh = 0, mm = 0, mmint = 1, prob = 100
        },
        {
            id = 'EMMC_FAILURE_AC_GENERATOR_CONTROLLER',
            label = _('EMMC_FAILURE_AC_GENERATOR_CONTROLLER'),
            enable = false, hh = 0, mm = 0, mmint = 1, prob = 100
        },
        {
            id = 'EMMC_FAILURE_AC_GENERATOR',
            label = _('EMMC_FAILURE_AC_GENERATOR'),
            enable = false, hh = 0, mm = 0, mmint = 1, prob = 100
        },
        {
            id = 'EMMC_FAILURE_AC_GENERATOR_SUBSYSTEM',
            label = _('EMMC_FAILURE_AC_GENERATOR_SUBSYSTEM'),
            enable = false, hh = 0, mm = 0, mmint = 1, prob = 100
        },
        {
            id = 'EMMC_FAILURE_TRU_AC2DC28V',
            label = _('EMMC_FAILURE_TRU_AC2DC28V'),
            enable = false, hh = 0, mm = 0, mmint = 1, prob = 100
        },
        {
            id = 'EMMC_FAILURE_SCU_AC2AC36V',
            label = _('EMMC_FAILURE_SCU_AC2AC36V'),
            enable = false, hh = 0, mm = 0, mmint = 1, prob = 100
        },
        {
            id = 'EMMC_FAILURE_SCU_DC2AC36V',
            label = _('EMMC_FAILURE_SCU_DC2AC36V'),
            enable = false, hh = 0, mm = 0, mmint = 1, prob = 100
        },
        {
            id = 'EMMC_FAILURE_SCU_DC2AC115V',
            label = _('EMMC_FAILURE_SCU_DC2AC115V'),
            enable = false, hh = 0, mm = 0, mmint = 1, prob = 100
        },
        {
            id = 'EMMC_FAILURE_AC_GROUND',
            label = _('EMMC_FAILURE_AC_GROUND'),
            enable = false, hh = 0, mm = 0, mmint = 1, prob = 100
        },

        -- ext light failures
        {
            id = 'FAILURE_EXT_LIGHT_NAV_LEFT',
            label = _('FAILURE_EXT_LIGHT_NAV_LEFT'),
            enable = false, hh = 0, mm = 0, mmint = 1, prob = 100
        },
        {
            id = 'FAILURE_EXT_LIGHT_NAV_RIGHT',
            label = _('FAILURE_EXT_LIGHT_NAV_RIGHT'),
            enable = false, hh = 0, mm = 0, mmint = 1, prob = 100
        },
        {
            id = 'FAILURE_EXT_LIGHT_NAV_TAIL',
            label = _('FAILURE_EXT_LIGHT_NAV_TAIL'),
            enable = false, hh = 0, mm = 0, mmint = 1, prob = 100
        },
        {
            id = 'FAILURE_EXT_LIGHT_ANTICOL',
            label = _('FAILURE_EXT_LIGHT_ANTICOL'),
            enable = false, hh = 0, mm = 0, mmint = 1, prob = 100
        },
        {
            id = 'FAILURE_EXT_LIGHT_FORMATION_LEFT',
            label = _('FAILURE_EXT_LIGHT_FORMATION_LEFT'),
            enable = false, hh = 0, mm = 0, mmint = 1, prob = 100
        },
        {
            id = 'FAILURE_EXT_LIGHT_FORMATION_RIGHT',
            label = _('FAILURE_EXT_LIGHT_FORMATION_RIGHT'),
            enable = false, hh = 0, mm = 0, mmint = 1, prob = 100
        },
        {
            id = 'FAILURE_EXT_LIGHT_TAXI',
            label = _('FAILURE_EXT_LIGHT_TAXI'),
            enable = false, hh = 0, mm = 0, mmint = 1, prob = 100
        },
        {
            id = 'FAILURE_EXT_LIGHT_LAND',
            label = _('FAILURE_EXT_LIGHT_LAND'),
            enable = false, hh = 0, mm = 0, mmint = 1, prob = 100
        },

        -- Hydro failures
        {
            id = 'FAILURE_HYDRAULICS_EMERGE',
            label = _('FAILURE_HYDRAULICS_EMERGE'),
            enable = false, hh = 0, mm = 0, mmint = 1, prob = 100
        },
        {
            id = 'FAILURE_HYDRAULICS_EMERGE_ACCU',
            label = _('FAILURE_HYDRAULICS_EMERGE_ACCU'),
            enable = false, hh = 0, mm = 0, mmint = 1, prob = 100
        },
        {
            id = 'FAILURE_HYDRAULICS_1_PUMP',
            label = _('FAILURE_HYDRAULICS_1_PUMP'),
            enable = false, hh = 0, mm = 0, mmint = 1, prob = 100
        },
        {
            id = 'FAILURE_HYDRAULICS_1_ACCU',
            label = _('FAILURE_HYDRAULICS_1_ACCU'),
            enable = false, hh = 0, mm = 0, mmint = 1, prob = 100
        },
        {
            id = 'FAILURE_HYDRAULICS_1_EXTERNAL_LEAKAGE',
            label = _('FAILURE_HYDRAULICS_1_EXTERNAL_LEAKAGE'),
            enable = false, hh = 0, mm = 0, mmint = 1, prob = 100
        },
        {
            id = 'FAILURE_HYDRAULICS_1_EXTERNAL_LEAKAGE_SEVERE',
            label = _('FAILURE_HYDRAULICS_1_EXTERNAL_LEAKAGE_SEVERE'),
            enable = false, hh = 0, mm = 0, mmint = 1, prob = 100
        },
        {
            id = 'FAILURE_HYDRAULICS_1_INTERNAL_LEAKAGE',
            label = _('FAILURE_HYDRAULICS_1_INTERNAL_LEAKAGE'),
            enable = false, hh = 0, mm = 0, mmint = 1, prob = 100
        },
        {
            id = 'FAILURE_HYDRAULICS_2_PUMP',
            label = _('FAILURE_HYDRAULICS_2_PUMP'),
            enable = false, hh = 0, mm = 0, mmint = 1, prob = 100
        },
        {
            id = 'FAILURE_HYDRAULICS_2_ACCU',
            label = _('FAILURE_HYDRAULICS_2_ACCU'),
            enable = false, hh = 0, mm = 0, mmint = 1, prob = 100
        },
        {
            id = 'FAILURE_HYDRAULICS_2_EXTERNAL_LEAKAGE',
            label = _('FAILURE_HYDRAULICS_2_EXTERNAL_LEAKAGE'),
            enable = false, hh = 0, mm = 0, mmint = 1, prob = 100
        },
        {
            id = 'FAILURE_HYDRAULICS_2_EXTERNAL_LEAKAGE_SEVERE',
            label = _('FAILURE_HYDRAULICS_2_EXTERNAL_LEAKAGE_SEVERE'),
            enable = false, hh = 0, mm = 0, mmint = 1, prob = 100
        },
        {
            id = 'FAILURE_HYDRAULICS_2_INTERNAL_LEAKAGE',
            label = _('FAILURE_HYDRAULICS_2_INTERNAL_LEAKAGE'),
            enable = false, hh = 0, mm = 0, mmint = 1, prob = 100
        },

        -- Oxygen failures
        {
            id = 'OXY_FAILURE_AUTO_100_O2',
            label = _('OXY_FAILURE_AUTO_100_O2'),
            enable = false, hh = 0, mm = 0, mmint = 1, prob = 100
        },
        {
            id = 'OXY_FAILURE_AIR_O2_SWITCH',
            label = _('OXY_FAILURE_AIR_O2_SWITCH'),
            enable = false, hh = 0, mm = 0, mmint = 1, prob = 100
        },
        {
            id = 'OXY_FAILURE_HIGH_PRESS',
            label = _('OXY_FAILURE_HIGH_PRESS'),
            enable = false, hh = 0, mm = 0, mmint = 1, prob = 100
        },
        {
            id = 'OXY_FAILURE_L_LEAK',
            label = _('OXY_FAILURE_L_LEAK'),
            enable = false, hh = 0, mm = 0, mmint = 1, prob = 100
        },
        {
            id = 'OXY_FAILURE_L_LEAK_SEVERE',
            label = _('OXY_FAILURE_L_LEAK_SEVERE'),
            enable = false, hh = 0, mm = 0, mmint = 1, prob = 100
        },
        {
            id = 'OXY_FAILURE_R_LEAK',
            label = _('OXY_FAILURE_R_LEAK'),
            enable = false, hh = 0, mm = 0, mmint = 1, prob = 100
        },
        {
            id = 'OXY_FAILURE_R_LEAK_SEVERE',
            label = _('OXY_FAILURE_R_LEAK_SEVERE'),
            enable = false, hh = 0, mm = 0, mmint = 1, prob = 100
        },

        ---- Nav related failures
        -- SHARS failure
        {
            id = 'SHARS_FAILURE_SENSOR',
            label = _('SHARS_FAILURE_SENSOR'),
            enable = false, hh = 0, mm = 0, mmint = 1, prob = 100
        },

        -- INS failure
        {
            id = 'INS_FAILURE_GYRO',
            label = _('INS_FAILURE_GYRO'),
            enable = false, hh = 0, mm = 0, mmint = 1, prob = 100
        },
        {
            id = 'INS_FAILURE_ACC',
            label = _('INS_FAILURE_ACC'),
            enable = false, hh = 0, mm = 0, mmint = 1, prob = 100
        },
        {
            id = 'INS_FAILURE_DATA_INVALID',
            label = _('INS_FAILURE_DATA_INVALID'),
            enable = false, hh = 0, mm = 0, mmint = 1, prob = 100
        },
        --[[{
            id = 'INS_GPS_NAV_MODE_ACTIVE',
            label = _('INS_GPS_NAV_MODE_ACTIVE'),
            enable = false, hh = 0, mm = 0, mmint = 1, prob = 100
        },]]
        {
            id = 'INS_FAILURE_ALGNMENT',
            label = _('INS_FAILURE_ALGNMENT'),
            enable = false, hh = 0, mm = 0, mmint = 1, prob = 100
        },
        {
            id = 'INS_FAILURE_ALT_INVALID',
            label = _('INS_FAILURE_ALT_INVALID'),
            enable = false, hh = 0, mm = 0, mmint = 1, prob = 100
        },
        {
            id = 'INS_DATA_DEGRADED',
            label = _('INS_DATA_DEGRADED'),
            enable = false, hh = 0, mm = 0, mmint = 1, prob = 100
        },
        {
            id = 'INS_WIND_INVALID',
            label = _('INS_WIND_INVALID'),
            enable = false, hh = 0, mm = 0, mmint = 1, prob = 100
        },
        {
            id = 'INS_FAILURE_GPS_RECEIVER',
            label = _('INS_FAILURE_GPS_RECEIVER'),
            enable = false, hh = 0, mm = 0, mmint = 1, prob = 100
        },
        {
            id = 'INS_PU_REJECTED',
            label = _('INS_PU_REJECTED'),
            enable = false, hh = 0, mm = 0, mmint = 1, prob = 100
        },

        -- SNS receiver failures
        {
            id = 'SNS_FAILURE_ANTENNA',
            label = _('SNS_FAILURE_ANTENNA'),
            enable = false, hh = 0, mm = 0, mmint = 1, prob = 100
        },
        {
            id = 'FAILURE_SNS_CABLE',
            label = _('SNS_FAILURE_CABLE'),
            enable = false, hh = 0, mm = 0, mmint = 1, prob = 100
        },
        {
            id = 'SNS_FAILURE_COMPUTER',
            label = _('SNS_FAILURE_COMPUTER'),
            enable = false, hh = 0, mm = 0, mmint = 1, prob = 100
        },

        ---- Defense
        -- RWR failures
        {
            id = 'RWR_FAILURE_ANTENNA_FRONT_LEFT',
            label = _('RWR_FAILURE_ANTENNA_FRONT_LEFT'),
            enable = false, hh = 0, mm = 0, mmint = 1, prob = 100
        },
        {
            id = 'RWR_FAILURE_ANTENNA_REAR_LEFT',
            label = _('RWR_FAILURE_ANTENNA_REAR_LEFT'),
            enable = false, hh = 0, mm = 0, mmint = 1, prob = 100
        },
        {
            id = 'RWR_FAILURE_ANTENNA_FRONT_RIGHT',
            label = _('RWR_FAILURE_ANTENNA_FRONT_RIGHT'),
            enable = false, hh = 0, mm = 0, mmint = 1, prob = 100
        },
        {
            id = 'RWR_FAILURE_ANTENNA_REAR_RIGHT',
            label = _('RWR_FAILURE_ANTENNA_REAR_RIGHT'),
            enable = false, hh = 0, mm = 0, mmint = 1, prob = 100
        },
        {
            id = 'RWR_FAILURE_RECEIVER_XX1',
            label = _('RWR_FAILURE_RECEIVER_XX1'),
            enable = false, hh = 0, mm = 0, mmint = 1, prob = 100
        },
        {
            id = 'RWR_FAILURE_RECEIVER_XX2',
            label = _('RWR_FAILURE_RECEIVER_XX2'),
            enable = false, hh = 0, mm = 0, mmint = 1, prob = 100
        },
        {
            id = 'RWR_FAILURE_RECEIVER_XX3',
            label = _('RWR_FAILURE_RECEIVER_XX3'),
            enable = false, hh = 0, mm = 0, mmint = 1, prob = 100
        },
        {
            id = 'RWR_FAILURE_DB_NOT_LOADED',
            label = _('RWR_FAILURE_DB_NOT_LOADED'),
            enable = false, hh = 0, mm = 0, mmint = 1, prob = 100
        },
        {
            id = 'RWR_FAILURE_COMPUTER',
            label = _('RWR_FAILURE_COMPUTER'),
            enable = false, hh = 0, mm = 0, mmint = 1, prob = 100
        },

        -- OESP failures
        {
            id = 'OESP_FAILURE_FL_DISP_L',
            label = _('OESP_FAILURE_FL_DISP_L'),
            enable = false, hh = 0, mm = 0, mmint = 1, prob = 100
        },
        {
            id = 'OESP_FAILURE_FL_DISP_R',
            label = _('OESP_FAILURE_FL_DISP_R'),
            enable = false, hh = 0, mm = 0, mmint = 1, prob = 100
        },
        {
            id = 'OESP_FAILURE_CH_DISP_L',
            label = _('OESP_FAILURE_CH_DISP_L'),
            enable = false, hh = 0, mm = 0, mmint = 1, prob = 100
        },
        {
            id = 'OESP_FAILURE_CH_DISP_R',
            label = _('OESP_FAILURE_CH_DISP_R'),
            enable = false, hh = 0, mm = 0, mmint = 1, prob = 100
        },
        {
            id = 'OESP_FAILURE_MAWS_L',
            label = _('OESP_FAILURE_MAWS_L'),
            enable = false, hh = 0, mm = 0, mmint = 1, prob = 100
        },
        {
            id = 'OESP_FAILURE_MAWS_R',
            label = _('OESP_FAILURE_MAWS_R'),
            enable = false, hh = 0, mm = 0, mmint = 1, prob = 100
        },

        ---- Weapon
        -- SMS failures
        {
            id = 'FAILURE_SMS_PYLON_1',
            label = _('FAILURE_SMS_PYLON_1'),
            enable = false, hh = 0, mm = 0, mmint = 1, prob = 100
        },
        {
            id = 'FAILURE_SMS_PYLON_2',
            label = _('FAILURE_SMS_PYLON_2'),
            enable = false, hh = 0, mm = 0, mmint = 1, prob = 100
        },
        {
            id = 'FAILURE_SMS_PYLON_3',
            label = _('FAILURE_SMS_PYLON_3'),
            enable = false, hh = 0, mm = 0, mmint = 1, prob = 100
        },
        {
            id = 'FAILURE_SMS_PYLON_4',
            label = _('FAILURE_SMS_PYLON_4'),
            enable = false, hh = 0, mm = 0, mmint = 1, prob = 100
        },
        {
            id = 'FAILURE_SMS_PYLON_5',
            label = _('FAILURE_SMS_PYLON_5'),
            enable = false, hh = 0, mm = 0, mmint = 1, prob = 100
        },
        {
            id = 'FAILURE_SMS_PYLON_6',
            label = _('FAILURE_SMS_PYLON_6'),
            enable = false, hh = 0, mm = 0, mmint = 1, prob = 100
        },
        {
            id = 'FAILURE_SMS_PYLON_7',
            label = _('FAILURE_SMS_PYLON_7'),
            enable = false, hh = 0, mm = 0, mmint = 1, prob = 100
        },

        ---- Misc
        -- DTC failures
        {
            id = 'DTC_FAILURE_CARD_BROKEN',
            label = _('DTC_FAILURE_CARD_BROKEN'),
            enable = false, hh = 0, mm = 0, mmint = 1, prob = 100
        },
        {
            id = 'DTC_FAILURE_DATA_CRC',
            label = _('DTC_FAILURE_DATA_CRC'),
            enable = false, hh = 0, mm = 0, mmint = 1, prob = 100
        },
        {
            id = 'DTC_FAILURE_DATA_DECIPHER',
            label = _('DTC_FAILURE_DATA_DECIPHER'),
            enable = false, hh = 0, mm = 0, mmint = 1, prob = 100
        },
        {
            id = 'DTC_FAILURE_READER_BROKEN',
            label = _('DTC_FAILURE_READER_BROKEN'),
            enable = false, hh = 0, mm = 0, mmint = 1, prob = 100
        },

        -- radar
        {
            id = 'RDR_FAILURE_ARRAY',
            label = _('RDR_FAILURE_ARRAY'),
            enable = false, hh = 0, mm = 0, mmint = 1, prob = 100
        },
        {
            id = 'RDR_FAILURE_PEDESTAL',
            label = _('RDR_FAILURE_PEDESTAL'),
            enable = false, hh = 0, mm = 0, mmint = 1, prob = 100
        },
        {
            id = 'RDR_FAILURE_SERVOLOOP',
            label = _('RDR_FAILURE_SERVOLOOP'),
            enable = false, hh = 0, mm = 0, mmint = 1, prob = 100
        },
        {
            id = 'RDR_FAILURE_RX_FRONT_END',
            label = _('RDR_FAILURE_RX_FRONT_END'),
            enable = false, hh = 0, mm = 0, mmint = 1, prob = 100
        },
        {
            id = 'RDR_FAILURE_RECEIVER',
            label = _('RDR_FAILURE_RECEIVER'),
            enable = false, hh = 0, mm = 0, mmint = 1, prob = 100
        },
        {
            id = 'RDR_FAILURE_TRANSMITTER',
            label = _('RDR_FAILURE_TRANSMITTER'),
            enable = false, hh = 0, mm = 0, mmint = 1, prob = 100
        },
        {
            id = 'RDR_FAILURE_PROCESSOR',
            label = _('RDR_FAILURE_PROCESSOR'),
            enable = false, hh = 0, mm = 0, mmint = 1, prob = 100
        },
        {
            id = 'RDR_FAILURE_ANTENNA_DEGRATION',
            label = _('RDR_FAILURE_ANTENNA_DEGRATION'),
            enable = false, hh = 0, mm = 0, mmint = 1, prob = 100
        },
        {
            id = 'RDR_FAILURE_RX_FRONT_END_DEGRATION',
            label = _('RDR_FAILURE_RX_FRONT_END_DEGRATION'),
            enable = false, hh = 0, mm = 0, mmint = 1, prob = 100
        },
        {
            id = 'RDR_FAILURE_RECEIVER_DEGRATION',
            label = _('RDR_FAILURE_RECEIVER_DEGRATION'),
            enable = false, hh = 0, mm = 0, mmint = 1, prob = 100
        },
        {
            id = 'RDR_FAILURE_TRANSMITTER_DEGRATION',
            label = _('RDR_FAILURE_TRANSMITTER_DEGRATION'),
            enable = false, hh = 0, mm = 0, mmint = 1, prob = 100
        },
        {
            id = 'RDR_FAILURE_PROCESSOR_DEGRATION',
            label = _('RDR_FAILURE_PROCESSOR_DEGRATION'),
            enable = false, hh = 0, mm = 0, mmint = 1, prob = 100
        },
        {
            id = 'RDR_FAILURE_TRANSMITTER_OVERHEAT',
            label = _('RDR_FAILURE_TRANSMITTER_OVERHEAT'),
            enable = false, hh = 0, mm = 0, mmint = 1, prob = 100
        },
        {
            id = 'RDR_FAILURE_PROCESSOR_OVERHEAT',
            label = _('RDR_FAILURE_PROCESSOR_OVERHEAT'),
            enable = false, hh = 0, mm = 0, mmint = 1, prob = 100
        },
        {
            id = 'RDR_FAILURE_SERVO_OVERHEAT',
            label = _('RDR_FAILURE_SERVO_OVERHEAT'),
            enable = false, hh = 0, mm = 0, mmint = 1, prob = 100
        },
        {
            id = 'RDR_FAILURE_PREESURIZATION',
            label = _('RDR_FAILURE_PREESURIZATION'),
            enable = false, hh = 0, mm = 0, mmint = 1, prob = 100
        },
        {
            id = 'RDR_FAILURE_DEGRATED_PERFORMANCE',
            label = _('RDR_FAILURE_DEGRATED_PERFORMANCE'),
            enable = false, hh = 0, mm = 0, mmint = 1, prob = 100
        },

        -- WCS
        {
            id = 'MWMMC_FAILURE',
            label = _('MWMMC_FAILURE'),
            enable = false, hh = 0, mm = 0, mmint = 1, prob = 100
        },
        {
            id = 'MWMMC_FAILURE_CPU',
            label = _('MWMMC_FAILURE_CPU'),
            enable = false, hh = 0, mm = 0, mmint = 1, prob = 100
        },
        {
            id = 'MWMMC_FAILURE_IOC',
            label = _('MWMMC_FAILURE_IOC'),
            enable = false, hh = 0, mm = 0, mmint = 1, prob = 100
        },
        {
            id = 'MWMMC_FAILURE_MBI',
            label = _('MWMMC_FAILURE_MBI'),
            enable = false, hh = 0, mm = 0, mmint = 1, prob = 100
        },
        {
            id = 'MWMMC_FAILURE_AVI',
            label = _('MWMMC_FAILURE_AVI'),
            enable = false, hh = 0, mm = 0, mmint = 1, prob = 100
        },
        {
            id = 'MWMMC_FAILURE_DMP',
            label = _('MWMMC_FAILURE_DMP'),
            enable = false, hh = 0, mm = 0, mmint = 1, prob = 100
        },
        {
            id = 'MWMMC_FAILURE_PS',
            label = _('MWMMC_FAILURE_PS'),
            enable = false, hh = 0, mm = 0, mmint = 1, prob = 100
        },
        {
            id = 'MWMMC_FAILURE_1553B_EMMC',
            label = _('MWMMC_FAILURE_1553B_EMMC'),
            enable = false, hh = 0, mm = 0, mmint = 1, prob = 100
        },
        {
            id = 'MWMMC_FAILURE_1553B_FCS',
            label = _('MWMMC_FAILURE_1553B_FCS'),
            enable = false, hh = 0, mm = 0, mmint = 1, prob = 100
        },
        {
            id = 'MWMMC_FAILURE_1553B_IFF',
            label = _('MWMMC_FAILURE_1553B_IFF'),
            enable = false, hh = 0, mm = 0, mmint = 1, prob = 100
        },
        {
            id = 'MWMMC_FAILURE_1553B_ILS',
            label = _('MWMMC_FAILURE_1553B_ILS'),
            enable = false, hh = 0, mm = 0, mmint = 1, prob = 100
        },
        {
            id = 'MWMMC_FAILURE_1553B_INS',
            label = _('MWMMC_FAILURE_1553B_INS'),
            enable = false, hh = 0, mm = 0, mmint = 1, prob = 100
        },
        {
            id = 'MWMMC_FAILURE_1553B_LMFCD',
            label = _('MWMMC_FAILURE_1553B_LMFCD'),
            enable = false, hh = 0, mm = 0, mmint = 1, prob = 100
        },
        {
            id = 'MWMMC_FAILURE_1553B_CMFCD',
            label = _('MWMMC_FAILURE_1553B_CMFCD'),
            enable = false, hh = 0, mm = 0, mmint = 1, prob = 100
        },
        {
            id = 'MWMMC_FAILURE_1553B_RMFCD',
            label = _('MWMMC_FAILURE_1553B_RMFCD'),
            enable = false, hh = 0, mm = 0, mmint = 1, prob = 100
        },
        {
            id = 'MWMMC_FAILURE_1553B_RDR',
            label = _('MWMMC_FAILURE_1553B_RDR'),
            enable = false, hh = 0, mm = 0, mmint = 1, prob = 100
        },
        {
            id = 'MWMMC_FAILURE_1553B_OESP',
            label = _('MWMMC_FAILURE_1553B_OESP'),
            enable = false, hh = 0, mm = 0, mmint = 1, prob = 100
        },
        {
            id = 'MWMMC_FAILURE_1553B_RALT',
            label = _('MWMMC_FAILURE_1553B_RALT'),
            enable = false, hh = 0, mm = 0, mmint = 1, prob = 100
        },
        {
            id = 'MWMMC_FAILURE_1553B_RWR',
            label = _('MWMMC_FAILURE_1553B_RWR'),
            enable = false, hh = 0, mm = 0, mmint = 1, prob = 100
        },
        {
            id = 'MWMMC_FAILURE_1553B_SAIU',
            label = _('MWMMC_FAILURE_1553B_SAIU'),
            enable = false, hh = 0, mm = 0, mmint = 1, prob = 100
        },
        {
            id = 'MWMMC_FAILURE_1553B_HUD',
            label = _('MWMMC_FAILURE_1553B_HUD'),
            enable = false, hh = 0, mm = 0, mmint = 1, prob = 100
        },
        {
            id = 'MWMMC_FAILURE_1553B_SPJ',
            label = _('MWMMC_FAILURE_1553B_SPJ'),
            enable = false, hh = 0, mm = 0, mmint = 1, prob = 100
        },
        {
            id = 'MWMMC_FAILURE_1553B_TACAN',
            label = _('MWMMC_FAILURE_1553B_TACAN'),
            enable = false, hh = 0, mm = 0, mmint = 1, prob = 100
        },
        {
            id = 'SWMMC_FAILURE',
            label = _('SWMMC_FAILURE'),
            enable = false, hh = 0, mm = 0, mmint = 1, prob = 100
        },
        {
            id = 'SWMMC_FAILURE_CPU',
            label = _('SWMMC_FAILURE_CPU'),
            enable = false, hh = 0, mm = 0, mmint = 1, prob = 100
        },
        {
            id = 'SWMMC_FAILURE_IOC',
            label = _('SWMMC_FAILURE_IOC'),
            enable = false, hh = 0, mm = 0, mmint = 1, prob = 100
        },
        {
            id = 'SWMMC_FAILURE_MBI',
            label = _('SWMMC_FAILURE_MBI'),
            enable = false, hh = 0, mm = 0, mmint = 1, prob = 100
        },
        {
            id = 'SWMMC_FAILURE_AVI',
            label = _('SWMMC_FAILURE_AVI'),
            enable = false, hh = 0, mm = 0, mmint = 1, prob = 100
        },
        {
            id = 'SWMMC_FAILURE_DMP',
            label = _('SWMMC_FAILURE_DMP'),
            enable = false, hh = 0, mm = 0, mmint = 1, prob = 100
        },
        {
            id = 'SWMMC_FAILURE_PS',
            label = _('SWMMC_FAILURE_PS'),
            enable = false, hh = 0, mm = 0, mmint = 1, prob = 100
        },
        {
            id = 'SWMMC_FAILURE_CTVS',
            label = _('SWMMC_FAILURE_CTVS'),
            enable = false, hh = 0, mm = 0, mmint = 1, prob = 100
        },
        {
            id = 'SWMMC_FAILURE_HUD',
            label = _('SWMMC_FAILURE_HUD'),
            enable = false, hh = 0, mm = 0, mmint = 1, prob = 100
        },
        {
            id = 'SWMMC_FAILURE_LMFCD',
            label = _('SWMMC_FAILURE_LMFCD'),
            enable = false, hh = 0, mm = 0, mmint = 1, prob = 100
        },
        {
            id = 'SWMMC_FAILURE_CMFCD',
            label = _('SWMMC_FAILURE_CMFCD'),
            enable = false, hh = 0, mm = 0, mmint = 1, prob = 100
        },
        {
            id = 'SWMMC_FAILURE_RMFCD',
            label = _('SWMMC_FAILURE_RMFCD'),
            enable = false, hh = 0, mm = 0, mmint = 1, prob = 100
        },
        {
            id = 'SWMMC_AAP_NO_RS422_COMM',
            label = _('SWMMC_AAP_NO_RS422_COMM'),
            enable = false, hh = 0, mm = 0, mmint = 1, prob = 100
        },
        {
            id = 'SWMMC_FAILURE_AAP',
            label = _('SWMMC_FAILURE_AAP'),
            enable = false, hh = 0, mm = 0, mmint = 1, prob = 100
        },
        {
            id = 'SWMMC_DVR_NO_RS422_COMM',
            label = _('SWMMC_DVR_NO_RS422_COMM'),
            enable = false, hh = 0, mm = 0, mmint = 1, prob = 100
        },
        {
            id = 'SWMMC_FAILURE_DVR',
            label = _('SWMMC_FAILURE_DVR'),
            enable = false, hh = 0, mm = 0, mmint = 1, prob = 100
        },
        {
            id = 'SWMMC_CSU_NO_RS422_COMM',
            label = _('SWMMC_CSU_NO_RS422_COMM'),
            enable = false, hh = 0, mm = 0, mmint = 1, prob = 100
        },
        {
            id = 'SWMMC_FAILURE_CSU',
            label = _('SWMMC_FAILURE_CSU'),
            enable = false, hh = 0, mm = 0, mmint = 1, prob = 100
        },

        ---- EMMC MISC
        {
            id = 'EMMC_FAILURE_DADS',
            label = _('EMMC_FAILURE_DADS'),
            enable = false, hh = 0, mm = 0, mmint = 1, prob = 100
        },
        {
            id = 'EMMC_FAILURE_LANDING_GEAR',
            label = _('EMMC_FAILURE_LANDING_GEAR'),
            enable = false, hh = 0, mm = 0, mmint = 1, prob = 100
        },
        {
            id = 'EMMC_FAILURE_FUEL_LOW_LEVEL',
            label = _('EMMC_FAILURE_FUEL_LOW_LEVEL'),
            enable = false, hh = 0, mm = 0, mmint = 1, prob = 100
        },
        {
            id = 'EMMC_FAILURE_FUEL_START_PUMP',
            label = _('EMMC_FAILURE_FUEL_START_PUMP'),
            enable = false, hh = 0, mm = 0, mmint = 1, prob = 100
        },
        {
            id = 'EMMC_FAILURE_FUEL_LOWER_PUMP',
            label = _('EMMC_FAILURE_FUEL_LOWER_PUMP'),
            enable = false, hh = 0, mm = 0, mmint = 1, prob = 100
        },
        {
            id = 'EMMC_FAILURE_FUEL_UPPER_PUMP',
            label = _('EMMC_FAILURE_FUEL_UPPER_PUMP'),
            enable = false, hh = 0, mm = 0, mmint = 1, prob = 100
        },
        {
            id = 'EMMC_FAILURE_CANOPY_UNLOCK',
            label = _('EMMC_FAILURE_CANOPY_UNLOCK'),
            enable = false, hh = 0, mm = 0, mmint = 1, prob = 100
        },
        {
            id = 'EMMC_FAILURE_COCKPIT_PRESSURE_LOW',
            label = _('EMMC_FAILURE_COCKPIT_PRESSURE_LOW'),
            enable = false, hh = 0, mm = 0, mmint = 1, prob = 100
        },
        {
            id = 'EMMC_FAILURE_TRU',
            label = _('EMMC_FAILURE_TRU'),
            enable = false, hh = 0, mm = 0, mmint = 1, prob = 100
        },
        {
            id = 'EMMC_FAILURE_LWC',
            label = _('EMMC_FAILURE_LWC'),
            enable = false, hh = 0, mm = 0, mmint = 1, prob = 100
        },
        {
            id = 'EMMC_FAILURE_EMMC',
            label = _('EMMC_FAILURE_EMMC'),
            enable = false, hh = 0, mm = 0, mmint = 1, prob = 100
        },
        {
            id = 'EMMC_FAILURE_PROBES_HEATING',
            label = _('EMMC_FAILURE_PROBES_HEATING'),
            enable = false, hh = 0, mm = 0, mmint = 1, prob = 100
        },
        {
            id = 'EMMC_FAILURE_STATIC_INVERTER',
            label = _('EMMC_FAILURE_STATIC_INVERTER'),
            enable = false, hh = 0, mm = 0, mmint = 1, prob = 100
        },
        {
            id = 'EMMC_FAILURE_ECS_OFF',
            label = _('EMMC_FAILURE_ECS_OFF'),
            enable = false, hh = 0, mm = 0, mmint = 1, prob = 100
        },
        {
            id = 'EMMC_FAILURE_ELECT_EQUIP_HOT',
            label = _('EMMC_FAILURE_ELECT_EQUIP_HOT'),
            enable = false, hh = 0, mm = 0, mmint = 1, prob = 100
        },
        {
            id = 'EMMC_FAILURE_SHARS',
            label = _('EMMC_FAILURE_SHARS'),
            enable = false, hh = 0, mm = 0, mmint = 1, prob = 100
        },
        {
            id = 'EMMC_FAILURE_BAU',
            label = _('EMMC_FAILURE_BAU'),
            enable = false, hh = 0, mm = 0, mmint = 1, prob = 100
        },
        {
            id = 'EMMC_FAILURE_DADS_RPTU',
            label = _('EMMC_FAILURE_DADS_RPTU'),
            enable = false, hh = 0, mm = 0, mmint = 1, prob = 100
        },
        {
            id = 'EMMC_FAILURE_DADS_LPTU',
            label = _('EMMC_FAILURE_DADS_LPTU'),
            enable = false, hh = 0, mm = 0, mmint = 1, prob = 100
        },
        {
            id = 'EMMC_FAILURE_DADS_MPTU',
            label = _('EMMC_FAILURE_DADS_MPTU'),
            enable = false, hh = 0, mm = 0, mmint = 1, prob = 100
        },

        -- CNI
        {
            id = 'CNI_FAILURE_COM1',
            label = _('CNI_FAILURE_COM1'),
            enable = false, hh = 0, mm = 0, mmint = 1, prob = 100
        },
        {
            id = 'CNI_FAILURE_COM1_SECOS',
            label = _('CNI_FAILURE_COM1_SECOS'),
            enable = false, hh = 0, mm = 0, mmint = 1, prob = 100
        },
        {
            id = 'CNI_FAILURE_COM2',
            label = _('CNI_FAILURE_COM2'),
            enable = false, hh = 0, mm = 0, mmint = 1, prob = 100
        },
        {
            id = 'CNI_FAILURE_COM2_SECOS',
            label = _('CNI_FAILURE_COM2_SECOS'),
            enable = false, hh = 0, mm = 0, mmint = 1, prob = 100
        },
        {
            id = 'CNI_FAILURE_TACAN',
            label = _('CNI_FAILURE_TACAN'),
            enable = false, hh = 0, mm = 0, mmint = 1, prob = 100
        },
        {
            id = 'CNI_FAILURE_ILS',
            label = _('CNI_FAILURE_ILS'),
            enable = false, hh = 0, mm = 0, mmint = 1, prob = 100
        },
        {
            id = 'CNI_FAILURE_IFF_TX',
            label = _('CNI_FAILURE_IFF_TX'),
            enable = false, hh = 0, mm = 0, mmint = 1, prob = 100
        },
        {
            id = 'CNI_FAILURE_IFF_RX',
            label = _('CNI_FAILURE_IFF_RX'),
            enable = false, hh = 0, mm = 0, mmint = 1, prob = 100
        },
        {
            id = 'CNI_FAILURE_RALT',
            label = _('CNI_FAILURE_RALT'),
            enable = false, hh = 0, mm = 0, mmint = 1, prob = 100
        },
        -- ZCP
        {
            id = 'ZCP_FAILURE_MALFUNC',
            label = _('ZCP_FAILURE_MALFUNC'),
            enable = false, hh = 0, mm = 0, mmint = 1, prob = 100
        },
        { id = 'FCS_FAILURE_COMP_1', label = _('FCS_FAILURE_COMP_1'), enable = false, hh = 0, mm = 0, mmint = 1, prob = 100 },
        { id = 'FCS_FAILURE_COMP_2', label = _('FCS_FAILURE_COMP_2'), enable = false, hh = 0, mm = 0, mmint = 1, prob = 100 },
        { id = 'FCS_FAILURE_COMP_3', label = _('FCS_FAILURE_COMP_3'), enable = false, hh = 0, mm = 0, mmint = 1, prob = 100 },
        { id = 'FCS_FAILURE_COMP_4', label = _('FCS_FAILURE_COMP_4'), enable = false, hh = 0, mm = 0, mmint = 1, prob = 100 },
        { id = 'FCS_FAILURE_L_ELEVATOR_ELEC_A', label = _('FCS_FAILURE_L_ELEVATOR_ELEC_A'), enable = false, hh = 0, mm = 0, mmint = 1, prob = 100 },
        { id = 'FCS_FAILURE_L_ELEVATOR_ELEC_B', label = _('FCS_FAILURE_L_ELEVATOR_ELEC_B'), enable = false, hh = 0, mm = 0, mmint = 1, prob = 100 },
        { id = 'FCS_FAILURE_L_ELEVATOR_ELEC_C', label = _('FCS_FAILURE_L_ELEVATOR_ELEC_C'), enable = false, hh = 0, mm = 0, mmint = 1, prob = 100 },
        { id = 'FCS_FAILURE_L_ELEVATOR_ELEC_D', label = _('FCS_FAILURE_L_ELEVATOR_ELEC_D'), enable = false, hh = 0, mm = 0, mmint = 1, prob = 100 },
        { id = 'FCS_FAILURE_R_ELEVATOR_ELEC_A', label = _('FCS_FAILURE_R_ELEVATOR_ELEC_A'), enable = false, hh = 0, mm = 0, mmint = 1, prob = 100 },
        { id = 'FCS_FAILURE_R_ELEVATOR_ELEC_B', label = _('FCS_FAILURE_R_ELEVATOR_ELEC_B'), enable = false, hh = 0, mm = 0, mmint = 1, prob = 100 },
        { id = 'FCS_FAILURE_R_ELEVATOR_ELEC_C', label = _('FCS_FAILURE_R_ELEVATOR_ELEC_C'), enable = false, hh = 0, mm = 0, mmint = 1, prob = 100 },
        { id = 'FCS_FAILURE_R_ELEVATOR_ELEC_D', label = _('FCS_FAILURE_R_ELEVATOR_ELEC_D'), enable = false, hh = 0, mm = 0, mmint = 1, prob = 100 },
        { id = 'FCS_FAILURE_L_ELEVATOR_HYD_1', label = _('FCS_FAILURE_L_ELEVATOR_HYD_1'), enable = false, hh = 0, mm = 0, mmint = 1, prob = 100 },
        { id = 'FCS_FAILURE_L_ELEVATOR_HYD_2', label = _('FCS_FAILURE_L_ELEVATOR_HYD_2'), enable = false, hh = 0, mm = 0, mmint = 1, prob = 100 },
        { id = 'FCS_FAILURE_R_ELEVATOR_HYD_1', label = _('FCS_FAILURE_R_ELEVATOR_HYD_1'), enable = false, hh = 0, mm = 0, mmint = 1, prob = 100 },
        { id = 'FCS_FAILURE_R_ELEVATOR_HYD_2', label = _('FCS_FAILURE_R_ELEVATOR_HYD_2'), enable = false, hh = 0, mm = 0, mmint = 1, prob = 100 },
        { id = 'FCS_FAILURE_ROLL_ELEC_SERVO_1', label = _('FCS_FAILURE_ROLL_ELEC_SERVO_1'), enable = false, hh = 0, mm = 0, mmint = 1, prob = 100 },
        { id = 'FCS_FAILURE_ROLL_ELEC_SERVO_2', label = _('FCS_FAILURE_ROLL_ELEC_SERVO_2'), enable = false, hh = 0, mm = 0, mmint = 1, prob = 100 },
        { id = 'FCS_FAILURE_YAW_ELEC_SERVO_1', label = _('FCS_FAILURE_YAW_ELEC_SERVO_1'), enable = false, hh = 0, mm = 0, mmint = 1, prob = 100 },
        { id = 'FCS_FAILURE_YAW_ELEC_SERVO_2', label = _('FCS_FAILURE_YAW_ELEC_SERVO_2'), enable = false, hh = 0, mm = 0, mmint = 1, prob = 100 },
        { id = 'FCS_FAILURE_PITCH_RATE_GYRO_1', label = _('FCS_FAILURE_PITCH_RATE_GYRO_1'), enable = false, hh = 0, mm = 0, mmint = 1, prob = 100 },
        { id = 'FCS_FAILURE_PITCH_RATE_GYRO_2', label = _('FCS_FAILURE_PITCH_RATE_GYRO_2'), enable = false, hh = 0, mm = 0, mmint = 1, prob = 100 },
        { id = 'FCS_FAILURE_PITCH_RATE_GYRO_3', label = _('FCS_FAILURE_PITCH_RATE_GYRO_3'), enable = false, hh = 0, mm = 0, mmint = 1, prob = 100 },
        { id = 'FCS_FAILURE_PITCH_RATE_GYRO_4', label = _('FCS_FAILURE_PITCH_RATE_GYRO_4'), enable = false, hh = 0, mm = 0, mmint = 1, prob = 100 },
        { id = 'FCS_FAILURE_ROLL_RATE_GYRO_1', label = _('FCS_FAILURE_ROLL_RATE_GYRO_1'), enable = false, hh = 0, mm = 0, mmint = 1, prob = 100 },
        { id = 'FCS_FAILURE_ROLL_RATE_GYRO_2', label = _('FCS_FAILURE_ROLL_RATE_GYRO_2'), enable = false, hh = 0, mm = 0, mmint = 1, prob = 100 },
        { id = 'FCS_FAILURE_YAW_RATE_GYRO_1', label = _('FCS_FAILURE_YAW_RATE_GYRO_1'), enable = false, hh = 0, mm = 0, mmint = 1, prob = 100 },
        { id = 'FCS_FAILURE_YAW_RATE_GYRO_2', label = _('FCS_FAILURE_YAW_RATE_GYRO_2'), enable = false, hh = 0, mm = 0, mmint = 1, prob = 100 },
        { id = 'FCS_FAILURE_NZ_SENSOR_1', label = _('FCS_FAILURE_NZ_SENSOR_1'), enable = false, hh = 0, mm = 0, mmint = 1, prob = 100 },
        { id = 'FCS_FAILURE_NZ_SENSOR_2', label = _('FCS_FAILURE_NZ_SENSOR_2'), enable = false, hh = 0, mm = 0, mmint = 1, prob = 100 },
        { id = 'FCS_FAILURE_NZ_SENSOR_3', label = _('FCS_FAILURE_NZ_SENSOR_3'), enable = false, hh = 0, mm = 0, mmint = 1, prob = 100 },
        { id = 'FCS_FAILURE_NZ_SENSOR_4', label = _('FCS_FAILURE_NZ_SENSOR_4'), enable = false, hh = 0, mm = 0, mmint = 1, prob = 100 },
        { id = 'FCS_FAILURE_NY_SENSOR_1', label = _('FCS_FAILURE_NY_SENSOR_1'), enable = false, hh = 0, mm = 0, mmint = 1, prob = 100 },
        { id = 'FCS_FAILURE_NY_SENSOR_2', label = _('FCS_FAILURE_NY_SENSOR_2'), enable = false, hh = 0, mm = 0, mmint = 1, prob = 100 },
        { id = 'FCS_FAILURE_PITCH_LVDT_1', label = _('FCS_FAILURE_PITCH_LVDT_1'), enable = false, hh = 0, mm = 0, mmint = 1, prob = 100 },
        { id = 'FCS_FAILURE_PITCH_LVDT_2', label = _('FCS_FAILURE_PITCH_LVDT_2'), enable = false, hh = 0, mm = 0, mmint = 1, prob = 100 },
        { id = 'FCS_FAILURE_PITCH_LVDT_3', label = _('FCS_FAILURE_PITCH_LVDT_3'), enable = false, hh = 0, mm = 0, mmint = 1, prob = 100 },
        { id = 'FCS_FAILURE_PITCH_LVDT_4', label = _('FCS_FAILURE_PITCH_LVDT_4'), enable = false, hh = 0, mm = 0, mmint = 1, prob = 100 },
        { id = 'FCS_FAILURE_ROLL_LVDT_1', label = _('FCS_FAILURE_ROLL_LVDT_1'), enable = false, hh = 0, mm = 0, mmint = 1, prob = 100 },
        { id = 'FCS_FAILURE_ROLL_LVDT_2', label = _('FCS_FAILURE_ROLL_LVDT_2'), enable = false, hh = 0, mm = 0, mmint = 1, prob = 100 },
        { id = 'FCS_FAILURE_YAW_LVDT_1', label = _('FCS_FAILURE_YAW_LVDT_1'), enable = false, hh = 0, mm = 0, mmint = 1, prob = 100 },
        { id = 'FCS_FAILURE_YAW_LVDT_2', label = _('FCS_FAILURE_YAW_LVDT_2'), enable = false, hh = 0, mm = 0, mmint = 1, prob = 100 },
        { id = 'FCS_FAILURE_AOA_SENSOR_1', label = _('FCS_FAILURE_AOA_SENSOR_1'), enable = false, hh = 0, mm = 0, mmint = 1, prob = 100 },
        { id = 'FCS_FAILURE_AOA_SENSOR_2', label = _('FCS_FAILURE_AOA_SENSOR_2'), enable = false, hh = 0, mm = 0, mmint = 1, prob = 100 },
        { id = 'FCS_FAILURE_AOA_SENSOR_3', label = _('FCS_FAILURE_AOA_SENSOR_3'), enable = false, hh = 0, mm = 0, mmint = 1, prob = 100 },
        { id = 'FCS_FAILURE_Q_SENSOR_1', label = _('FCS_FAILURE_Q_SENSOR_1'), enable = false, hh = 0, mm = 0, mmint = 1, prob = 100 },
        { id = 'FCS_FAILURE_Q_SENSOR_2', label = _('FCS_FAILURE_Q_SENSOR_2'), enable = false, hh = 0, mm = 0, mmint = 1, prob = 100 },
        { id = 'FCS_FAILURE_Q_SENSOR_3', label = _('FCS_FAILURE_Q_SENSOR_3'), enable = false, hh = 0, mm = 0, mmint = 1, prob = 100 },
        { id = 'FCS_FAILURE_Q_SENSOR_4', label = _('FCS_FAILURE_Q_SENSOR_4'), enable = false, hh = 0, mm = 0, mmint = 1, prob = 100 },
        { id = 'FCS_FAILURE_P_SENSOR_1', label = _('FCS_FAILURE_P_SENSOR_1'), enable = false, hh = 0, mm = 0, mmint = 1, prob = 100 },
        { id = 'FCS_FAILURE_P_SENSOR_2', label = _('FCS_FAILURE_P_SENSOR_2'), enable = false, hh = 0, mm = 0, mmint = 1, prob = 100 },
        { id = 'FCS_FAILURE_P_SENSOR_3', label = _('FCS_FAILURE_P_SENSOR_3'), enable = false, hh = 0, mm = 0, mmint = 1, prob = 100 },
        { id = 'FCS_FAILURE_P_SENSOR_4', label = _('FCS_FAILURE_P_SENSOR_4'), enable = false, hh = 0, mm = 0, mmint = 1, prob = 100 },
        { id = 'FCS_FAILURE_ROLL_AUGD_1', label = _('FCS_FAILURE_ROLL_AUGD_1'), enable = false, hh = 0, mm = 0, mmint = 1, prob = 100 },
        { id = 'FCS_FAILURE_ROLL_AUGD_2', label = _('FCS_FAILURE_ROLL_AUGD_2'), enable = false, hh = 0, mm = 0, mmint = 1, prob = 100 },
        { id = 'FCS_FAILURE_YAW_AUGD_1', label = _('FCS_FAILURE_YAW_AUGD_1'), enable = false, hh = 0, mm = 0, mmint = 1, prob = 100 },
        { id = 'FCS_FAILURE_YAW_AUGD_2', label = _('FCS_FAILURE_YAW_AUGD_2'), enable = false, hh = 0, mm = 0, mmint = 1, prob = 100 },
        { id = 'FCS_FAILURE_EFCS_1', label = _('FCS_FAILURE_EFCS_1'), enable = false, hh = 0, mm = 0, mmint = 1, prob = 100 },
        { id = 'FCS_FAILURE_EFCS_2', label = _('FCS_FAILURE_EFCS_2'), enable = false, hh = 0, mm = 0, mmint = 1, prob = 100 },
        { id = 'FCS_FAILURE_WOW_1', label = _('FCS_FAILURE_WOW_1'), enable = false, hh = 0, mm = 0, mmint = 1, prob = 100 },
        { id = 'FCS_FAILURE_WOW_2', label = _('FCS_FAILURE_WOW_2'), enable = false, hh = 0, mm = 0, mmint = 1, prob = 100 },
        { id = 'FCS_FAILURE_WOW_3', label = _('FCS_FAILURE_WOW_3'), enable = false, hh = 0, mm = 0, mmint = 1, prob = 100 },
        { id = 'FCS_FAILURE_WOW_4', label = _('FCS_FAILURE_WOW_4'), enable = false, hh = 0, mm = 0, mmint = 1, prob = 100 },
        { id = 'FCS_FAILURE_LG_1', label = _('FCS_FAILURE_LG_1'), enable = false, hh = 0, mm = 0, mmint = 1, prob = 100 },
        { id = 'FCS_FAILURE_LG_2', label = _('FCS_FAILURE_LG_2'), enable = false, hh = 0, mm = 0, mmint = 1, prob = 100 },
        { id = 'FCS_FAILURE_LG_3', label = _('FCS_FAILURE_LG_3'), enable = false, hh = 0, mm = 0, mmint = 1, prob = 100 },
        { id = 'FCS_FAILURE_LG_4', label = _('FCS_FAILURE_LG_4'), enable = false, hh = 0, mm = 0, mmint = 1, prob = 100 },

        { id = 'ENGINE_FAILURE_AB_IGNITION_UNIT', label = _('ENGINE_FAILURE_AB_IGNITION_UNIT'), enable = false, hh = 0, mm = 0, mmint = 1, prob = 100 },
        { id = 'ENGINE_FAILURE_APD88_STARTER', label = _('ENGINE_FAILURE_APD88_STARTER'), enable = false, hh = 0, mm = 0, mmint = 1, prob = 100 },
        { id = 'ENGINE_FAILURE_N1_COMPRESSOR', label = _('ENGINE_FAILURE_N1_COMPRESSOR'), enable = false, hh = 0, mm = 0, mmint = 1, prob = 100 },
        { id = 'ENGINE_FAILURE_N2_COMPRESSOR', label = _('ENGINE_FAILURE_N2_COMPRESSOR'), enable = false, hh = 0, mm = 0, mmint = 1, prob = 100 },
        { id = 'ENGINE_FAILURE_N1_TURBINE', label = _('ENGINE_FAILURE_N1_TURBINE'), enable = false, hh = 0, mm = 0, mmint = 1, prob = 100 },
        { id = 'ENGINE_FAILURE_N2_TURBINE', label = _('ENGINE_FAILURE_N2_TURBINE'), enable = false, hh = 0, mm = 0, mmint = 1, prob = 100 },
        { id = 'ENGINE_FAILURE_COMBUSTOR', label = _('ENGINE_FAILURE_COMBUSTOR'), enable = false, hh = 0, mm = 0, mmint = 1, prob = 100 },
        { id = 'ENGINE_FAILURE_NOZZLE_CONTROLLER', label = _('ENGINE_FAILURE_NOZZLE_CONTROLLER'), enable = false, hh = 0, mm = 0, mmint = 1, prob = 100 },
        { id = 'ENGINE_FAILURE_DEEC', label = _('ENGINE_FAILURE_DEEC'), enable = false, hh = 0, mm = 0, mmint = 1, prob = 100 },
    },

    lights_data = {
        typename = 'collection',
        lights = {
            [WOLALIGHT_STROBES] = {
                typename = 'collection',
                lights   = {
                }
            },
            [WOLALIGHT_SPOTS] = { -- spot/landing
                typename = 'collection',
                lights   = {
                    {
                        typename = 'argumentlight',
                        argument = 208,
                    },
                    {
                        typename = 'argumentlight',
                        argument = 210,
                    },
                    {
                        typename = 'argumentlight',
                        argument = 211,
                    },
                },
            },
            [WOLALIGHT_NAVLIGHTS] = {

            },
            [WOLALIGHT_FORMATION_LIGHTS] = {
                typename = 'collection',
                lights   = {
                    { -- left wing
                        typename  = 'argumentlight', -- 'argumentlight',
                        argument  = 200,
                    },
                    { -- right wing
                        typename  = 'argumentlight', -- 'argumentlight',
                        argument  = 201,
                    },
                },
            },
            [WOLALIGHT_TIPS_LIGHTS] = {

            },
            [WOLALIGHT_TAXI_LIGHTS] = {
                typename = 'collection',
                lights   = {
                    {
                        typename = 'argumentlight',
                        argument = 209,
                    },
                    {
                        typename = 'argumentlight',
                        argument = 210,
                    },
                    {
                        typename = 'argumentlight',
                        argument = 211,
                    },
                },
            },
            -- customized
            [WOLALIGHT_CUSTOM_NAV] = {
                typename = 'collection',
                lights   = {
                    { -- tail
                        typename  = 'argumentlight',
                        argument  = 192,
                    },
                    { -- left inlet
                        typename  = 'argumentlight',
                        argument  = 190,
                    },
                    { -- right inlet
                        typename  = 'argumentlight',
                        argument  = 191,
                    },
                },
            },
            [WOLALIGHT_CUSTOM_ANTI] = {
                typename = 'collection',
                lights   = {
                    {
                        typename = 'argumentlight',
                        argument = 83,
                    },
                }
            },
        }, -- end of lights_data.lights
    }, -- end lights_data
}

add_aircraft(J_10A)
