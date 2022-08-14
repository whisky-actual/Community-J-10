local DbOption  = require('Options.DbOption')
local oms       = require('optionsModsScripts')



function script_path() 
    -- remember to strip off the starting @ 
	local luafileloc = debug.getinfo(2, "S").source:sub(2)
	local ti, tj = string.find(luafileloc, "Options")
	local temploc = string.sub(luafileloc, 1, ti-1)
    return temploc
end 

-- find module path
local relativeloc = script_path()
modulelocation = lfs.currentdir().."\\"..relativeloc

local tblCPLocalList = oms.getTblCPLocalList(modulelocation)




return {
		useit	 				= DbOption.new():setValue(true),
		dontuseit 				= DbOption.new():setValue(false),
		JAS39GripenAG_enabled 	= DbOption.new():setValue(true):checkbox(),
		JAS39GripenBVR_enabled 	= DbOption.new():setValue(true):checkbox(),
		JAS39GripenWVR_enabled 	= DbOption.new():setValue(true):checkbox(),
		}