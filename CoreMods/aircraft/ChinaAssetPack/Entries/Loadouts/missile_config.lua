-- Missile Type
local missile_type = {
	["11"]  		= {display_name = _("PL-11A SARH AAM"), wstype = "weapons.missiles.PL-11A", mass = 230, shape = 'aim-7'	},
	["12"]  		= {display_name = _("PL-12 Active Rdr AAM"), wstype = "weapons.missiles.PL-12", mass = 199, shape = 'pl12'	},
	["15"]  		= {display_name = _("PL-15 Active Rdr AAM"), wstype = "weapons.missiles.PL-15", mass = 210, shape = 'Su30_PL-15'	},
	["8A"]  		= {display_name = _("PL-8A IR AAM"), wstype = "weapons.missiles.PL-8A", mass = 115, shape = 'pl8a'	},
	["8B"]  		= {display_name = _("PL-8B IR AAM"), wstype = "weapons.missiles.PL-8B", mass = 115, shape = 'pl8b'	},
	["10"]  		= {display_name = _("PL-10E IR AAM"), wstype = "weapons.missiles.PL-10E", mass = 105, shape = 'Su30_PL10E'	},
	["6"]  		= {display_name = _("GB-6-HE  Glide-Bomb"), wstype = "weapons.missiles.GB-6-HE", mass = 620, shape = 'gb6'	},
	["6A"]  		= {display_name = _("GB-6A-HE cruise-missile"), wstype = "weapons.missiles.GB-6A-HE", mass = 972, shape = 'jas39_stormshadow'	},
	}


local pylon_mass = 90.0
local pylon_dual_mass = 160.0

-- DIS_SD-10


local function J10_SD_10(variant)
	local var = missile_type[variant]
	local var_mass = var.mass
		
	declare_loadout({
		category    = CAT_AIR_TO_AIR,
		CLSID       = 'DIS_SD-10', 
		Picture     = 'pl12.png',
		attribute   = var.wstype,
		displayName = var.display_name,
		Cx_pil      = 0.000859765625,
		Count       = 1,
		Weight      = var_mass + pylon_mass,
		Elements    = {
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

if variant ~= '11' then
	declare_loadout({
		category       = CAT_AIR_TO_AIR,
		CLSID          = 'DIS_SD-10_DUAL_L',
		Picture        = 'pl12.png',
		wsTypeOfWeapon = var.wstype,
		attribute      = {4,4,32,WSTYPE_PLACEHOLDER},
		displayName    = var.display_name .. ' x 2',
		Cx_pil         = 0.000859765625 * 1.31,
		Count          = 2,
		Weight         = 2 * var_mass + pylon_dual_mass,
		Elements       = {
			{ ShapeName = 'JF-17_PF12_twin', IsAdapter = true, },
			{ ShapeName = var.shape,        connector_name = 'dual_PF12L', },
			{ ShapeName = var.shape,        connector_name = 'dual_PF12R', },
		}, -- end of Elements
		JettisonSubmunitionOnly = true,
	})

	declare_loadout({
		category       = CAT_AIR_TO_AIR,
		CLSID          = 'DIS_SD-10_DUAL_R',
		Picture        = 'pl12.png',
		wsTypeOfWeapon = var.wstype,
		attribute      = {4,4,32,WSTYPE_PLACEHOLDER},
		displayName    = var.display_name .. ' x 2',
		Cx_pil         = 0.000859765625 * 1.31,
		Count          = 2,
		Weight         = 2 * var_mass + pylon_dual_mass,
		Elements       = {
			{ ShapeName = 'JF-17_PF12_twin', IsAdapter = true, },
			{ ShapeName = var.shape,        connector_name = 'dual_PF12R', },
			{ ShapeName = var.shape,        connector_name = 'dual_PF12L', },
		}, -- end of Elements
		JettisonSubmunitionOnly = true,
	})
	end
end

J10_SD_10(missile['BVRAAM'])


-- DIS_PL-5EII


local function J10_PL_5EII(variant)
	local var = missile_type[variant]
	local var_mass = var.mass
		
	declare_loadout({
		category     = CAT_AIR_TO_AIR,
		CLSID        = 'DIS_PL-5EII',
		Picture      = 'pl8b.png',
		attribute    = var.wstype,
		displayName  = var.display_name,
		Cx_pil       = 0.001959765625,
		Count        = 1,
		Weight       = var_mass + 70,
		Elements     = {
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

J10_PL_5EII(missile['IRAAM'])


-- DIS_GB6_HE


local function J10_GB6(variant)
	local var = missile_type[variant]
	local var_mass = var.mass
		
	
	declare_loadout({
		category         = CAT_MISSILES,
		CLSID            = 'DIS_GB6_HE',
		attribute    	= var.wstype,
		Count            = 1,
		Cx_pil           = 0.0024,
		Picture          = "gb6.png",
		displayName      = var.display_name,
		Weight           = var_mass + 52,
		Elements         = {{ShapeName = var.shape}},
		ejectImpulse     = 140,
	})
end

J10_GB6(missile['GuidedBomb'])