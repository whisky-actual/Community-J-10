
-- Type 200 反跑道炸弹
local SFW250_name = '250kg SFW'
local SFW250_mass = 290.0
local pylon_mass = 0.0

--local WCMD250_warhead = 


SFW250 = {
    category       = CAT_BOMBS,
    name           = SFW250_name,
    user_name      = _(SFW250_name),
    wsTypeOfWeapon = {4, 5, 38, WSTYPE_PLACEHOLDER},

    model          = "t-bl-755",
    scheme         = "bomb-cassette_new", --bomb-cassette_new
    class_name     = 'wAmmunition',

    shape_table_data = {
        {
            name     = SFW250_name,
            file     = 't-bl-755',
            life     = 1,
            fire     = { 0, 1},
            username = SFW250_name,
            index    = WSTYPE_PLACEHOLDER,
        },
    },

    -- bomb data
    type        = 5,
    mass        = SFW250_mass,
    hMin        = 90.0,
    hMax        = 5000.0,
    Cx     		= 0.0007,
    VyHold 		= -100.0,
    Ag     		= -1.23,
    --warhead     = WCMD250_warhead,
   -- sounderName = 'Weapons/ClusterBomblets',
	
	Reflection 	= 0.03,
	--explMass		= 70.3,
		
	
	

    -- scheme data
	fm =
    {
		mass			= SFW250_mass,
		caliber			= 0.41,
		cx_coeff		= {1, 0.39, 0.6, 0.168, 1.31},
		L				= 2.45,
		I				= 138.557708,
		wind_time		= 100.0,
		wind_sigma		= 100.0,
		Ma				= 0.172556,
		Mw				= 1.655525,
    },
	
	targeting_data = {
		bomblet_char_time = 80,
		char_time 		= 25.70 --20.39 --22.10
	},
	
	rotation_control = {
		arg_out 		= 14,
		rot_out 		= 0
	},
	
	
    --[[
	launcher =
	{
		--blocks  = {"cluster"},
		cluster = WCMD250_warhead.descriptor,
	},]]
	
    
    launcher =
    {
        cluster = cluster_desc("Bomb_Other", wsType_Bomb_Cluster, 
        {
            scheme = 
            {
                dispenser = 
                {
                    op_time                 = 9000,
                    wind_sigma              = 20,
                    impulse_sigma           = 1,
                    moment_sigma            = 1,
                    mass                    = 250,
                    caliber                 = 0.45,
                    L                       = 2.5,
                    I                       = 100,
                    Ma                      = 0.228,
                    Mw                      = 2.33,
                    cx_coeff                = {1, 1, 1, 1, 2},
                    model_name              = "t-bl-755",
                    set_start_args          = {2,12,13},
                    spawn_args_change       = {{1,12,0},{1,1,0.6}},
                    spawn_time              = {0.02, 0.17, 0.32}, -- BLU_108(带4个子弹药)的释放延迟, 要拉成一条线，可以适当放大，但不能太大，最好不要超过2.0
                    spawn_weight_loss       = {0, 150, 150},
                    spawn_args_change       = {{1,1,1},{1,12,0},{2,2,1}},
                    op_spawns               = 3,
                },

                --释放完BLU_108后的外壳(自由落体)
                empty_dispenser = 
                {
                    op_time                 = 50,
                    wind_sigma              = 5,
                    impulse_sigma           = 1,
                    moment_sigma            = 1,
                    mass                    = 45,
                    caliber                 = 0.45,
                    L                       = 2.5,
                    I                       = 2,
                    Ma                      = 0.03,
                    Mw                      = 0.3,
                    cx_coeff                = {1, 1, 1, 1, 2},
                    model_name              = "cbu97_shaft",
                    set_start_args          = {0, 1, 2},
                    spawn_options           = {{2, 2, 1}},
                },

                -- BLU_108(未释放战斗部)
                BLU_108 =
                {
                    op_time                 = 9000,
                    count                   = 8, -- BLU_108数量
                    effect_count            = 8,
                    wind_sigma              = 5,
                    impulse_sigma           = 1,
                    moment_sigma            = 2,
                    mass                    = 29.5,
                    caliber                 = 0.133,
                    L                       = 0.7,
                    I                       = 0.4,
                    Ma                      = 0.90985,
                    Mw                      = 1.67549,
                    cx_coeff                = {1, 0.39, 0.38, 0.236, 1.31},
                    model_name              = "cbu97_blu108",
                    set_start_args          = {13},
                    connectors_model_name   = "cbu97_shaft",
                    explosion_impulse_coeff = 42,
                    explosion_center        = {{0.36,0,0},{-0.44,0,0}},
                    release_rnd_coeff       = 7,
                    chute_open_time         = 0.6, -- 可以试试让BLU_108晚点开伞
                    chute_diam              = 2,
                    chute_Cx                = 1.2,
                    chute_rnd_coeff         = 0.5,
                    spawn_options           = {{0,1,6},{0,2,6}},
        
                    submunition_engine_impulse          = 66,
                    submunition_engine_fuel_mass        = 0.1,
                    submunition_engine_work_time        = 0.22,
                    submunition_engine_rotation_moment  = 9,
                    submunition_engine_start_height     = 48,   -- BLU-108开始自转的高度, 越高释放, 覆盖范围越大 
                    skeets_release_delay                = 1.00, -- BLU_108自转后开始释放战斗部的延迟
                    skeets_in_seq_release_delay         = 0.02, -- 每个战斗部释放间隔 (?) 
                    main_chute_open_speed               = 4,
                    extr_chute_max_diam                 = 0.3,
                    opening_speed_k                     = 2,
                    jump_error_sum                      = 440,
                },

                -- 释放完战斗部的BLU_108壳子
                BLU_108_panel =
                {
                    op_time                 = 50,
                    wind_sigma              = 5,
                    impulse_sigma           = 1,
                    moment_sigma            = 1,
                    mass                    = 5,
                    caliber                 = 0.1,
                    L                       = 1,
                    I                       = 1,
                    Ma                      = 0.5,
                    Mw                      = 1,
                    cx_coeff                = {1, 0.4, 0.4, 0.4, 1.4},
                    model_name              = "cbu97_blu108_panel",
                    init_pos                = {{0,0,0}},
                    init_impulse            = {{0,125,0}},
                    spawn_options           = {{0,1,1}},
                },

                -- 战斗部
                skeet = 
                {
                    op_time                 = 9000,
                    count                   = 4, -- 战斗部数量
                    effect_count            = 4,
                    wind_sigma              = 1,
                    impulse_sigma           = 1,
                    moment_sigma            = 0.1,
                    mass                    = 5,
                    caliber                 = 0.1,
                    L                       = 1,
                    I                       = 1,
                    Ma                      = 1,
                    Mw                      = 1,
                    cx_coeff                = {1, 0.4, 0.4, 0.4, 1.4},
                    model_name              = "cbu97_skeet",
                    init_pos                = {{0.02,-0.15,0},{0.02,0.15,0},{0.25,-0.15,0},{0.25,0.15,0}},
                    omega_impulse_coeff     = 3.6,
                    release_rnd_coeff       = 12,
                    set_start_args          = 10,
                    spawn_options           = {{2,2,1},{3,3,1},{4,4,1},{5,5,1}},
        
                    shell_model_name        = "shell",
                    seeker_local_point      = {{0.05, -0.07, 0}},
                    seeker_rotation_point   = {0, 0, 0},
                    seeker_max_angle        = 0.785, -- 战斗部搜索角度范围: 45度
                    seeker_max_range        = 160,  -- 战斗部最大搜索距离: 160米
                    seeker_activation_time  = 0.05,
                    shot_error              = 0.05, -- 战斗部误差
                    aim_lock_efficiency     = 0.85, -- 战斗部抓住目标几率
                    shell_speed             = 750,  -- m/s
                },
				
                warhead = predefined_warhead("CBU97"),
            },
            
            name            = _("MM-250"),
            type_name       = _("cluster"),
            cluster_scheme  = "AGM-154B_cluster",
        }
        )
    },
	
}
declare_weapon(SFW250)

