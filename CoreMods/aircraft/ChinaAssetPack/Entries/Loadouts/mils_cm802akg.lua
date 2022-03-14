
local cm802akg_use_scheme = false

local cm802akg_name  = 'KD-88'
local cm802akg_model = 'cm802akg'
local cm802akg_mass  = 715
local pylon_mass     = 50.0

local C802AKG_warhead =
{
    mass                 = 165, 
    caliber              = 360,
    expl_mass            = 100,
    piercing_mass        = 0.0,
    other_factors        = { 1.0, 1.0, 1.0 },
    concrete_factors     = { 3.0, 1.0, 5.0 },
    concrete_obj_factor  = 2.0,
    obj_factors          = { 2.0, 1.0 },
    cumulative_factor    = 2.0,
    cumulative_thickness = 0.0,
}


CM_802AKG_AS = {
    category        = CAT_MISSILES,
    name            = cm802akg_name,
    model           = cm802akg_model,
    user_name       = _(cm802akg_name),
    mass            = cm802akg_mass,
    wsTypeOfWeapon  = {wsType_Weapon,wsType_Missile,wsType_AS_Missile,WSTYPE_PLACEHOLDER},
    add_attributes  = {"Cruise missiles"},

    Escort          = 1,
    Head_Type       = 8, -- TV
    sigma           = {8, 8, 8},
    M               = cm802akg_mass,

    H_max           = 10000.0,
    H_min           = -1,
    Diam            = 343.0,
    Cx_pil          = 1,
    D_max           = 220000.0,
    D_min           = 2000.0,
    Head_Form       = 0,
    Life_Time       = 660.0,
    Nr_max          = 15,
    v_min           = 270.0,
    v_mid           = 372.0,
    Mach_max        = 1.3,
    t_b             = 5.0,
    t_acc           = 0.0,
    t_marsh         = 1000.0,
    Range_max       = 220000.0,
    H_min_t         = 0.0,
    Fi_start        = 0.25,
    Fi_rak          = 3.14152,
    Fi_excort       = 3.14152,--0.35,
    Fi_search       = 99.9,
    OmViz_max       = 99.9,
    Stage_          = 1,
    Engine_Type     = 5,
    X_back          = -2.566,
    Y_back          = -0.19,
    Z_back          = 0.0,
    Reflection      = 0.09,
    KillDistance    = 0.0,

    warhead     = C802AKG_warhead,
    warhead_air = C802AKG_warhead,

    shape_table_data = {
        {
            name     = cm802akg_name,
            file     = cm802akg_model,
            life     = 1,
            fire     = {0, 1},
            username = cm802akg_name,
            index    = WSTYPE_PLACEHOLDER,
        },
    },

    manualWeaponFlag = 2,
    
    LaunchDistData =
    {
        20,        7,

                100,         150,       200,       250,       300,       350,       400,        
        500,      0,         75790,     83280,     87490,     90390,     93090,     93850,    
        600,      0,         73690,     81610,     85620,     88750,     91500,     93860,    
        700,      0,         74170,     82540,     86570,     89730,     92470,     94870,    
        800,      0,         75175,     83750,     87775,     90975,     93725,     96150,    
        900,      0,         75925,     84675,     88775,     91975,     94725,     97175,    
        1000,     0,         76500,     85425,     89550,     92750,     95525,     97975,    
        2000,     0,         79850,     87125,     91600,     95050,     98075,     100775,    
        3000,     81550,     87150,     91150,     94750,     97750,     100250,    102700,    
        4000,     85350,     89850,     93850,     97400,     100900,    103100,    105300,    
        5000,     87500,     92200,     96300,     100000,    103600,    106300,    108700,    
        6000,     90000,     94500,     98500,     102250,    106000,    109250,    112000,    
        7000,     91750,     96500,     101000,    105000,    108750,    112250,    115250,    
        8000,     93750,     98750,     103250,    107500,    111250,    115000,    118500,    
        9000,     95750,     101000,    105750,    110000,    114000,    118000,    122000,    
        10000,    97250,     102750,    108000,    113000,    117250,    121500,    126000,    
        11000,    98500,     104500,    110500,    115500,    120500,    125500,    130500,    
        12000,    100000,    106000,    112500,    119000,    124500,    130000,    135500,    
        13000,    101500,    108000,    115000,    122500,    128500,    136000,    142000,    
        14000,    103000,    110000,    117500,    126000,    133500,    141500,    148000,    
        15000,    103500,    112000,    120000,    129500,    139000,    148500,    155000,    
    },

    MinLaunchDistData =
    {
        20,        7,

                100,    150,    200,    250,    300,    350,    400,        
        500,    0,        14540,    7320,    11250,    8260,    8680,    8970,    
        600,    0,        11400,    7290,    7780,    8230,    8650,    9040,    
        700,    0,        7410,    7410,    7890,    8350,    8770,    9160,    
        800,    0,        7800,    7525,    8025,    8475,    8900,    9300,    
        900,    0,        8325,    7650,    8125,    8575,    9025,    9425,    
        1000,    0,        9325,    7725,    8225,    8675,    9100,    9500,    
        2000,    0,        9200,    8100,    8250,    8825,    9225,    9725,    
        3000,    6050,    6900,    7650,    8200,    8550,    8950,    9350,    
        4000,    6350,    7000,    7500,    7950,    8300,    8650,    9000,    
        5000,    6600,    7300,    7100,    8000,    8500,    8800,    9200,    
        6000,    12750,    7500,    7250,    8250,    8750,    9000,    9500,    
        7000,    13250,    7750,    7250,    8500,    8750,    9250,    9750,    
        8000,    14250,    8250,    8500,    8750,    9250,    9500,    10000,    
        9000,    15000,    14000,    8750,    9250,    9500,    10000,    10500,    
        10000,    16000,    14750,    9250,    9500,    10000,    10250,    10750,    
        11000,    17000,    16000,    14500,    10500,    11000,    11000,    11500,    
        12000,    18500,    17500,    16000,    11000,    11500,    12000,    12500,    
        13000,    19500,    19000,    18000,    16500,    12500,    19500,    22500,    
        14000,    21000,    20500,    20000,    19000,    18000,    27000,    30000,    
        15000,    22500,    22500,    22000,    22000,    31000,    35500,    39000,    
    },        
}

