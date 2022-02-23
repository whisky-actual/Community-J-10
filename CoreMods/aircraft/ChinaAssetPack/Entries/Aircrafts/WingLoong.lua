
mount_vfs_model_path (current_mod_path .. '/Shapes/WingLoong-1')
mount_vfs_texture_path (current_mod_path .. '/Textures/WingLoong-1')

local engine_coef = 5.0

local WL_name = "WingLoong-I"
local WingLoong = {

    Name                = WL_name,
    DisplayName         = _(WL_name),
    Picture             = "WD1K.png",
    Rate                = 40, -- RewardPoint in Multiplayer
    Shape               = "wingloong-1",
    shape_table_data    =
    {
        {
            file        = 'wingloong-1';
            life        = 18; -- lifebar
            vis         = 3; -- visibility gain.
            desrt       = 'self'; -- Name of destroyed object file name
            fire        = {300, 2}; -- Fire on the ground after destoyed: 300sec 2m
            username    = WL_name;
            index       = WSTYPE_PLACEHOLDER;
            classname   = "lLandPlane";
            positioning = "BYNORMAL";
            drawonmap   = true;
        },
    },

    mapclasskey          = "P0091000023",
    attribute            = {wsType_Air, wsType_Airplane, wsType_Fighter, WSTYPE_PLACEHOLDER, "Battleplanes", "UAVs", "Datalink", "Link16"},

    country_of_origin    = "CHN",
    Countries            = {'China','Pakistan','Egypt','Kazakhstan','Saudi Arabia','Serbia','United Arab Emirates','Algeria'},
    country_of_origin    = 'CHN',
    date_of_introduction = 2007.10, --

    M_empty                     =  550, -- kg
    M_nominal                   =  950, -- kg
    M_max                       = 1150, -- kg
    M_fuel_max                  =  400, -- kg
    H_max                       = 7500, -- m
    average_fuel_consumption    = 0.02, -- this is highly relative, but good estimates are 36-40l/min = 28-31kg/min = 0.47-0.52kg/s -- 45l/min = 35kg/min = 0.583kg/s
    CAS_min                     = 100/3.6, -- if this is not OVERAL FLIGHT TIME, but jus LOITER TIME, than it sholud be 10-15 minutes.....CAS capability in minute (for AI)
    V_opt                       = 60, -- Cruise speed (for AI)
    V_take_off                  = 100/3.6, -- Take off speed in m/s (for AI)
    V_land                      = 100/3.6, -- Land speed in m/s (for AI)
    V_max_sea_level             = 280/3.6, -- Max speed at sea level in m/s (for AI)
    V_max_h                     = 280/3.6, -- Max speed at max altitude in m/s (for AI)
    Vy_max                      = 5, -- Max climb speed in m/s (for AI)
    Mach_max                    = 0.4, -- Max speed in Mach (for AI)
    Ny_min                      = -1, -- Min G (for AI)
    Ny_max                      = 2,  -- Max G (for AI)
    Ny_max_e                    = 2,  -- Max G (for AI)
    AOA_take_off                = 3/57.3, -- AoA in take off (for AI)
    bank_angle_max              = 30, -- Max bank angle (for AI)


    has_afteburner                = false, -- AFB yes/no
    has_speedbrake                = false, -- Speedbrake yes/no
    has_differential_stabilizer   = false, -- differential stabilizers

    nose_gear_pos                 = { 2.770, -1.233, 0}, -- nosegear coord
    main_gear_pos                 = {-0.406, -1.224, 1.025}, -- main gear coords

    nose_gear_amortizer_direct_stroke         =  0,  -- down from nose_gear_pos !!!
    nose_gear_amortizer_reversal_stroke       = -0.046,  -- up
    main_gear_amortizer_direct_stroke         =  0, --  down from main_gear_pos !!!
    main_gear_amortizer_reversal_stroke       =  0, --  up
    nose_gear_amortizer_normal_weight_stroke  = -0.075,

    tand_gear_max                 = 0.577,
    wing_area                     = 14.2, -- wing area in m2
    wing_span                     = 14, -- wing spain in m
    wing_type                     = 0,
    thrust_sum_max                = 480, -- thrust in kg (44kN)
    thrust_sum_ab                 = 480, -- thrust inkg (71kN)
    length                        = 9.05, -- full lenght in m
    height                        = 2.77, -- height in m
    flaps_maneuver                = 1, -- Max flaps in take-off and maneuver (0.5 = 1st stage; 1.0 = 2nd stage) (for AI)
    range                         = 4000, -- Max range in km (for AI)
    RCS                           = 0.55, -- Radar Cross Section m2
    IR_emission_coeff             = 0.02, -- Normal engine -- IR_emission_coeff = 1 is Su-27 without afterburner. It is reference.
    IR_emission_coeff_ab          = 0, -- With afterburner
    wing_tip_pos                  = {-1.1, 0, 7}, -- wingtip coords for visual effects
    nose_gear_wheel_diameter      = 0.320, -- in m
    main_gear_wheel_diameter      = 0.670, -- in m
    brakeshute_name               = 0, -- Landing - brake chute visual shape after separation
    stores_number                 = 2,
    singleInFlight                = true,
    detection_range_max           = 10000,
    radar_can_see_ground          = false, -- this should be examined (what is this exactly?)

    engines_count                 = 1, -- Engines count
    engines_nozzles = {
        [1] =
        {
            pos                 = {-6.5, 0, 0},
            elevation           = 0,
            diameter            = 0.4,
            exhaust_length_ab   = 0.4,
            exhaust_length_ab_K = 0,
        }, -- end of [1]
    }, -- end of engines_nozzles
    crew_members =  --UAV
    {
    }, -- end of crew_members

    fires_pos =
    {
        [1]  = {1, 0.5,0},
        [2]  = {0.6, -0.25, 0.95},
        [3]  = {-0.1, -0.3, 0.95},
        [4]  = {2, -0.5, 0.4},
        [5]  = {-0.4, -0.25, -2},
        [6]  = {-1.9, -0.18, 0.4},
        [7]  = {-1.9, -0.18, -0.4},
        [8]  = {1.7, -0.1, 0.55},
        [9]  = {1.7, -0.1, -0.55},
        [10] = {-5, 0.5, 0},
        [11] = {-5, 0.5, 0},
    }, -- end of fires_pos

    CanopyGeometry = makeAirplaneCanopyGeometry(LOOK_BAD, LOOK_BAD, LOOK_BAD),
    Sensors = {
        OPTIC = {"Winglong-1 CAM", "Winglong-1 FLIR"},
    },

    HumanRadio = {
        frequency  = 127.5,
        modulation = MODULATION_AM
    },

    EPLRS = true,
    Tasks = {
        aircraft_task(CAS),
        aircraft_task(GroundAttack),
        aircraft_task(AFAC),
        aircraft_task(Reconnaissance),
    },
    DefaultTask = aircraft_task(CAS),

    Pylons =
    {
       pylon(1, 0, 0.119, -0.437, -1.128,
            {
                use_full_connector_position = true, connector = "Pylon1", arg = 308, arg_value = 0
            },
            {
                { CLSID = 'DIS_AKD-10'},
            }
        ),
        pylon(2, 0, 0.119, -0.437, 1.128,
            {
                use_full_connector_position = true, connector = "Pylon2", arg = 309, arg_value = 0
            },
            {
                { CLSID = 'DIS_AKD-10'},
            }
        ),
    },

    SFM_Data =
    {
        aerodynamics = -- Cx = Cx_0 + Cy^2*B2 +Cy^4*B4
        {
            Cy0        = 0.3,
            Mzalfa     = 6.6,
            Mzalfadt   = 1,
            kjx        = 2.85,
            kjz        = 0.00125,
            Czbe       = -0.012,
            cx_gear    = 0.002,
            cx_flap    = 0.01,
            cy_flap    = 0.3,
            cx_brk     = 0.025,
            table_data =
            {
                [1] = {0.0,    0.026,    0.12,    0.0227,    0.0001,    4,    20,    1.4},
                [2] = {0.4,    0.026,    0.12,    0.0227,    0.0001,    4,    20,    1.4},
                [3] = {1.0,    0.026,    0.12,    0.0227,    0.0001,    4,    20,    1.4},
            }, -- end of table_data
        }, -- end of aerodynamics
        engine =
        {
            Nmg        = 40.001,--67.5,
            MinRUD     = 0,
            MaxRUD     = 1,
            MaksRUD    = 1,
            ForsRUD    = 1,
            type       = "TurboProp",
            hMaxEng    = 19.5,
            dcx_eng    = 0.0085,
            cemax      = 0.37,
            cefor      = 0.37,
            dpdh_m     = engine_coef * 140,
            dpdh_f     = engine_coef * 180,
            table_data =
            {
                [1]  = {0.000, engine_coef * 1161.2, engine_coef * 1335},
                [2]  = {0.025, engine_coef * 1165.6, engine_coef * 1340},
                [3]  = {0.050, engine_coef * 1154.3, engine_coef * 1327},
                [4]  = {0.075, engine_coef * 1156.9, engine_coef * 1330},
                [5]  = {0.100, engine_coef * 1136.0, engine_coef * 1306},
                [6]  = {0.125, engine_coef * 1043.8, engine_coef * 1200},
                [7]  = {0.150, engine_coef *  948.1, engine_coef * 1090},
                [8]  = {0.175, engine_coef *  846.3, engine_coef *  973},
                [9]  = {0.200, engine_coef *  776.8, engine_coef *  893},
                [10] = {0.225, engine_coef *  701.9, engine_coef *  807},
                [11] = {0.250, engine_coef *  626.3, engine_coef *  720},
                [12] = {0.275, engine_coef *  586.3, engine_coef *  674},
                [13] = {0.300, engine_coef *  541.0, engine_coef *  622},
                [14] = {0.325, engine_coef *  492.3, engine_coef *  566},
                [15] = {0.350, engine_coef *  430.6, engine_coef *  495},
                [16] = {0.375, engine_coef *  391.4, engine_coef *  450},
                [17] = {0.400, engine_coef *  359.2, engine_coef *  413},
            }, -- end of table_data
        }, -- end of engine
    },
    --damage , index meaning see in  Scripts\Aircrafts\_Common\Damage.lua
    Damage = verbose_to_dmg_properties({
        --fuselage
        ["NOSE_CENTER"]            = {critical_damage = 1,  args = {148}, droppable = false}, -- sensor ball
        ["NOSE_TOP"]               = {critical_damage = 2,  args = {147}},
        ["NOSE_Bottom"]            = {critical_damage = 2,  args = {147}},
        ["FUSELAGE_TOP"]           = {critical_damage = 5,  args = {151}},
        ["FUSELAGE_BOTTOM"]        = {critical_damage = 5,  args = {152}},

        ["TAIL_TOP"]               = {critical_damage = 5,  args = {115}},
        ["TAIL_BOTTOM"]            = {critical_damage = 5,  args = {156}},

        ["FRONT_GEAR_BOX"]         = {critical_damage = 5,},
        ["LEFT_GEAR_BOX"]          = {critical_damage = 5,},
        ["RIGHT_GEAR_BOX"]         = {critical_damage = 5,},


        ["ROTOR"]                  = {critical_damage = 3,  args = {271}, deps_cells = {"BLADE_1_OUT","BLADE_2_OUT","BLADE_3_OUT"}},
        ["BLADE_1_OUT"]            = {critical_damage = 1,  droppable = false},
        ["BLADE_2_OUT"]            = {critical_damage = 1,  droppable = false},
        ["BLADE_3_OUT"]            = {critical_damage = 1,  droppable = false},

        ["STABILIZATOR_L_IN"]      = {critical_damage = 5,  args = {246}, deps_cells = {"ELEVATOR_L_IN","ELEVATOR_L_OUT"}},
        ["ELEVATOR_L_IN"]          = {critical_damage = 2,  args = {239}, droppable = false},
        ["ELEVATOR_L_OUT"]         = {critical_damage = 2,  args = {240}, droppable = false},
        ["STABILIZATOR_R_IN"]      = {critical_damage = 5,  args = {243}, deps_cells = {"ELEVATOR_R_IN","ELEVATOR_R_OUT"}},
        ["ELEVATOR_R_IN"]          = {critical_damage = 2,  args = {237}, droppable = false},
        ["ELEVATOR_R_OUT"]         = {critical_damage = 2,  args = {238}, droppable = false},

        ["RUDDER_R"]               = {critical_damage = 3,  args = {247}},
        ["RUDDER"]                 = {critical_damage = 1,  args = {224}},
        --left wing
        ["WING_L_OUT"]             = {critical_damage = 5,  args = {213}, deps_cells = {"FLAPS_L_OUT"}},
        ["WING_L_CENTER"]          = {critical_damage = 5,  args = {214}, deps_cells = {"FLAPS_L_CENTER","FLAPS_L_IN","WING_L_IN"}},
        ["WING_L_IN"]              = {critical_damage = 5,  args = {223}, deps_cells = {"AILERON_L"}, droppable = false},
        ["FLAPS_L_OUT"]            = {critical_damage = 2,  args = {226}, droppable = false},
        ["FLAPS_L_CENTER"]         = {critical_damage = 2,  args = {227}, droppable = false},
        ["FLAPS_L_IN"]             = {critical_damage = 2,  args = {228}, droppable = false},
        ["AILERON_L"]              = {critical_damage = 2,  args = {229}, droppable = false},
        --right wing
        ["WING_R_OUT"]             = {critical_damage = 5,  args = {243}, deps_cells = {"FLAPS_R_OUT"}},
        ["WING_R_CENTER"]          = {critical_damage = 5,  args = {214}, deps_cells = {"FLAPS_R_CENTER","FLAPS_R_IN","WING_R_IN"}},
        ["WING_R_IN"]              = {critical_damage = 5,  args = {215}, deps_cells = {"AILERON_R"}, droppable = false},
        ["FLAPS_R_OUT"]            = {critical_damage = 2,  args = {216}, droppable = false},
        ["FLAPS_R_CENTER"]         = {critical_damage = 2,  args = {217}, droppable = false},
        ["FLAPS_R_IN"]             = {critical_damage = 2,  args = {218}, droppable = false},
        ["AILERON_R"]              = {critical_damage = 2,  args = {219}, droppable = false},
    }),

    DamageParts =
    {
        [1] = "wingloong_oblomok_R", -- wing R
        [2] = "wingloong_oblomok_L", -- wing L
    },

    lights_data = {
        typename = "collection",
        lights = {
            [WOLALIGHT_STROBES] = {},
            [WOLALIGHT_LANDING_LIGHTS] = {},
            [WOLALIGHT_NAVLIGHTS] = {
                typename = "Collection",
                lights = {
                    {
                        typename = "Spot", connector = "BANO_1", dir_correction = {azimuth = math.rad(-45.0)}, argument = 190,
                        proto = { color = {1.0, 0.35, 0.15, 0.12}, range = 22.2, angle_max = math.rad(180.0), },
                        angle_max = math.rad(180.0), angle_min = math.rad(90.0),
                        controller = "Strobe", mode = 1, power_up_t = 0.3, cool_down_t = 0.6, period = 1.0, flash_time = 0.7,
                    },
                    {
                        typename = "Spot", connector = "BANO_2", dir_correction = {azimuth = math.rad(45.0)}, argument = 191,
                        proto = { color = {0.0, 0.894, 0.6, 0.12}, range = 22.2, angle_max = math.rad(180.0), },
                        angle_max = math.rad(180.0), angle_min = math.rad(90.0),
                        controller = "Strobe", mode = 1, power_up_t = 0.3, cool_down_t = 0.6, period = 1.0, flash_time = 0.7,
                    },
                }
            },
            [WOLALIGHT_FORMATION_LIGHTS] = {},
            [WOLALIGHT_TIPS_LIGHTS] = {},
            [WOLALIGHT_TAXI_LIGHTS] = {},
        }
    },
    ViewSettings = ViewSettings,
}

add_aircraft(WingLoong)
