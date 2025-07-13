dofile(LockOn_Options.script_path.."HMD/Indicator/HMD_def.lua")
dofile(LockOn_Options.common_script_path.."devices_defs.lua")
dofile(LockOn_Options.common_script_path .. "elements_defs.lua")

--local aspect       = GetAspect()
--local aspect     = 1
--local xpos       = 0
--local ypos       = 0

local TST  		 = MakeMaterial(nil,{0,0,0,255})
local TST_G		 = MakeMaterial(nil,{0,0,100,255})
local SHOW_MASKS = true		 
			 
--local aspect       = 1

local hud_offset_x = 0
local hud_offset_y = 0

nav_total_field_of_view_hmd 				= CreateElement "ceMeshPoly"
nav_total_field_of_view_hmd.name 			= create_guid_string()
nav_total_field_of_view_hmd.primitivetype 	= "triangles"
nav_total_field_of_view_hmd.vertices	    = { {-2, 2 }, { 2 , 2}, { 2 ,-2 }, {-2 ,-2 }, }
nav_total_field_of_view_hmd.indices			= {0, 1, 2, 0, 2, 3}
nav_total_field_of_view_hmd.init_pos		= {-0.0615, -0.4039, 0}
nav_total_field_of_view_hmd.material		= TST
nav_total_field_of_view_hmd.h_clip_relation = h_clip_relations.REWRITE_LEVEL
nav_total_field_of_view_hmd.level			= HUD_DEFAULT_LEVEL -1
nav_total_field_of_view_hmd.change_opacity	= false
nav_total_field_of_view_hmd.collimated 		= false
nav_total_field_of_view_hmd.isvisible		= false
Add(nav_total_field_of_view_hmd)

hud_base_clip_hmd 					= CreateElement "ceMeshPoly"		-- change shape 
hud_base_clip_hmd.name 				=  create_guid_string()
hud_base_clip_hmd.primitivetype 	= "triangles"
hud_base_clip_hmd.vertices	   	 	= { {-2, 2 }, { 2 , 2}, { 2 ,-2 }, {-2 ,-2 }, }
hud_base_clip_hmd.indices			= {0, 1, 2, 0, 2, 3}
hud_base_clip_hmd.init_pos			= {0, 0, 0}
hud_base_clip_hmd.material			= TST_G
hud_base_clip_hmd.h_clip_relation   = h_clip_relations.INCREASE_IF_LEVEL 
hud_base_clip_hmd.level  		 	= HUD_DEFAULT_LEVEL  - 1
hud_base_clip_hmd.change_opacity	= false
hud_base_clip_hmd.collimated 		= false
hud_base_clip_hmd.isvisible			= false
Add(hud_base_clip_hmd)


--[[
----
local HUD_BASE 				= CreateElement "ceSimple"
HUD_BASE.name  				= create_guid_string()
HUD_BASE.init_pos			= {-0.08, 0, 1.5}									--{0, -1.345,0} -- 0,0.7,-1.5
HUD_BASE.element_params     = {"MAINPOWER","HORIZONTAL_VIEW_HMD","VERTICAL_VIEW_HMD", "HMDTOGGLE"}          
HUD_BASE.controllers        = {{"parameter_in_range" ,0,0.9,1.1},{"parameter_in_range" ,1, 23,360},{"parameter_in_range" ,2, -30,180}, {"parameter_in_range" ,3, 0.9,1.1} }
AddHMDElement(HUD_BASE)

local AltimeterScaleArrow				= create_HMD_Circle(HMD_Circle, 0, 0, 2048, 2048, 0.8) 
AltimeterScaleArrow.name				= create_guid_string()
AltimeterScaleArrow.init_pos			= {0 ,-0.2, 0}
AltimeterScaleArrow.init_rot			= {0, 0, 0}
AltimeterScaleArrow.parent_element		= HUD_BASE.name	
AltimeterScaleArrow.element_params		= {"HUD_BRIGHTNESS"}
AltimeterScaleArrow.controllers			= { {"opacity_using_parameter" ,0}  }
AddHMDElement(AltimeterScaleArrow)


local TST_G		 = MakeMaterial(nil,{0,0,100,100})

local AltimeterScaleMask 					= CreateElement "ceMeshPoly"		-- change shape 
AltimeterScaleMask.name 					=  create_guid_string()
AltimeterScaleMask.primitivetype 			= "triangles"
AltimeterScaleMask.material					= TST_G
AltimeterScaleMask.parent_element			= HUD_BASE.name
AltimeterScaleMask.vertices	   	 			= { {0.5, -0.02 }, { 0.8 , -0.02},
												{ 0.8 ,-0.35 }, {0.5 ,-0.35 }, }
AltimeterScaleMask.indices					= {0, 1, 2, 0, 2, 3}
AltimeterScaleMask.init_pos					= {-0.15, 0, 0}
AltimeterScaleMask.init_rot					= {0, 0, 0}
AltimeterScaleMask.h_clip_relation   		= h_clip_relations.INCREASE_IF_LEVEL 
AltimeterScaleMask.level  		 			= HMD_DEFAULT_LEVEL
AltimeterScaleMask.element_params			= {"HUD_MODE"}
AltimeterScaleMask.controllers				= { {"parameter_in_range",0, -1,7}  }
AltimeterScaleMask.isvisible				= false
Add(AltimeterScaleMask)

local AltimeterScaleArrow				= HMD_Horizon_Line(HMD_HORIZON, 793, 987, 912, 1106, 0.5) 
AltimeterScaleArrow.name				= create_guid_string()
AltimeterScaleArrow.init_pos			= {0.41, -0.282, 0}
AltimeterScaleArrow.init_rot			= {-90, 0, 0}
AltimeterScaleArrow.parent_element		= HUD_BASE.name						
AltimeterScaleArrow.h_clip_relation  	= h_clip_relations.DECREASE_IF_LEVEL 
AltimeterScaleArrow.level  		 		= HMD_DEFAULT_LEVEL + 1
AltimeterScaleArrow.element_params		= {"HUD_BRIGHTNESS"}
AltimeterScaleArrow.controllers			= { {"opacity_using_parameter" ,0}  }
AddHMDElement2(AltimeterScaleArrow)

 ]]
dofile(LockOn_Options.script_path.."HMD/Indicator/HMD_indication_page.lua")
