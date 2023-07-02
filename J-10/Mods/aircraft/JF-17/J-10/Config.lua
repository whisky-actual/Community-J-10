-- Missiles configuration file
missile = {}
--[[
---------------------------------------------------------------------------
 BVRAAM
---------------------------------------------------------------------------
 '11' for PL-11A SARH
 '12' for PL-12 ARH
 '15' for PL-15 ARH
 '15E' for PL-15E ARH
 --------------------------------------------------------------------------
 IRAAM
---------------------------------------------------------------------------
 '8A' for PL-8A IRH
 '8B' for PL-8B  IRH
 '10' for PL-10E IRH
---------------------------------------------------------------------------
  ASM
---------------------------------------------------------------------------
 '83K'  for YJ-83K ASM
 '91A'  for YJ-91A ASM
 '83KG' for YJ-83KG ASM
]]--
---------------------------------------------------------------------------
 -- Select one value per missle type. Replace values in the quotation marks
---------------------------------------------------------------------------
missile['BVRAAM SD-10'] 	= '15'
missile['BVRAAM PL-12'] 	= '12'
missile['IRAAM'] 	= '8B'
missile['ASM'] 		= '83K'
------------------DO NOT CHANGE ANYTHING AFTER THIS LINE-------------------
	dofile(current_mod_path .. '/J-10/Loadouts/missile_config.lua')