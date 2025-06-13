----------------------------------------------------------------------------------------
-- Weapon Configuration
----------------------------------------------------------------------------------------
weapon = {}

local function use_weapon_version(version)
    if version == 'SE' then
		-- Sweden
        weapon['IRAAM']     = 'IR5'--IRIS-T, A-Darter, Python-5, AIM-9X Sidewinder, AIM-9L Sidewinder, AIM-9M Sidewinder, AIM-132 ASRAAM
        weapon['BVRAAM']    = 'BVR4' --Meteor, AIM-120C, I-Derby ER, AIM-120B
        --weapon['BRM1']      = 'BRM1_1' --Brimstone
        weapon['C701_IR']   = 'C701_IR_1' --AGM-65G
        weapon['C701_T']    = 'C701_T_1' --AGM-65K
        weapon['C802AK']    = 'C802AK_1' --RB15F
        weapon['CM802AKG']  = 'CM802AKG_1' --Storm Shadow, KEPD 350
        --weapon['LD10']      = 'LD10_1' --MAR-1
        weapon['TYPE200']   = 'TYPE200_2'--SB71HD, SB71LD
        weapon['GB6']       = 'GB6_1' -- AGM154A
        weapon['GB6_HE']    = 'GB6_HE_1' -- AGM154B
        weapon['GB6_TSP']   = 'GB6_TSP_1' --BK-90 MJ1+2, GBU-24B/B Paveway III
        weapon['LS_6_100']  = 'LS_6_100_1' --GBU-54(V)1/B - LJDAM, 500lb Laser & GPS Guided Bomb LD
        weapon['LS_6_250']  = 'LS_6_250_1' --GBU-38(V)1/B - JDAM, 500lb GPS Guided Bomb
        --weapon['LS_6_500']  = 'LS_6_500_1' --GBU_39
        weapon['WMD7']      = 'WMD7_3' -- AAQ-28 (LITENING), AAQ-28 (Sniper XR), ASQ-228 (ATFLIR)

    elseif version == 'HU' then
        -- Hungary
        weapon['IRAAM']     = 'IR5'--jf39_iris-t, jf39_a-darter, jf39_python-5, us_AIM-9X, us_aim-9l, jf39_aim-132
        weapon['BVRAAM']    = 'BVR2' --Meteor, AIM-120C, I-Derby ER, AIM-120B
        --weapon['BRM1']      = 'BRM1_1' --Brimstone
        weapon['C701_IR']   = 'C701_IR_1' --AGM-65G
        weapon['C701_T']    = 'C701_T_1' --AGM-65K
        weapon['C802AK']    = 'C802AK_1' --RB15F
        weapon['CM802AKG']  = 'CM802AKG_1' --Storm Shadow, KEPD 350
        --weapon['LD10']      = 'LD10_1' --MAR-1
        weapon['TYPE200']   = 'TYPE200_1'--SB71HD, SB71LD
        weapon['GB6']       = 'GB6_1' -- AGM154A
        weapon['GB6_HE']    = 'GB6_HE_1' -- AGM154B
        weapon['GB6_TSP']   = 'GB6_TSP_1' --BK-90 MJ1+2, GBU-24B/B Paveway III
        weapon['LS_6_100']  = 'LS_6_100_1' --GBU-54(V)1/B - LJDAM, 500lb Laser & GPS Guided Bomb LD
        weapon['LS_6_250']  = 'LS_6_250_1' --GBU-38(V)1/B - JDAM, 500lb GPS Guided Bomb
        --weapon['LS_6_500']  = 'LS_6_500_1' --GBU_39
        weapon['WMD7']      = 'WMD7_1' -- AAQ-28 (LITENING), AAQ-28 (Sniper XR), ASQ-228 (ATFLIR)

    elseif version == 'ZA' then
        -- South Africa
        weapon['IRAAM']     = 'IR2'--jf39_iris-t, jf39_a-darter, jf39_python-5, us_AIM-9X, us_aim-9l, jf39_aim-132
        weapon['BVRAAM']    = 'BVR4' --Meteor, AIM-120C, I-Derby ER, AIM-120B
        --weapon['BRM1']      = 'BRM1_1' --Brimstone
        weapon['C701_IR']   = 'C701_IR_1' --AGM-65G
        weapon['C701_T']    = 'C701_T_1' --AGM-65K
        weapon['C802AK']    = 'C802AK_1' --RB15F
        weapon['CM802AKG']  = 'CM802AKG_1' --Storm Shadow, KEPD 350
        --weapon['LD10']      = 'LD10_1' --MAR-1
        weapon['TYPE200']   = 'TYPE200_1'--SB71HD, SB71LD
        weapon['GB6']       = 'GB6_1' -- AGM154A
        weapon['GB6_HE']    = 'GB6_HE_1' -- AGM154B
        weapon['GB6_TSP']   = 'GB6_TSP_1' --BK-90 MJ1+2, GBU-24B/B Paveway III
        weapon['LS_6_100']  = 'LS_6_100_1' --GBU-54(V)1/B - LJDAM, 500lb Laser & GPS Guided Bomb LD
        weapon['LS_6_250']  = 'LS_6_250_1' --GBU-38(V)1/B - JDAM, 500lb GPS Guided Bomb
        --weapon['LS_6_500']  = 'LS_6_500_1' --GBU_39
        weapon['WMD7']      = 'WMD7_2' -- AAQ-28 (LITENING), AAQ-28 (Sniper XR), ASQ-228 (ATFLIR)

    elseif version == 'CZ' then
        -- Czech Republic
        weapon['IRAAM']     = 'IR5'--jf39_iris-t, jf39_a-darter, jf39_python-5, us_AIM-9X, us_aim-9l, jf39_aim-132
        weapon['BVRAAM']    = 'BVR2' --Meteor, AIM-120C, I-Derby ER, AIM-120B
        --weapon['BRM1']      = 'BRM1_1' --Brimstone
        weapon['C701_IR']   = 'C701_IR_1' --AGM-65G
        weapon['C701_T']    = 'C701_T_1' --AGM-65K
        weapon['C802AK']    = 'C802AK_1' --RB15F
        weapon['CM802AKG']  = 'CM802AKG_1' --Storm Shadow, KEPD 350
        --weapon['LD10']      = 'LD10_1' --MAR-1
        weapon['TYPE200']   = 'TYPE200_2'--SB71HD, SB71LD
        weapon['GB6']       = 'GB6_1' -- AGM154A
        weapon['GB6_HE']    = 'GB6_HE_1' -- AGM154B
        weapon['GB6_TSP']   = 'GB6_TSP_1' --BK-90 MJ1+2, GBU-24B/B Paveway III
        weapon['LS_6_100']  = 'LS_6_100_1' --GBU-54(V)1/B - LJDAM, 500lb Laser & GPS Guided Bomb LD
        weapon['LS_6_250']  = 'LS_6_250_1' --GBU-38(V)1/B - JDAM, 500lb GPS Guided Bomb
        --weapon['LS_6_500']  = 'LS_6_500_1' --GBU_39
        weapon['WMD7']      = 'WMD7_1' -- AAQ-28 (LITENING), AAQ-28 (Sniper XR), ASQ-228 (ATFLIR)

    elseif version == 'TH' then
        -- Thailand
        weapon['IRAAM']     = 'IR5'--jf39_iris-t, jf39_a-darter, jf39_python-5, us_AIM-9X, us_aim-9l, jf39_aim-132
        weapon['BVRAAM']    = 'BVR4' --Meteor, AIM-120C, I-Derby ER, AIM-120B
        --weapon['BRM1']      = 'BRM1_1' --Brimstone
        weapon['C701_IR']   = 'C701_IR_1' --AGM-65G
        weapon['C701_T']    = 'C701_T_1' --AGM-65K
        weapon['C802AK']    = 'C802AK_1' --RB15F
        weapon['CM802AKG']  = 'CM802AKG_1' --Storm Shadow, KEPD 350
        --weapon['LD10']      = 'LD10_1' --MAR-1
        weapon['TYPE200']   = 'TYPE200_1'--SB71HD, SB71LD
        weapon['GB6']       = 'GB6_1' -- AGM154A
        weapon['GB6_HE']    = 'GB6_HE_1' -- AGM154B
        weapon['GB6_TSP']   = 'GB6_TSP_1' --BK-90 MJ1+2, GBU-24B/B Paveway III
        weapon['LS_6_100']  = 'LS_6_100_1' --GBU-54(V)1/B - LJDAM, 500lb Laser & GPS Guided Bomb LD
        weapon['LS_6_250']  = 'LS_6_250_1' --GBU-38(V)1/B - JDAM, 500lb GPS Guided Bomb
        --weapon['LS_6_500']  = 'LS_6_500_1' --GBU_39
        weapon['WMD7']      = 'WMD7_1' -- AAQ-28 (LITENING), AAQ-28 (Sniper XR), ASQ-228 (ATFLIR)

    elseif version == 'BR' then
        -- Brazil
        weapon['IRAAM']     = 'IR2'--jf39_iris-t, jf39_a-darter, jf39_python-5, us_AIM-9X, us_aim-9l, jf39_aim-132
        weapon['BVRAAM']    = 'BVR3' --Meteor, AIM-120C, I-Derby ER, AIM-120B
        --weapon['BRM1']      = 'BRM1_1' --Brimstone
        weapon['C701_IR']   = 'C701_IR_1' --AGM-65G
        weapon['C701_T']    = 'C701_T_1' --AGM-65K
        weapon['C802AK']    = 'C802AK_1' --RB15F
        weapon['CM802AKG']  = 'CM802AKG_2' --Storm Shadow, KEPD 350
        --weapon['LD10']      = 'LD10_1' --MAR-1
        weapon['TYPE200']   = 'TYPE200_2'--SB71HD, SB71LD
        weapon['GB6']       = 'GB6_1' -- AGM154A
        weapon['GB6_HE']    = 'GB6_HE_1' -- AGM154B
        weapon['GB6_TSP']   = 'GB6_TSP_1' --BK-90 MJ1+2, GBU-24B/B Paveway III
        weapon['LS_6_100']  = 'LS_6_100_1' --GBU-54(V)1/B - LJDAM, 500lb Laser & GPS Guided Bomb LD
        weapon['LS_6_250']  = 'LS_6_250_1' --GBU-38(V)1/B - JDAM, 500lb GPS Guided Bomb
        --weapon['LS_6_500']  = 'LS_6_500_1' --GBU_39
        weapon['WMD7']      = 'WMD7_3' -- AAQ-28 (LITENING), AAQ-28 (Sniper XR), ASQ-228 (ATFLIR)

    elseif version == 'SAAB' then
        -- SAAB internal testing or custom config
        weapon['IRAAM']     = 'IR4'--jf39_iris-t, jf39_a-darter, jf39_python-5, us_AIM-9X, us_aim-9l, jf39_aim-132
        weapon['BVRAAM']    = 'BVR2' --Meteor, AIM-120C, I-Derby ER, AIM-120B
        --weapon['BRM1']      = 'BRM1_1' --Brimstone
        weapon['C701_IR']   = 'C701_IR_1' --AGM-65G
        weapon['C701_T']    = 'C701_T_1' --AGM-65K
        weapon['C802AK']    = 'C802AK_1' --RB15F
        weapon['CM802AKG']  = 'CM802AKG_1' --Storm Shadow, KEPD 350
        --weapon['LD10']      = 'LD10_1' --MAR-1
        weapon['TYPE200']   = 'TYPE200_1'--SB71HD, SB71LD
        weapon['GB6']       = 'GB6_1' -- AGM154A
        weapon['GB6_HE']    = 'GB6_HE_1' -- AGM154B
        weapon['GB6_TSP']   = 'GB6_TSP_1' --BK-90 MJ1+2, GBU-24B/B Paveway III
        weapon['LS_6_100']  = 'LS_6_100_1' --GBU-54(V)1/B - LJDAM, 500lb Laser & GPS Guided Bomb LD
        weapon['LS_6_250']  = 'LS_6_250_1' --GBU-38(V)1/B - JDAM, 500lb GPS Guided Bomb
        --weapon['LS_6_500']  = 'LS_6_500_1' --GBU_39
        weapon['WMD7']      = 'WMD7_1' -- AAQ-28 (LITENING), AAQ-28 (Sniper XR), ASQ-228 (ATFLIR)

    else
        error('Invalid weapon version: ' .. tostring(version))
    end