if cm802akg_use_scheme then

   -- CM_802AKG_AS.Escort     = 0
   -- CM_802AKG_AS.Head_Type  = 5 -- TV
    CM_802AKG_AS.scheme     = "AGM-84E"
    CM_802AKG_AS.class_name = "wAmmunitionAntiShip"

    CM_802AKG_AS.controller = {
        boost_start = 0.001,
        march_start = 0.8,
    }
    
    CM_802AKG_AS.fm = {
        mass        = cm802akg_mass,  
        caliber     = 0.36,  
        cx_coeff    = {1,0.39,0.38,0.3,1.31},
        L           = 5.145,
        I           = 1 / 12 * cm802akg_mass * 5.145 * 5.145,
        Ma          = 0.68,    --y
        Mw          = 1.116,
        wind_sigma  = 0.0,
        wind_time   = 1000.0,
        Sw          = 0.95,
        dCydA       = {0.07, 0.036},
        A           = 0.5,
        maxAoa      = 0.3,
        finsTau     = 0.05,
        Ma_x        = 3,
        Ma_z        = 3,
        Kw_x        = 0.01,
    }
    
    CM_802AKG_AS.seeker = {
        delay               = 0.0,
        op_time             = 800,
        activate_on_update  = 1,

        FOV                 = math.rad(60),
        max_w_LOS           = 0.06,
        max_w_LOS_surf      = 0.03,

        max_target_speed            = 33,
        max_target_speed_rnd_coeff  = 10,

        max_lock_dist       = 30000,
    }
    
    CM_802AKG_AS.ins = {
        aim_sigma       = 350,
        check_AI        = 1,
        error_coeff     = 0.05,
    }

    CM_802AKG_AS.autopilot =
    {
        glide_height                = 1000.0,
        dont_climb_on_cruise_height = 0,
        vel_proj_div                = 6.0,
        default_glide_height        = 1000.0,
        pre_maneuver_glide_height   = 1000.0,
        skim_glide_height           = 8,
        use_start_bar_height        = 1,    
        altim_vel_k                 = 4,    
        
        delay               = 1.0,
        op_time             = 9999,
        Kw                  = 1.6,
        Ks                  = 2.0,
        K                   = 1.7,
        Kd                  = 0.0,
        Ki                  = 16.0,
        Kx                  = 0.04,
        Kdx                 = 0.001,
        w_limit             = math.rad(5),
        fins_limit          = math.rad(35),
        fins_limit_x        = math.rad(20),
        rotated_WLOS_input  = 0,
        conv_input          = 0,
        PN_dist_data        = { 2000,   0,
                                500,    0},
                                
        max_climb_angle     = math.rad(10),
        max_dive_angle      = math.rad(-25),
        max_climb_ang_hdiff = 200,
        max_dive_ang_hdiff  = -500,
        
        Ksd                     = 0.0,
        Ksi                     = 0.0,
        integr_val_limit        = 0.5,
        hor_err_limit           = 0.5,
        max_climb_vel           = 200,
        min_climb_vel           = 120,
        min_climb_vel_factor    = 0,
        max_climb_h             = 3000,
        min_climb_h             = 10000,
        min_climb_h_factor      = 0.5,
        
        inertial_km_error       = 4.0,      -- m for 1000m dist
        glide_height_eq_error   = 2.0,      -- percent
    }
    
    CM_802AKG_AS.final_autopilot = {
        delay               = 1.0,
        op_time             = 9999,
        Kw                  = 1.0,
        Ks                  = 5.0,
        K                   = 5.4,
        Kd                  = 0.0,
        Ki                  = 0.0,
        Kx                  = 0.0,
        Kix                 = 0.0,
        w_limit             = math.rad(15),
        fins_limit          = math.rad(50),
        rotated_WLOS_input  = 0,
        conv_input          = 0,
        PN_dist_data        = { 2000,   1,
                                500,    1},
                                
        add_err_val             = 0,
        add_err_vert            = 0,
        add_out_val             = 0.1,
        add_out_vert            = 1,
        loft_angle              = math.rad(7),
        loft_trig_angle         = math.rad(12),
        K_loft_err              = 1,
        loft_angle_vert         = 1,
        loft_active_by_default  = 0,
    }
    
    CM_802AKG_AS.triggers_control = {
        action_wait_timer               = 5,    -- wait for dist functions n sen, then set default values
        default_sensor_tg_dist          = 10000, -- turn on seeker and start horiz. correction if target is locked
        default_final_maneuver_tg_dist  = 7000,
        default_straight_nav_tg_dist    = 7000,
        default_destruct_tg_dist        = 3000, -- if seeker still can not find a target explode warhead after reaching pred. target point + n. km
        trigger_by_path                 = 1,
        final_maneuver_trig_v_lim       = 3,
        use_horiz_dist                  = 1,
        pre_maneuver_glide_height       = 1000, -- triggers st nav instead of fin. maneuver if h>2*pre_maneuver_glide_height at fin. maneuver distance
        min_cruise_height               = 1000,
        min_cruise_height_trigger_sum   = 11000,
        min_cruise_height_trigger_mlt   = 220/33,
    }
    
    CM_802AKG_AS.control_block = {
        default_cruise_height = 1000.0,
    }

    CM_802AKG_AS.controller = {
        boost_start = 0,
        march_start = 0,
    }

    CM_802AKG_AS.boost = { -- air launch - no booster
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
    }
    
    CM_802AKG_AS.march = {
        impulse           = 650,
        fuel_mass         = 180,
        work_time         = 9999,
        min_fuel_rate     = 0.005,
        min_thrust        = -100,
        max_thrust        = 4000,
        thrust_Tau        = 0.0017,
        
        nozzle_position                  = {{-2.566, -0.19, 0.0}},
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
        
    }

    CM_802AKG_AS.engine_control = {
        default_speed   = 300,
        K               = 350,
        Kd              = 1.0,
        Ki              = 0.001,
        speed_delta     = 5,
    }
    
end


declare_weapon(CM_802AKG_AS)
--C_802AK_AS.shape_table_data.index = C_802AK_AS.wsTypeOfWeapon[4]

declare_loadout({
    category     = CAT_MISSILES,
    CLSID        = 'DIS_CM-802AKG',
    Picture      = 'c802akg.png',
    attribute    = CM_802AKG_AS.wsTypeOfWeapon,
    displayName  = _(cm802akg_name .. ' Long Range Cruise-missile'),
    Cx_pil       = 0.0023,
    Count        = 1,
    Weight       = cm802akg_mass + pylon_mass,
    Elements     = {
        [1] =
        {
            Position  = {0, 0, 0},
            ShapeName = cm802akg_model,
            DrawArgs  = {
                [1] = {1, 1.0},
            }
        },
    }, -- end of Elements
    Required     = {"DIS_AKG_DLPOD"},
    ejectImpulse = 2000,
})