--
declare_loadout({
    category         = CAT_BOMBS,
    CLSID            = 'DIS_MK_20', -- DIS_SFW_250
    attribute        = SFW250.wsTypeOfWeapon,
    Count            = 1,
    Cx_pil           = SFW250.Cx,
    Picture          = "gbu32.png", -- TODO
    displayName      = _(SFW250_name .. ' Cluster Bomb'),
    Weight           = SFW250_mass + pylon_mass,
    Elements         = {
        {
            ShapeName = 't-bl-755',
            DrawArgs  = { [1] = {2, 1.0}, }
        }
    }, -- TODO
    ejectImpulse     = 140,
})



MER4_250_SFW = {
    category    = CAT_BOMBS,
    CLSID       = "DIS_MK_20_DUAL_GDJ_II19_L",
    Picture     = "mk82.png",
    displayName = _("4 x " .. SFW250_name .. ' Cluster Bomb'),
    Count       = 4,
    Weight      = 4 * 250+ 0,
    Cx_pil      = 4 * SFW250.Cx,

    Elements    = {
        {ShapeName = 't-bl-755', Position  = {0, 0, 0.620}, DrawArgs  = { [1] = {2, 1.0}, }}, -- left front
        {ShapeName = 't-bl-755', Position  = {0, 0, -0.620}, DrawArgs  = { [1] = {2, 1.0}, }}, -- right front
        {ShapeName = 't-bl-755', Position  = {-4.280, 0, 0.620}, DrawArgs  = { [1] = {2, 1.0}, }}, -- left back
        {ShapeName = 't-bl-755', Position  = {-4.280, 0, -0.620}, DrawArgs  = { [1] = {2, 1.0}, }}, -- right back
    },

    wsTypeOfWeapon = SFW250.wsTypeOfWeapon,
    attribute      = {4, 5, 32, WSTYPE_PLACEHOLDER},
}
declare_loadout(MER4_250_SFW)
