local brm1_90_warhead =
{
    mass                 = 5, 
    caliber              = 90,
    expl_mass            = 5,
    piercing_mass        = 0.0,
    other_factors        = { 0.5, 0.5, 0.5 },
    concrete_factors     = { 1.0, 1.0, 1.0 },
    concrete_obj_factor  = 2.0,
    obj_factors          = { 1.0, 1.0 },
    cumulative_factor    = 1.5,
    cumulative_thickness = 0.25, 
}
local pylon_mass = 45.0

local brm1_name  = 'BRM-1_90MM'
local brm1_mass  = 20.0
local brm1_model = 'brm1_90'

BRM_1_90 = 
{
    category        = CAT_MISSILES,
    name            = brm1_name,
    user_name       = _(brm1_name),
    model           = brm1_model,
    mass            = brm1_mass,
    
    wsTypeOfWeapon  = {wsType_Weapon,wsType_Missile,wsType_AS_Missile,WSTYPE_PLACEHOLDER},

    Escort          = 1,
    Head_Type       = 4,
    M               = brm1_mass,
    sigma           = {1, 1, 1},
    H_max           = 8000.0,
    H_min           = 1.0,
    Diam            = 70.0,
    Cx_pil          = 0.00244140625,
    D_max           = 8000.0,
    D_min           = 500.0,
    Head_Form       = 1,
    Life_Time       = 90.0,
    Nr_max          = 25,
    v_min           = 140.0,
    v_mid           = 500.0,
    Mach_max        = 3.0,
    t_b             = 0.0,
    t_acc           = 0.0,
    t_marsh         = 1.1,
    Range_max       = 8000.0,
    H_min_t         = 15.0,
    Fi_start        = 0.4,
    Fi_rak          = 3.14152,
    Fi_excort       = 1.05,
    Fi_search       = 0.7,
    OmViz_max       = 0.35,
    exhaust         = {0.78, 0.78, 0.78, 0.3};
    X_back          = -2.0,
    Y_back          = -0.0,
    Z_back          = 0.0, -- -0.1,
    Reflection      = 0.05,
    KillDistance    = 0.0,
    
    LaunchDistData  = 
    {        
        5,        3,
        
                   100,      200,      300,    
        1000,     9000,     9500,    10000,
        2000,     9500,    10000,    10500,
        3000,    10000,    10500,    11000,
        4000,    10500,    11000,    11500,
        5000,    11000,    11500,    12000,
    },
    
    shape_table_data =
    {
        {
            name     = brm1_name,
            file     = brm1_model,
            life     = 1,
            fire     = {0, 1},
            username = brm1_name,
            index    = WSTYPE_PLACEHOLDER,
        },
    },
    
    warhead     = brm1_90_warhead,
    warhead_air = brm1_90_warhead,
    
    scheme     = 'APKWS',
    class_name = 'wAmmunitionLaserHoming',

    march = {
        fuel_mass               = 5,
        impulse                 = 190,
        boost_time              = 0,
        work_time               = 1.5,
        boost_factor            = 1,
        nozzle_position         = {{-0.95, 0, 0}},
        nozzle_orientationXYZ   = {{0, 0, 0}},
        tail_width              = 0.052,
        boost_tail              = 1,
        work_tail               = 1,
        smoke_color             = {0.9, 0.9, 0.9},
        smoke_transparency      = 0.5,
        custom_smoke_dissipation_factor = 0.2,    
    },

    fm = {
        mass        = brm1_mass,  
        caliber     = 0.09, 
        cx_coeff    = {1,0.9,0.6,0.32,2.1},
        L           = 2,
        I           = 1 / 12 * brm1_mass * 2 * 2,
        Ma          = 0.84,
        Mw          = 3.5,
        shapeName   = brm1_model,
        wind_sigma  = 5.0,
        wind_time   = 1.1,
        dCydA       = {0.11, 0.11},
        A           = 0.36,
        Sw          = 0.04,
        maxAoa      = math.rad(8),        
        finsTau     = 0.1,
        Mx0         = 0.2,
        Ma_x        = 1.8,
        Mw_x        = 1.12,
        I_x         = 1.01,
    },
    
    seeker = {
        delay               = 1.1,
        FOV                 = math.rad(40),
        max_seeker_range    = 13000,
    },

    autopilot = {
        delay               = 0.9,
        op_time             = 45,
        dV_dt               = 20,
        Knav                = 12,
        Tf                  = 0.2,
        Kd                  = 150,
        Kdx                 = 0.2,
        Kix                 = 0.8,
        gload_limit         = 10,
        fins_limit          = math.rad(20),
        fins_limit_x        = math.rad(10),
    },
}

