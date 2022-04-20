--------- Missiles
missile = {}
-- BVRAAM 	= 11 for PL-11A SARH, 12 for PL-12 ARH, 15 for PL-15 ARH
-- IRAAM 	= 8A for PL-8A IRH, 8B for PL-8B  IRH, 10 for PL-10E IRH
-- GuidedBomb 	= 6A for GB-6A Cruise Missile, 6 for GB-6 Guided Bomb
missile['BVRAAM'] 	= '12'
missile['IRAAM'] 	= '10'
--missile['GuidedBomb'] 	= '6A'


dofile(current_mod_path .. '/Entries/Loadouts/missile_config.lua')