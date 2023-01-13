
local tIntercept    = 10
local tCAP          = 11
local tAFAC         = 16
local tRecon        = 17
local tEscort       = 18
local tFighterSweep = 19
local tSEAD         = 29
local tAntiShip     = 30
local tCAS          = 31
local tGndAttack    = 32
local tPinpntStrike = 33
local tRwyAttack    = 34

local unitPayloads = {
    ["name"] = "JF-17",
    ["payloads"] = {
		{
			["name"] = "PL-5Ex2, C802AKx2, 800L Tank",
			["pylons"] = {
				[1] = {
					["CLSID"] = "DIS_C-802AK",
					["num"] = 5,
				},
				[2] = {
					["CLSID"] = "DIS_TANK800",
					["num"] = 4,
				},
				[3] = {
					["CLSID"] = "DIS_C-802AK",
					["num"] = 3,
				},
				[4] = {
					["CLSID"] = "DIS_PL-5EII",
					["num"] = 7,
				},
				[5] = {
					["CLSID"] = "DIS_PL-5EII",
					["num"] = 1,
				},
				[6] = {
					["CLSID"] = "DIS_C-701IR",
					["num"] = 6,
				},
				[7] = {
					["CLSID"] = "DIS_C-701IR",
					["num"] = 2,
				},
			},
			["tasks"] = {
				[1] = tAntiShip,
			},
		},
		{
			["name"] = "PL-5Ex2, C-701 IRx2, 1100L Tank, 800L Tank",
			["pylons"] = {
				[1] = {
					["CLSID"] = "DIS_PL-5EII",
					["num"] = 7,
				},
				[2] = {
					["CLSID"] = "DIS_PL-5EII",
					["num"] = 1,
				},
				[3] = {
					["CLSID"] = "DIS_TANK800",
					["num"] = 4,
				},
				[4] = {
					["CLSID"] = "DIS_TANK1100",
					["num"] = 3,
				},
				[5] = {
					["CLSID"] = "DIS_TANK1100",
					["num"] = 5,
				},
				[6] = {
					["CLSID"] = "DIS_C-701IR",
					["num"] = 6,
				},
				[7] = {
					["CLSID"] = "DIS_C-701IR",
					["num"] = 2,
				},
			},
			["tasks"] = {
				[1] = tGndAttack,
			},
		},
		{
			["name"] = "PL-5Ex2, SD-10x2, 1100L Tankx2, WMD7",
			["pylons"] = {
				[1] = {
					["CLSID"] = "DIS_PL-5EII",
					["num"] = 7,
				},
				[2] = {
					["CLSID"] = "DIS_PL-5EII",
					["num"] = 1,
				},
				[3] = {
					["CLSID"] = "DIS_WMD7",
					["num"] = 4,
				},
				[4] = {
					["CLSID"] = "DIS_TANK1100",
					["num"] = 5,
				},
				[5] = {
					["CLSID"] = "DIS_TANK1100",
					["num"] = 3,
				},
				[6] = {
					["CLSID"] = "DIS_SD-10",
					["num"] = 6,
				},
				[7] = {
					["CLSID"] = "DIS_SD-10",
					["num"] = 2,
				},
			},
			["tasks"] = {
				[1] = tAFAC,
			},
		},
		{
			["name"] = "PL-5Ex2, LD-10x2, 1100L Tankx2, WMD7",
			["pylons"] = {
				[1] = {
					["CLSID"] = "DIS_PL-5EII",
					["num"] = 7,
				},
				[2] = {
					["CLSID"] = "DIS_PL-5EII",
					["num"] = 1,
				},
				[3] = {
					["CLSID"] = "DIS_WMD7",
					["num"] = 4,
				},
				[4] = {
					["CLSID"] = "DIS_TANK1100",
					["num"] = 5,
				},
				[5] = {
					["CLSID"] = "DIS_TANK1100",
					["num"] = 3,
				},
				[6] = {
					["CLSID"] = "DIS_LD-10",
					["num"] = 6,
				},
				[7] = {
					["CLSID"] = "DIS_LD-10",
					["num"] = 2,
				},
			},
			["tasks"] = {
				[1] = tAFAC,
			},
		},
		{
			["name"] = "PL-5Ex2, 800L Tank, WMD7",
			["pylons"] = {
				[1] = {
					["CLSID"] = "DIS_TANK800",
					["num"] = 3,
				},
				[2] = {
					["CLSID"] = "DIS_TANK800",
					["num"] = 5,
				},
				[3] = {
					["CLSID"] = "DIS_WMD7",
					["num"] = 4,
				},
				[4] = {
					["CLSID"] = "DIS_PL-5EII",
					["num"] = 1,
				},
				[5] = {
					["CLSID"] = "DIS_PL-5EII",
					["num"] = 7,
				},
			},
			["tasks"] = {
				[1] = tRecon,
			},
		},
		{
			["name"] = "PL-5Ex2, GBU-10x2, WMD7",
			["pylons"] = {
				[1] = {
					["CLSID"] = "DIS_WMD7",
					["num"] = 4,
				},
				[2] = {
					["CLSID"] = "DIS_GBU_10",
					["num"] = 5,
				},
				[3] = {
					["CLSID"] = "DIS_GBU_10",
					["num"] = 3,
				},
				[4] = {
					["CLSID"] = "DIS_PL-5EII",
					["num"] = 7,
				},
				[5] = {
					["CLSID"] = "DIS_PL-5EII",
					["num"] = 1,
				},
			},
			["tasks"] = {
				[1] = tGndAttack,
			},
		},
		{
			["name"] = "PL-5Ex2, 2*GBU-12x2, 800L Tank, WMD7",
			["pylons"] = {
				[1] = {
					["CLSID"] = "DIS_PL-5EII",
					["num"] = 7,
				},
				[2] = {
					["CLSID"] = "DIS_PL-5EII",
					["num"] = 1,
				},
				[3] = {
					["CLSID"] = "DIS_WMD7",
					["num"] = 4,
				},
				[4] = {
					["CLSID"] = "DIS_TANK800",
					["num"] = 3,
				},
				[5] = {
					["CLSID"] = "DIS_TANK800",
					["num"] = 5,
				},
				[6] = {
					["CLSID"] = "DIS_GBU_12_DUAL_GDJ_II19_R",
					["num"] = 6,
				},
				[7] = {
					["CLSID"] = "DIS_GBU_12_DUAL_GDJ_II19_L",
					["num"] = 2,
				},
			},
			["tasks"] = {
				[1] = tGndAttack,
			},
		},
		{
			["name"] = "PL-5Ex2, 2*Mk-82x2, Mk-83x2, 800L Tank",
			["pylons"] = {
				[1] = {
					["CLSID"] = "DIS_PL-5EII",
					["num"] = 7,
				},
				[2] = {
					["CLSID"] = "DIS_PL-5EII",
					["num"] = 1,
				},
				[3] = {
					["CLSID"] = "DIS_TANK800",
					["num"] = 4,
				},
				[4] = {
					["CLSID"] = "{7A44FF09-527C-4B7E-B42B-3F111CFE50FB}",
					["num"] = 3,
				},
				[5] = {
					["CLSID"] = "{7A44FF09-527C-4B7E-B42B-3F111CFE50FB}",
					["num"] = 5,
				},
				[6] = {
					["CLSID"] = "DIS_MK_82S_DUAL_GDJ_II19_L",
					["num"] = 2,
				},
				[7] = {
					["CLSID"] = "DIS_MK_82S_DUAL_GDJ_II19_R",
					["num"] = 6,
				},
			},
			["tasks"] = {
				[1] = tRwyAttack,
			},
		},
		{
			["name"] = "PL-5Ex2, 1100L Tankx2, 800L Tank",
			["pylons"] = {
				[1] = {
					["CLSID"] = "DIS_PL-5EII",
					["num"] = 7,
				},
				[2] = {
					["CLSID"] = "DIS_PL-5EII",
					["num"] = 1,
				},
				[3] = {
					["CLSID"] = "DIS_TANK800",
					["num"] = 4,
				},
				[4] = {
					["CLSID"] = "DIS_TANK1100",
					["num"] = 5,
				},
				[5] = {
					["CLSID"] = "DIS_TANK1100",
					["num"] = 3,
				},
			},
			["tasks"] = {
				[1] = tCAP,
			},
		},
		{
			["name"] = "PL-5Ex2, WMD7, CM802AKGx2, 800L Tank, DL",
			["pylons"] = {
				[1] = {
					["CLSID"] = "DIS_PL-5EII",
					["num"] = 7,
				},
				[2] = {
					["CLSID"] = "DIS_PL-5EII",
					["num"] = 1,
				},
				[3] = {
					["CLSID"] = "DIS_TANK800",
					["num"] = 4,
				},
				[4] = {
					["CLSID"] = "DIS_CM-802AKG",
					["num"] = 3,
				},
				[5] = {
					["CLSID"] = "DIS_CM-802AKG",
					["num"] = 5,
				},
				[6] = {
					["CLSID"] = "DIS_WMD7",
					["num"] = 6,
				},
				[7] = {
					["CLSID"] = "DIS_AKG_DLPOD",
					["num"] = 2,
				},
			},
			["tasks"] = {
				[1] = tGndAttack,
			},
		},
		{
			["name"] = "PL-5Ex2, C-701 CCDx2, 1100L Tank, 800L Tank",
			["pylons"] = {
				[1] = {
					["CLSID"] = "DIS_PL-5EII",
					["num"] = 7,
				},
				[2] = {
					["CLSID"] = "DIS_PL-5EII",
					["num"] = 1,
				},
				[3] = {
					["CLSID"] = "DIS_TANK800",
					["num"] = 4,
				},
				[4] = {
					["CLSID"] = "DIS_TANK1100",
					["num"] = 3,
				},
				[5] = {
					["CLSID"] = "DIS_TANK1100",
					["num"] = 5,
				},
				[6] = {
					["CLSID"] = "DIS_C-701T",
					["num"] = 6,
				},
				[7] = {
					["CLSID"] = "DIS_C-701T",
					["num"] = 2,
				},
			},
			["tasks"] = {
				[1] = tGndAttack,
			},
		},
		{
			["name"] = "PL-5Ex2, GBU-12x2, 1100L Tank, WMD7",
			["pylons"] = {
				[1] = {
					["CLSID"] = "DIS_PL-5EII",
					["num"] = 7,
				},
				[2] = {
					["CLSID"] = "DIS_PL-5EII",
					["num"] = 1,
				},
				[3] = {
					["CLSID"] = "DIS_WMD7",
					["num"] = 4,
				},
				[4] = {
					["CLSID"] = "DIS_TANK1100",
					["num"] = 3,
				},
				[5] = {
					["CLSID"] = "DIS_TANK1100",
					["num"] = 5,
				},
				[6] = {
					["CLSID"] = "DIS_GBU_12",
					["num"] = 6,
				},
				[7] = {
					["CLSID"] = "DIS_GBU_12",
					["num"] = 2,
				},
			},
			["tasks"] = {
				[1] = tGndAttack,
			},
		},
		{
			["name"] = "PL-5Ex2, 2*GBU-12x2, GBU-16x2, WMD7",
			["pylons"] = {
				[1] = {
					["CLSID"] = "DIS_PL-5EII",
					["num"] = 7,
				},
				[2] = {
					["CLSID"] = "DIS_PL-5EII",
					["num"] = 1,
				},
				[3] = {
					["CLSID"] = "DIS_WMD7",
					["num"] = 4,
				},
				[4] = {
					["CLSID"] = "DIS_GBU_16",
					["num"] = 3,
				},
				[5] = {
					["CLSID"] = "DIS_GBU_16",
					["num"] = 5,
				},
				[6] = {
					["CLSID"] = "DIS_GBU_12_DUAL_GDJ_II19_R",
					["num"] = 6,
				},
				[7] = {
					["CLSID"] = "DIS_GBU_12_DUAL_GDJ_II19_L",
					["num"] = 2,
				},
			},
			["tasks"] = {
                [1] = tCAS,
                [2] = tGndAttack,
                [3] = tAFAC,
			},
		},
		{
			["name"] = "PL-5Ex2, 1100L Tankx2, WMD7",
			["pylons"] = {
				[1] = {
					["CLSID"] = "DIS_PL-5EII",
					["num"] = 7,
				},
				[2] = {
					["CLSID"] = "DIS_PL-5EII",
					["num"] = 1,
				},
				[3] = {
					["CLSID"] = "DIS_TANK1100",
					["num"] = 5,
				},
				[4] = {
					["CLSID"] = "DIS_TANK1100",
					["num"] = 3,
				},
				[5] = {
					["CLSID"] = "DIS_WMD7",
					["num"] = 4,
				},
			},
			["tasks"] = {
				[1] = tRecon,
			},
		},
		{
			["name"] = "PL-5Ex2, WMD7, 800L Tankx2, SPJ, 2*LD-10",
			["pylons"] = {
				[1] = {
					["CLSID"] = "DIS_PL-5EII",
					["num"] = 7,
				},
				[2] = {
					["CLSID"] = "DIS_PL-5EII",
					["num"] = 1,
				},
				[3] = {
					["CLSID"] = "DIS_TANK800",
					["num"] = 5,
				},
				[4] = {
					["CLSID"] = "DIS_TANK800",
					["num"] = 3,
				},
				[5] = {
					["CLSID"] = "DIS_WMD7",
					["num"] = 6,
				},
				[6] = {
					["CLSID"] = "DIS_LD-10_DUAL_L",
					["num"] = 2,
				},
				[7] = {
					["CLSID"] = "DIS_SPJ_POD",
					["num"] = 4,
				},
			},
			["tasks"] = {
				[1] = tRecon,
			},
		},
		{
			["name"] = "PL-5Ex2, LS-6x2, 1100L Tankx2, WMD7",
			["pylons"] = {
				[1] = {
					["CLSID"] = "DIS_PL-5EII",
					["num"] = 7,
				},
				[2] = {
					["CLSID"] = "DIS_PL-5EII",
					["num"] = 1,
				},
				[3] = {
					["CLSID"] = "DIS_WMD7",
					["num"] = 4,
				},
				[4] = {
					["CLSID"] = "DIS_TANK1100",
					["num"] = 5,
				},
				[5] = {
					["CLSID"] = "DIS_TANK1100",
					["num"] = 3,
				},
				[6] = {
					["CLSID"] = "DIS_LS_6_500",
					["num"] = 6,
				},
				[7] = {
					["CLSID"] = "DIS_LS_6_500",
					["num"] = 2,
				},
			},
			["tasks"] = {
				[1] = tAFAC,
			},
		},
		{
			["name"] = "PL-5Ex2, C-701 IRx2, 1100L Tankx2, WMD7",
			["pylons"] = {
				[1] = {
					["CLSID"] = "DIS_PL-5EII",
					["num"] = 7,
				},
				[2] = {
					["CLSID"] = "DIS_PL-5EII",
					["num"] = 1,
				},
				[3] = {
					["CLSID"] = "DIS_WMD7",
					["num"] = 4,
				},
				[4] = {
					["CLSID"] = "DIS_TANK1100",
					["num"] = 3,
				},
				[5] = {
					["CLSID"] = "DIS_TANK1100",
					["num"] = 5,
				},
				[6] = {
					["CLSID"] = "DIS_C-701IR",
					["num"] = 2,
				},
				[7] = {
					["CLSID"] = "DIS_C-701IR",
					["num"] = 6,
				},
			},
			["tasks"] = {
				[1] = tCAS,
			},
		},
		{
			["name"] = "PL-5Ex2, GBU-12x2, 1100L Tankx2, WMD7",
			["pylons"] = {
				[1] = {
					["CLSID"] = "DIS_PL-5EII",
					["num"] = 7,
				},
				[2] = {
					["CLSID"] = "DIS_PL-5EII",
					["num"] = 1,
				},
				[3] = {
					["CLSID"] = "DIS_WMD7",
					["num"] = 4,
				},
				[4] = {
					["CLSID"] = "DIS_TANK1100",
					["num"] = 5,
				},
				[5] = {
					["CLSID"] = "DIS_TANK1100",
					["num"] = 3,
				},
				[6] = {
					["CLSID"] = "DIS_GBU_12",
					["num"] = 6,
				},
				[7] = {
					["CLSID"] = "DIS_GBU_12",
					["num"] = 2,
				},
			},
			["tasks"] = {
				[1] = tAFAC,
			},
		},
		{
			["name"] = "PL-5Ex2, 2*LD-10x2, 1100L Tankx2, SPJ",
			["pylons"] = {
				[1] = {
					["CLSID"] = "DIS_PL-5EII",
					["num"] = 7,
				},
				[2] = {
					["CLSID"] = "DIS_PL-5EII",
					["num"] = 1,
				},
				[3] = {
					["CLSID"] = "DIS_SPJ_POD",
					["num"] = 4,
				},
				[4] = {
					["CLSID"] = "DIS_TANK1100",
					["num"] = 5,
				},
				[5] = {
					["CLSID"] = "DIS_TANK1100",
					["num"] = 3,
				},
				[6] = {
					["CLSID"] = "DIS_LD-10_DUAL_L",
					["num"] = 2,
				},
				[7] = {
					["CLSID"] = "DIS_LD-10_DUAL_R",
					["num"] = 6,
				},
			},
			["tasks"] = {
				[1] = tSEAD,
			},
		},
		{
			["name"] = "PL-5Ex2, LD-10x2, 1100L Tankx2, SPJ",
			["pylons"] = {
				[1] = {
					["CLSID"] = "DIS_PL-5EII",
					["num"] = 7,
				},
				[2] = {
					["CLSID"] = "DIS_PL-5EII",
					["num"] = 1,
				},
				[3] = {
					["CLSID"] = "DIS_SPJ_POD",
					["num"] = 4,
				},
				[4] = {
					["CLSID"] = "DIS_TANK1100",
					["num"] = 5,
				},
				[5] = {
					["CLSID"] = "DIS_TANK1100",
					["num"] = 3,
				},
				[6] = {
					["CLSID"] = "DIS_LD-10",
					["num"] = 2,
				},
				[7] = {
					["CLSID"] = "DIS_LD-10",
					["num"] = 6,
				},
			},
			["tasks"] = {
				[1] = tSEAD,
			},
		},
		{
			["name"] = "PL-5Ex2, 2*LD-10x2, LS-6x2, SPJ",
			["pylons"] = {
				[1] = {
					["CLSID"] = "DIS_PL-5EII",
					["num"] = 7,
				},
				[2] = {
					["CLSID"] = "DIS_PL-5EII",
					["num"] = 1,
				},
				[3] = {
					["CLSID"] = "DIS_SPJ_POD",
					["num"] = 4,
				},
				[4] = {
					["CLSID"] = "DIS_LS_6_500",
					["num"] = 5,
				},
				[5] = {
					["CLSID"] = "DIS_LS_6_500",
					["num"] = 3,
				},
				[6] = {
					["CLSID"] = "DIS_LD-10_DUAL_L",
					["num"] = 2,
				},
				[7] = {
					["CLSID"] = "DIS_LD-10_DUAL_R",
					["num"] = 6,
				},
			},
			["tasks"] = {
				[1] = tSEAD,
			},
		},
		{
			["name"] = "PL-5Ex2, 2*LD-10x2, GB-6-HEx2, SPJ",
			["pylons"] = {
				[1] = {
					["CLSID"] = "DIS_PL-5EII",
					["num"] = 7,
				},
				[2] = {
					["CLSID"] = "DIS_PL-5EII",
					["num"] = 1,
				},
				[3] = {
					["CLSID"] = "DIS_SPJ_POD",
					["num"] = 4,
				},
				[4] = {
					["CLSID"] = "DIS_GB6_HE",
					["num"] = 5,
				},
				[5] = {
					["CLSID"] = "DIS_GB6_HE",
					["num"] = 3,
				},
				[6] = {
					["CLSID"] = "DIS_LD-10_DUAL_L",
					["num"] = 2,
				},
				[7] = {
					["CLSID"] = "DIS_LD-10_DUAL_R",
					["num"] = 6,
				},
			},
			["tasks"] = {
				[1] = tSEAD,
			},
		},
		{
			["name"] = "PL-5Ex2, C-701 IRx2, 800L Tankx2, WMD7",
			["pylons"] = {
				[1] = {
					["CLSID"] = "DIS_PL-5EII",
					["num"] = 7,
				},
				[2] = {
					["CLSID"] = "DIS_PL-5EII",
					["num"] = 1,
				},
				[3] = {
					["CLSID"] = "DIS_WMD7",
					["num"] = 4,
				},
				[4] = {
					["CLSID"] = "DIS_TANK800",
					["num"] = 3,
				},
				[5] = {
					["CLSID"] = "DIS_TANK800",
					["num"] = 5,
				},
				[6] = {
					["CLSID"] = "DIS_C-701IR",
					["num"] = 2,
				},
				[7] = {
					["CLSID"] = "DIS_C-701IR",
					["num"] = 6,
				},
			},
			["tasks"] = {
				[1] = tCAS,
			},
		},
		{
			["name"] = "PL-5Ex2, C-701 CCDx2, 1100L Tankx2, WMD7",
			["pylons"] = {
				[1] = {
					["CLSID"] = "DIS_PL-5EII",
					["num"] = 7,
				},
				[2] = {
					["CLSID"] = "DIS_PL-5EII",
					["num"] = 1,
				},
				[3] = {
					["CLSID"] = "DIS_WMD7",
					["num"] = 4,
				},
				[4] = {
					["CLSID"] = "DIS_TANK1100",
					["num"] = 3,
				},
				[5] = {
					["CLSID"] = "DIS_TANK1100",
					["num"] = 5,
				},
				[6] = {
					["CLSID"] = "DIS_C-701T",
					["num"] = 2,
				},
				[7] = {
					["CLSID"] = "DIS_C-701T",
					["num"] = 6,
				},
			},
			["tasks"] = {
				[1] = tCAS,
			},
		},
		{
			["name"] = "PL-5Ex2, C-701 CCDx2, 800L Tankx2, WMD7",
			["pylons"] = {
				[1] = {
					["CLSID"] = "DIS_PL-5EII",
					["num"] = 7,
				},
				[2] = {
					["CLSID"] = "DIS_PL-5EII",
					["num"] = 1,
				},
				[3] = {
					["CLSID"] = "DIS_WMD7",
					["num"] = 4,
				},
				[4] = {
					["CLSID"] = "DIS_TANK800",
					["num"] = 3,
				},
				[5] = {
					["CLSID"] = "DIS_TANK800",
					["num"] = 5,
				},
				[6] = {
					["CLSID"] = "DIS_C-701T",
					["num"] = 2,
				},
				[7] = {
					["CLSID"] = "DIS_C-701T",
					["num"] = 6,
				},
			},
			["tasks"] = {
				[1] = tCAS,
			},
		},
		{
			["name"] = "PL-5Ex2, 2*GBU-12x2, 1100L Tank, WMD7",
			["pylons"] = {
				[1] = {
					["CLSID"] = "DIS_PL-5EII",
					["num"] = 7,
				},
				[2] = {
					["CLSID"] = "DIS_PL-5EII",
					["num"] = 1,
				},
				[3] = {
					["CLSID"] = "DIS_GBU_12_DUAL_GDJ_II19_R",
					["num"] = 6,
				},
				[4] = {
					["CLSID"] = "DIS_GBU_12_DUAL_GDJ_II19_L",
					["num"] = 2,
				},
				[5] = {
					["CLSID"] = "DIS_WMD7",
					["num"] = 4,
				},
				[6] = {
					["CLSID"] = "DIS_TANK1100",
					["num"] = 5,
				},
				[7] = {
					["CLSID"] = "DIS_TANK1100",
					["num"] = 3,
				},
			},
			["tasks"] = {
				[1] = tPinpntStrike,
			},
		},
		{
			["name"] = "PL-5Ex2, C-701 IRx2, 1100L Tank, WMD7",
			["pylons"] = {
				[1] = {
					["CLSID"] = "DIS_PL-5EII",
					["num"] = 7,
				},
				[2] = {
					["CLSID"] = "DIS_PL-5EII",
					["num"] = 1,
				},
				[3] = {
					["CLSID"] = "DIS_C-701IR",
					["num"] = 6,
				},
				[4] = {
					["CLSID"] = "DIS_C-701IR",
					["num"] = 2,
				},
				[5] = {
					["CLSID"] = "DIS_WMD7",
					["num"] = 4,
				},
				[6] = {
					["CLSID"] = "DIS_TANK1100",
					["num"] = 5,
				},
				[7] = {
					["CLSID"] = "DIS_TANK1100",
					["num"] = 3,
				},
			},
			["tasks"] = {
				[1] = tPinpntStrike,
			},
		},
		{
			["name"] = "PL-5Ex2, C-701 IRx2, 800L Tank, WMD7",
			["pylons"] = {
				[1] = {
					["CLSID"] = "DIS_PL-5EII",
					["num"] = 7,
				},
				[2] = {
					["CLSID"] = "DIS_PL-5EII",
					["num"] = 1,
				},
				[3] = {
					["CLSID"] = "DIS_C-701IR",
					["num"] = 6,
				},
				[4] = {
					["CLSID"] = "DIS_C-701IR",
					["num"] = 2,
				},
				[5] = {
					["CLSID"] = "DIS_WMD7",
					["num"] = 4,
				},
				[6] = {
					["CLSID"] = "DIS_TANK800",
					["num"] = 5,
				},
				[7] = {
					["CLSID"] = "DIS_TANK800",
					["num"] = 3,
				},
			},
			["tasks"] = {
				[1] = tPinpntStrike,
			},
		},
		{
			["name"] = "PL-5Ex2, C-701 CCDx2, 1100L Tank, WMD7",
			["pylons"] = {
				[1] = {
					["CLSID"] = "DIS_PL-5EII",
					["num"] = 7,
				},
				[2] = {
					["CLSID"] = "DIS_PL-5EII",
					["num"] = 1,
				},
				[3] = {
					["CLSID"] = "DIS_C-701T",
					["num"] = 6,
				},
				[4] = {
					["CLSID"] = "DIS_C-701T",
					["num"] = 2,
				},
				[5] = {
					["CLSID"] = "DIS_WMD7",
					["num"] = 4,
				},
				[6] = {
					["CLSID"] = "DIS_TANK1100",
					["num"] = 5,
				},
				[7] = {
					["CLSID"] = "DIS_TANK1100",
					["num"] = 3,
				},
			},
			["tasks"] = {
				[1] = tPinpntStrike,
			},
		},
		{
			["name"] = "PL-5Ex2, C-701 CCDx2, 800L Tank, WMD7",
			["pylons"] = {
				[1] = {
					["CLSID"] = "DIS_PL-5EII",
					["num"] = 7,
				},
				[2] = {
					["CLSID"] = "DIS_PL-5EII",
					["num"] = 1,
				},
				[3] = {
					["CLSID"] = "DIS_C-701T",
					["num"] = 6,
				},
				[4] = {
					["CLSID"] = "DIS_C-701T",
					["num"] = 2,
				},
				[5] = {
					["CLSID"] = "DIS_WMD7",
					["num"] = 4,
				},
				[6] = {
					["CLSID"] = "DIS_TANK800",
					["num"] = 5,
				},
				[7] = {
					["CLSID"] = "DIS_TANK800",
					["num"] = 3,
				},
			},
			["tasks"] = {
				[1] = tPinpntStrike,
			},
		},
		{
			["name"] = "PL-5Ex2, C-701 IRx2, LS-6x2, 800L Tank",
			["pylons"] = {
				[1] = {
					["CLSID"] = "DIS_PL-5EII",
					["num"] = 7,
				},
				[2] = {
					["CLSID"] = "DIS_PL-5EII",
					["num"] = 1,
				},
				[3] = {
					["CLSID"] = "DIS_C-701IR",
					["num"] = 6,
				},
				[4] = {
					["CLSID"] = "DIS_C-701T",
					["num"] = 2,
				},
				[5] = {
					["CLSID"] = "DIS_TANK800",
					["num"] = 4,
				},
				[6] = {
					["CLSID"] = "DIS_LS_6_500",
					["num"] = 5,
				},
				[7] = {
					["CLSID"] = "DIS_LS_6_500",
					["num"] = 3,
				},
			},
			["tasks"] = {
				[1] = tPinpntStrike,
			},
		},
		{
			["name"] = "PL-5Ex2, C-701 IR/CCD, GB-6-HEx2, 800L Tank",
			["pylons"] = {
				[1] = {
					["CLSID"] = "DIS_PL-5EII",
					["num"] = 7,
				},
				[2] = {
					["CLSID"] = "DIS_PL-5EII",
					["num"] = 1,
				},
				[3] = {
					["CLSID"] = "DIS_C-701IR",
					["num"] = 6,
				},
				[4] = {
					["CLSID"] = "DIS_C-701T",
					["num"] = 2,
				},
				[5] = {
					["CLSID"] = "DIS_TANK800",
					["num"] = 4,
				},
				[6] = {
					["CLSID"] = "DIS_GB6_HE",
					["num"] = 5,
				},
				[7] = {
					["CLSID"] = "DIS_GB6_HE",
					["num"] = 3,
				},
			},
			["tasks"] = {
				[1] = tPinpntStrike,
			},
		},
		{
			["name"] = "PL-5Ex2, C-701 IR/CCD, GB-6-SFWx2, 800L Tank",
			["pylons"] = {
				[1] = {
					["CLSID"] = "DIS_PL-5EII",
					["num"] = 7,
				},
				[2] = {
					["CLSID"] = "DIS_PL-5EII",
					["num"] = 1,
				},
				[3] = {
					["CLSID"] = "DIS_C-701IR",
					["num"] = 6,
				},
				[4] = {
					["CLSID"] = "DIS_C-701T",
					["num"] = 2,
				},
				[5] = {
					["CLSID"] = "DIS_TANK800",
					["num"] = 4,
				},
				[6] = {
					["CLSID"] = "DIS_GB6_TSP",
					["num"] = 5,
				},
				[7] = {
					["CLSID"] = "DIS_GB6_TSP",
					["num"] = 3,
				},
			},
			["tasks"] = {
				[1] = tPinpntStrike,
			},
		},
		{
			["name"] = "PL-5Ex2, WMD7, GB-6-SFWx2, 800L Tank, BRM1",
			["pylons"] = {
				[1] = {
					["CLSID"] = "DIS_PL-5EII",
					["num"] = 7,
				},
				[2] = {
					["CLSID"] = "DIS_PL-5EII",
					["num"] = 1,
				},
				[3] = {
					["CLSID"] = "DIS_TANK800",
					["num"] = 4,
				},
				[4] = {
					["CLSID"] = "DIS_WMD7",
					["num"] = 6,
				},
				[5] = {
					["CLSID"] = "DIS_GB6_TSP",
					["num"] = 5,
				},
				[6] = {
					["CLSID"] = "DIS_GB6_TSP",
					["num"] = 3,
				},
				[7] = {
					["CLSID"] = "DIS_BRM1_90",
					["num"] = 2,
				},
			},
			["tasks"] = {
				[1] = tCAS,
			},
		},
		{
			["name"] = "PL-5Ex2, WMD7, GB-6-SFWx2, 800L Tank, GBU-12",
			["pylons"] = {
				[1] = {
					["CLSID"] = "DIS_PL-5EII",
					["num"] = 7,
				},
				[2] = {
					["CLSID"] = "DIS_PL-5EII",
					["num"] = 1,
				},
				[3] = {
					["CLSID"] = "DIS_TANK800",
					["num"] = 4,
				},
				[4] = {
					["CLSID"] = "DIS_WMD7",
					["num"] = 6,
				},
				[5] = {
					["CLSID"] = "DIS_GB6_TSP",
					["num"] = 5,
				},
				[6] = {
					["CLSID"] = "DIS_GB6_TSP",
					["num"] = 3,
				},
				[7] = {
					["CLSID"] = "DIS_GBU_12",
					["num"] = 2,
				},
			},
			["tasks"] = {
				[1] = tCAS,
			},
		},
		{
			["name"] = "PL-5Ex2, 2*Mk-82SEx2, Mk-83x3",
			["pylons"] = {
				[1] = {
					["CLSID"] = "DIS_PL-5EII",
					["num"] = 7,
				},
				[2] = {
					["CLSID"] = "DIS_PL-5EII",
					["num"] = 1,
				},
				[3] = {
					["CLSID"] = "{7A44FF09-527C-4B7E-B42B-3F111CFE50FB}",
					["num"] = 5,
				},
				[4] = {
					["CLSID"] = "{7A44FF09-527C-4B7E-B42B-3F111CFE50FB}",
					["num"] = 3,
				},
				[5] = {
					["CLSID"] = "DIS_MK_82S_DUAL_GDJ_II19_L",
					["num"] = 2,
				},
				[6] = {
					["CLSID"] = "DIS_MK_82S_DUAL_GDJ_II19_R",
					["num"] = 6,
				},
				[7] = {
					["CLSID"] = "{7A44FF09-527C-4B7E-B42B-3F111CFE50FB}",
					["num"] = 4,
				},
			},
			["tasks"] = {
				[1] = tRwyAttack,
			},
		},
		{
			["name"] = "PL-5Ex2, Mk-84x3",
			["pylons"] = {
				[1] = {
					["CLSID"] = "DIS_PL-5EII",
					["num"] = 7,
				},
				[2] = {
					["CLSID"] = "DIS_PL-5EII",
					["num"] = 1,
				},
				[3] = {
					["CLSID"] = "{AB8B8299-F1CC-4359-89B5-2172E0CF4A5A}",
					["num"] = 5,
				},
				[4] = {
					["CLSID"] = "{AB8B8299-F1CC-4359-89B5-2172E0CF4A5A}",
					["num"] = 3,
				},
				[5] = {
					["CLSID"] = "{AB8B8299-F1CC-4359-89B5-2172E0CF4A5A}",
					["num"] = 4,
				},
			},
			["tasks"] = {
				[1] = tRwyAttack,
			},
		},
		{
			["name"] = "PL-5Ex2, 2*Mk5x2, 800L Tank",
			["pylons"] = {
				[1] = {
					["CLSID"] = "DIS_PL-5EII",
					["num"] = 7,
				},
				[2] = {
					["CLSID"] = "DIS_PL-5EII",
					["num"] = 1,
				},
				[3] = {
					["CLSID"] = "DIS_LAU68_MK5_DUAL_GDJ_II19_L",
					["num"] = 2,
				},
				[4] = {
					["CLSID"] = "DIS_LAU68_MK5_DUAL_GDJ_II19_R",
					["num"] = 6,
				},
				[5] = {
					["CLSID"] = "DIS_TANK800",
					["num"] = 4,
				},
			},
			["tasks"] = {
				[1] = tGndAttack,
			},
		},
		{
			["name"] = "PL-5Ex2, Unguided 90mmx2, 800L Tank",
			["pylons"] = {
				[1] = {
					["CLSID"] = "DIS_PL-5EII",
					["num"] = 7,
				},
				[2] = {
					["CLSID"] = "DIS_PL-5EII",
					["num"] = 1,
				},
				[3] = {
					["CLSID"] = "DIS_RKT_90_UG",
					["num"] = 2,
				},
				[4] = {
					["CLSID"] = "DIS_RKT_90_UG",
					["num"] = 6,
				},
				[5] = {
					["CLSID"] = "DIS_TANK800",
					["num"] = 4,
				},
			},
			["tasks"] = {
				[1] = tGndAttack,
			},
		},
		{
			["name"] = "PL-5Ex2, 2*Mk5x2, Mk-83x3",
			["pylons"] = {
				[1] = {
					["CLSID"] = "DIS_PL-5EII",
					["num"] = 7,
				},
				[2] = {
					["CLSID"] = "DIS_PL-5EII",
					["num"] = 1,
				},
				[3] = {
					["CLSID"] = "{7A44FF09-527C-4B7E-B42B-3F111CFE50FB}",
					["num"] = 3,
				},
				[4] = {
					["CLSID"] = "{7A44FF09-527C-4B7E-B42B-3F111CFE50FB}",
					["num"] = 5,
				},
				[5] = {
					["CLSID"] = "{7A44FF09-527C-4B7E-B42B-3F111CFE50FB}",
					["num"] = 4,
				},
				[6] = {
					["CLSID"] = "DIS_LAU68_MK5_DUAL_GDJ_II19_L",
					["num"] = 2,
				},
				[7] = {
					["CLSID"] = "DIS_LAU68_MK5_DUAL_GDJ_II19_R",
					["num"] = 6,
				},
			},
			["tasks"] = {
				[1] = tGndAttack,
			},
		},
		{
			["name"] = "PL-5Ex2, BRM1x2, 1100L Tank, WMD7",
			["pylons"] = {
				[1] = {
					["CLSID"] = "DIS_PL-5EII",
					["num"] = 7,
				},
				[2] = {
					["CLSID"] = "DIS_PL-5EII",
					["num"] = 1,
				},
				[3] = {
					["CLSID"] = "DIS_TANK1100",
					["num"] = 3,
				},
				[4] = {
					["CLSID"] = "DIS_TANK1100",
					["num"] = 5,
				},
				[5] = {
					["CLSID"] = "DIS_WMD7",
					["num"] = 4,
				},
				[6] = {
					["CLSID"] = "DIS_BRM1_90",
					["num"] = 2,
				},
				[7] = {
					["CLSID"] = "DIS_BRM1_90",
					["num"] = 6,
				},
			},
			["tasks"] = {
				[1] = tGndAttack,
			},
		},
		{
			["name"] = "PL-5Ex2, 2x1100L Tank",
			["pylons"] = {
				[1] = {
					["CLSID"] = "DIS_TANK1100",
					["num"] = 5,
				},
				[2] = {
					["CLSID"] = "DIS_TANK1100",
					["num"] = 3,
				},
				[3] = {
					["CLSID"] = "DIS_PL-5EII",
					["num"] = 1,
				},
				[4] = {
					["CLSID"] = "DIS_PL-5EII",
					["num"] = 7,
				},
			},
			["tasks"] = {
				[1] = tIntercept,
				[2] = tCAP,
				[3] = tFighterSweep,
			},
		},
		{
			["name"] = "PL-5Ex2, SD-10x2, 2x1100L Tank",
			["pylons"] = {
				[1] = {
					["CLSID"] = "DIS_TANK1100",
					["num"] = 5,
				},
				[2] = {
					["CLSID"] = "DIS_TANK1100",
					["num"] = 3,
				},
				[3] = {
					["CLSID"] = "DIS_PL-5EII",
					["num"] = 1,
				},
				[4] = {
					["CLSID"] = "DIS_PL-5EII",
					["num"] = 7,
				},
				[5] = {
					["CLSID"] = "DIS_SD-10",
					["num"] = 6,
				},
				[6] = {
					["CLSID"] = "DIS_SD-10",
					["num"] = 2,
				},
			},
			["tasks"] = {
				[1] = tIntercept,
				[2] = tCAP,
				[3] = tFighterSweep,
			},
		},
		{
			["name"] = "PL-5Ex2, 2*SD-10x2, 2x1100L Tank",
			["pylons"] = {
				[1] = {
					["CLSID"] = "DIS_TANK1100",
					["num"] = 5,
				},
				[2] = {
					["CLSID"] = "DIS_TANK1100",
					["num"] = 3,
				},
				[3] = {
					["CLSID"] = "DIS_PL-5EII",
					["num"] = 1,
				},
				[4] = {
					["CLSID"] = "DIS_PL-5EII",
					["num"] = 7,
				},
				[5] = {
					["CLSID"] = "DIS_SD-10_DUAL_R",
					["num"] = 6,
				},
				[6] = {
					["CLSID"] = "DIS_SD-10_DUAL_L",
					["num"] = 2,
				},
			},
			["tasks"] = {
				[1] = tIntercept,
				[2] = tCAP,
				[3] = tFighterSweep,
			},
		},
		{
			["name"] = "PL-5Ex2, 800L Tank",
			["pylons"] = {
				[1] = {
					["CLSID"] = "DIS_PL-5EII",
					["num"] = 1,
				},
				[2] = {
					["CLSID"] = "DIS_PL-5EII",
					["num"] = 7,
				},
				[3] = {
					["CLSID"] = "DIS_TANK800",
					["num"] = 4,
				},
			},
			["tasks"] = {
				[1] = tIntercept,
				[2] = tCAP,
				[3] = tFighterSweep,
			},
		},
		{
			["name"] = "PL-5Ex2, SD-10x2, 800L Tank",
			["pylons"] = {
				[1] = {
					["CLSID"] = "DIS_PL-5EII",
					["num"] = 1,
				},
				[2] = {
					["CLSID"] = "DIS_PL-5EII",
					["num"] = 7,
				},
				[3] = {
					["CLSID"] = "DIS_TANK800",
					["num"] = 4,
				},
				[4] = {
					["CLSID"] = "DIS_SD-10",
					["num"] = 6,
				},
				[5] = {
					["CLSID"] = "DIS_SD-10",
					["num"] = 2,
				},
			},
			["tasks"] = {
				[1] = tIntercept,
				[2] = tCAP,
				[3] = tFighterSweep,
			},
		},
		{
			["name"] = "PL-5Ex2, 2*SD-10x2, 800L Tank",
			["pylons"] = {
				[1] = {
					["CLSID"] = "DIS_PL-5EII",
					["num"] = 1,
				},
				[2] = {
					["CLSID"] = "DIS_PL-5EII",
					["num"] = 7,
				},
				[3] = {
					["CLSID"] = "DIS_TANK800",
					["num"] = 4,
				},
				[4] = {
					["CLSID"] = "DIS_SD-10_DUAL_R",
					["num"] = 6,
				},
				[5] = {
					["CLSID"] = "DIS_SD-10_DUAL_L",
					["num"] = 2,
				},
			},
			["tasks"] = {
				[1] = tIntercept,
				[2] = tCAP,
				[3] = tFighterSweep,
			},
		},
		{
			["name"] = "PL-5Ex2, SD-10x2, SPJ",
			["pylons"] = {
				[1] = {
					["CLSID"] = "DIS_PL-5EII",
					["num"] = 7,
				},
				[2] = {
					["CLSID"] = "DIS_PL-5EII",
					["num"] = 1,
				},
				[3] = {
					["CLSID"] = "DIS_SPJ_POD",
					["num"] = 4,
				},
				[4] = {
					["CLSID"] = "DIS_SD-10",
					["num"] = 6,
				},
				[5] = {
					["CLSID"] = "DIS_SD-10",
					["num"] = 2,
				},
			},
			["tasks"] = {
				[1] = tFighterSweep,
			},
		},
		{
			["name"] = "PL-5Ex2, SPJ",
			["pylons"] = {
				[1] = {
					["CLSID"] = "DIS_PL-5EII",
					["num"] = 7,
				},
				[2] = {
					["CLSID"] = "DIS_PL-5EII",
					["num"] = 1,
				},
				[3] = {
					["CLSID"] = "DIS_SPJ_POD",
					["num"] = 4,
				},
			},
			["tasks"] = {
				[1] = tFighterSweep,
			},
		},
		{
			["name"] = "PL-5Ex2, 2*SD-10x2, SPJ",
			["pylons"] = {
				[1] = {
					["CLSID"] = "DIS_PL-5EII",
					["num"] = 7,
				},
				[2] = {
					["CLSID"] = "DIS_PL-5EII",
					["num"] = 1,
				},
				[3] = {
					["CLSID"] = "DIS_SPJ_POD",
					["num"] = 4,
				},
				[4] = {
					["CLSID"] = "DIS_SD-10_DUAL_R",
					["num"] = 6,
				},
				[5] = {
					["CLSID"] = "DIS_SD-10_DUAL_L",
					["num"] = 2,
				},
			},
			["tasks"] = {
				[1] = tFighterSweep,
			},
		},
		{
			["name"] = "PL-5Ex2",
			["pylons"] = {
				[1] = {
					["CLSID"] = "DIS_PL-5EII",
					["num"] = 7,
				},
				[2] = {
					["CLSID"] = "DIS_PL-5EII",
					["num"] = 1,
				},
			},
			["tasks"] = {
				[1] = tFighterSweep,
			},
		},
		{
			["name"] = "PL-5Ex2, SD-10x2",
			["pylons"] = {
				[1] = {
					["CLSID"] = "DIS_PL-5EII",
					["num"] = 7,
				},
				[2] = {
					["CLSID"] = "DIS_PL-5EII",
					["num"] = 1,
				},
				[3] = {
					["CLSID"] = "DIS_SD-10",
					["num"] = 6,
				},
				[4] = {
					["CLSID"] = "DIS_SD-10",
					["num"] = 2,
				},
			},
			["tasks"] = {
				[1] = tFighterSweep,
			},
		},
		{
			["name"] = "PL-5Ex2, 2*SD-10",
			["pylons"] = {
				[1] = {
					["CLSID"] = "DIS_PL-5EII",
					["num"] = 7,
				},
				[2] = {
					["CLSID"] = "DIS_PL-5EII",
					["num"] = 1,
				},
				[3] = {
					["CLSID"] = "DIS_SD-10_DUAL_R",
					["num"] = 6,
				},
				[4] = {
					["CLSID"] = "DIS_SD-10_DUAL_L",
					["num"] = 2,
				},
			},
			["tasks"] = {
				[1] = tFighterSweep,
			},
		},
        {
            ["name"] = "PL-5Ex2, SD-10x2, SPJ, 1100L Tankx2",
            ["pylons"] = {
                [1] = {
                    ["CLSID"] = "DIS_TANK1100",
                    ["num"] = 5,
                },
                [2] = {
                    ["CLSID"] = "DIS_TANK1100",
                    ["num"] = 3,
                },
                [3] = {
                    ["CLSID"] = "DIS_SPJ_POD",
                    ["num"] = 4,
                },
                [4] = {
                    ["CLSID"] = "DIS_PL-5EII",
                    ["num"] = 1,
                },
                [5] = {
                    ["CLSID"] = "DIS_PL-5EII",
                    ["num"] = 7,
                },
                [6] = {
                    ["CLSID"] = "DIS_SD-10",
                    ["num"] = 6,
                },
                [7] = {
                    ["CLSID"] = "DIS_SD-10",
                    ["num"] = 2,
                },
            },
            ["tasks"] = {
                [1] = tIntercept,
                [2] = tCAP,
                [3] = tFighterSweep,
            },
        },
        {
            ["name"] = "PL-5Ex2, 2*SD-10x2, 1100L Tankx2, 800L Tank",
            ["pylons"] = {
                [1] = {
                    ["CLSID"] = "DIS_TANK1100",
                    ["num"] = 5,
                },
                [2] = {
                    ["CLSID"] = "DIS_TANK1100",
                    ["num"] = 3,
                },
                [3] = {
                    ["CLSID"] = "DIS_TANK800",
                    ["num"] = 4,
                },
                [4] = {
                    ["CLSID"] = "DIS_PL-5EII",
                    ["num"] = 1,
                },
                [5] = {
                    ["CLSID"] = "DIS_PL-5EII",
                    ["num"] = 7,
                },
                [6] = {
                    ["CLSID"] = "DIS_SD-10_DUAL_R",
                    ["num"] = 6,
                },
                [7] = {
                    ["CLSID"] = "DIS_SD-10_DUAL_L",
                    ["num"] = 2,
                },
            },
            ["tasks"] = {
                [1] = tIntercept,
                [2] = tCAP,
                [3] = tFighterSweep,
            },
        },
        {
            ["name"] = "PL-5Ex2, SD-10x2, 1100L Tankx2, 800L Tank",
            ["pylons"] = {
                [1] = {
                    ["CLSID"] = "DIS_TANK1100",
                    ["num"] = 5,
                },
                [2] = {
                    ["CLSID"] = "DIS_TANK1100",
                    ["num"] = 3,
                },
                [3] = {
                    ["CLSID"] = "DIS_TANK800",
                    ["num"] = 4,
                },
                [4] = {
                    ["CLSID"] = "DIS_PL-5EII",
                    ["num"] = 1,
                },
                [5] = {
                    ["CLSID"] = "DIS_PL-5EII",
                    ["num"] = 7,
                },
                [6] = {
                    ["CLSID"] = "DIS_SD-10",
                    ["num"] = 6,
                },
                [7] = {
                    ["CLSID"] = "DIS_SD-10",
                    ["num"] = 2,
                },
            },
            ["tasks"] = {
                [1] = tCAP,
                [2] = tEscort,
            },
        },
        {
            ["name"] = "PL-5Ex2, GBU-16x2, BRM1x2, WMD7",
            ["pylons"] = {
                [1] = {
                    ["CLSID"] = "DIS_BRM1_90",
                    ["num"] = 2,
                },
                [2] = {
                    ["CLSID"] = "DIS_BRM1_90",
                    ["num"] = 6,
                },
                [3] = {
                    ["CLSID"] = "DIS_WMD7",
                    ["num"] = 4,
                },
                [4] = {
                    ["CLSID"] = "DIS_PL-5EII",
                    ["num"] = 1,
                },
                [5] = {
                    ["CLSID"] = "DIS_PL-5EII",
                    ["num"] = 7,
                },
                [6] = {
                    ["CLSID"] = "DIS_GBU_16",
                    ["num"] = 3,
                },
                [7] = {
                    ["CLSID"] = "DIS_GBU_16",
                    ["num"] = 5,
                },
            },
            ["tasks"] = {
                [1] = tAFAC,
                [2] = tCAS,
                [3] = tGndAttack,
            },
        },
        {
            ["name"] = "PL-5Ex2, WMD7",
            ["pylons"] = {
                [1] = {
                    ["CLSID"] = "DIS_WMD7",
                    ["num"] = 4,
                },
                [2] = {
                    ["CLSID"] = "DIS_PL-5EII",
                    ["num"] = 1,
                },
                [3] = {
                    ["CLSID"] = "DIS_PL-5EII",
                    ["num"] = 7,
                },
            },
            ["tasks"] = {
                [1] = tRecon,
            },
        },
        {
            ["name"] = "PL-5Ex2, 2*LD-10, GB-6x2, 2*SD-10, SPJ",
            ["pylons"] = {
                [1] = {
                    ["CLSID"] = "DIS_PL-5EII",
                    ["num"] = 7,
                },
                [2] = {
                    ["CLSID"] = "DIS_PL-5EII",
                    ["num"] = 1,
                },
                [3] = {
                    ["CLSID"] = "DIS_LD-10_DUAL_L",
                    ["num"] = 2,
                },
                [4] = {
                    ["CLSID"] = "DIS_SD-10_DUAL_R",
                    ["num"] = 6,
                },
                [5] = {
                    ["CLSID"] = "DIS_GB6",
                    ["num"] = 5,
                },
                [6] = {
                    ["CLSID"] = "DIS_GB6",
                    ["num"] = 3,
                },
                [7] = {
                    ["CLSID"] = "DIS_SPJ_POD",
                    ["num"] = 4,
                },
            },
            ["tasks"] = {
                [1] = tSEAD,
            },
        },
        {
            ["name"] = "PL-5Ex2, C-701 CCDx2, SPJ",
            ["pylons"] = {
                [1] = {
                    ["CLSID"] = "DIS_PL-5EII",
                    ["num"] = 7,
                },
                [2] = {
                    ["CLSID"] = "DIS_PL-5EII",
                    ["num"] = 1,
                },
                [5] = {
                    ["CLSID"] = "DIS_C-701T",
                    ["num"] = 2,
                },
                [6] = {
                    ["CLSID"] = "DIS_C-701T",
                    ["num"] = 6,
                },
                [7] = {
                    ["CLSID"] = "DIS_SPJ_POD",
                    ["num"] = 4,
                },
            },
            ["tasks"] = {
                [1] = tSEAD,
            },
        },
        {
            ["name"] = "PL-5Ex2, 2*LD-10, CM802AKGx2, 2*SD-10, DL",
            ["pylons"] = {
                [1] = {
                    ["CLSID"] = "DIS_PL-5EII",
                    ["num"] = 7,
                },
                [2] = {
                    ["CLSID"] = "DIS_PL-5EII",
                    ["num"] = 1,
                },
                [3] = {
                    ["CLSID"] = "DIS_LD-10_DUAL_L",
                    ["num"] = 2,
                },
                [4] = {
                    ["CLSID"] = "DIS_SD-10_DUAL_R",
                    ["num"] = 6,
                },
                [5] = {
                    ["CLSID"] = "DIS_CM-802AKG",
                    ["num"] = 5,
                },
                [6] = {
                    ["CLSID"] = "DIS_CM-802AKG",
                    ["num"] = 3,
                },
                [7] = {
                    ["CLSID"] = "DIS_AKG_DLPOD",
                    ["num"] = 4,
                },
            },
            ["tasks"] = {
                [1] = tSEAD,
            },
        },
        {
            ["name"] = "PL-5Ex2, 2*MK-82x2, MK-83x2, MK-84",
            ["pylons"] = {
                [1] = {
                    ["CLSID"] = "{AB8B8299-F1CC-4359-89B5-2172E0CF4A5A}",
                    ["num"] = 4,
                },
                [2] = {
                    ["CLSID"] = "DIS_MK_82_DUAL_GDJ_II19_R",
                    ["num"] = 6,
                },
                [3] = {
                    ["CLSID"] = "DIS_MK_82_DUAL_GDJ_II19_L",
                    ["num"] = 2,
                },
                [4] = {
                    ["CLSID"] = "DIS_PL-5EII",
                    ["num"] = 7,
                },
                [5] = {
                    ["CLSID"] = "DIS_PL-5EII",
                    ["num"] = 1,
                },
                [6] = {
                    ["CLSID"] = "{7A44FF09-527C-4B7E-B42B-3F111CFE50FB}",
                    ["num"] = 5,
                },
                [7] = {
                    ["CLSID"] = "{7A44FF09-527C-4B7E-B42B-3F111CFE50FB}",
                    ["num"] = 3,
                },
            },
            ["tasks"] = {
                [1] = tCAS,
                [2] = tGndAttack,
            },
        },
        {
            ["name"] = "PL-5Ex2, LS-6x2, GB-6x2, 800L Tank",
            ["pylons"] = {
                [1] = {
                    ["CLSID"] = "DIS_TANK800",
                    ["num"] = 4,
                },
                [2] = {
                    ["CLSID"] = "DIS_LS_6_500",
                    ["num"] = 6,
                },
                [3] = {
                    ["CLSID"] = "DIS_LS_6_500",
                    ["num"] = 2,
                },
                [4] = {
                    ["CLSID"] = "DIS_PL-5EII",
                    ["num"] = 7,
                },
                [5] = {
                    ["CLSID"] = "DIS_PL-5EII",
                    ["num"] = 1,
                },
                [6] = {
                    ["CLSID"] = "DIS_GB6",
                    ["num"] = 5,
                },
                [7] = {
                    ["CLSID"] = "DIS_GB6",
                    ["num"] = 3,
                },
            },
            ["tasks"] = {
                [1] = tPinpntStrike,
                [2] = tRwyAttack,
            },
        },
        {
            ["name"] = "PL-5Ex2, 2*GBU-12x2, LS-6x2, WMD7",
            ["pylons"] = {
                [1] = {
                    ["CLSID"] = "DIS_WMD7",
                    ["num"] = 4,
                },
                [2] = {
                    ["CLSID"] = "DIS_GBU_12_DUAL_GDJ_II19_R",
                    ["num"] = 6,
                },
                [3] = {
                    ["CLSID"] = "DIS_GBU_12_DUAL_GDJ_II19_L",
                    ["num"] = 2,
                },
                [4] = {
                    ["CLSID"] = "DIS_PL-5EII",
                    ["num"] = 7,
                },
                [5] = {
                    ["CLSID"] = "DIS_PL-5EII",
                    ["num"] = 1,
                },
                [6] = {
                    ["CLSID"] = "DIS_LS_6_500",
                    ["num"] = 5,
                },
                [7] = {
                    ["CLSID"] = "DIS_LS_6_500",
                    ["num"] = 3,
                },
            },
            ["tasks"] = {
                [1] = tPinpntStrike,
            },
        },
        {
            ["name"] = "PL-5Ex2, 2*GBU-12x2, GB-6x2, WMD7",
            ["pylons"] = {
                [1] = {
                    ["CLSID"] = "DIS_WMD7",
                    ["num"] = 4,
                },
                [2] = {
                    ["CLSID"] = "DIS_GBU_12_DUAL_GDJ_II19_R",
                    ["num"] = 6,
                },
                [3] = {
                    ["CLSID"] = "DIS_GBU_12_DUAL_GDJ_II19_L",
                    ["num"] = 2,
                },
                [4] = {
                    ["CLSID"] = "DIS_PL-5EII",
                    ["num"] = 7,
                },
                [5] = {
                    ["CLSID"] = "DIS_PL-5EII",
                    ["num"] = 1,
                },
                [6] = {
                    ["CLSID"] = "DIS_GB6",
                    ["num"] = 5,
                },
                [7] = {
                    ["CLSID"] = "DIS_GB6",
                    ["num"] = 3,
                },
            },
            ["tasks"] = {
                [1] = tPinpntStrike,
            },
        },
        {
            ["name"] = "PL-5Ex2, 2*Type-200Ax2",
            ["pylons"] = {
                [1] = {
                    ["CLSID"] = "DIS_PL-5EII",
                    ["num"] = 7,
                },
                [2] = {
                    ["CLSID"] = "DIS_PL-5EII",
                    ["num"] = 1,
                },
                [3] = {
                    ["CLSID"] = "DIS_TYPE200_DUAL_L",
                    ["num"] = 2,
                },
                [4] = {
                    ["CLSID"] = "DIS_TYPE200_DUAL_R",
                    ["num"] = 6,
                },
            },
            ["tasks"] = {
                [1] = tRwyAttack,
            },
        },
        {
            ["name"] = "PL-5Ex2, Type-200Ax2",
            ["pylons"] = {
                [1] = {
                    ["CLSID"] = "DIS_PL-5EII",
                    ["num"] = 7,
                },
                [2] = {
                    ["CLSID"] = "DIS_PL-5EII",
                    ["num"] = 1,
                },
                [3] = {
                    ["CLSID"] = "DIS_TYPE200",
                    ["num"] = 2,
                },
                [4] = {
                    ["CLSID"] = "DIS_TYPE200",
                    ["num"] = 6,
                },
            },
            ["tasks"] = {
                [1] = tRwyAttack,
            },
        },
        {
            ["name"] = "PL-5Ex2, 2*LS6-250x2, 800L Tankx2, WMD7",
            ["pylons"] = {
                [1] = {
                    ["CLSID"] = "DIS_PL-5EII",
                    ["num"] = 7,
                },
                [2] = {
                    ["CLSID"] = "DIS_PL-5EII",
                    ["num"] = 1,
                },
                [3] = {
                    ["CLSID"] = "DIS_WMD7",
                    ["num"] = 4,
                },
                [4] = {
                    ["CLSID"] = "DIS_TANK800",
                    ["num"] = 3,
                },
                [5] = {
                    ["CLSID"] = "DIS_TANK800",
                    ["num"] = 5,
                },
                [6] = {
                    ["CLSID"] = "DIS_LS_6_250_DUAL_L",
                    ["num"] = 2,
                },
                [7] = {
                    ["CLSID"] = "DIS_LS_6_250_DUAL_R",
                    ["num"] = 6,
                },
            },
            ["tasks"] = {
                [1] = tGndAttack,
            },
        },
        {
            ["name"] = "PL-5Ex2, 2*LS6-250x2, 800L Tank, 1100L Tankx2",
            ["pylons"] = {
                [1] = {
                    ["CLSID"] = "DIS_PL-5EII",
                    ["num"] = 7,
                },
                [2] = {
                    ["CLSID"] = "DIS_PL-5EII",
                    ["num"] = 1,
                },
                [3] = {
                    ["CLSID"] = "DIS_TANK800",
                    ["num"] = 4,
                },
                [4] = {
                    ["CLSID"] = "DIS_TANK1100",
                    ["num"] = 3,
                },
                [5] = {
                    ["CLSID"] = "DIS_TANK1100",
                    ["num"] = 5,
                },
                [6] = {
                    ["CLSID"] = "DIS_LS_6_250_DUAL_L",
                    ["num"] = 2,
                },
                [7] = {
                    ["CLSID"] = "DIS_LS_6_250_DUAL_R",
                    ["num"] = 6,
                },
            },
            ["tasks"] = {
                [1] = tGndAttack,
            },
        },
        {
            ["name"] = "PL-5Ex2, 2*LS6-100x2, 1100L Tankx2, WMD7",
            ["pylons"] = {
                [1] = {
                    ["CLSID"] = "DIS_PL-5EII",
                    ["num"] = 7,
                },
                [2] = {
                    ["CLSID"] = "DIS_PL-5EII",
                    ["num"] = 1,
                },
                [3] = {
                    ["CLSID"] = "DIS_WMD7",
                    ["num"] = 4,
                },
                [4] = {
                    ["CLSID"] = "DIS_TANK1100",
                    ["num"] = 5,
                },
                [5] = {
                    ["CLSID"] = "DIS_TANK1100",
                    ["num"] = 3,
                },
                [6] = {
                    ["CLSID"] = "DIS_LS_6_100_DUAL_L",
                    ["num"] = 2,
                },
                [7] = {
                    ["CLSID"] = "DIS_LS_6_100_DUAL_R",
                    ["num"] = 6,
                },
            },
            ["tasks"] = {
                [1] = tCAS,
            },
        },
        {
            ["name"] = "PL-5Ex2, 2*LS6-100x2, 800L Tankx2, WMD7",
            ["pylons"] = {
                [1] = {
                    ["CLSID"] = "DIS_PL-5EII",
                    ["num"] = 7,
                },
                [2] = {
                    ["CLSID"] = "DIS_PL-5EII",
                    ["num"] = 1,
                },
                [3] = {
                    ["CLSID"] = "DIS_WMD7",
                    ["num"] = 4,
                },
                [4] = {
                    ["CLSID"] = "DIS_TANK800",
                    ["num"] = 5,
                },
                [5] = {
                    ["CLSID"] = "DIS_TANK800",
                    ["num"] = 3,
                },
                [6] = {
                    ["CLSID"] = "DIS_LS_6_100_DUAL_L",
                    ["num"] = 2,
                },
                [7] = {
                    ["CLSID"] = "DIS_LS_6_100_DUAL_R",
                    ["num"] = 6,
                },
            },
            ["tasks"] = {
                [1] = tCAS,
            },
        },
    },
    ["unitType"] = "JF-17",
}
return unitPayloads