declare_weapon(BRM_1_90)


declare_loadout({
    category        = CAT_ROCKETS,
    CLSID           = 'DIS_BRM1_90',
    wsTypeOfWeapon  = BRM_1_90.wsTypeOfWeapon,
    attribute       = {4, 4, 32, WSTYPE_PLACEHOLDER},
    Count           = 16,
    Cx_pil          = 0.002,
    Picture         = "brm1_pod.png",
    displayName     = _(brm1_name .. " - 16 x 90mm Laser Guided Rkt, HE"),
    Weight          = 97.5 + 16 * BRM_1_90.mass + pylon_mass,
    Elements        = RocketPod("brm1_pod", brm1_model, 16),
    Required        = {"DIS_WMD7"},
    JettisonSubmunitionOnly = false,
})


local rkt90_name  = 'UG_90MM'
local rkt90_mass  = 15.0
local rkt90_model = '90-1'

RKT_90_UG =
{
    category        = CAT_ROCKETS,
    name            = rkt90_name,
    user_name       = _(rkt90_name),
    scheme          = "nurs-standard",
    class_name      = "wAmmunitionNURS",
    model           = rkt90_model,
    mass            = rkt90_mass,
    
    wsTypeOfWeapon  = {4, 7, 33, WSTYPE_PLACEHOLDER},

    shape_table_data =
    {
        {
            name     = rkt90_name,
            file     = rkt90_model,
            life     = 1,
            fire     = {0, 1},
            username = rkt90_name,
            index    = WSTYPE_PLACEHOLDER,
        },
    },
    
    warhead     = brm1_90_warhead,
    warhead_air = brm1_90_warhead,
    
    properties = {
        dist_min =  600, -- min range, meters
        dist_max = 8000, -- max range, meters
    },
    
    fm = {
        mass        = rkt90_mass,
        caliber     = 0.09,  
        cx_coeff    = {1,0.9,0.6,0.32,2.1},
        L           = 2,
        I           = 1 / 12 * rkt90_mass * 2 * 2,
        Ma          = 2,
        Mw          = 5,
        shapeName   = rkt90_model,
        wind_time   = 1.1,
        wind_sigma  = 5,
    },
    
    engine = {
        fuel_mass               = 5.0,
        impulse                 = 205,
        boost_time              = 0,
        work_time               = 1.1,
        boost_factor            = 1,
        nozzle_position         = {{-0.65, 0, 0}},
        nozzle_orientationXYZ   = {{0, 0, 0}},
        tail_width              = 0.052,
        boost_tail              = 1,
        work_tail               = 1,
        smoke_color             = {0.9, 0.9, 0.9},
        smoke_transparency      = 0.5,
    },
}

declare_weapon(RKT_90_UG)


declare_loadout({
    category        = CAT_ROCKETS,
    CLSID           = 'DIS_RKT_90_UG',
    wsTypeOfWeapon  = RKT_90_UG.wsTypeOfWeapon,
    attribute       = {4, 7, 32, WSTYPE_PLACEHOLDER},
    Count           = 16,
    Cx_pil          = 0.002,
    Picture         = "brm1_pod.png",
    displayName     = _(rkt90_name .. " - 16 x 90mm UnGd Rkts, HE"),
    Weight          = 97.5 + 16 * RKT_90_UG.mass + pylon_mass,
    Elements        = RocketPod("brm1_pod", rkt90_model, 16),
    JettisonSubmunitionOnly = false,
})
