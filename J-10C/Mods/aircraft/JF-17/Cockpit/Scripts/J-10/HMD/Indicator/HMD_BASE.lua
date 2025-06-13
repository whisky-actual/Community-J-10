dofile(LockOn_Options.script_path.."JF-39/HMD/Indicator/HMD_def.lua")

----------------------------------------------------------------------------------------
-- JF-17 HMD 
----------------------------------------------------------------------------------------
local SHOW_MASKS = false

local hw = GetScale()
local hh = GetAspect() * hw

local num_points = 64
local step       = math.rad(360.0/num_points)
local TFOV       = math.rad(40.0/2) * 1000.0

local CLIPFOV = math.rad(35.0/2) * 1000.0
local Rs      = 1 * CLIPFOV -- side gap
local Rl      = Rs * math.sin(math.rad(50))

local verts = {}
local inds = {}


-- Upper part of verts
j = 0
for i = 0, num_points do
    verts[j+1] = { Rl * math.cos(i * step), Rs * math.sin(i * step)}
    j = j + 1
end
--[[
-- verts下半部分
j = #verts
for i = num_points/2 +  angle_offset/step , (num_points -  angle_offset/step) do
    verts[j+1] = { Rs * math.cos(i * step), Rl * math.sin(i * step)}
    j = j + 1
end
]]
-- inds
j = 0
for i = 0, #verts do
    inds[j+1] = 0
    inds[j+2] = i + 1
    inds[j+3] = i + 2
    j = j + 3
end

local total_field_of_view           = CreateElement "ceMeshPoly"
total_field_of_view.name            = "total_field_of_view"
total_field_of_view.primitivetype   = "triangles"
total_field_of_view.vertices        = verts
total_field_of_view.material        = HUD_MAT_BASE1
total_field_of_view.vertices        = verts
total_field_of_view.indices         = inds
total_field_of_view.init_pos        = {0, 0, -170}
total_field_of_view.init_rot        = {0, 0, -44.5} -- degree NOT rad
total_field_of_view.h_clip_relation = h_clip_relations.REWRITE_LEVEL
total_field_of_view.level           = HUD_NOCLIP_LEVEL
total_field_of_view.element_params  = {"JF39_HMD","JF39_HMD_HORIZONTAL_VIEW","JF39_HMD_VERTICAL_VIEW"}          
total_field_of_view.controllers     = {{"parameter_in_range" ,0, 0.9,1.1},{"parameter_in_range" ,1, 25,360},{"parameter_in_range" ,2, -35,190}}
total_field_of_view.collimated      = false
total_field_of_view.isvisible       = false
Add(total_field_of_view)

-- Cropping Area
local clipPoly           = CreateElement "ceMeshPoly"
clipPoly.name            = "clipPoly-1"
clipPoly.primitivetype   = "triangles"
clipPoly.init_pos        = {0, 0, -170}
clipPoly.init_rot        = {0, 0 , -44.5} -- degree NOT rad
clipPoly.vertices        = verts -- {{TFOV,TFOV},{TFOV,-TFOV-10},{-TFOV,-TFOV-10},{-TFOV,TFOV}}
clipPoly.indices         = inds
clipPoly.material        = HUD_MAT_BASE2
clipPoly.h_clip_relation = h_clip_relations.INCREASE_IF_LEVEL
clipPoly.level           = HUD_NOCLIP_LEVEL
clipPoly.element_params  = {"JF39_HMD","JF39_HMD_HORIZONTAL_VIEW","JF39_HMD_VERTICAL_VIEW"}          
clipPoly.controllers     = {{"parameter_in_range" ,0, 0.9,1.1},{"parameter_in_range" ,1, 25,360},{"parameter_in_range" ,2, -35,190}}
clipPoly.collimated      = false
clipPoly.isvisible       = false
Add(clipPoly)

----------------------------------------------------------------------------------------
-- JF-39 HMD
----------------------------------------------------------------------------------------

local TST  		 = MakeMaterial(nil,{0,0,0,255})
local TST_G		 = MakeMaterial(nil,{0,0,100,255})
local SHOW_MASKS = true		 		 

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
hud_base_clip_hmd.level  		 	= HUD_DEFAULT_LEVEL   -1
hud_base_clip_hmd.change_opacity	= false
hud_base_clip_hmd.collimated 		= false
hud_base_clip_hmd.isvisible			= false
Add(hud_base_clip_hmd)

----------------------------------------------------------------------------------------
--                    File by whisky.actual@gmail.com - v.1.2.2                       --
----------------------------------------------------------------------------------------