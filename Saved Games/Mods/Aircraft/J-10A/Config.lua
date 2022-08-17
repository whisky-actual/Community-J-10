-- Missiles
missile = {}
-- BVRAAM 	= 11 for PL-11A SARH, 12 for PL-12 ARH, 15 for PL-15 ARH
-- IRAAM 	= 8A for PL-8A IRH, 8B for PL-8B  IRH, 10 for PL-10E IRH
-- ASM 		= 83K for YJ-83K ASM, 91A for YJ-91A ASM, 83KG for YJ-83KG ASM
missile['BVRAAM'] 	= '12'
missile['IRAAM'] 	= '8B'
missile['ASM'] 		= '91A'

dofile(current_mod_path .. '/Loadouts/missile_config.lua')