end

----------------------------------------------------------------------------------------
-- Initialize Weapons (Choose Configuration Below)
----------------------------------------------------------------------------------------
use_weapon_version('SAAB')  -- Replace with 'SE', 'HU', etc. as needed

----------------------------------------------------------------------------------------
-- Legacy Weapon Code (Workaround for ED's weapons system)
----------------------------------------------------------------------------------------
local HEBOMB = {
	category  = CAT_BOMBS,
	name   = "HEBOMB",
	model    = "SB71LD",  --/N/ you HAVE to use existing 3D model, either Vig custom or some that exist in DCS
	user_name   = _("M/71 HE-Bomb"),
	wsTypeOfWeapon = {wsType_Weapon,wsType_Bomb,wsType_Bomb_A,wsType_HEBOMB},--
	
	scheme = "bomb_common_v2",--"bomb-parashute",--"bomb-sab",
	type = 0,
	mass = 120 + 1.9, -- Bomb + fuze
	 hMin = 100.0,
	 hMax = 15000.0,
	 Cx = 0.00018, -- T changed 0602 
	 VyHold = -100.0,
	 Ag = -1.23,

	fm =
	{
		mass            = 120 + 1.9, --!!!!!
		caliber         = 0.214000 * 2.0,
		cx_coeff        = {1.000000, 0.290000, 0.710000, 0.140000, 1.280000},
		L               = 2.210000,
		I               = 94.425933,
		Ma              = 2.746331,
		Mw              = 2.146083,
		wind_time       = 1000.000000,
		wind_sigma      = 80.000000,
	},

	warhead = warhead["m71"],

	fuze = {
			is_multidelay 		= 0,
			tdd_position 		= {0.75,0,0},
			default_arm_delays 	= {3.8},	  -- 3.5-4.1 seconds
	},
	
	shape_table_data =
	{
		{
			name  = "SB71LD",
			file  = "SB71LD", --/N/ you HAVE to use existing 3D model, either Vig custom or some that exist in DCS
			life  = 1,
			fire  = { 0, 1},
			username = "SB71LD",
			index = WSTYPE_PLACEHOLDER,
		},
	},

	targeting_data =
	{
		char_time = 21.02, 
	}

}
declare_weapon(HEBOMB)
local HEBOMBD = {
	category  = CAT_BOMBS,
	name   = "HEBOMBD",
	model    = "SB71HD",  --/N/ you HAVE to use existing 3D model, either Vig custom or some that exist in DCS
	user_name   = _("M/71 HE-Bomb w chute"),
	wsTypeOfWeapon = {wsType_Weapon,wsType_Bomb,wsType_Bomb_A,wsType_HEBOMBDrag},--
	
	scheme = "bomb_parachute_v2", --"bomb-parashute",--"bomb-sab",
	type = 0,
	mass = 120 + 2.3 + 1.2, --123.5 - Bomb + fuze + chute
	 hMin = 100.0,
	 hMax = 15000.0,
	 Cx = 0.00018,
	 VyHold = -100.0,
	 Ag = -1.23,

	fm =
	{
		mass            = 120 + 2.3 + 1.2, --!!!!!
		caliber         = 0.214000 * 2.0,
		cx_coeff        = {1.000000, 0.290000, 0.710000, 0.140000, 1.280000},
		L               = 2.210000,
		I               = 94.425933,
		Ma              = 2.746331,
		Mw              = 2.146083,
		wind_time       = 1000.000000,
		wind_sigma      = 80.000000,
		cx_factor   	= 30,
	},
	warhead = warhead["m71"],

	control =
	{
		open_delay = 1.0,
		delay_par   = 1.0, --!!!!!
	},

	fuze = {
			is_multidelay 		= 0,
			tdd_position 		= {1.1, 0, 0},
			default_arm_delays 	= {4.6},	  -- 4.0-5.2 seconds
	},
	
	shape_table_data =
	{
		{
			name  = "SB71HD",
			file  = "SB71HD", --/N/ you HAVE to use existing 3D model, either Vig custom or some that exist in DCS
			life  = 1,
			fire  = { 0, 1},
			username = "SB71HD",
			index = WSTYPE_PLACEHOLDER,
		},
	},

	targeting_data = 
	{	
		v0 = 500,
		data = 
		{
			{1.000000, 21.147949, 0.002807},
			{10.000000, 28.262668, -0.017193},
			{20.000000, 29.687629, -0.016767},
			{30.000000, 30.394407, -0.015892},
			{40.000000, 30.826322, -0.015080},
			{50.000000, 31.133114, -0.014428},
			{60.000000, 31.361560, -0.013889},
			{70.000000, 31.543970, -0.013440},
			{80.000000, 31.690640, -0.013045},
			{90.000000, 31.814418, -0.012713},
			{100.000000, 31.920050, -0.012425},
			{200.000000, 32.511629, -0.010723},
			{300.000000, 32.789778, -0.009863},
			{400.000000, 32.963413, -0.009307},
			{500.000000, 33.086372, -0.008907},
			{600.000000, 33.179450, -0.008596},
			{700.000000, 33.253103, -0.008346},
			{800.000000, 33.312920, -0.008139},
			{900.000000, 33.362577, -0.007968},
			{1000.000000, 33.404350, -0.007824},
			{1100.000000, 33.439925, -0.007702},
			{1200.000000, 33.470498, -0.007599},
			{1300.000000, 33.496988, -0.007513},
			{1400.000000, 33.520106, -0.007440},
			{1500.000000, 33.540403, -0.007378},
			{1600.000000, 33.558365, -0.007327},
			{1700.000000, 33.574326, -0.007285},
			{1800.000000, 33.588629, -0.007251},
			{1900.000000, 33.601489, -0.007224},
			{2000.000000, 33.613137, -0.007202},
			{3000.000000, 33.690673, -0.007191},
			{4000.000000, 33.737805, -0.007357},
			{5000.000000, 33.773738, -0.007590},
			{6000.000000, 33.802367, -0.007864},
			{7000.000000, 33.824277, -0.008170},
			{8000.000000, 33.839206, -0.008505},
			{9000.000000, 33.846586, -0.008868},
			{10000.000000, 33.845625, -0.009258},
		}    
	},

}
declare_weapon(HEBOMBD)
----------------------------------------------------------------------------------------
-- Weapon Type Definitions
----------------------------------------------------------------------------------------
local weapon_type = 
	{

        ['IR1'] = {picture = _('jf39_iris-t.png'),   wstype = 'weapons.missiles.jf39_iris-t', 	display_name = _('IRIS-T IR AAM'), 			  cx_pil = 0.00057, mass = 87.4},
		['IR2'] = {picture = _('jf39_a-darter.png'), wstype = 'weapons.missiles.jf39_a-darter', display_name = _('A-Darter IR AAM'), 		  cx_pil = 0.00057, mass = 89.0},
		['IR3'] = {picture = _('jf39_python-5.png'), wstype = 'weapons.missiles.jf39_python-5', display_name = _('Python-5 IR AAM'), 		  cx_pil = 0.00057, mass = 105.0},
		['IR4'] = {picture = _('us_AIM-9X.png'),  	 wstype = 'weapons.missiles.AIM_9X', 		display_name = _('AIM-9X Sidewinder IR AAM'), cx_pil = 0.0001,  mass = 85.5},
		['IR5'] = {picture = _('us_aim-9l.png'),  	 wstype = 'weapons.missiles.AIM-9L', 		display_name = _('AIM-9L Sidewinder IR AAM'), cx_pil = 0.0001,  mass = 85.0},
		['IR6'] = {picture = _('us_aim-9l.png'),  	 wstype = 'weapons.missiles.AIM_9', 		display_name = _('AIM-9M Sidewinder IR AAM'), cx_pil = 0.0001,  mass = 85.0},
		['IR7'] = {picture = _('jf39_aim-132.png'),  wstype = 'weapons.missiles.jf39_aim-132',  display_name = _('AIM-132 ASRAAM IR AAM'), 	  cx_pil = 0.00057, mass = 88.0},

		['BVR1'] = {picture = _('jf39_meteor.png'),  wstype = 'weapons.missiles.jf39_meteor', 	display_name = _('Meteor BVRAAM Active Rdr AAM'),     shape = _('jf39_meteor'),  cx_pil = 0.00062, mass = 190.0},
		['BVR2'] = {picture = _('us_aim-120c.png'),  wstype = 'weapons.missiles.AIM_120C', 		display_name = _('AIM-120C AMRAAM Active Rdr AAM'),   shape = _('aim-120c'), 	 cx_pil = 0.00061, mass = 161.5},
		['BVR3'] = {picture = _('jf39_i-derby.png'), wstype = 'weapons.missiles.jf39_i-derby', 	display_name = _('I-Derby ER BVRAAM Active Rdr AAM'), shape = _('jf39_i-derby'), cx_pil = 0.00059, mass = 118.0},
		['BVR4'] = {picture = _('us_aim-120b.png'),  wstype = 'weapons.missiles.AIM_120', 		display_name = _('AIM-120B AMRAAM Active Rdr AAM'),	  shape = _('aim-120b'),     cx_pil = 0.00061, mass = 156.0},
	
        ['TYPE200_1'] = {picture = _('SB71HD.png'), wstype = HEBOMBD, display_name = _('SB M/71 120kg GP Bomb High-drag x4'), shape = _('SB71HD'), cx_pil = 0.000350, mass = 241.0},
        ['TYPE200_2'] = {picture = _('Lysb71.png'), wstype = HEBOMB,  display_name = _('SB M/71 120kg GP Bomb Low-drag x4'),  shape = _('SB71LD'), cx_pil = 0.000350, mass = 241.0},

        ['LS_6_100_1'] = {picture = _('GBU54.png'), wsType = GBU_54_V_1B, display_name = _('GBU-54(V)1/B - LJDAM, 500lb Laser & GPS Guided Bomb LD'), shape = _('GBU-54'), cx_pil = 0.000350, mass = 241.0},
		       
		['LS_6_250_1'] = {picture = _('GBU38.png'), wsType = GBU_38_V_1B, display_name = _('GBU-38(V)1/B - JDAM, 500lb GPS Guided Bomb'),			  shape = _('GBU-38'), cx_pil = 0.000350, mass = 241.0},
		
		['GB6_1']  	  = {picture = _('AGM154.png'), wstype = 'weapons.missiles.AGM_154A',	   display_name = _('AGM-154A - JSOW CEB (CBU-type)'), 						  cx_pil = 0.0018, mass = 484},
		
		['GB6_HE_1']  = {picture = _('AGM154.png'), wstype = 'weapons.missiles.AGM_154B',	   display_name = _('AGM-154B - JSOW Anti-Armour'), 						  cx_pil = 0.0018, mass = 484},

        ['GB6_TSP_1'] = {category = CAT_MISSILES, picture = _('bk90.png'),   wstype = 'weapons.missiles.DWS39_MJ1_MJ2', display_name = _('BK-90 MJ1+2 (12x MJ2 HEAT / 36x MJ1 HE-FRAG Bomblets)'), cx_pil = 0.00180, mass = 605},		
		['GB6_TSP_2'] = {category = CAT_BOMBS,    picture = _('gbu24.png'),  wstype = 'weapons.bombs.GBU_24',		   display_name = _('GBU-24B/B Paveway III - 2000lb Laser Guided Bomb'), 	  cx_pil = 0.00051, mass = 934},
		--To add: weapons.missiles.DWS39_MJ1, weapons.missiles.BK90_MJ2

		['C802AK_1']  = {picture = _('Rb15.png'),  wstype = 'weapons.missiles.Rb 15F',  display_name = _('Rb-15F Programmable Anti-ship Missile'), cx_pil = 0.00126271, mass = 610},
		
		['CM802AKG_1'] = {picture = _('jf39_stormshadow.png'), wstype = CM_802AKG, display_name = _('Storm Shadow Long Range Cruise-missile'), shape = _('jf39_stormshadow'),  cx_pil = 0.00126271, mass = 1300},
		['CM802AKG_2'] = {picture = _('jf39_kepd350.png'),	   wstype = CM_802AKG, display_name = _('KEPD 350 Long Range Cruise-missile'), 	   shape = _('jf39_kepd350'),	   cx_pil = 0.00126271, mass = 1400},

		['C701_IR_1'] = {picture = _('agm65.png'), wstype = 'weapons.missiles.AGM_65F', display_name = _('AGM-65G IR Guided Missile'), cx_pil = 0.0009765625, mass = 301},
		['C701_T_1']  = {picture = _('agm65.png'), wstype = 'weapons.missiles.AGM_65L', display_name = _('AGM-65K TV Guided Missile'), cx_pil = 0.0009765625, mass = 292},
		--To add: weapons.missiles.AGM_65A, weapons.missiles.AGM_65B, weapons.missiles.AGM_65D, weapons.missiles.AGM_65E, weapons.missiles.AGM_65G, weapons.missiles.AGM_65H, weapons.missiles.AGM_65L

		['WMD7_1'] = {picture = _('AAQ-28.png'),  wstype = {4, 15, 44, 101}, 				display_name = _('AN/AAQ-28 LITENING - Targeting Pod'),  shape = "AAQ-28_LITENING", cx_pil = 0.0001952, mass = 208},
		['WMD7_2'] = {picture = _('AAQ-28.png'),  wstype = {4, 15, 44, WSTYPE_PLACEHOLDER}, display_name = _('AN/AAQ-33 Sniper XR - Targeting Pod'), shape = "AAQ-33", 			cx_pil = 0.0006908, mass = 205},
		['WMD7_3'] = {picture = _('ASQ-228.png'), wstype = {4, 15, 44, WSTYPE_PLACEHOLDER}, display_name = _('AN/ASQ-228 ATFLIR - Targeting Pod'),   shape = "AN_ASQ_228", 		cx_pil = 0.0005946, mass = 195},
	}

----------------------------------------------------------------------------------------
-- Loadout Declaration Functions
----------------------------------------------------------------------------------------
local pylon_mass = 100
local pylon_dual_mass = 191
local pylon_triple_mass = 147.6
----------------------------------------------------------------------------------------
-- IRAAM
----------------------------------------------------------------------------------------
local function JF39_PL_5EII(variant)
    local var = weapon_type[variant]

    declare_loadout({
        category = CAT_AIR_TO_AIR,
        CLSID = 'DIS_PL-5EII',
        Picture = var.picture,
        attribute = var.wstype,
        displayName = var.display_name .. ' x1',
        Cx_pil = var.cx_pil,
        Count = 1,
        Weight = var.mass + pylon_mass,
        Elements = {
            [1] = {
                ShapeName = var.shape,
                Position = {0, 0, 0}
            },
            [2] = {
                ShapeName = 'aero-3b',
                Position = {0, 0, 0},
                IsAdapter = true
            }
        }
    })
end
----------------------------------------------------------------------------------------
-- BVRAAM
----------------------------------------------------------------------------------------
local function JF39_SD_10(variant)
	local var = weapon_type[variant]
	local var_mass = var.mass
		
	declare_loadout({
		category    = CAT_AIR_TO_AIR,
		CLSID       = 'DIS_SD-10', 
        Picture = var.picture,
        attribute = var.wstype,
        displayName = var.display_name,
        Cx_pil = var.cx_pil,
        Count = 1,
        Weight = var.mass + pylon_mass,
        Elements = {ShapeName = var.shape}, -- end of Elements
	})

	declare_loadout({
		category       = CAT_AIR_TO_AIR,
		CLSID          = 'DIS_SD-10_DUAL_L',
		Picture 	   = var.picture,
		wsTypeOfWeapon = var.wstype,
		attribute      = {4,4,32,WSTYPE_PLACEHOLDER},
		displayName    = var.display_name ..' x2',
		Cx_pil         = var.cx_pil,
		Count          = 2,
		Weight         = 2 * var.mass + pylon_dual_mass,
		Elements = { {
			IsAdapter = true,
			ShapeName = "TER-9A"
		}, {
			ShapeName = var.shape,
			connector_name = "Point03"
		}, {
			ShapeName = var.shape,
			connector_name = "Point02"
        }, {
			ShapeName = var.shape,
			connector_name = "Point01"
		} },
		JettisonSubmunitionOnly = true,
	})

	declare_loadout({
		category       = CAT_AIR_TO_AIR,
		CLSID          = 'DIS_SD-10_DUAL_R',
		Picture 	   = var.picture,
		wsTypeOfWeapon = var.wstype,
		attribute      = {4,4,32,WSTYPE_PLACEHOLDER},
		displayName    = var.display_name ..' x3',
		Cx_pil         = var.cx_pil,
		Count          = 3,
		Weight         = 3 * var.mass + pylon_triple_mass,
		Elements = { {
			IsAdapter = true,
			ShapeName = "TER-9A"
		}, {
			ShapeName = var.shape,
			connector_name = "Point03"
		}, {
			ShapeName = var.shape,
			connector_name = "Point02"
        }, {
			ShapeName = var.shape,
			connector_name = "Point01"
		} },
		JettisonSubmunitionOnly = true,
	})	
end
----------------------------------------------------------------------------------------
-- TYPE200
----------------------------------------------------------------------------------------
local function JF39_TYPE200(variant)
	local var = weapon_type[variant]
	local var_mass = var.mass

	declare_loadout({
	    category         = CAT_BOMBS,
	    CLSID            = 'DIS_TYPE200',
        Count            = 4,
	    Cx_pil           = var.cx_pil,
	    Picture          = var.picture,
	    displayName      = var.display_name,
	    Weight           = var.mass,
        Elements	=	{
			[1]	=	
			{
				Position	=	{-0.45,	-1.25,	0},
				ShapeName	=	"PylonM71",
				IsAdapter 	= true,
			}, 
			[2]	=	
			{ -- Back left
				DrawArgs	=	
				{
					[1]	=	{1,	1},
					[2]	=	{2,	1},
				}, -- end of DrawArgs
				Position	=	{-0.674,	-0.343,	-0.217},
				ShapeName	=	var.shape,
				Rotation    = 	{0,0,0},
			}, 
			[3]	=	
			{ -- Back right
				DrawArgs	=	
				{
					[1]	=	{1,	1},
					[2]	=	{2,	1},
				}, -- end of DrawArgs
				Position	=	{-0.674,	-0.343, 0.217},
				ShapeName	=	var.shape,
				Rotation    = 	{0,0,0},
			}, 
			[4]	=	
			{ -- Front left
				DrawArgs	=	
				{
					[1]	=	{1,	1},
					[2]	=	{2,	1},
				}, -- end of DrawArgs
				Position	=	{1.275,	-0.343, -0.217},
				ShapeName	=	var.shape,
				Rotation    = 	{0,0,0},
			}, 
			[5]	=	
			{ -- Front right
				DrawArgs	=	
				{
					[1]	=	{1,	1},
					[2]	=	{2,	1},
				}, -- end of DrawArgs
				Position	=	{1.275,	-0.343, 0.217},
				ShapeName	=	var.shape,
				Rotation    = 	{0,0,0},
			}, 
		},
		wsTypeOfWeapon	= var.wstype.wsTypeOfWeapon,
	    attribute       = {4, 5, 32, WSTYPE_PLACEHOLDER},
		ejectVelocity   = eject_speed_bomb,
		})
	end

--[[
	declare_loadout({
	    category         = CAT_BOMBS,
	    CLSID            = 'DIS_TYPE200',
	    wsTypeOfWeapon	=	var.wstype,
	    attribute		=	var.attrType,
        Count            = 1,
	    Cx_pil           = var.cx_pil,
	    Picture          = var.picture,
	    displayName      = '1x ' .. var.display_name,
	    Weight           = var.mass,
        Elements  		= {{ShapeName = var.shape}},
        settings		= Get_Combined_GUISettings_Preset("MDRN_B_A_PGM_TWINWELL")
	})

	declare_loadout({
	    category         = CAT_BOMBS,
	    CLSID            = 'DIS_TYPE200_DUAL_L',
	    Count            = 2,
	    Cx_pil           = var.cx_pil * 2 + 0.00122,
	    Cx_item          = var.cx_pil,
	    Picture          = var.picture,
	    displayName      = var.display_name ..' x2',
	    Weight           = 2 * var.mass,
	    Elements = {
	        {
	            ShapeName = "BRU_55",
	            IsAdapter = true
	        },
	        {
	            ShapeName = var.shape,
	            connector_name = "Point01",
	            DrawArgs  = { {1, 1.0} }
	        },
	        {
	            ShapeName = var.shape,
	            connector_name = "Point02",
	            DrawArgs  = { {1, 1.0} }
	        },
	    },
        wsTypeOfWeapon	=	var.wstype,
	    attribute		=	var.attrType,
	    ejectVelocity    = eject_speed_bomb,
	    settings         = Get_Combined_GUISettings_Preset("MDRN_B_A_PGM_TWINWELL"),
	})

	declare_loadout({
	    category         = CAT_BOMBS,
	    CLSID            = 'DIS_TYPE200_DUAL_R',
	    Count            = 2,
	    Cx_pil           = var.cx_pil * 2 + 0.00122,
	    Cx_item          = var.cx_pil,
	    Picture          = var.picture,
	    displayName      = var.display_name ..' x2',
	    Weight           = 2 * var.mass,
        Elements = {
            {
                ShapeName = "BRU_55",
                IsAdapter = true
            },
            {
                connector_name =	"Point01",
                ShapeName	=	var.shape,
            },
            {
                connector_name =	"Point02",		
                ShapeName	=	var.shape,
            },
        },
        wsTypeOfWeapon	=	var.wstype,
	    attribute		=	var.attrType,
	    ejectVelocity    = eject_speed_bomb,
	    settings         = Get_Combined_GUISettings_Preset("MDRN_B_A_PGM_TWINWELL"),
	})
end
]]
----------------------------------------------------------------------------------------
-- LS-6 100
----------------------------------------------------------------------------------------
local function JF39_LS_6_100(variant)
	local var = weapon_type[variant]
	local var_mass = var.mass

	declare_loadout({
	    category         = CAT_BOMBS,
	    CLSID            = 'DIS_LS_6_100',
	    attribute		 = var.wsType.wsTypeOfWeapon,
        Count            = 1,
	    Cx_pil           = var.cx_pil,
	    Picture          = var.picture,
	    displayName      = var.display_name,
	    Weight           = var.mass,
        Elements  		= {{ShapeName = var.shape}},
        settings		= Get_Combined_GUISettings_Preset("MDRN_B_A_PGM_TWINWELL")
	})

	declare_loadout({
	    category         = CAT_BOMBS,
	    CLSID            = 'DIS_LS_6_100_DUAL_L',
	    Cx_pil           = var.cx_pil * 2 + 0.00122,
	    Cx_item          = var.cx_pil,
	    Picture          = var.picture,
	    displayName      = var.display_name ..' x2',
	    Weight           = 2 * var.mass,
        Count            = 2,
	    Elements = {
	        {
	            ShapeName = "BRU_55",
	            IsAdapter = true
	        },
	        {
	            ShapeName = var.shape,
	            connector_name = "Point01",
	        },
	        {
	            ShapeName = var.shape,
	            connector_name = "Point02",
	        },
	    },
        wsTypeOfWeapon	= var.wsType.wsTypeOfWeapon,
	    attribute		= {4, 5, 32, WSTYPE_PLACEHOLDER},
	    ejectVelocity   = eject_speed_bomb,
	    settings        = Get_Combined_GUISettings_Preset("MDRN_B_A_PGM_TWINWELL"),
	})

	declare_loadout({
	    category         = CAT_BOMBS,
	    CLSID            = 'DIS_LS_6_100_DUAL_R',
	    Cx_pil           = var.cx_pil * 2 + 0.00122,
	    Cx_item          = var.cx_pil,
	    Picture          = var.picture,
	    displayName      = var.display_name ..' x2',
	    Weight           = 2 * var.mass,
        Count            = 2,
        Elements = {
            {
                ShapeName = "BRU_55",
                IsAdapter = true
            },
            {
                connector_name =	"Point01",
                ShapeName	=	var.shape,
            },
            {
                connector_name =	"Point02",		
                ShapeName	=	var.shape,
            },
        },
        wsTypeOfWeapon	= var.wsType.wsTypeOfWeapon,
	    attribute       = {4, 5, 32, WSTYPE_PLACEHOLDER},
	    ejectVelocity   = eject_speed_bomb,
	    settings        = Get_Combined_GUISettings_Preset("MDRN_B_A_PGM_TWINWELL"),
	})
end
----------------------------------------------------------------------------------------
-- LS-6 250
----------------------------------------------------------------------------------------
local function JF39_LS_6_250(variant)
	local var = weapon_type[variant]
	local var_mass = var.mass

	declare_loadout({
	    category         = CAT_BOMBS,
	    CLSID            = 'DIS_LS_6_250',
	    attribute		 = var.wsType.wsTypeOfWeapon,
        Count            = 1,
	    Cx_pil           = var.cx_pil,
	    Picture          = var.picture,
	    displayName      = var.display_name,
	    Weight           = var.mass,
        Elements  		= {{ShapeName = var.shape}},
        settings		= Get_Combined_GUISettings_Preset("MDRN_B_A_PGM_TWINWELL")
	})

	declare_loadout({
	    category         = CAT_BOMBS,
	    CLSID            = 'DIS_LS_6_250_DUAL_L',
	    Cx_pil           = var.cx_pil * 2 + 0.00122,
	    Cx_item          = var.cx_pil,
	    Picture          = var.picture,
	    displayName      = var.display_name ..' x2',
	    Weight           = 2 * var.mass,
        Count            = 2,
	    Elements = {
	        {
	            ShapeName = "BRU_55",
	            IsAdapter = true
	        },
	        {
	            ShapeName = var.shape,
	            connector_name = "Point01",
	        },
	        {
	            ShapeName = var.shape,
	            connector_name = "Point02",
	        },
	    },
        wsTypeOfWeapon	= var.wsType.wsTypeOfWeapon,
	    attribute		= {4, 5, 32, WSTYPE_PLACEHOLDER},
	    ejectVelocity   = eject_speed_bomb,
	    settings        = Get_Combined_GUISettings_Preset("MDRN_B_A_PGM_TWINWELL"),
	})

	declare_loadout({
	    category         = CAT_BOMBS,
	    CLSID            = 'DIS_LS_6_250_DUAL_R',
	    Cx_pil           = var.cx_pil * 2 + 0.00122,
	    Cx_item          = var.cx_pil,
	    Picture          = var.picture,
	    displayName      = var.display_name ..' x2',
	    Weight           = 2 * var.mass,
        Count            = 2,
        Elements = {
            {
                ShapeName = "BRU_55",
                IsAdapter = true
            },
            {
                connector_name =	"Point01",
                ShapeName	=	var.shape,
            },
            {
                connector_name =	"Point02",		
                ShapeName	=	var.shape,
            },
        },
        wsTypeOfWeapon	= var.wsType.wsTypeOfWeapon,
	    attribute       = {4, 5, 32, WSTYPE_PLACEHOLDER},
	    ejectVelocity   = eject_speed_bomb,
	    settings        = Get_Combined_GUISettings_Preset("MDRN_B_A_PGM_TWINWELL"),
	})
end
----------------------------------------------------------------------------------------
-- GB6
----------------------------------------------------------------------------------------
local function JF39_GB6(variant)
    local var = weapon_type[variant]
    local var_mass = var.mass

    declare_loadout({
        category = CAT_MISSILES,
        CLSID = 'DIS_GB6',
        Picture = var.picture,
        attribute = var.wstype,
        displayName = var.display_name,
        Cx_pil = var.cx_pil,
        Count = 1,
        Weight = var.mass + pylon_mass,
		ejectVelocity   = 4,
        Elements = {	
			[1] =
			{
				DrawArgs =
				{
					[1] = {1, 1},
					[2] = {2, 1},
				}, -- end of DrawArgs
				Position  = {0, 0, 0},
				ShapeName = var.shape,
			},
		}, -- end of Elements
    })
end
----------------------------------------------------------------------------------------
-- GB6_HE
----------------------------------------------------------------------------------------
local function JF39_GB6_HE(variant)
    local var = weapon_type[variant]
    local var_mass = var.mass

    declare_loadout({
        category = CAT_MISSILES,
        CLSID = 'DIS_GB6_HE',
        Picture = var.picture,
        attribute = var.wstype,
        displayName = var.display_name,
        Cx_pil = var.cx_pil,
        Count = 1,
        Weight = var.mass + pylon_mass,
		ejectVelocity   = 4,
        Elements = {	
			[1] =
			{
				DrawArgs =
				{
					[1] = {1, 1},
					[2] = {2, 1},
				}, -- end of DrawArgs
				Position  = {0, 0, 0},
				ShapeName = var.shape,
			},
		}, -- end of Elements
    })
end

----------------------------------------------------------------------------------------
-- GB6_TSP
----------------------------------------------------------------------------------------
local function JF39_GB6_TSP(variant)
    local var = weapon_type[variant]
    local var_mass = var.mass

    declare_loadout({
        category = var.category,
        CLSID = 'DIS_GB6_TSP',
        Picture = var.picture,
        attribute = var.wstype,
        displayName = var.display_name,
        Cx_pil = var.cx_pil,
        Count = 1,
        Weight = var.mass + pylon_mass,
		ejectVelocity   = 4,
        Elements = {	
			[1] =
			{
				DrawArgs =
				{
					[1] = {1, 1},
					[2] = {2, 1},
				}, -- end of DrawArgs
				Position  = {0, 0, 0},
				ShapeName = var.shape,
			},
		}, -- end of Elements
    })
end
----------------------------------------------------------------------------------------
-- C802AK
----------------------------------------------------------------------------------------
local function JF39_C802AK(variant)
    local var = weapon_type[variant]
    local var_mass = var.mass

    declare_loadout({
        category = CAT_MISSILES,
        CLSID = 'DIS_C-802AK',
        Picture = var.picture,
        attribute = var.wstype,
        displayName = var.display_name,
        Cx_pil = var.cx_pil,
        Count = 1,
        Weight = var.mass + pylon_mass,
		ejectVelocity   = 4,
		Elements = {	
			[1] =
			{
				DrawArgs =
				{
					[1] = {1, 1},
					[2] = {2, 1},
				}, -- end of DrawArgs
				Position  = {0, 0, 0},
				ShapeName = var.shape,
			},
		}, -- end of Elements
    })
end
----------------------------------------------------------------------------------------
-- C701_IR
----------------------------------------------------------------------------------------
local function JF39_C701_IR(variant)
    local var = weapon_type[variant]
    local var_mass = var.mass

    declare_loadout({
        category = CAT_MISSILES,
        CLSID = 'DIS_C-701IR',
        Picture = var.picture,
        attribute = var.wstype,
        displayName = var.display_name,
        Cx_pil = var.cx_pil,
        Count = 1,
        Weight = var.mass + pylon_mass,
        Elements = {			
            [1] = 
			{
                ShapeName = var.shape,
				Position = {0, 0, 0}
            }
        } -- end of Elements
    })
end
----------------------------------------------------------------------------------------
-- C701_T
----------------------------------------------------------------------------------------
local function JF39_C701_T(variant)
    local var = weapon_type[variant]
    local var_mass = var.mass

    declare_loadout({
        category = CAT_MISSILES,
        CLSID = 'DIS_C-701T',
        Picture = var.picture,
        attribute = var.wstype,
        displayName = var.display_name,
        Cx_pil = var.cx_pil,
        Count = 1,
        Weight = var.mass + pylon_mass,
        Elements = {			
            [1] = 
			{
                ShapeName = var.shape,
				Position = {0, 0, 0}
            }
        } -- end of Elements
    })
end
----------------------------------------------------------------------------------------
-- WMD7
----------------------------------------------------------------------------------------
local function JF39_WMD7(variant)
	local var = weapon_type[variant]
	local var_mass = var.mass

	declare_loadout({
		category 	= CAT_PODS,
		CLSID 		= 'DIS_WMD7',
		Picture 	= var.picture,
		displayName = var.display_name,
		Weight 		= var.mass,
		Cx_pil 		= var.cx_pil,
		attribute 	= var.wstype,
		--attribute 	= {wsType_Weapon,wsType_GContainer,wsType_Control_Cont,WSTYPE_PLACEHOLDER},
		shape_table_data =
    {
        {
            name = var.display_name,
            file = var.shape,
            life = 1,
            fire = { 0, 1},
            username = var.display_name,
            index = WSTYPE_PLACEHOLDER,
        },
    },
    Elements =
    {
        [1] = {
            Position = {0, 0, 0},
            ShapeName = var.shape,
        },
    },
    Sensors  = 
    {
        OPTIC = {"Litening AN/AAQ-28 FLIR", "Litening AN/AAQ-28 CCD TV"}
		--OPTIC = {"Sniper XR FLIR", "Sniper XR CCD TV"}
		--OPTIC  = {"ATFLIR AN/ASQ-228 FLIR", "ATFLIR AN/ASQ-228 CCD TV"}
    },
    laserRanger = true,
    laserDesignator = true,
	})
end
----------------------------------------------------------------------------------------
-- CM802AKG
----------------------------------------------------------------------------------------
local function JF39_CM802AKG(variant)
	local var = weapon_type[variant]
	local var_mass = var.mass
	local Picture = var.picture
    local var = weapon_type[variant]
    local cm802akg_model = var.shape
    local cm802akg_disp = var.display_name
	local cm802akg_name = 'JF39_CM802AKG'
    local cm802akg_mass = var.mass
    local pylon_mass = 50.0

	CM_802AKG =
	{
		category		= CAT_MISSILES,
		wsTypeOfWeapon 	= {wsType_Weapon,wsType_Missile,wsType_AS_Missile,WSTYPE_PLACEHOLDER},
		
		name			= cm802akg_name,
		display_name	= _('AGM-84E'),
		user_name		= _("CM-802AKG"),
		display_name_short = "CM-802",
		
		scheme			= "AGM-84E",
		class_name		= "wAmmunitionAntiShip",
		model			= cm802akg_model,--here
		
		Escort		= 0,
		Head_Type	= 5,
		sigma		= {25, 25, 25},
		M			= 670.0,
		H_max		= 10000.0,
		H_min		= 500,
		Diam		= 360.0,
		Cx_pil		= 8,
		D_max		= 230000.0,
		D_min		= 15000.0,
		Head_Form	= 0,
		Life_Time	= 1850.0,
		Nr_max		= 18,
		v_min		= 150.0,
		v_mid		= 272.0,
		Mach_max	= 0.9,
		t_b			= 0.01,
		t_acc		= 5.0,
		t_marsh		= 1800.0,
		Range_max	= 230000.0,
		H_min_t		= 0.0,
		Fi_start	= 0.5,
		Fi_rak		= 3.14152,
		Fi_excort	= 1.05,
		Fi_search	= 99.9,
		OmViz_max	= 99.9,
	
		X_back			= -1.581,
		Y_back			= 0,
		Z_back			= 0.0,
		Reflection		= 0.25,
		KillDistance	= 0.0,
			
		Damage_correction_coeff = 0.7,
		
		add_attributes = {"Cruise missiles", "Anti-Ship missiles", "Air"},
		
		LaunchDistData =
		{
			17,		9,
	
					100,	150,	200,	250,	300,	350,	400,	450,	500,		
			100,	0,		0,		205025,	208800,	211725,	214900,	217775,	220750,	224250,	
			200,	0,		200075,	205325,	208675,	212075,	215225,	218150,	221100,	224625,	
			300,	0,		200325,	205175,	209000,	212400,	215575,	218525,	221450,	224525,	
			400,	195575,	200575,	205475,	209350,	212725,	215925,	218900,	221775,	224850,	
			500,	195800,	200825,	205775,	209675,	213075,	216250,	219225,	222125,	225125,	
			600,	196000,	200600,	206050,	209950,	213400,	216550,	219500,	222400,	225300,	
			700,	196200,	200900,	206350,	210300,	213700,	216900,	219850,	222650,	225600,	
			800,	196400,	201150,	206650,	210650,	214000,	217300,	220150,	222900,	225800,	
			900,	196650,	201400,	206950,	210950,	214350,	217550,	220400,	223150,	225950,	
			1000,	196850,	201700,	207200,	211300,	214650,	217900,	220650,	223400,	226250,	
			2000,	199900,	206300,	210600,	214300,	217300,	219900,	222500,	225000,	228000,	
			3000,	204800,	209300,	213100,	216700,	219500,	222000,	224200,	226800,	229900,	
			4000,	207500,	211700,	215100,	218500,	221800,	223900,	226100,	228700,	231900,	
			5000,	209500,	213500,	217000,	220200,	223800,	226100,	228100,	230700,	234000,	
			6000,	211250,	215000,	218500,	221750,	225250,	228000,	230250,	232750,	236000,	
			7000,	213000,	216750,	220250,	223250,	226750,	230250,	232250,	235000,	238250,	
			7500,	213750,	217500,	220750,	224000,	227250,	230750,	233250,	236000,	240500,	
		},
	
		MinLaunchDistData =
		{
			17,		9,
	
					100,	150,	200,	250,	300,	350,	400,	450,	500,		
			100,	0,		0,		21700,	21950,	16325,	16775,	17100,	17900,	24150,	
			200,	0,		21475,	21425,	15950,	16450,	16950,	17450,	17975,	24000,	
			300,	0,		21250,	15475,	16050,	16600,	17125,	17550,	18125,	18900,	
			400,	22250,	21025,	15575,	16175,	16725,	17250,	17700,	18300,	19225,	
			500,	22000,	20800,	15700,	16225,	16850,	17325,	17900,	18475,	19350,	
			600,	21800,	14950,	15750,	16400,	16950,	17500,	18000,	18550,	19250,	
			700,	21550,	15000,	15800,	16400,	17000,	17550,	18050,	18650,	19350,	
			800,	21350,	15100,	15900,	16550,	17100,	17650,	18150,	18700,	19450,	
			900,	21150,	15150,	16000,	16600,	17150,	17700,	18250,	18800,	19500,	
			1000,	20900,	15200,	16000,	16650,	17300,	17800,	18300,	18900,	19600,	
			2000,	14500,	15500,	16200,	16900,	17600,	18200,	18800,	19500,	20000,	
			3000,	14600,	15100,	16000,	16900,	17300,	18300,	18900,	19600,	21200,	
			4000,	14800,	15100,	15300,	15600,	15800,	16100,	16600,	19300,	21300,	
			5000,	14900,	15200,	15500,	15700,	15900,	16200,	16600,	17000,	21300,	
			6000,	15000,	15500,	15750,	15750,	16000,	16250,	16750,	17000,	17500,	
			7000,	15250,	15500,	15750,	16000,	16250,	16500,	16500,	17000,	17500,	
			7500,	15250,	15500,	15750,	16000,	16250,	16500,	16750,	17000,	18000,	
		},
		
		shape_table_data =
		{
			{
				name		= cm802akg_name,
				file		= cm802akg_model,--here
				life		= 1,
				fire		= { 0, 1},
				username	= cm802akg_name,
				index		= WSTYPE_PLACEHOLDER,
			},
		},
		
			controller = {
			boost_start	= 0,
			march_start = 0,
		},
	
		control_block = {
			default_cruise_height = 1000.0,
		},
	
	
		boost = {				--	air launch - no booster
			impulse								= 0,
			fuel_mass							= 0,
			work_time							= 0,
			boost_time							= 0,
			boost_factor						= 0,
			nozzle_position						= {{0, 0, 0}},
			nozzle_orientationXYZ				= {{0, 0, 0}},
			tail_width							= 0.0,
			smoke_color							= {0.0, 0.0, 0.0},
			smoke_transparency					= 0.0,
			custom_smoke_dissipation_factor		= 0.0,
		},
	
		march = {
			impulse			= 3000,
			fuel_mass		= 68,
			work_time		= 9999,
			min_fuel_rate	= 0.005,
			min_thrust		= -100,
			max_thrust		= 5000,
			thrust_Tau		= 0.0018,
	
			nozzle_position						= {{-2.26, 0.0, 0.0}},
			nozzle_orientationXYZ				= {{0.0, 0.0, 0.0}},
			tail_width							= 0.5,
			smoke_color							= {0.5, 0.5, 0.5},
			smoke_transparency					= 0.03,
			custom_smoke_dissipation_factor		= 0.2,
	
			start_burn_effect			= 1,
			start_effect_delay			= {0.0,		0.3, 	0.8},
			start_effect_time			= {0.7,		1.0, 	0.1},
			start_effect_size			= {0.09,	0.104,	0.11},
			start_effect_smoke			= {0.01,	0.4, 	0.01},
			start_effect_x_pow			= {1.0,		1.0,	1.0},
			start_effect_x_dist			= {1.1,		0.9,	0.0},
			start_effect_x_shift		= {0.15,	0.15,	0.2},
		},
	
		engine_control = {
			default_speed	= 285,
			K				= 240,
			Kd				= 1.0,
			Ki				= 0.01,
			speed_delta		= 5,
		},
	
	
		seeker = {
			delay				= 0.0,
			op_time				= 800,
			activate_on_update	= 1,
	
			FOV					= math.rad(60),
	
			max_target_speed			= 33,
			max_target_speed_rnd_coeff	= 10,
	
			max_lock_dist		= 30000,
		},
	
		ins = {
			aim_sigma		= 350,
			check_AI		= 1,
			error_coeff		= 0.03,
		},
	
		fm = {
			mass        = 670,
			caliber     = 0.360,
			cx_coeff    = {1,0.39,0.38,0.236,1.31},
			L           = 5.145,
			I           = 1 / 12 * 670.0 * 5.145 * 5.145,
			Ma          = 0.68,
			Mw          = 1.116,
			wind_sigma	= 0.0,
			wind_time	= 1000.0,
			Sw			= 0.75,
			dCydA		= {0.07, 0.036},
			A			= 0.5,
			maxAoa		= 0.3,
			finsTau		= 0.02,
			Ma_x		= 3,
			Ma_z		= 3,
			Mw_x		= 2.6,
		},
	
		autopilot =
		{
			glide_height				= 1000,
			dont_climb_on_cruise_height	= 0,
			vel_proj_div 				= 6.0,
			default_glide_height		= 1000,
			pre_maneuver_glide_height	= 1000,
			skim_glide_height			= 8,
			use_start_bar_height		= 1,
			altim_vel_k					= 4,
	
			delay				= 1.0,
			op_time				= 9999,
			Kw					= 4.0,
			Ks					= 1.0,
			K					= 1.0,
			Kd 					= 0.0,
			Ki 					= 30.0,--10
			Kx					= 0.04,
			Kdx					= 0.001,
			w_limit				= math.rad(5),
			fins_limit			= math.rad(50),
			fins_limit_x		= math.rad(25),
			rotated_WLOS_input	= 0,
			conv_input			= 0,
			PN_dist_data 		= {	2000,	0,
									500,	0},
	
			max_climb_angle		= math.rad(10),
			max_dive_angle		= math.rad(-30),
			max_climb_ang_hdiff	= 180,
			max_dive_ang_hdiff	= -500,
	
			Ksd						= 0.0,
			Ksi						= 0.0,
			integr_val_limit		= 0.5,
			hor_err_limit			= 0.5,
			max_climb_vel			= 200,
			min_climb_vel			= 120,
			min_climb_vel_factor	= 0,
			max_climb_h				= 3000,
			min_climb_h				= 10000,
			min_climb_h_factor		= 0.5,
			
			inertial_km_error		= 4.0,
			glide_height_eq_error	= 0.02,
	
			
			vert_ctrl_data 		= {	100,	math.rad(-24),
									115,	math.rad(-16),
									130,	math.rad(-8),
									145,	math.rad(0),
									185,	math.rad(10),	},
		},
	
		final_autopilot = {
			delay				= 1.0,
			op_time				= 9999,
			Kw					= 1.0,
			Ks					= 5.0,
			K					= 5.0,
			Kd 					= 0.0,
			Ki 					= 0.0,
			Kx					= 0.0,
			Kix					= 0.0,
			w_limit				= math.rad(15),
			fins_limit			= math.rad(50),
			rotated_WLOS_input	= 0,
			conv_input			= 0,
			PN_dist_data 		= {	2000,	1,
									500,	1},
	
			add_err_val				= 0,
			add_err_vert			= 0,
			add_out_val				= 0.1,
			add_out_vert			= 1,
			loft_angle				= math.rad(8),
			loft_trig_angle			= math.rad(14),
			K_loft_err				= 1,
			loft_angle_vert			= 1,
			loft_active_by_default	= 0,
		},
	
		triggers_control = {
			action_wait_timer				= 5,	-- wait for dist functions n sen, then set default values
			default_sensor_tg_dist			= 10000, -- turn on seeker and start horiz. correction if target is locked
			default_final_maneuver_tg_dist	= 7000,
			default_straight_nav_tg_dist	= 7000,
			default_destruct_tg_dist		= 3000,	-- if seeker still can not find a target explode warhead after reaching pred. target point + n. km
			trigger_by_path					= 1,
			final_maneuver_trig_v_lim		= 3,
			use_horiz_dist					= 1,
			pre_maneuver_glide_height		= 1000,	-- triggers st nav instead of fin. maneuver if h>2*pre_maneuver_glide_height at fin. maneuver distance
			min_cruise_height				= 1000,
			min_cruise_height_trigger_sum	= 10000,
			min_cruise_height_trigger_mlt	= 285/33,
		},
		
		warhead		= predefined_warhead("C_802A"),
		warhead_air = predefined_warhead("C_802A"),
	}
	
declare_weapon(CM_802AKG)

declare_loadout({
    category     = CAT_MISSILES,
    CLSID        = 'DIS_CM-802AKG',
    Picture      = var.picture,
    attribute    = CM_802AKG.wsTypeOfWeapon,
    displayName  = _(cm802akg_disp),
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
    --Required     = {"DIS_AKG_DLPOD"},
    ejectVelocity  = eject_speed_msl,
    ejectDirection = {0, -1, 0},
})


------- CM-802AKG for AI only -------

local cm802akg_ai_name  = 'CM-802AKG_AI'
local cm802akg_ai_disp  = 'CM802AKG (DIS) for AI'

CM802AKG_AI = {}
copyTable(CM802AKG_AI, CM_802AKG)
CM802AKG_AI.name           = cm802akg_ai_name
CM802AKG_AI.user_name      = _(cm802akg_ai_disp)
CM802AKG_AI.Escort         = 0
CM802AKG_AI.Head_Type      = 5 -- TV
CM802AKG_AI.wsTypeOfWeapon = {wsType_Weapon,wsType_Missile,wsType_AS_Missile,WSTYPE_PLACEHOLDER}
CM802AKG_AI.shape_table_data[1].name     = cm802akg_ai_name
CM802AKG_AI.shape_table_data[1].username = cm802akg_ai_name
CM802AKG_AI.shape_table_data[1].index    = WSTYPE_PLACEHOLDER

if cm802akg_scheme_type == 0 then
    copyTable(CM802AKG_AI, cm802akg_scheme_data_e)
else
    copyTable(CM802AKG_AI, cm802akg_scheme_data_h)
end

declare_weapon(CM802AKG_AI)

declare_loadout({
    category     = CAT_MISSILES,
    CLSID        = 'DIS_CM-802AKG_AI',
    Picture      = var.picture,
    attribute    = CM802AKG_AI.wsTypeOfWeapon,
    displayName  = _(cm802akg_ai_disp),
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
    ejectVelocity  = eject_speed_msl,
    ejectDirection = {0, -1, 0},
})
end
----------------------------------------------------------------------------------------
-- Declare loadouts using the selected configuration
----------------------------------------------------------------------------------------
JF39_PL_5EII(weapon['IRAAM']) -- IRIS-T, A-Darter, Python-5, AIM-9X Sidewinder, AIM-9L Sidewinder, AIM-9M Sidewinder, AIM-132 ASRAAM
JF39_SD_10(weapon['BVRAAM']) -- Meteor, AIM-120C, I-Derby ER, AIM-120B
JF39_TYPE200(weapon['TYPE200']) -- SB71HD, SB71LD
JF39_LS_6_100(weapon['LS_6_100']) -- GBU-54(V)1/B - LJDAM, 500lb Laser & GPS Guided Bomb LD
--JF39_LS_6_250(weapon['LS_6_250']) -- GBU-38 / Spear3
--JF39_LS_6_500(weapon['LS_6_500']) -- GBU_39
JF39_GB6(weapon['GB6'])	-- AGM-154A JSOW
JF39_GB6_HE(weapon['GB6_HE'])	-- AGM-154B JSOW
JF39_GB6_TSP(weapon['GB6_TSP'])	-- BK-90 MJ1+2, GBU-24B/B Paveway III
JF39_C802AK(weapon['C802AK']) --RB15F
JF39_C701_IR(weapon['C701_IR']) -- AGM-65G
JF39_C701_T(weapon['C701_T']) -- AGM-65K
JF39_WMD7(weapon['WMD7']) ---- AAQ-28 (LITENING), AAQ-28 (Sniper XR), ASQ-228 (ATFLIR)
JF39_CM802AKG(weapon['CM802AKG']) --Storm Shadow, KEPD 350
----------------------------------------------------------------------------------------
--                    File by whisky.actual@gmail.com - v.1.2.1                       --
----------------------------------------------------------------------------------------