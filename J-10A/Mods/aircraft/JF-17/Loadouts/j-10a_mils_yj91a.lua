
local YJ91A_name = 'YJ-91A'
local YJ91A_mass = 610.0
local pylon_mass = 90.0
local pylon_dual_mass = 160.0

local YJ_91A_warhead =
{
    mass                 = 90,
    caliber              = 360,
    expl_mass            = 90,
    piercing_mass        = 18.0,
    other_factors        = { 1.0, 1.0, 1.0 },
    concrete_factors     = { 3.0, 1.0, 1.0 },
    concrete_obj_factor  = 2.0,
    obj_factors          = { 3.0, 1.0 },
    cumulative_factor    = 2.0,
    cumulative_thickness = 0.0,
	default_fuze_delay 	 = 0.0,
}

local use_ramjet_scheme = true

YJ_91A_ASM = {
    category        = CAT_MISSILES,
    name            = YJ91A_name,
    model           = 'x-31',
    user_name       = _(YJ91A_name),
    wsTypeOfWeapon  = {4,4,8,WSTYPE_PLACEHOLDER},
    mass            = YJ91A_mass,

    Escort          = 0,
    Head_Type       = 3,
    sigma           = {10, 10, 10},
    M               = YJ91A_mass,
    H_max           = 25000.0,
    H_min           = -1.0,
    Diam            = 203.0,
    Cx_pil          = 2,
    D_max           = 50000.0,
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
    Range_max       = 50000.0,
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
            name     = YJ91A_name,
            file     = 'x-31',
            life     = 1,
            fire     = {0, 1},
            username = YJ91A_name,
            index    = WSTYPE_PLACEHOLDER,
        },
    },

    warhead     = YJ_91A_warhead,
    warhead_air = YJ_91A_warhead,

	LaunchDistData = { 22, 8, 200, 250, 300, 350, 400, 450, 500, 550, 300, 30310, 31850, 33110, 34190, 35170, 36070, 36970, 37870, 400, 30370, 31900, 33150, 34240, 35220, 36140, 37020, 37920, 500, 30460, 31980, 33220, 34310, 35290, 36190, 37090, 38000, 600, 30540, 32040, 33300, 34380, 35350, 36270, 37170, 38080, 700, 30630, 32130, 33370, 34460, 35430, 36350, 37260, 38150, 800, 30700, 32200, 33425, 34525, 35500, 36425, 37325, 38225, 900, 30775, 32275, 33500, 34600, 35575, 36525, 37400, 38325, 1000, 30875, 32350, 33600, 34675, 35650, 36600, 37525, 38425, 2000, 31900, 33350, 34575, 35700, 36700, 37675, 38625, 39575, 3000, 33000, 34450, 35700, 36850, 37950, 38950, 39950, 40950, 4000, 34200, 35650, 37000, 38200, 39300, 40400, 41450, 42500, 5000, 35400, 36900, 38300, 39500, 40700, 41900, 43100, 44200, 6000, 36500, 38250, 39750, 41000, 42250, 43500, 44750, 46000, 7000, 38000, 39750, 41250, 42750, 44000, 45250, 46750, 48250, 8000, 39250, 41000, 42750, 44250, 45750, 47000, 48750, 50000, 9000, 40500, 42500, 44250, 45750, 47500, 49000, 50500, 52000, 10000, 42250, 43750, 45750, 47500, 49250, 50750, 52500, 54250, 11000, 43500, 45000, 47000, 49000, 50500, 52500, 54000, 55500, 12000, 45000, 47500, 49000, 50500, 52500, 54500, 56000, 58000, 13000, 47500, 49000, 50500, 52000, 54000, 56000, 58000, 59500, 14000, 49000, 51000, 52500, 53500, 55500, 57500, 59500, 62000, 15000, 50500, 52500, 54500, 55500, 57000, 59000, 61000, 63500 },
		
	MinLaunchDistData = { 22, 8, 200, 250, 300, 350, 400, 450, 500, 550, 300, 4120, 4570, 4870, 5130, 5390, 5480, 5750, 6020, 400, 4280, 4730, 4870, 5310, 5570, 5800, 5940, 6210, 500, 4500, 4940, 5230, 5510, 5780, 5890, 6160, 6450, 600, 4810, 5140, 5440, 5600, 5860, 6140, 6440, 6740, 700, 4870, 5320, 5630, 5930, 6200, 6380, 6680, 6990, 800, 5025, 5375, 5700, 6100, 6300, 6600, 6900, 7250, 900, 5175, 5525, 5850, 6175, 6475, 6800, 7125, 7450, 1000, 5325, 5675, 6025, 6350, 6675, 7000, 7325, 7675, 2000, 6325, 6775, 7225, 7650, 8100, 8525, 8950, 9375, 3000, 6950, 7550, 8100, 8600, 9150, 9600, 10150, 10700, 4000, 7350, 8050, 8700, 9350, 9900, 10500, 11150, 12250, 5000, 7600, 8400, 9200, 9900, 11100, 12300, 13400, 14500, 6000, 7500, 8750, 10500, 12000, 13250, 14250, 15250, 16500, 7000, 7750, 10500, 12000, 13500, 14750, 15750, 18500, 21250, 8000, 9750, 11750, 13250, 14750, 17250, 20000, 22750, 24750, 9000, 11000, 12750, 15000, 17750, 21000, 23750, 26000, 28250, 10000, 12250, 14750, 17750, 20750, 24000, 26500, 29000, 31250, 11000, 15500, 17000, 20000, 23500, 26500, 29500, 32000, 34000, 12000, 18000, 21000, 22500, 26500, 29500, 32500, 34500, 37000, 13000, 20500, 24000, 26000, 28500, 31500, 34000, 36500, 39000, 14000, 23000, 26000, 29000, 30500, 33500, 36000, 38500, 41500, 15000, 25500, 28500, 31500, 33000, 34500, 37500, 40500, 43000 },
	
	add_attributes = { "Cruise missiles" },

	}

