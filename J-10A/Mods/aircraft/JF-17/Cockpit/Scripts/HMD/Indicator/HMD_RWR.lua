--dofile(LockOn_Options.script_path.."MFD/Indicator/MFD_pages_id.lua")
dofile(LockOn_Options.script_path.."HMD/Indicator/HMD_def.lua")

--dofile(LockOn_Options.script_path.."MFD/Indicator/PAGES/TSD-Compass.lua")

local gettext = require("i_18n")
_ = gettext.translate

TYPEPlane = 1
TYPESearchRadar = 2
TYPEEWR = 3
TYPESEA = 4
TYPEMissile = 5
MaxThreats          = 20
local green_material = MakeMaterial(nil,{0, 220, 0, 255})

local RS = 0.01
local contact_scale = 0.05
 

--AddRWRElement(add_text("RWR Standby"  , 0,0 , MFD_RWR_OFF))






----------------------------------------------------------------------------

local x_size = 0.1
local y_size = 0.1
local wmul = 0.88 

function RWR_SYMBOL(pparent)

	OBJ_BASE 			= CreateElement "ceSimple"
	OBJ_BASE.init_pos	= {0.00,0.06}
	OBJ_BASE.name		= create_guid_string()
	OBJ_BASE.parent_element = pparent.name
	OBJ_BASE.element_params  	= {"RWR_CONTACT" .. i .. "AZIMUTH_HUD", }
	OBJ_BASE.controllers     	= {{"rotate_using_parameter" ,0,-1}, }
	AddHMDElement(OBJ_BASE)
	
	
local RWR_OBJ_STR 	= add_text_HMD_param(0.0, 0.0, "UNIT_TYPE_SYM","HUD_BRIGHTNESS", "%s", OBJ_BASE, HMD_strdefs_digit, nil)
--[[

	local 	RWR_OBJ_STR	 					= CreateElement "ceStringPoly"
			RWR_OBJ_STR.name			  	= create_guid_string()
			RWR_OBJ_STR.material        	= Gripen_Font_green
			RWR_OBJ_STR.stringdefs      	= HMD_strdefs_text
			RWR_OBJ_STR.alignment       	= "CenterCenter"
			RWR_OBJ_STR.formats		  		= {"%s"}
			RWR_OBJ_STR.element_params  	= { "RWR_CONTACT" .. i .. "UNIT_TYPE_SYM",
												"RWR_CONTACT" .. i .. "AZIMUTH_HUD",
												"HUD_BRIGHTNESS"
											  }
			RWR_OBJ_STR.controllers     	= {	
												{"text_using_parameter"    		,0,0},
												-- {"rotate_using_parameter"  		,1,-1},
												{"opacity_using_parameter"		, 2}
											  }		
			RWR_OBJ_STR.parent_element 		= OBJ_BASE.name]]
			AddRWRElement(RWR_OBJ_STR) 
			
		--[[	
	local 	RWR_OBJ_NUM	 					= CreateElement "ceStringPoly"
			RWR_OBJ_NUM.name			  	= create_guid_string()
			RWR_OBJ_NUM.material        	= Gripen_Font_green
			RWR_OBJ_NUM.stringdefs      	= HMD_strdefs_text
			RWR_OBJ_NUM.alignment       	= "CenterCenter"
			RWR_OBJ_NUM.formats		  	= {"%.0f"}
			RWR_OBJ_NUM.element_params  = { "RWR_CONTACT" .. i .. "UNIT_TYPE_SYN",
											"RWR_CONTACT" .. i .. "AZIMUTH_HUD",
											"HUD_BRIGHTNESS"
										  }
			RWR_OBJ_NUM.controllers     = {	
											{"text_using_parameter"    ,0,0},
											-- {"rotate_using_parameter"  ,1,-1},
											{"opacity_using_parameter" , 2}
										  }		
			RWR_OBJ_NUM.parent_element 		= OBJ_BASE.name
			AddRWRElement(RWR_OBJ_NUM)]]
			--[[
	local 	RWR_priority	 				= CreateElement "ceStringPoly"
			RWR_priority.name			  	= create_guid_string()
			RWR_priority.init_pos		  	= {0.0,0.0,0} 
			RWR_priority.init_rot		  	= {0.0,0.0,0.0}
			RWR_priority.material    		= green_material	
			RWR_priority.vertices	   		= {	{-x_size 		,0				},
												{0 				, y_size 		},
												{0				, y_size * wmul	},
												{-x_size * wmul	,0				},	
												
												{ x_size 		,0				},
												{0 				, y_size 		},
												{0				, y_size * wmul	},
												{ x_size * wmul	,0				},	
												
												{-x_size 		,0				},
												{0 				, -y_size 		},
												{0				, -y_size * wmul},
												{-x_size * wmul	,0				},	
												
												{ x_size 		,0				},
												{0 				, -y_size 		},
												{0				, -y_size * wmul},
												{ x_size * wmul	,0				},	
											}		
			RWR_priority.indices	   		= 	{ 	0,1,2,	0,2,3,
												4,5,6,	4,6,7,
												8,9,10,	8,10,11,
												12,13,14,	12,14,15,}--{0, 1, 2, 0, 2, 3} 
			RWR_priority.element_params  	= {	"RWR_CONTACT" .. i .. "CURPRIORITY",
												"HUD_BRIGHTNESS"
												}
			RWR_priority.controllers     	= {	
												{"parameter_in_range",0,0.9,1.1},
												{"opacity_using_parameter", 1}
											  } 
			RWR_priority.parent_element 	=  OBJ_BASE.name
			AddRWRElement(RWR_priority)

		RWR_lock 				= CreateElement "ceSimple"
		RWR_lock.init_pos		= {0,0}
		RWR_lock.name			= create_guid_string()
		RWR_lock.parent_element	= OBJ_BASE.name
		RWR_lock.element_params = {	"RWR_CONTACT" .. i .. "LOCK",
									"HUD_BRIGHTNESS"
								  }
		RWR_lock.controllers    = {	
								  {"parameter_in_range"	    , 0,0.9,1.1},
								  {"opacity_using_parameter", 1}
								 } 
		AddRWRElement(RWR_lock)
		---------		
		AddHMDCircle(0, 0, 0.11, 8, RWR_lock.name, false, nil )]]
		
end

ia = 1
	--if ia  < 10 then
		--i = "_0".. ia .."_"
	--else
	--	i = "_".. ia .."_"
	--end
	i = "_0".. ia .."_"
	
	local	RWR_contact			   			= CreateElement "ceSimple"
			RWR_contact.name		   		= "RWR_contact_" .. i .. "_name"
			RWR_contact.primitivetype		= "triangles"
			RWR_contact.controllers     	= { {"rotate_using_parameter"			,0,1},
												{"move_up_down_using_parameter"		,1,contact_scale},
												{"parameter_in_range"				,1,0.1,1.09},
											  } 
			RWR_contact.element_params  	= {	
												"RWR_CONTACT"..i.."AZIMUTH_HUD",
												"RWR_CONTACT"..i.."POWER_SYN",
											  }
			RWR_contact.parent_element 		= HUD_BASE.name
			AddHMDElement(RWR_contact)
	----	
	RWR_SYMBOL(RWR_contact)

