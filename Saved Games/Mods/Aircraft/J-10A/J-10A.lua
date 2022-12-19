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
mount_vfs_model_path 	(current_mod_path .. "/Shapes/")
mount_vfs_texture_path  (current_mod_path .. "/Textures/ExteriorTextures")
mount_vfs_texture_path  (current_mod_path .. "/Textures/WeaponsTextures")
mount_vfs_liveries_path (current_mod_path .. "/Liveries")

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
    Name             = 'J-10A',
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
    Categories  = { CLSID = "{78EFB7A2-FD52-4b57-A6A6-3BF0E1D6555F}", Name = "Interceptor",},
    -- Countries   = {'China', 'Pakistan'},
    country_of_origin = 'CHN',
    date_of_introduction = 2003.8, --
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
    M_empty                    = 5090.0,    -- JF-17 with pilot and nose load, kg --6586 --4840
    M_nominal                  = 5090+4500,    -- JF-17 kg (Empty Plus Full Internal Fuel) --8339.0
    M_max                      = 5190+4500+6600,   -- JF-17 kg (Maximum Take Off Weight)
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
    RCS                       = 3.0,        -- Radar Cross Section m2
    IR_emission_coeff         = 0.6,        -- Normal engine -- IR_emission_coeff = 1 is Su-27 without afterburner. It is reference.
    IR_emission_coeff_ab      = 2.0,        -- With afterburner
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
            ejection_seat_name  = "pilot_f15_00_seat", -- temp
            pilot_name          = "pilot_f15_00", -- temp
            --ejection_seat_name  = "JF-17_seat",
            --pilot_name          = "JF-17_pilot",
            drop_parachute_name = "JF-17_parachute",
            drop_canopy_name    = "JF-17_fonar",
            pos                 = {4.45, 0.180, 0.00},
            canopy_pos          = {4.282, 0.620, 0.00},
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
            name = _("COMM 1/2 Preset"),
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

	-- Countermeasures, 
	passivCounterm = {
		CMDS_Edit = true,
		SingleChargeTotal = 120,
		chaff = {default = 60, increment = 30, chargeSz = 1},
		flare = {default = 60, increment = 30, chargeSz = 1},
		preferred_flare_kind = 2,
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
    detection_range_max   = 125.0,
    radar_can_see_ground  = true,
    EPLRS                 = true,

    CanopyGeometry = {
        azimuth   = {-160.0, 160.0}, --
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
                { CLSID = "DIS_LS_6_250", arg_value = 1.0, Type = 1 },
                { CLSID = "DIS_LS_6_250_DUAL_L", arg_value = 1.0, Type = 1 },
                { CLSID = "DIS_LS_6_100", arg_value = 1.0, Type = 1 },
                { CLSID = "DIS_LS_6_100_DUAL_L", arg_value = 1.0, Type = 1 },
				
                { CLSID = "DIS_GB6", arg_value = 1.0, Type = 1 },  
                { CLSID = "DIS_GB6_TSP", arg_value = 1.0, Type = 1 }, 
                { CLSID = "DIS_GB6_HE", arg_value = 1.0, Type = 1 }, 
				
                { CLSID = "DIS_GBU_10", arg_value = 1.0 }, -- GBU-10
                { CLSID = "DIS_GBU_16", arg_value = 1.0 }, -- GBU-16
              --  { CLSID = "DIS_GBU_12", arg_value = 1.0 }, -- GBU-12

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
				
                { CLSID = "DIS_C-802AK", arg_value = 1.0, Type = 1 },
                { CLSID = 'DIS_CM-802AKG', arg_value = 1.0, Type = 1 },
                { CLSID = 'DIS_KD-88_AI', arg_value = 1.0, Type = 1 },
				
                { CLSID = "DIS_LS_6_500", arg_value = 1.0, Type = 1 },
                { CLSID = "DIS_LS_6_250", arg_value = 1.0, Type = 1 },
                { CLSID = "DIS_LS_6_250_DUAL_L", arg_value = 1.0, Type = 1 },
                { CLSID = "DIS_LS_6_100", arg_value = 1.0, Type = 1 },
                { CLSID = "DIS_LS_6_100_DUAL_L", arg_value = 1.0, Type = 1 },
				
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
              --  { CLSID = "DIS_GBU_12", arg_value = 1.0 }, -- GBU-12

                { CLSID = "DIS_TYPE200", arg_value = 1.0 },

                -- rockets
                 { CLSID = "DIS_BRM1_90", arg_value = 1.0 },
                 { CLSID = "DIS_RKT_90_UG", arg_value = 1.0 },

            }
        ),
        pylon(4, 0, -0.765, -0.765, 0,
            {
                use_full_connector_position = true, connector = "str_pnt_004", arg = 311, arg_value = 0
            },
            {
				-- Tanks
                { CLSID = "DIS_TANK800", arg_value =1.0, },
                { CLSID = "DIS_TANK800_EMPTY", arg_value = 1.0, },

               -- { CLSID = "{7A44FF09-527C-4B7E-B42B-3F111CFE50FB}", arg_value = 1.0 }, -- Mk-83
             --   { CLSID = "{AB8B8299-F1CC-4359-89B5-2172E0CF4A5A}", arg_value = 1.0 }, -- Mk-84

				-- Guided Bombs
                { CLSID = "DIS_GBU_10", arg_value =1.0 }, -- GBU-10
                { CLSID = "DIS_GBU_16", arg_value = 1.0 }, -- GBU-16 

                { CLSID = "DIS_WMD7",      arg_value = 1.0, forbidden = {{station = 2, loadout = {"DIS_WMD7"}},     {station = 6, loadout = {"DIS_WMD7"}}} },
                { CLSID = "DIS_AKG_DLPOD", arg_value = 1.0, forbidden = {{station = 2, loadout = {"DIS_AKG_DLPOD"}},{station = 6, loadout = {"DIS_AKG_DLPOD"}}} },
                { CLSID = "DIS_SPJ_POD",   arg_value = 1.0, forbidden = {{station = 2, loadout = {"DIS_SPJ_POD"}},  {station = 6, loadout = {"DIS_SPJ_POD"}}} },

                -- Smoke Generator pods
                { CLSID = 'DIS_SMOKE_GENERATOR_R', arg_value = 1.0},
                { CLSID = 'DIS_SMOKE_GENERATOR_G', arg_value = 1.0},
                { CLSID = 'DIS_SMOKE_GENERATOR_B', arg_value = 1.0},
                { CLSID = 'DIS_SMOKE_GENERATOR_W', arg_value = 1.0},
                { CLSID = 'DIS_SMOKE_GENERATOR_Y', arg_value = 1.0},
                { CLSID = 'DIS_SMOKE_GENERATOR_O', arg_value = 1.0},
            }
        ),
		--[[
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


                -- Smoke Generator pods
                { CLSID = 'DIS_SMOKE_GENERATOR_R', arg_value = 1.0},
                { CLSID = 'DIS_SMOKE_GENERATOR_G', arg_value = 1.0},
                { CLSID = 'DIS_SMOKE_GENERATOR_B', arg_value = 1.0},
                { CLSID = 'DIS_SMOKE_GENERATOR_W', arg_value = 1.0},
                { CLSID = 'DIS_SMOKE_GENERATOR_Y', arg_value = 1.0},
                { CLSID = 'DIS_SMOKE_GENERATOR_O', arg_value = 1.0},
            }
        ),
	--]]			
        pylon(5, 0, -0.883, -0.7, 1.834,
            {
                use_full_connector_position = true, connector = "str_pnt_005", arg = 312, arg_value = 0
            },
            {
				-- Guided Bombs
				
                { CLSID = "DIS_C-802AK", arg_value = 1.0, Type = 1 },
                { CLSID = 'DIS_CM-802AKG', arg_value = 1.0, Type = 1 },
                { CLSID = 'DIS_KD-88_AI', arg_value = 1.0, Type = 1 },
				
                { CLSID = "DIS_LS_6_500", arg_value = 1.0, Type = 1 },
                { CLSID = "DIS_LS_6_250", arg_value = 1.0, Type = 1 },
                { CLSID = "DIS_LS_6_250_DUAL_R", arg_value = 1.0, Type = 1 },
                { CLSID = "DIS_LS_6_100", arg_value = 1.0, Type = 1 },
                { CLSID = "DIS_LS_6_100_DUAL_R", arg_value = 1.0, Type = 1 },
				
                { CLSID = "DIS_GBU_10", arg_value = 1.0 }, -- GBU-10
                { CLSID = "DIS_GBU_16", arg_value = 1.0 }, -- GBU-16
               -- { CLSID = "DIS_GBU_12", arg_value = 1.0 }, -- GBU-12

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
                { CLSID = "DIS_LS_6_250", arg_value = 1.0, Type = 1 },
                { CLSID = "DIS_LS_6_250_DUAL_R", arg_value = 1.0, Type = 1 },
                { CLSID = "DIS_LS_6_100", arg_value = 1.0, Type = 1 },
                { CLSID = "DIS_LS_6_100_DUAL_R", arg_value = 1.0, Type = 1 },
				
				
                { CLSID = "DIS_GB6", arg_value = 1.0, Type = 1 },  --, attach_point_position = {0, 0.325, 0}
                { CLSID = "DIS_GB6_TSP", arg_value = 1.0, Type = 1 }, --, attach_point_position = {0, 0.325, 0}
                { CLSID = "DIS_GB6_HE", arg_value = 1.0, Type = 1 }, --, attach_point_position = {0, 0.325, 0}
				
                { CLSID = "DIS_GBU_10", arg_value = 1.0 }, -- GBU-10
                { CLSID = "DIS_GBU_16", arg_value = 1.0 }, -- GBU-16
                --{ CLSID = "DIS_GBU_12", arg_value = 1.0 }, -- GBU-12

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
            DisplayName = "DRAG"   
            },
            {
                { CLSID = '{Jeff}'},
            }
        ),
	},
	--[[
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
	]]--
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
    Damage = {
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
        [100] = {critical_damage =    2, args = {300}},                                -- TAIL_TOP                /后部脊背
    },

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
