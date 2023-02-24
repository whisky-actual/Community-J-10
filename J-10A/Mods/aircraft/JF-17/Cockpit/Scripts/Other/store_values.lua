is_entry = false
dofile(LockOn_Options.script_path .. "../../J-10A/config.lua")
--dofile(current_mod_path..'/J-10A/Config.lua')

-- set SRAAM, MRAAM, ASM name
local missile_type_name = {
	["11"]  		= "PL-11A SARH AAM",
	["12"]  		= "PL-12 Active Rdr AAM",
	["15"]  		= "PL-15 Active Rdr AAM",
	["8A"]  		= "PL-8A IR AAM",
	["8B"]  		= "PL-8B IR AAM",
	["10"]  		= "PL-10E IR AAM",
	["83K"]  		= "YJ-83K Anti-ship Missile",
	["91A"]  		= "YJ-91A Anti-ship Missile",
	["83KG"]  		= "YJ-83KG Anti-ship Missile",
	}
local bvr_missile_name  = missile_type_name[missile['BVRAAM']]
local ir_missile_name  = missile_type_name[missile['IRAAM']]
local asm_missile_name  = missile_type_name[missile['ASM']]

-- for kneeboard
loadout_names = {

    --Empty--
    [""]                                        = "-EMPTY-",

    --FUEL TANKS--
    ["DIS_TANK800"]                            = "FUEL TANK - 800L Tank + Full Internal Tank",
    ["DIS_TANK800_EMPTY"]                      = "FUEL TANK - 800L Tank Empty + Full Internal Tank",
    ["DIS_INTERNAL_TANK"]                      = "FUEL TANK - Full Internal Tank",
    ["DIS_TANK1100"]                     	   = "FUEL TANK - 1100L Tank",
    ["DIS_TANK1100_EMPTY"]                     = "FUEL TANK - 1100L Tank Empty",
	
	--MISSILE--

    --AIR TO AIR--
    ["DIS_PL-5EII"]                             = ir_missile_name,
    ["DIS_SD-10"]                     			= bvr_missile_name,
    ["DIS_SD-10_DUAL_L"]                     	= bvr_missile_name.. ' x 2',
    ["DIS_SD-10_DUAL_R"]                     	= bvr_missile_name.. ' x 2',
	
    --AIR TO GROUND MISSILE--
    ["DIS_C-802AK"]                             = asm_missile_name,
    ["DIS_LD-10"]                             	= "YJ-91 Anti-radiation Missile",
    ["DIS_CM-802AKG"]                           = "KD-88 Cruise Missile",

    --ROCKETS
    ["DIS_BRM1_90"]  = "ROCKETS - 16 x BRM-1 90mm Laser Guided Rocket",
    ["DIS_RKT_90_UG"]  = "ROCKETS - 16 x UG_90MM 90mm UnGuided Rocket",


    --UNGUIDED BOMBS--
    ["J10_BOMB_250_3"]                              = "BOMB - 250-3 - 250 KG GP.",
    ["DIS_MER2_250_3_L"]                            = "BOMB - 250-3 - MER 2 x 250 KG GP.",
    ["DIS_MER2_250_3_R"]                            = "BOMB - 250-3 - MER 2 x 250 KG GP.",
    ["DIS_MK_20"]                             		= "CLUSTER BOMB - 250 KG SFW.",
    ["DIS_TYPE200"]                             	= "BOMB - Type 200 - 200 KG Anti-Runway.",
    ["DIS_TYPE200_DUAL_L"]                          = "BOMB - Type 200 - MER 2 x 200 KG Anti-Runway.",
    ["DIS_TYPE200_DUAL_R"]                          = "BOMB - Type 200 - MER 2 x 200 KG Anti-Runway.",
    
    --GUIDED BOMBS--
    ["DIS_LS_6_500"]                              	= "GUIDED BOMB - LS-6-500 - 500 KG GPS Guided.",
    ["DIS_LS_6_250"]                              	= "GUIDED BOMB - LS-6-250 - 250 KG GPS Guided.",
    ["DIS_LS_6_250_DUAL_L"]                         = "GUIDED BOMB - LS-6-250 - MER 2 x 250 KG GPS Guided.",
    ["DIS_LS_6_100"]                              	= "GUIDED BOMB - LS-6-100 - 100 KG Laser and GPS Guided.",
    ["DIS_LS_6_100_DUAL_L"]                         = "GUIDED BOMB - LS-6-100 - MER 2 x 100 KG Laser and GPS Guided.",
	
    ["DIS_GB6"]                              		= "GUIDED BOMB - GB6 - 500 KG CLUSTER GPS Guided.",
    ["DIS_GB6_TSP"]                              	= "GUIDED BOMB - GB6 - 500 KG SFW GPS Guided.",
    ["DIS_GB6_HE"]                              	= "GUIDED BOMB - GB6 - 500 KG GPS Guided.",
	
    ["DIS_GBU_10"]                              	= "GUIDED BOMB - JG500 - 500 KG Laser Guided.",
    ["DIS_GBU_16"]                              	= "GUIDED BOMB - JG500B - 500 KG Laser Guided.",
	
	





    --SMOKE PODS--
    ["DIS_SMOKE_GENERATOR_R"]  = "SMOKE POD - RED",
    ["DIS_SMOKE_GENERATOR_G"]  = "SMOKE POD - GREEN",
    ["DIS_SMOKE_GENERATOR_B"]  = "SMOKE POD - BLUE",
    ["DIS_SMOKE_GENERATOR_W"]  = "SMOKE POD - WHITE",
    ["DIS_SMOKE_GENERATOR_Y"]  = "SMOKE POD - YELLOW",
    ["DIS_SMOKE_GENERATOR_O"]  = "SMOKE POD - ORANGE",

    --TARGETING POD--
    ["DIS_WMD7"]  = "POD - WMD7 - TARGETING POD",
    ["DIS_AKG_DLPOD"]  = "POD - DATALINK - DATALINK POD",
    ["DIS_SPJ_POD"]  = "POD - SPJ - JAMMING POD",

}


