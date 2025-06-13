
local function plcat(clsid, name)
    local res = {};

    res.CLSID = clsid;
    res.Name  = name;

    return res;
end

mount_vfs_model_path (current_mod_path .. '/Shapes/KJ-2000')
mount_vfs_texture_path (current_mod_path .. '/Textures/KJ-2000')

--KJ_2000_ID =

local KJ_2000_AI = {

    Name         = 'KJ-2000',
    DisplayName  = _('KJ-2000'),
    ViewSettings = ViewSettings,

    HumanCockpit = false,

    Picture      = "KJ-2000.png",
    Rate         = 100, -- RewardPoint in Multiplayer
    Shape        = "kj2000",
    -----------------------------------------------------------------------------------------------------------------
    shape_table_data =
    {
        {
            file        = 'kj2000';
            life        = 18; -- lifebar
            vis         = 3; -- visibility gain.
            desrt       = 'kj2000-oblomok'; -- Name of destroyed object file name
            fire        = {300, 2}; -- Fire on the ground after destoyed: 300sec 2m
            username    = 'KJ-2000';
            index       = WSTYPE_PLACEHOLDER;
            classname   = "lLandPlane";
            positioning = "BYNORMAL";
        },
        {
            name = "kj2000-oblomok";
            file = "kj2000-oblomok";
            fire = {240, 2};
            --classname = "lLandPlane";
            --positioning = "BYNORMAL";
        },
    },

    -----------------------------------------------------------------------------------------------------------------
    --WorldID = KJ_2000_ID,
    Countries            = {"China"},
    date_of_introduction = 2003.11, --
    country_of_origin    = 'CHN',

    mapclasskey = "P0091000056",
    attribute   = {wsType_Air, wsType_Airplane, wsType_Cruiser, WSTYPE_PLACEHOLDER, "AWACS", "Datalink", "Link16"}, --[[KJ_2000_ID]]
    Categories  = {plcat("{D2BC159C-5B7D-40cf-92CD-44DF3E99FAA9}", ""),},
    -----------------------------------------------------------------------------------------------------------------
    M_empty                     = 90000,
    M_nominal                   = 160000,
    M_max                       = 190000,
    M_fuel_max                  = 70000,
    H_max                       = 12247,
    CAS_min                     = 54,
    V_opt                       = 220,
    V_take_off                  = 58,
    V_land                      = 61,
    average_fuel_consumption    = 0.235,
    AOA_take_off                = 0.14,
    stores_number               = 0,
    bank_angle_max              = 45,
    Ny_min                      = 0.5,
    Ny_max                      = 2.5,
    tand_gear_max               = 0.577,
    V_max_sea_level             = 167.11,
    V_max_h                     = 236.11,
    tanker_type                 = 4,
    wing_area                   = 300,
    wing_span                   = 50.5,
    thrust_sum_max              = 47080,
    thrust_sum_ab               = 47080,
    Vy_max                      = 10,
    length                      = 46.59,
    height                      = 14.76,
    flaps_maneuver              = 0.5,
    Mach_max                    = 0.77,
    range                       = 7300,
    RCS                         = 80,
    Ny_max_e                    = 2,
    detection_range_max         = 500,
    IR_emission_coeff           = 4,
    IR_emission_coeff_ab        = 0,
    engines_count               = 4,
    wing_tip_pos                = {-6.627, -0.265, 25.25},
    main_gear_pos               = {-3.432, -3.923, 3.952},
    nose_gear_pos               = {11.146, -4.009, 0},
    nose_gear_wheel_diameter    = 0.754,
    main_gear_wheel_diameter    = 0.972,
    brakeshute_name             = 0,
    is_tanker                   = false,
    has_afteburner              = false,
    has_speedbrake              = false,
    has_differential_stabilizer = false,
    radar_can_see_ground        = true,

    engines_nozzles =
    {
        {
            pos                 = {-0.322, -0.302, -10.525},
            elevation           = 0,
            diameter            = 1.523,
            exhaust_length_ab   = 11.794,
            exhaust_length_ab_K = 0.76,
            smokiness_level     = 0.1,
        },
        {
            pos                 = {1.85, -0.157, -6.314},
            elevation           = 0,
            diameter            = 1.523,
            exhaust_length_ab   = 11.794,
            exhaust_length_ab_K = 0.76,
            smokiness_level     = 0.1,
        },
        {
            pos                 = {1.85, -0.157, 6.314},
            elevation           = 0,
            diameter            = 1.523,
            exhaust_length_ab   = 11.794,
            exhaust_length_ab_K = 0.76,
            smokiness_level     = 0.1,
        },
        {
            pos                 = {-0.322, -0.302, 10.525},
            elevation           = 0,
            diameter            = 1.523,
            exhaust_length_ab   = 11.794,
            exhaust_length_ab_K = 0.76,
            smokiness_level     = 0.1,
        },
    }, -- end of engines_nozzles
    crew_members =
    {
        [1] =
        {
            pilot_name         = "pilot_j11a",
            ejection_seat_name = 0,
            drop_canopy_name   = 0,
            pos                = {7.916, 0.986, 0},
        }, -- end of [1]
        [2] =
        {
            pilot_name         = "pilot_j11a",
            ejection_seat_name = 0,
            drop_canopy_name   = 0,
            pos                = {3.949, 1.01, 0},
        }, -- end of [2]
        [3] =
        {
            pilot_name         = "pilot_j11a",
            ejection_seat_name = 0,
            drop_canopy_name   = 0,
            pos                = {3.949, 1.01, 0},
        }, -- end of [3]
        [4] =
        {
            pilot_name         = "pilot_j11a",
            ejection_seat_name = 0,
            drop_canopy_name   = 0,
            pos                = {3.949, 1.01, 0},
        }, -- end of [4]
    }, -- end of crew_members

    --air_refuel_receptacle_pos = {21.775,  0.764,  0},
    fires_pos =
    {
        [1]  = {3.433,  3.180, 0},
        [2]  = {1.954,  2.531, 3.513},
        [3]  = {1.954,  2.531, -3.513},
        [4]  = {-0.82,  0.265, 2.774},
        [5]  = {-0.82,  0.265, -2.774},
        [6]  = {-0.82,  0.255, 4.274},
        [7]  = {-0.82,  0.255, -4.274},
        [8]  = {3.276, -0.058, 6.429},
        [9]  = {3.276, -0.058, -6.429},
        [10] = {1.379, -0.299, 10.709},
        [11] = {1.379, -0.299, -10.709},
    }, -- end of fires_pos
    -----------------------------------------------------------------------------------------------------------------
    singleInFlight = true,
	
    EPLRS = true,

    -- Countermeasures
    SingleChargeTotal = 384,
    --CMDS_Edit         = true,
    chaff_flare_dispenser = {
        CMDS_Edit = true,
        SingleChargeTotal = 384,
        -- PPR-26
        chaff = {default = 192, increment = 24, chargeSz = 1},
        flare = {default = 192, increment = 24, chargeSz = 1}
    }, -- end of chaff_flare_dispenser
    -----------------------------------------------------------------------------------------------------------------
    --sensors

    --[[CanopyGeometry = {
        azimuth   = {-160.0, 160.0}, -- pilot view horizontal (AI)
        elevation = {-50.0, 90.0} -- pilot view vertical (AI)
    },]]
    CanopyGeometry = makeAirplaneCanopyGeometry(LOOK_AVERAGE, LOOK_BAD, LOOK_BAD),
    Sensors = {
        RADAR = "AESA_KJ2000",
        RWR   = "Abstract RWR",
    },
    HumanRadio = {
        frequency    = 251.0,
        editable     = true,
        minFrequency = 225.000,
        maxFrequency = 399.975,
        modulation   = MODULATION_AM,
    },

    --------------------------------------------------------------------------------------------------------------------------------------------
    Pylons = {
    },
    -----------------------------------------------------------------------------------------------------------------
    Tasks = {
        aircraft_task(AWACS),
    },
    DefaultTask = aircraft_task(AWACS),
    -----------------------------------------------------------------------------------------------------------------
    SFM_Data = {
        aerodynamics =
        {
            Cy0      = 0,
            Mzalfa   = 6.6,
            Mzalfadt = 1,
            kjx      = 2.85,
            kjz      = 0.00125,
            Czbe     = -0.012,
            cx_gear  = 0.015,
            cx_flap  = 0.08,
            cy_flap  = 1.6,
            cx_brk   = 0.06,
            table_data =
            {
                [1] = {0.0,  0.023,  0.1,  0.064,  0,  0.5,  20,  1.4},
                [2] = {0.2,  0.023,  0.1,  0.064,  0,  1.5,  20,  1.4},
                [3] = {0.4,  0.023,  0.1,  0.064,  0,  2.5,  20,  1.4},
                [4] = {0.6,  0.025,  0.1,  0.064,  0.022,  3.5,  20,  1.4},
                [5] = {0.7,  0.030,  0.1,  0.083,  0.031,  3.5,  20,  1.2},
                [6] = {0.8,  0.032,  0.1,  0.107,  0.04,  3.5,  20,  1},
                [7] = {0.9,  0.045,  0.1,  0.148,  0.058,  3.5,  20,  0.8},
                [8] = {1.0,  0.054,  0.1,  0.199,  0.1,  3.5,  20,  0.7},
                [9] = {1.5,  0.054,  0.1,  0.199,  0.1,  3.5,  20,  0.2},
            }, -- end of table_data
        }, -- end of aerodynamics
        engine =
        {
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
                [1] = {0.0,  627200,  627200},
                [2] = {0.2,  525056,  525056},
                [3] = {0.4,  443520,  443520},
                [4] = {0.6,  403200,  403200},
                [5] = {0.7,  387072,  387072},
                [6] = {0.8,  374528,  374528},
                [7] = {0.9,  370944,  370944},
                [8] = {1.0,  367360,  367360},
                [9] = {1.1,  358400,  358400},
            }, -- end of table_data
        }, -- end of engine
    },
    -----------------------------------------------------------------------------------------------------------------
    --damage , index meaning see in  Scripts\Aircrafts\_Common\Damage.lua
    Damage = {
        [0]   = {critical_damage = 5, args = {146}},
        [3]   = {critical_damage = 20,args = {65}},
        [4]   = {critical_damage = 5, args = {150}},
        [5]   = {critical_damage = 5, args = {149}},
        [6]   = {critical_damage = 200, args = {82}, deps_cells = {0, 3, 4, 5, 59}},
        [7]   = {critical_damage = 3, args = {249}},
        [9]   = {critical_damage = 4, args = {154}},
        [10]  = {critical_damage = 4, args = {153}},
        [11]  = {critical_damage = 3, args = {167}},
        [12]  = {critical_damage = 3, args = {161}},
        [17]  = {critical_damage = 3, args = {162}},
        [18]  = {critical_damage = 3, args = {163}},
        [19]  = {critical_damage = 5, args = {183}},
        [20]  = {critical_damage = 5, args = {185}},
        [23]  = {critical_damage = 15, args = {223}, deps_cells = {25}},
        [24]  = {critical_damage = 15, args = {213}, deps_cells = {26}},
        [25]  = {critical_damage = 3, args = {226}},
        [26]  = {critical_damage = 3, args = {216}},
        [29]  = {critical_damage = 50, args = {224}, deps_cells = {25, 23, 11, 17, 19, 31, 37}},
        [30]  = {critical_damage = 50, args = {214}, deps_cells = {26, 24, 12, 18, 20, 32, 38}},
        [31]  = {critical_damage = 5, args = {229}},
        [32]  = {critical_damage = 5, args = {219}},
        [35]  = {critical_damage = 30, args = {225}, deps_cells = {29, 11, 19, 31, 37}},
        [36]  = {critical_damage = 30, args = {215}, deps_cells = {30, 12, 20, 32, 38}},
        [37]  = {critical_damage = 5, args = {227}},
        [38]  = {critical_damage = 5, args = {217}},
        [39]  = {critical_damage = 20, args = {244}, deps_cells = {47, 48, 51, 52, 53}},
        [43]  = {critical_damage = 20, args = {243}, deps_cells = {39, 47, 48, 51, 52, 53}},
        [47]  = {critical_damage = 5, args = {235}, deps_cells = {51}},
        [48]  = {critical_damage = 5, args = {234}, deps_cells = {52}},
        [51]  = {critical_damage = 3, args = {237}},
        [52]  = {critical_damage = 3, args = {239}},
        [53]  = {critical_damage = 3, args = {248}},
        [55]  = {critical_damage = 200, args = {81}, deps_cells = {43, 39, 47, 48, 51, 52, 53, 57, 58}},
        [56]  = {critical_damage = 5, args = {141}},
        [57]  = {critical_damage = 5, args = {140}},
        [58]  = {critical_damage = 7, args = {156}},
        [59]  = {critical_damage = 5, args = {148}},
        [61]  = {critical_damage = 8, args = {151}},
        [82]  = {critical_damage = 8, args = {152}},
    },
    -----------------------------------------------------------------------------------------------------------------
    DamageParts =
    {
        [1] = "KJ2000-OBLOMOK-WING-R",
        [2] = "KJ2000-OBLOMOK-WING-L",
        [3] = "KJ2000-OBLOMOK-NOSE",
        [4] = "KJ2000-OBLOMOK-TAIL",
    },
    -----------------------------------------------------------------------------------------------------------------
    lights_data = {
        typename = "collection",
        lights = {
            [WOLALIGHT_STROBES] = {
                typename = "collection",
                lights = {
                    [1] = {
                        typename = "Collection",
                        lights = {
                            {
                                typename = "natostrobelight", position = {4.075, 3.215 + 0.200, 0.530}, argument = 83,
                                proto = lamp_prototypes.SMI_2KM,
                            },
                            {
                                typename = "natostrobelight", position = {-15.226, -0.670 - 0.200, -0.070},
                                proto = lamp_prototypes.SMI_2KM,
                            },
                        },
                    },
                },
            },
            [WOLALIGHT_SPOTS] = {
                typename = 'collection',
                lights = {
                    {
                        typename = "Collection",
                        lights = {
                            {
                                typename = "Spot", position = {17.654, -1.878, -0.864}, dir_correction = {elevation = math.rad(4.0)}, argument = 51,
                                proto = lamp_prototypes.LFS_P_27_1000,
                            },
                            {
                                typename = "Omni", position = {17.654 + 0.5, -1.878, -0.864},
                                proto = lamp_prototypes.LFS_P_27_1000, range = 8.0,
                            },
                            {
                                typename = "Spot", position = {17.654, -1.878, 0.864}, dir_correction = {elevation = math.rad(4.0)},
                                proto = lamp_prototypes.LFS_P_27_1000,
                            },
                            {
                                typename = "Omni", position = {17.654 + 0.5, -1.878, 0.864},
                                proto = lamp_prototypes.LFS_P_27_1000, range = 8.0,
                            },
                            {
                                typename = "Spot", position = {-6.974, 1.066, -24.088}, dir_correction = {elevation = math.rad(8.0)},
                                proto = lamp_prototypes.LFS_R_27_450,
                            },
                            {
                                typename = "Spot", position = {-6.974, 1.066, 24.088}, dir_correction = {elevation = math.rad(8.0)},
                                proto = lamp_prototypes.LFS_R_27_450,
                            },
                        },
                    },
                },
            },
            [WOLALIGHT_NAVLIGHTS] = {
                typename = "collection",
                lights = {
                    {
                        typename  = "omnilight" ,
                        connector = "BANO_0",
                        color     = {1,1,1},
                        position  = {-6.079, 2.896, 0.0},
                        argument  = 192,
                    },
                    {
                        typename  = "omnilight" ,
                        connector = "BANO_1",
                        color     = {0.99,0.11,0.3},
                        position  = {-1.516, -0.026, -7.249},
                        argument  = 190,
                    },
                    {
                        typename  = "omnilight" ,
                        connector = "BANO_2",
                        color     = {0,0.894,0.6},
                        position  = {-1.516, -0.026,  7.249},
                        argument  = 191,
                    },
                }
            },--must be collection
            [WOLALIGHT_TAXI_LIGHTS] = {
                typename = 'collection',
                lights = {
                    {
                        typename = "Collection",
                        lights = {
                            {
                                typename = "Spot", position = {17.654, -1.878, -0.864}, dir_correction = {elevation = math.rad(4.0)}, argument = 51,
                                proto = lamp_prototypes.LFS_R_27_450,
                            },
                            {
                                typename = "Omni", position = {17.654 + 0.5, -1.878, -0.864},
                                proto = lamp_prototypes.LFS_R_27_450, range = 8.0,
                            },
                            {
                                typename = "Spot", position = {17.654, -1.878, 0.864}, dir_correction = {elevation = math.rad(4.0)},
                                proto = lamp_prototypes.LFS_R_27_450,
                            },
                            {
                                typename = "Omni", position = {17.654 + 0.5, -1.878, 0.864},
                                proto = lamp_prototypes.LFS_R_27_450, range = 8.0,
                            },
                            {
                                typename = "Spot", position = {-6.974, 1.066, -24.088}, dir_correction = {elevation = math.rad(8.0)},
                                proto = lamp_prototypes.LFS_R_27_450,
                            },
                            {
                                typename = "Spot", position = {-6.974, 1.066, 24.088}, dir_correction = {elevation = math.rad(8.0)},
                                proto = lamp_prototypes.LFS_R_27_450,
                            },
                        },
                    },
                },
            },
        }
    }, -- end lights_data

}

add_aircraft(KJ_2000_AI)