if use_ramjet_scheme then

    YJ_91A_ASM.class_name      = "wAmmunitionSelfHoming"
    YJ_91A_ASM.scheme          = "anti_ship_missile_ramjet"

    YJ_91A_ASM.controller = {
		boost_start = 0.5,
        march_start = 2.5,
    }

    YJ_91A_ASM.boost = {
		
		impulse 							= 260,
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

    YJ_91A_ASM.march = {
		
		impulse 							= 0,
		fuel_mass 							= 60,--55
		work_time 							= 0,
		AEC 								= 1.38, ---1.18
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

    YJ_91A_ASM.fm = {
		mass 		= 610,
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

    YJ_91A_ASM.seeker  = {--------------------------------------
        delay                       = 0.0,
        op_time                     = 9999.0,
        FOV                         = math.rad(60.0),
        max_w_LOS                   = 0.06,
        max_target_speed            = 33.0,
        max_target_speed_rnd_coeff  = 10.0,
        ship_track_by_default       = 1,
        flag_dist                   = 5000.0,
        sens_near_dist              = 10.0,
        sens_far_dist               = 40000.0,
        primary_target_filter       = 1,
        add_y                       = 3.0,
        sens_ref_rcs                = 10000.0,
        sens_ref_dist               = 32000.0,
        --aim_sigma                   = 5.5, -- TODO
        
        min_detectable_rcs          = 1.0,
        max_small_target_rcs        = 29999.999,
        min_large_target_rcs        = 60000.0,
    }

    YJ_91A_ASM.fuze_proximity = {
        ignore_inp_armed    = 1,
    }

    YJ_91A_ASM.autopilot = {
	
        glide_height                = 7.0,
        dont_climb_on_cruise_height = 0,
        vel_proj_div                = 6.0, --22
        default_glide_height        = 15,
        pre_maneuver_glide_height   = 7,
        skim_glide_height           = 7,
        use_start_bar_height        = 1,    
        altim_vel_k                 = 4,     --5
        
        delay                  = 1.0,
        op_time                = 9999, --120
		
        Kw                     = 2.0, --2
        Ks                     = 8.0, --8
        K                      = 30.0, --30
        Kd                     = 0.05, --0.05
        Ki                     = 0.5, --0.5
		
        Kx                     = 0.04, 
        Kdx                    = 0.001,
        w_limit                = math.rad(5),
        fins_limit             = math.rad(50),
        fins_limit_x           = math.rad(25),
        rotated_WLOS_input     = 0,
        conv_input             = 0,
        PN_dist_data           = {2000,    0,
                                   500,    0},
                                
        max_climb_angle        = math.rad(10),
        max_dive_angle         = math.rad(-25),
        max_climb_ang_hdiff    = 200,
        max_dive_ang_hdiff     = -500,
        
        Ksd                    = 0.0, --0.1
        Ksi                    = 0.0,
        integr_val_limit       = 0.5,
        hor_err_limit          = 0.5,
		
		fins_q_div 				= 1,
    }

    YJ_91A_ASM.final_autopilot =        -- final stage guidance with terminal maneuver
    {
      --[[  delay                  = 1.0,
        op_time                = 9999,
        Kw                     = 1.0,
        Ks                     = 5.0,
        K                      = 5.4,
        Kd                     = 0.0,
        Ki                     = 0.0,
        Kx                     = 0.0,
        Kix                    = 0.0,
        w_limit                = math.rad(15),
        fins_limit             = math.rad(50),
        rotated_WLOS_input     = 0,
        conv_input             = 0,
        PN_dist_data           = {2000,    1,
                                   500,    1},
                                
        add_err_val            = 0,
        add_err_vert           = 0,
        add_out_val            = 0.1,
        add_out_vert           = 1,
        loft_angle             = math.rad(8),
        loft_trig_angle        = math.rad(14),
        K_loft_err             = 1,
        loft_angle_vert        = 1,
        loft_active_by_default = 0, ----------]]
		
			K = 35,
			K_loft_err = 0,
			Kd = 0.15,
			Ki = 0,
			Kix = 0,
			Ks = 10,
			Kw = 2,
			Kx = 0,
			PN_dist_data = { 10000, 0, 4000, 1 },
			add_err_val = 0.025,
			add_err_vert = 1,
			add_out_val = 0,
			add_out_vert = 0,
			conv_input = 0,
			delay = 1,
			fins_limit = 0.78539816339745,
			fins_q_div = 1,
			loft_angle = 0,
			loft_angle_vert = 0,
			loft_trig_angle = 0,
			op_time = 120,
			rotated_WLOS_input = 0,
			w_limit = 0.34906585039887
    }

    YJ_91A_ASM.triggers_control = { --------------------------
        action_wait_timer               = 3,    -- wait for dist functions n sen, then set default values
        default_sensor_tg_dist          = 20000, -- turn on seeker and start horiz. correction if target is locked
        default_final_maneuver_tg_dist  = 8000,
        default_destruct_tg_dist        = 2000, -- if seeker still can not find a target explode warhead after reaching pred. target point + n. km
        trigger_by_path                 = 1,
        pre_maneuver_glide_height       = 7,    -- triggers st nav instead of fin. maneuver if h>2*pre_maneuver_glide_height at fin. maneuver distance
		--[[
			action_wait_timer = 3,
			default_destruct_tg_dist = 2000,
			default_final_maneuver_tg_dist = 8000,
			default_sensor_tg_dist = 12000,
			final_maneuver_by_default = 1,
			trigger_by_path = 1]]
    }
	
end

declare_weapon(YJ_91A_ASM)
--YJ_91A_ASM.shape_table_data.index = YJ_91A_ASM.wsTypeOfWeapon[4]
--[[
declare_loadout({
    category     = CAT_MISSILES,
    CLSID        = 'DIS_C-802AK',
    Picture      = 'c802.png',
    attribute    = YJ_91A_ASM.wsTypeOfWeapon,
    displayName  = _("YJ-91A Anti-ship Missile"),
    Cx_pil       = 0.0023,
    Count        = 1,
    Weight       = YJ91A_mass + pylon_mass,
    Elements     = {
        [1] =
        {
            Position  = {0, 0, 0},
            ShapeName = 'yj83k',
            DrawArgs  = {
                [1] = {1, 1.0},
            }
        },
    }, -- end of Elements
    --attribute = {4, 4, 8, WSTYPE_PLACEHOLDER, "Anti-Ship missiles"},
    ejectImpulse = 2000,
})
]]