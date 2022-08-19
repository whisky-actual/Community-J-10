
mount_vfs_model_path (current_mod_path .. '/Shapes/H-6J')
mount_vfs_texture_path (current_mod_path .. '/Textures/H-6J')

-----------------------------------------
-----------------------------------------

local wheel_touch_comp = 0.02
local wheel_diam_nose  = 0.883
local wheel_diam_main  = 1.079

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

H_6J_AI = {
    Name             = 'H-6J',
    DisplayName      = _('H-6J'),
    EmptyWeight      = "35000",
    MaxFuelWeight    = "60000",
    MaxHeight        = "13100",
    MaxSpeed         = "964",
    MaxTakeOffWeight = "76000",
    Picture          = 'H-6J.png',
    Rate             = 50, -- RewardPoint in Multiplayer
    Shape            = 'H-6J',
    shape_table_data = {
        {
            file        = 'H-6J',
            life        = 18, -- lifebar
            vis         = 3, -- visibility gain.
            desrt       = 'H-6J-oblomok', -- Name of destroyed object file name
            fire        = {300, 2}, -- Fire on the ground after destoyed: 300sec 2m
            username    = 'H-6J',
            index       = WSTYPE_PLACEHOLDER,
            classname   = "lLandPlane",
            positioning = "BYNORMAL",
        },
        {
            name = "H-6J-oblomok",
            file = "H-6J-oblomok",
            fire = {240, 2},
        },
    },

    -------------------------
    mapclasskey          = "P0091000027",
    WorldID              = WSTYPE_PLACEHOLDER,
    attribute            = {wsType_Air, wsType_Airplane, wsType_F_Bomber, WSTYPE_PLACEHOLDER, "Strategic bombers", "Datalink", "Link16"},
    Categories           = {},
    Countries            = {'China'},
    country_of_origin    = 'CHN',
    date_of_introduction = 2019.1, --
    -------------------------
    -- add model draw args for network transmitting to this draw_args table (32 limit)
    net_animation =
    {
    },

    ColdStartDefaultControls = {
    },

    AddPropAircraft = {
        { id = "Belly Bay Door",  control = 'checkbox', label = _('Open Bay Door'),  defValue = false, weight = 0, arg = 26 },
    },

    -------------------------
    M_empty                     = 35000.0,   -- H-6J with pilot and nose load, kg
    M_nominal                   = 60000.0,   -- H-6J kg (Empty Plus Full Internal Fuel)
    M_max                       = 76000.0,   -- H-6J kg (Maximum Take Off Weight)
    M_fuel_max                  = 25000.0,   -- H-6J kg (Internal Fuel Only)
    H_max                       = 13100.0,   -- H-6J m  (Maximum Operational Ceiling)
    average_fuel_consumption    = 0.225,     --
    CAS_min                     = 72,        --
    V_opt                       = 213.33,    --
    V_take_off                  = 80.0,      -- Take off speed in m/s (for AI)
    V_land                      = 62.0,      -- Land speed in m/s (for AI)
    V_max_sea_level             = 200.0,     -- Max speed at sea level in m/s (for AI)
    V_max_h                     = 290.0,     -- Max speed at max altitude in m/s (for AI)
    Vy_max                      = 12.0,      -- Max climb speed in m/s (for AI)
    Mach_max                    = 0.85,      -- Max speed in Mach (for AI)
    Ny_min                      = -3,        -- Min G (for AI)
    Ny_max                      = 8.0,       -- Max G (for AI)
    Ny_max_e                    = 8.0,       -- Max G (for AI)
    AOA_take_off                = 0.12,      -- AoA in take off (for AI)
    bank_angle_max              = 45,        -- Max bank angle (for AI)
    has_afteburner              = false,     -- AFB yes/no
    has_speedbrake              = false,     -- Speedbrake yes/no
    has_differential_stabilizer = false,

    -----------------------------------------------------------------------
    ----------------- SUSPENSION CODE BEGINS
    -----------------------------------------------------------------------
    tand_gear_max                            = 0.698, --2.1445, -- tangent on maximum yaw angle of front wheel, 65 degrees tan(64deg)

    nose_gear_pos                            = {10.656, -2.932-0.5*wheel_diam_nose+wheel_touch_comp, 0.0},    -- nosegear coord==前轮
    nose_gear_wheel_diameter                 = wheel_diam_nose,            -- in m
    nose_gear_amortizer_direct_stroke        = 3.034 - 2.932,              -- down from nose_gear_pos !!!
    nose_gear_amortizer_reversal_stroke      = 2.807 - 2.932,                -- up
    nose_gear_amortizer_normal_weight_stroke = 0.00003571,                -- down from nose_gear_pos

    main_gear_pos                            = {-0.584, -2.843-0.5*wheel_diam_main+wheel_touch_comp, 4.887},    -- main gear coords==后轮
    main_gear_wheel_diameter                 = wheel_diam_main,            -- in m
    main_gear_amortizer_direct_stroke        = 2.937 - 2.843,        -- down from main_gear_pos !!!
    main_gear_amortizer_reversal_stroke      = 2.709 - 2.843,     -- up
    main_gear_amortizer_normal_weight_stroke = 0.00003571,                -- down from main_gear_pos
    -----------------------------------------------------------------------
    ----------------- SUSPENSION CODE ENDS
    -----------------------------------------------------------------------

    --brakeshute_name           = 4,        -- Landing - brake chute visual shape after separation
    brakeshute_name           = "H-6J_dragchute",

    tanker_type               = 0,        -- Tanker type if the plane is airrefuel capable (same type as F-14, aka drogue basket)
    is_tanker                 = false,    -- Tanker yes/no
    air_refuel_receptacle_pos = {0, 0, 0}, -- refuel coords

    wing_tip_pos              = {-8.261, -0.852, 17.147}, -- wingtip coords for visual effects
    wing_area                 = 165,        -- H-6J wing area in m2
    wing_span                 = 33,        -- H-6J wing spain in m,
    wing_type                 = 0,        -- Fixed wing
    flaps_maneuver            = 0.5,        -- Max flaps in take-off and maneuver (0.5 = 1st stage, 1.0 = 2nd stage) (for AI)

    thrust_sum_max            = 25420,
    thrust_sum_ab             = 25420,

    length                    = 34.8,    -- H-6J full lenght in m
    height                    = 10.36,        -- H-6J height in m
    range                     = 6000,        -- Max range in km (for AI)
    RCS                       = 55.0,        -- Radar Cross Section m2
    IR_emission_coeff         = 2.5,        -- Normal engine -- IR_emission_coeff = 1 is Su-27 without afterburner. It is reference.
    IR_emission_coeff_ab      = 0.0,        -- With afterburner
    --sound_name = "aircraft\H-6J\Sounds",

    engines_count   = 2, -- Engines count
    engines_nozzles = {
        [1] = {
            pos                 = {-5.130, -0.782, -2.143}, -- nozzle coords
            elevation           = 0, -- AFB cone elevation
            diameter            = 1.130, -- AFB cone diameter
            exhaust_length_ab   = 9, -- lenght in m
            exhaust_length_ab_K = 0.5, -- AB animation
            smokiness_level     = 0.6,
            --afterburner_effect_texture = "afterburner_f-18c",
        }, -- end of [1]
        [2] = {
            pos                 = {-5.130, -0.782,  2.143}, -- nozzle coords
            elevation           = 0, -- AFB cone elevation
            diameter            = 1.130, -- AFB cone diameter
            exhaust_length_ab   = 9, -- lenght in m
            exhaust_length_ab_K = 0.5, -- AB animation
            smokiness_level     = 0.6,
            --afterburner_effect_texture = "afterburner_f-18c",
        }, -- end of [1]
    }, -- end of engines_nozzles
    apu_rpm_delay_ = 4, -- launch delay (for sound)

    crew_size    = 3,
    crew_members = {
        [1] = {
            pilot_name         = "pilot_j11a",
            --ejection_seat_name = 9,
            drop_canopy_name   = 0,
            canopy_arg         = 38,
            pos                = {13.500, 0.550, -0.500},
        }, -- end of [1]
        [2] = {
            pilot_name         = "pilot_j11a",
            --ejection_seat_name = 9,
            drop_canopy_name   = 0,
            canopy_arg         = 38,
            pos                = {13.500, 0.550, 0.500},
        }, -- end of [1]
        [3] = {
            pilot_name         = "pilot_j11a",
            --ejection_seat_name = 9,
            drop_canopy_name   = 0,
            canopy_arg         = 38,
            pos                = {12.500, 0.550, 0.500},
        },
    }, -- end of crew_members

    mechanimations = {
        Door0 = {
            {Transition = {"Any", "Bailout"}, Sequence = {{C = {{"Arg", 38, "to", 1.0, "in", 0.3}}}}},
        },
        Door1 = {DuplicateOf = "Door0"},
        Door2 = {DuplicateOf = "Door0"},
    }, -- end of mechanimations

    Navpoint_Panel = true,
    Fixpoint_Panel = true,

    --dataCartridge = true,

    TACAN_AA = true,

    -- Aircraft Additional Properties
    --AddPropAircraft = add_aircraft_prop(),

    -- Countermeasures
    Countermeasures = {
        ECM = "RKL ECM",
    },

    passivCounterm = {
        CMDS_Edit         = true,
        SingleChargeTotal = 240,
        chaff = { default = 120, increment = 40, chargeSz = 1 },
        flare = { default = 120, increment = 40, chargeSz = 1 },
        preferred_flare_kind = 2,
    },

    chaff_flare_dispenser = {
        [1] = { dir = {0, -1.0,  1.0}, pos = {-11.200, -0.800,  0.500}, }, -- Flares L
        [2] = { dir = {0, -1.0, -1.0}, pos = {-11.200, -0.800, -0.500}, }, -- Flares R
        [3] = { dir = {0, -1.0,  1.0}, pos = {-12.200, -0.600,  0.500}, }, -- Chaffs L
        [4] = { dir = {0, -1.0, -1.0}, pos = {-12.200, -0.600, -0.500}, }, -- Chaffs R
    },

    --sensors
    Sensors = {
        RADAR = "H-6J RADAR",
        OPTIC = {"H-6J TV", "H-6J FLIR"},
        RWR   = "Abstract RWR",
    },
    detection_range_max   = 400000.0,
    radar_can_see_ground  = true,
    EPLRS                 = true,

    CanopyGeometry = {
        azimuth   = {-160.0, 160.0}, --
        elevation = {-50.0, 90.0} --
    },

    Guns = {
    },

    Pylons = {
        -- LEFT WING
        pylon(1, 1, -2.310, -1.052, -11.562,
            {
                use_full_connector_position = true, connector = "pylon1", arg = 308, arg_value = 0
            },
            {
                { CLSID = "DIS_GDJ_YJ83K", arg_value = 1.0, Type = 1 }, --
                { CLSID = "DIS_DF4A_KD20", arg_value = 1.0, Type = 1 }, --

                { CLSID = "DIS_MER6_250_2_N6", arg_value = 1.0, },
                { CLSID = "DIS_MER6_250_3_N6", arg_value = 1.0, },
            }
        ),
        pylon(2, 1, 0.257, -1.047, -7.930,
            {
                use_full_connector_position = true, connector = "pylon2", arg = 309, arg_value = 0
            },
            {
                { CLSID = "DIS_GDJ_KD63",  arg_value = 1.0, Type = 1, required = {{station = 7, loadout = {"DIS_AKG_DLPOD"}}} }, --
                { CLSID = "DIS_GDJ_KD63B", arg_value = 1.0, Type = 1, required = {{station = 7, loadout = {"DIS_AKG_DLPOD"}}} }, --
                { CLSID = "DIS_DF4B_YJ12", arg_value = 1.0, Type = 1, }, --
                { CLSID = "DIS_DF4A_KD20", arg_value = 1.0, Type = 1, }, --
                { CLSID = "DIS_GDJ_YJ83K", arg_value = 1.0, Type = 1, }, --

                { CLSID = "DIS_MER6_250_2_N6", arg_value = 1.0, },
                { CLSID = "DIS_MER6_250_3_N6", arg_value = 1.0, },
            }
        ),
        pylon(3, 1, 3.580, -0.970, -3.646,
            {
                use_full_connector_position = true, connector = "pylon3", arg = 310, arg_value = 0
            },
            {
                { CLSID = "DIS_GDJ_KD63",  arg_value = 1.0, Type = 1, required = {{station = 7, loadout = {"DIS_AKG_DLPOD"}}} }, --
                { CLSID = "DIS_GDJ_KD63B", arg_value = 1.0, Type = 1, required = {{station = 7, loadout = {"DIS_AKG_DLPOD"}}} }, --
                { CLSID = "DIS_DF4B_YJ12", arg_value = 1.0, Type = 1 }, --
                { CLSID = "DIS_DF4A_KD20", arg_value = 1.0, Type = 1 }, --
                { CLSID = "DIS_GDJ_YJ83K", arg_value = 1.0, Type = 1 }, --

                { CLSID = "DIS_MER6_250_2_N6", arg_value = 1.0, },
                { CLSID = "DIS_MER6_250_3_N6", arg_value = 1.0, },
            }
        ),
        pylon(4, 1, 3.580, -0.970, 3.646,
            {
                use_full_connector_position = true, connector = "pylon4", arg = 311, arg_value = 0
            },
            {
                { CLSID = "DIS_GDJ_KD63",  arg_value = 1.0, Type = 1, required = {{station = 7, loadout = {"DIS_AKG_DLPOD"}}} }, --
                { CLSID = "DIS_GDJ_KD63B", arg_value = 1.0, Type = 1, required = {{station = 7, loadout = {"DIS_AKG_DLPOD"}}} }, --
                { CLSID = "DIS_DF4B_YJ12", arg_value = 1.0, Type = 1 }, --
                { CLSID = "DIS_DF4A_KD20", arg_value = 1.0, Type = 1 }, --
                { CLSID = "DIS_GDJ_YJ83K", arg_value = 1.0, Type = 1 }, --

                { CLSID = "DIS_MER6_250_2_N6", arg_value = 1.0, },
                { CLSID = "DIS_MER6_250_3_N6", arg_value = 1.0, },
            }
        ),
        pylon(5, 1, 0.257, -1.047, 7.930,
            {
                use_full_connector_position = true, connector = "pylon5", arg = 312, arg_value = 0
            },
            {
                { CLSID = "DIS_GDJ_KD63",  arg_value = 1.0, Type = 1, required = {{station = 7, loadout = {"DIS_AKG_DLPOD"}}} }, --
                { CLSID = "DIS_GDJ_KD63B", arg_value = 1.0, Type = 1, required = {{station = 7, loadout = {"DIS_AKG_DLPOD"}}} }, --
                { CLSID = "DIS_DF4B_YJ12", arg_value = 1.0, Type = 1 }, --
                { CLSID = "DIS_DF4A_KD20", arg_value = 1.0, Type = 1 }, --
                { CLSID = "DIS_GDJ_YJ83K", arg_value = 1.0, Type = 1 }, --

                { CLSID = "DIS_MER6_250_2_N6", arg_value = 1.0, },
                { CLSID = "DIS_MER6_250_3_N6", arg_value = 1.0, },
            }
        ),
        pylon(6, 1, -2.310, -1.052, 11.562,
            {
                use_full_connector_position = true, connector = "pylon6", arg = 313, arg_value = 0
            },
            {
                { CLSID = "DIS_GDJ_YJ83K", arg_value = 1.0, Type = 1 }, --
                { CLSID = "DIS_DF4A_KD20", arg_value = 1.0, Type = 1 }, --

                { CLSID = "DIS_MER6_250_2_N6", arg_value = 1.0, },
                { CLSID = "DIS_MER6_250_3_N6", arg_value = 1.0, },
            }
        ),
        pylon(7, 0, -5.256, -1.525, 0.000, -- for DL pod
            {
                use_full_connector_position = true, connector = "pylon7", arg = 314, arg_value = 0
            },
            {
                { CLSID = "DIS_AKG_DLPOD", arg_value = 1.0, },
            }
        ),
        pylon(8, 2, 0.000, -0.500, 0.000,
            {
            },
            {
                { CLSID = "DIS_H6_250_2_N24" },
                { CLSID = "DIS_H6_250_2_N12" },
            }
        ),
    },

    Tasks = {
        --aircraft_task(Nothing), -- 15
        aircraft_task(AntishipStrike), -- 30
        aircraft_task(GroundAttack),   -- 32
        aircraft_task(PinpointStrike), -- 33
        aircraft_task(RunwayAttack),
        aircraft_task(CAS),
    },

    DefaultTask = aircraft_task(AntishipStrike),

    SFM_Data = {
        aerodynamics = { -- Cx = Cx_0 + Cy^2*B2 +Cy^4*B4
            Cy0        = 0,      -- zero AoA lift coefficient
            Mzalfa     = 6.6,  -- coefficients for pitch agility
            Mzalfadt   = 1.0,    -- coefficients for pitch agility
            kjx        = 2.85,
            kjz        = 0.00125,
            Czbe       = -0.012, -- coefficient, along Z axis (perpendicular), affects yaw, negative value means force orientation in FC coordinate system
            cx_gear    = 0.015,    -- coefficient, drag, gear
            cx_flap    = 0.08,   -- coefficient, drag, full flaps
            cy_flap    = 0.50,    -- coefficient, normal force, lift, flaps
            cx_brk     = 0.0275,   -- coefficient, drag, breaks
            table_data = {
                --       M       Cx0      Cya    B      B4  Omxmax  Aldop   Cymax
                [1] =   {0.0,   0.022, 0.07,   0.024,  0.18,   0.5,    18, 1.1},
                [2] =   {0.2,   0.022, 0.07,   0.024,  0.18,   1.5,    18, 1.1},
                [3] =   {0.4,   0.022, 0.07,   0.024,  0.18,   2.5,    18, 1.1},
                [4] =   {0.6,   0.022, 0.07,  0.024,  0.18,   3.5,    18, 1.09},
                [5] =   {0.7,   0.023,  0.07,  0.3,    0.052,  3.5,    18, 1.08},
                [6] =   {0.8,   0.024,  0.07,  0.3,    0.052,  3.5,    18, 1.07},
                [7] =   {0.9,   0.025, 0.08,  0.324,  0.0536, 3.5,    18, 1.05},
                [8] =   {1.0,   0.035,   0.083,  0.348,  0.0552, 3.5,    18, 1.0},
                [9] =   {1.05,  0.041,  0.0855, 0.36,   0.056,  3.5,    18, 1.0},
                [10] =  {1.1,   0.039,  0.082,  0.372,  0.0568, 3.15,   18, 1.0},
                [11] =  {1.2,   0.037, 0.08,  0.396,  0.0584, 2.45,   17, 1.0},
                [12] =  {1.3,   0.035,  0.077,  0.42,   0.06,   1.75,   16, 1},
                [13] =  {1.5,   0.033,  0.062,  0.488571,   0.06,   1.5,    13, 0.9},
                [14] =  {1.7,   0.031,   0.051333333333333,  0.557143,   0.06,   0.9,    12, 0.7},
                [15] =  {1.8,   0.0295, 0.046,  0.591429,   0.06,   0.86,   11.4,   0.64},
                [16] =  {2.0,   0.029,  0.039,  0.66,   0.06,   0.78,   10.2,   0.52},
                [17] =  {2.2,   0.028,  0.034,  0.227,  3.2,    0.7,    9,  0.4},
                [18] =  {2.5,   0.027,  0.033,  0.25,   4.5,    0.7,    9,  0.4},
                [19] =  {3.9,   0.027,  0.033,  0.35,   6,  0.7,    9,  0.4},
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
            Nmg      = 67.5,
            MinRUD   = 0,
            MaxRUD   = 1,
            MaksRUD  = 1,
            ForsRUD  = 1,
            typeng   = 0,
            hMaxEng  = 19.5,
            dcx_eng  = 0.0085,
            cemax    = 0.37,
            cefor    = 0.37,
            dpdh_m   = 6200,
            dpdh_f   = 6200,
            table_data =
            {
                [1] = {0.0,  235344,  235344},
                [2] = {0.2,  245056,  245056},
                [3] = {0.4,  253520,  253520},
                [4] = {0.6,  254200,  254200},
                [5] = {0.7,  242072,  242072},
                [6] = {0.8,  231528,  231528},
                [7] = {0.9,  220944,  220944},
                [8] = {1.0,  220360,  220360},
                [9] = {1.1,  220400,  220400},
            }, -- end of table_data
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

    --[[
    effects_presets = {
        { effect = 'OVERWING_VAPOR',    file = current_mod_path .. '/Effects/H-6J_overwingVapor.lua', preset = "JF17" },
    },
    ]]

    --
    Damage = verbose_to_dmg_properties({
                ["NOSE_CENTER"]         = {critical_damage = 5,  args =  {146}},
                ["COCKPIT"]             = {critical_damage = 10, args =  { 65}},
                ["NOSE_RIGHT_SIDE"]     = {critical_damage = 5,  args =  {147}},
                ["NOSE_LEFT_SIDE"]      = {critical_damage = 5,  args =  {150}},
                ["NOSE_BOTTOM"]         = {critical_damage = 3,  args =  {148}},
                ["FUSELAGE_LEFT_SIDE"]  = {critical_damage = 3,  args =  {154}},
                ["FUSELAGE_RIGHT_SIDE"] = {critical_damage = 3,  args =  {153}},

                ["WING_L_IN"]           = {critical_damage = 10, args =  {225}},
                ["WING_L_OUT"]          = {critical_damage = 8,  args =  {223}, deps_cells = {"FLAP_L_OUT","AILERON_L"}},
                -- ["FLAP_L_IN"]           = {critical_damage = 4,  args =  {227}},
                ["FLAP_L_OUT"]          = {critical_damage = 4,  args =  {227}},
                ["AILERON_L"]           = {critical_damage = 4,  args =  {229}},

                ["WING_R_IN"]           = {critical_damage = 10, args =  {215}},
                ["WING_R_OUT"]          = {critical_damage = 8,  args =  {213}, deps_cells = {"FLAP_R_OUT","AILERON_R"}},
                -- ["FLAP_R_IN"]           = {critical_damage = 4,  args =  {217}},
                ["FLAP_R_OUT"]          = {critical_damage = 4,  args =  {217}},
                ["AILERON_R"]           = {critical_damage = 4,  args =  {219}},
                
                ["LEFT_GEAR_BOX"]       = {critical_damage = 6,  args =  {267}},
                ["RIGHT_GEAR_BOX"]      = {critical_damage = 6,  args =  {266}},

                ["FUSELAGE_BOTTOM"]     = {critical_damage = 4,  args =  {152}},
                ["FUSELAGE_CENTR_L"]    = {critical_damage = 4,  args =  {154}},
                ["FUSELAGE_CENTR_R"]    = {critical_damage = 4,  args =  {153}},
                ["ENGINE_L"]            = {critical_damage = 3,  args =  {167}},
                ["ENGINE_R"]            = {critical_damage = 3,  args =  {161}},

                ["TAIL_BOTTOM"]         = {critical_damage = 5,  args =  {297}},
                ["TAIL_LEFT_SIDE"]      = {critical_damage = 5,  args =  {156}},
                ["TAIL_RIGHT_SIDE"]     = {critical_damage = 5,  args =  {155}},

                ["STABILIZER_L_IN"]     = {critical_damage = 7,  args =  {235}},
                ["STABILIZER_R_IN"]     = {critical_damage = 7,  args =  {233}},
                ["ELEVATOR_R_IN"]       = {critical_damage = 5,  args =  {237}},
                ["ELEVATOR_L_IN"]       = {critical_damage = 5,  args =  {239}},
                ["FIN_L_BOTTOM"]        = {critical_damage = 4,  args =  {243}},
                ["RUDDER"]              = {critical_damage = 3,  args =  {247}},
            }),

    DamageParts =
    {
        [1] = "H-6J-dp-wing-R",
        [2] = "H-6J-dp-wing-L",
		[3] = "H-6J-dp-TAIL",
    },

    -- 故障
    Failures = {
    },

    lights_data = {
        typename = 'collection',
        lights = {
            [WOLALIGHT_STROBES] = {
                typename = "collection",
                lights = {
                    --[[
                    [1] = {
                        typename = "Collection",
                        lights = {
                            {
                                typename = "natostrobelight", position = {5.650, 1.000, 0.00}, argument = 83,
                                proto = lamp_prototypes.SMI_2KM,
                            },
                            {
                                typename = "natostrobelight", position = {6.100, -1.400, 0.00}, argument = 83,
                                proto = lamp_prototypes.MPS_1,
                            },
                        },
                    },
                    ]]
                },
            },
            [WOLALIGHT_LANDING_LIGHTS] = { -- spot/landing
                typename = "collection",
                lights = {
                    [1] = {
                        typename = "Collection",
                        lights = {
                            --[[{
                                typename = "Spot", position = {7.300, -1.100, -1.500}, dir_correction = {elevation = math.rad(4.0)}, argument = 51,
                                proto = lamp_prototypes.LFS_P_27_1000,
                            },
                            {
                                typename = "Omni", position = {7.300 + 0.5, -1.100, -1.500},
                                proto = lamp_prototypes.LFS_P_27_1000, range = 8.0,
                            },
                            {
                                typename = "Spot", position = {7.300, -1.100, 1.500}, dir_correction = {elevation = math.rad(4.0)},
                                proto = lamp_prototypes.LFS_P_27_1000,
                            },
                            {
                                typename = "Omni", position = {7.300 + 0.5, -1.100, 1.500},
                                proto = lamp_prototypes.LFS_P_27_1000, range = 8.0,
                            },]]
                            {
                                typename = "argumentlight", argument = 51,
                            },
                            {
                                typename = "argumentlight", argument = 208,
                            },
                        },
                    },
                },
            },
            [WOLALIGHT_TAXI_LIGHTS] = {
                typename = "collection",
                lights = {
                    [1] = {
                        typename = "Collection",
                        lights = {
                            --[[{
                                typename = "Spot", position = {7.300, -1.100, -1.500}, dir_correction = {elevation = math.rad(4.0)}, argument = 51,
                                proto = lamp_prototypes.LFS_R_27_450,
                            },
                            {
                                typename = "Omni", position = {7.300 + 0.5, -1.100, -1.500},
                                proto = lamp_prototypes.LFS_R_27_450, range = 8.0,
                            },
                            {
                                typename = "Spot", position = {7.300, -1.100, 1.500}, dir_correction = {elevation = math.rad(4.0)},
                                proto = lamp_prototypes.LFS_R_27_450,
                            },
                            {
                                typename = "Omni", position = {7.300 + 0.5, -1.100, 1.500},
                                proto = lamp_prototypes.LFS_R_27_450, range = 8.0,
                            },]]
                            {
                                typename = "argumentlight", argument = 209,
                            },
                        },
                    },
                },
            },
            [WOLALIGHT_NAVLIGHTS] = {
                typename = "collection",
                lights = {
                    { -- red
                        typename = "omnilight", connector = "BANO_1", position = {-5.200, -0.800, -16.480}, argument  = 190,
                        color = {1.0, 0.05, 0.15, 0.17}, range = 18.0, angle_max = math.rad(160.0), angle_min = math.rad(150.0),
                        controller = "Strobe", mode = 0, power_up_t = 0.6, period = 2.5, reduced_flash_time = 0.333, phase_shift = 0.0,
                    },
                    { -- green
                        typename = "omnilight", connector = "BANO_2", position = {-5.200, -0.800,  16.480}, argument  = 191,
                        color = {0.0, 0.894, 0.6, 0.17}, range = 18.0, angle_max = math.rad(160.0), angle_min = math.rad(150.0),
                        controller = "Strobe", mode = 0, power_up_t = 0.6, period = 2.5, reduced_flash_time = 0.333, phase_shift = 0.5,
                    },
                    { -- white
                        typename = "omnilight", connector = "BANO_0", position = {-16.500, 1.880, 0.000}, argument  = 192,
                        color = {1.0, 1.0, 1.0, 0.17}, range = 4.6,
                    },
                },
            },
            [WOLALIGHT_FORMATION_LIGHTS] = {
                typename = "collection",
                lights = {
                    {
                        typename = "argumentlight", argument = 200,
                    },
                    {
                        typename = "argumentlight", argument = 201,
                    },
                },
            },
            [WOLALIGHT_BEACONS] = {
                typename = "collection",
                lights = {
                    {
                        typename = "collection",
                        lights = {
                            {
                                typename = "natostrobelight", position = {5.690, 1.000, 0.092}, argument = 193,
                                proto = lamp_prototypes.SMI_2KM,
                                --proto = lamp_prototypes.MSL_3_2,
                            },
                            {
                                typename = "natostrobelight", position = {6.080, -1.470, 0.000}, argument = 194,
                                proto = lamp_prototypes.MPS_1,
                                --proto = lamp_prototypes.MSL_3_2,
                            },
                        },
                    },
                },
            },
        }, -- end of lights_data.lights
    }, -- end lights_data
}

add_aircraft(H_6J_AI)
