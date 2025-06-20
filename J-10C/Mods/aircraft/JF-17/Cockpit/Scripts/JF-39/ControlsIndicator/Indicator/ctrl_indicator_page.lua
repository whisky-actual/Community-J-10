dofile(LockOn_Options.common_script_path.."elements_defs.lua")

SetCustomScale(1.0)

-- font define
SYMBOL_PIXELS_X = 88 -- pi
SYMBOL_PIXELS_Y = 128

INDTEXTURE_PATH = LockOn_Options.script_path.."../Scripts/JF-39/Textures/IndicationTextures/"
local font_desc = {
    texture     = INDTEXTURE_PATH.."font_HUD.dds",
    size        = {10, 10},
    resolution  = {1280, 1280},
    default     = {SYMBOL_PIXELS_X, SYMBOL_PIXELS_Y},
    chars        = {
        {32, SYMBOL_PIXELS_X, SYMBOL_PIXELS_Y}, -- [space]
        {48, SYMBOL_PIXELS_X, SYMBOL_PIXELS_Y}, -- 0
        {49, SYMBOL_PIXELS_X, SYMBOL_PIXELS_Y}, -- 1
        {50, SYMBOL_PIXELS_X, SYMBOL_PIXELS_Y}, -- 2
        {51, SYMBOL_PIXELS_X, SYMBOL_PIXELS_Y}, -- 3
        {52, SYMBOL_PIXELS_X, SYMBOL_PIXELS_Y}, -- 4
        {53, SYMBOL_PIXELS_X, SYMBOL_PIXELS_Y}, -- 5
        {54, SYMBOL_PIXELS_X, SYMBOL_PIXELS_Y}, -- 6
        {55, SYMBOL_PIXELS_X, SYMBOL_PIXELS_Y}, -- 7
        {56, SYMBOL_PIXELS_X, SYMBOL_PIXELS_Y}, -- 8
        {57, SYMBOL_PIXELS_X, SYMBOL_PIXELS_Y}, -- 9

        {64, SYMBOL_PIXELS_X, SYMBOL_PIXELS_Y}, -- Alpha -> @

        -- bold
        {65, SYMBOL_PIXELS_X, SYMBOL_PIXELS_Y}, -- A bold
        {66, SYMBOL_PIXELS_X, SYMBOL_PIXELS_Y}, -- B bold
        {67, SYMBOL_PIXELS_X, SYMBOL_PIXELS_Y}, -- C bold
        {68, SYMBOL_PIXELS_X, SYMBOL_PIXELS_Y}, -- D bold
        {69, SYMBOL_PIXELS_X, SYMBOL_PIXELS_Y}, -- E bold
        {70, SYMBOL_PIXELS_X, SYMBOL_PIXELS_Y}, -- F bold
        {71, SYMBOL_PIXELS_X, SYMBOL_PIXELS_Y}, -- G bold
        {72, SYMBOL_PIXELS_X, SYMBOL_PIXELS_Y}, -- H bold
        {73, SYMBOL_PIXELS_X, SYMBOL_PIXELS_Y}, -- I bold
        {74, SYMBOL_PIXELS_X, SYMBOL_PIXELS_Y}, -- J bold
        {75, SYMBOL_PIXELS_X, SYMBOL_PIXELS_Y}, -- K bold
        {76, SYMBOL_PIXELS_X, SYMBOL_PIXELS_Y}, -- L bold
        {77, SYMBOL_PIXELS_X, SYMBOL_PIXELS_Y}, -- M bold
        {78, SYMBOL_PIXELS_X, SYMBOL_PIXELS_Y}, -- N bold
        {79, SYMBOL_PIXELS_X, SYMBOL_PIXELS_Y}, -- O bold
        {80, SYMBOL_PIXELS_X, SYMBOL_PIXELS_Y}, -- P bold
        {81, SYMBOL_PIXELS_X, SYMBOL_PIXELS_Y}, -- Q bold
        {82, SYMBOL_PIXELS_X, SYMBOL_PIXELS_Y}, -- R bold
        {83, SYMBOL_PIXELS_X, SYMBOL_PIXELS_Y}, -- S bold
        {84, SYMBOL_PIXELS_X, SYMBOL_PIXELS_Y}, -- T bold
        {85, SYMBOL_PIXELS_X, SYMBOL_PIXELS_Y}, -- U bold
        {86, SYMBOL_PIXELS_X, SYMBOL_PIXELS_Y}, -- V bold
        {87, SYMBOL_PIXELS_X, SYMBOL_PIXELS_Y}, -- W bold
        {88, SYMBOL_PIXELS_X, SYMBOL_PIXELS_Y}, -- X bold
        {89, SYMBOL_PIXELS_X, SYMBOL_PIXELS_Y}, -- Y bold
        {90, SYMBOL_PIXELS_X, SYMBOL_PIXELS_Y}, -- Z bold
        
        {42, SYMBOL_PIXELS_X, SYMBOL_PIXELS_Y}, -- *
        {43, SYMBOL_PIXELS_X, SYMBOL_PIXELS_Y}, -- +
        {45, SYMBOL_PIXELS_X, SYMBOL_PIXELS_Y}, -- -
        {61, SYMBOL_PIXELS_X, SYMBOL_PIXELS_Y}, -- =
        {47, SYMBOL_PIXELS_X, SYMBOL_PIXELS_Y}, -- /
        {92, SYMBOL_PIXELS_X, SYMBOL_PIXELS_Y}, -- \
        {40, SYMBOL_PIXELS_X, SYMBOL_PIXELS_Y}, -- (
        {41, SYMBOL_PIXELS_X, SYMBOL_PIXELS_Y}, -- )
        {91, SYMBOL_PIXELS_X, SYMBOL_PIXELS_Y}, -- [
        {93, SYMBOL_PIXELS_X, SYMBOL_PIXELS_Y}, -- ]
        {123, SYMBOL_PIXELS_X, SYMBOL_PIXELS_Y}, -- {
        {125, SYMBOL_PIXELS_X, SYMBOL_PIXELS_Y}, -- }
        {60, SYMBOL_PIXELS_X, SYMBOL_PIXELS_Y}, -- <
        {62, SYMBOL_PIXELS_X, SYMBOL_PIXELS_Y}, -- >
        {63, SYMBOL_PIXELS_X, SYMBOL_PIXELS_Y}, -- ?
        {124, SYMBOL_PIXELS_X, SYMBOL_PIXELS_Y}, -- |
        {33, SYMBOL_PIXELS_X, SYMBOL_PIXELS_Y}, -- !
        {35, SYMBOL_PIXELS_X, SYMBOL_PIXELS_Y}, -- #
        {37, SYMBOL_PIXELS_X, SYMBOL_PIXELS_Y}, -- %
        {94, SYMBOL_PIXELS_X, SYMBOL_PIXELS_Y}, -- ^
        {38, SYMBOL_PIXELS_X, SYMBOL_PIXELS_Y}, -- &
        --{248, SYMBOL_PIXELS_X, SYMBOL_PIXELS_Y}, -- o
        {96, SYMBOL_PIXELS_X, SYMBOL_PIXELS_Y}, -- o -- degree, change its ascii code to 96 ', original 248 (out of index)
        {46, SYMBOL_PIXELS_X, SYMBOL_PIXELS_Y}, -- .
        {58, SYMBOL_PIXELS_X, SYMBOL_PIXELS_Y}, -- :        
        {44, SYMBOL_PIXELS_X, SYMBOL_PIXELS_Y}, -- ,
        {95, SYMBOL_PIXELS_X, SYMBOL_PIXELS_Y}, -- _
    }
}


local IND_MATERIAL_R = {255,0,0,255} -- red
local IND_MATERIAL_W = {255,255,255,255} -- white
local IND_MATERIAL   = {0,255,0,255} -- green
local IND_FONT       = MakeFont(font_desc,IND_MATERIAL,"IND_FONT")

local IND_FONT_R    = MakeFont(font_desc,IND_MATERIAL_R,"IND_FONT_R")
local IND_FONT_G    = MakeFont(font_desc,IND_MATERIAL_G,"IND_FONT_G")
local IND_FONT_B    = MakeFont(font_desc,IND_MATERIAL_B,"IND_FONT_B")
local IND_FONT_W    = MakeFont(font_desc,IND_MATERIAL_W,"IND_FONT_W")

local FONT_SIZE = 0.002
local FONT_SCALE = 1


local function AddElement(object)
    object.name       = create_guid_string()
    object.stringdefs = {FONT_SIZE, FONT_SCALE * FONT_SIZE, 0, 0}

    object.screenspace = ScreenType.SCREENSPACE_TRUE

    object.use_mipfilter = true
    Add(object)
end

local aspect = LockOn_Options.screen.aspect

-- BASE -----------------------------------------------------------------------
local hw = 0.20
local hh = hw
local frame = 0.25
local bias = 0.35
local cy = -1.0 + bias
local cx = -aspect + bias

local BKGROUND_MAT    = MakeMaterial("",{125,100,0,50})
local IND_REF_MAT     = MakeMaterial("",{255,255,255,255})
local IND_CMD_MAT     = MakeMaterial("",{255,0,0,255})
local IND_VAL_MAT     = MakeMaterial("",{0,255,0,255})

local base           = CreateElement "ceMeshPoly"
base.primitivetype   = "triangles"
base.material        = MakeMaterial("",{255,100,0,50})
base.init_pos        = {cx,cy}
base.vertices        = {{-frame, -frame}, -- lower left, CW
                        {-frame,  frame},
                        { frame,  frame},
                        { frame, -frame}}
base.indices         = default_box_indices -- {0,1,2,0,2,3}
base.h_clip_relation = h_clip_relations.REWRITE_LEVEL
base.level           = DEFAULT_LEVEL
base.element_params  = {"CTRL_IND_ON_OFF"}
base.controllers     = {{"parameter_in_range", 0, 0.5, 1.5},}
AddElement(base)

local ind_poly_box
local text_strpoly

-- 油门参考线
ind_poly_box                = CreateElement "ceMeshPoly"
ind_poly_box.primitivetype  = "lines"
ind_poly_box.material       = IND_CMD_MAT
ind_poly_box.parent_element = base.name
ind_poly_box.init_pos       = {-hw, 0, 0}
ind_poly_box.vertices       = {{ 0,-hh},{ 0, hh},}
ind_poly_box.indices        = {0,1}
AddElement(ind_poly_box)

-- 加力参考线
ind_poly_box                = CreateElement "ceMeshPoly"
ind_poly_box.primitivetype  = "triangles"
ind_poly_box.material       = IND_REF_MAT
ind_poly_box.parent_element = base.name
ind_poly_box.init_pos       = {-hw, 0.66667*hh, 0}
ind_poly_box.vertices       = {{-0.03,-0.003},
                               {-0.03, 0.003},
                               { 0.03, 0.003},
                               { 0.03,-0.003}}
ind_poly_box.indices        = default_box_indices
AddElement(ind_poly_box)

-- 滚转参考线
ind_poly_box                = CreateElement "ceMeshPoly"
ind_poly_box.primitivetype  = "lines"
ind_poly_box.material       = IND_CMD_MAT
ind_poly_box.parent_element = base.name
ind_poly_box.init_pos       = {0, 0, 0}
ind_poly_box.vertices       = {{-hw, 0},{ hw, 0},}
ind_poly_box.indices        = {0,1}
AddElement(ind_poly_box)

-- 脚舵参考线
ind_poly_box                = CreateElement "ceMeshPoly"
ind_poly_box.primitivetype  = "lines"
ind_poly_box.material       = IND_CMD_MAT
ind_poly_box.parent_element = base.name
ind_poly_box.init_pos       = {0, 0-hh+0.5*hh/10, 0}
ind_poly_box.vertices       = {{-hw, 0},{ hw, 0},}
ind_poly_box.indices        = {0,1}
AddElement(ind_poly_box)

-- 俯仰参考线
ind_poly_box                = CreateElement "ceMeshPoly"
ind_poly_box.primitivetype  = "lines"
ind_poly_box.material       = IND_CMD_MAT
ind_poly_box.parent_element = base.name
ind_poly_box.init_pos       = {0, 0, 0}
ind_poly_box.vertices       = {{ 0,-hh},{ 0, hh},}
ind_poly_box.indices        = {0,1}
AddElement(ind_poly_box)

-- 油门位置
ind_poly_box                = CreateElement "ceMeshPoly"
ind_poly_box.primitivetype  = "triangles"
ind_poly_box.material       = IND_CMD_MAT
ind_poly_box.parent_element = base.name
ind_poly_box.init_pos       = {-hw, -hh, 0}
ind_poly_box.vertices       = {{-0.02,-0.01},
                               {-0.02, 0.01},
                               { 0.02, 0.01},
                               { 0.02,-0.01}}
ind_poly_box.indices        = default_box_indices
ind_poly_box.element_params = {"EFM_THROTTLE_POSITION",}
ind_poly_box.controllers    = {{"move_up_down_using_parameter", 0, 1*2*hh},}
AddElement(ind_poly_box)

-- 发动机转速
text_strpoly                = CreateElement "ceStringPoly"
text_strpoly.name           = create_guid_string()
text_strpoly.material       = IND_FONT
text_strpoly.parent_element = base.name
text_strpoly.init_pos       = {-hw, -hh, 0}
text_strpoly.alignment      = "LeftCenter"
text_strpoly.formats        = {"RPM %.1f",}
text_strpoly.element_params = {"EFM_RPM",}
text_strpoly.controllers    = {{"text_using_parameter",0,0 }, {"move_up_down_using_parameter", 0, 1*2*hh/110},}
AddElement(text_strpoly)

-- 摇杆当前中心位置
ind_poly_box                = CreateElement "ceMeshPoly"
ind_poly_box.primitivetype  = "triangles"
ind_poly_box.material       = IND_CMD_MAT
ind_poly_box.parent_element = base.name
ind_poly_box.init_pos       = {0, 0, 0}
ind_poly_box.vertices       = {{-0.01,-0.01},
                               {-0.01, 0.01},
                               { 0.01, 0.01},
                               { 0.01,-0.01}}
ind_poly_box.indices        = default_box_indices
ind_poly_box.element_params = {"EFM_STICK_ROLL", "EFM_STICK_PITCH"}
ind_poly_box.controllers    = {{"move_left_right_using_parameter", 0, 1*hw}, {"move_up_down_using_parameter", 1, 1*hw},}
AddElement(ind_poly_box)

-- 脚舵位置
ind_poly_box                = CreateElement "ceMeshPoly"
ind_poly_box.primitivetype  = "triangles"
ind_poly_box.material       = IND_CMD_MAT
ind_poly_box.parent_element = base.name
ind_poly_box.init_pos       = {0, -hh+0.5*hh/10, 0}
ind_poly_box.vertices       = {{-0.01,-0.01},
                               {-0.01, 0.01},
                               { 0.01, 0.01},
                               { 0.01,-0.01}}
ind_poly_box.indices        = default_box_indices
ind_poly_box.element_params = {"EFM_PEDAL_POSITION",}
ind_poly_box.controllers    = {{"move_left_right_using_parameter", 0, -1*hw}, }
AddElement(ind_poly_box)

-- 垂尾位置
ind_poly_box                = CreateElement "ceMeshPoly"
ind_poly_box.primitivetype  = "triangles"
ind_poly_box.material       = IND_VAL_MAT
ind_poly_box.parent_element = base.name
ind_poly_box.init_pos       = {0, -hh+0.5*hh/10, 0}
ind_poly_box.vertices       = {{-0.01,-0.01},
                               {-0.01, 0.01},
                               { 0.01, 0.01},
                               { 0.01,-0.01}}
ind_poly_box.indices        = default_box_indices
ind_poly_box.element_params = {"ASM_MECHINFO_VERT_STAB",}
ind_poly_box.controllers    = {{"move_left_right_using_parameter", 0, -1*hw}, }
AddElement(ind_poly_box)

-- 平均平尾位置
ind_poly_box                = CreateElement "ceMeshPoly"
ind_poly_box.primitivetype  = "triangles"
ind_poly_box.material       = IND_VAL_MAT
ind_poly_box.parent_element = base.name
ind_poly_box.init_pos       = {0, 0, 0}
ind_poly_box.vertices       = {{-0.01,-0.01},
                               {-0.01, 0.01},
                               { 0.01, 0.01},
                               { 0.01,-0.01}}
ind_poly_box.indices        = default_box_indices
ind_poly_box.element_params = {"ASM_MECHINFO_LEFT_AILERON", "ASM_MECHINFO_STABS",}
ind_poly_box.controllers    = {{"move_left_right_using_parameter", 0, -1*hw}, {"move_up_down_using_parameter", 1, -1*hw},}
AddElement(ind_poly_box)

-- 平尾参考线
--[[
ind_poly_box                = CreateElement "ceMeshPoly"
ind_poly_box.primitivetype  = "lines"
ind_poly_box.material       = IND_CMD_MAT
ind_poly_box.parent_element = base.name
ind_poly_box.init_pos       = {0, -hh+2.5*hh/10,0}
ind_poly_box.vertices       = {{-hw, 0}, { hw, 0},}
ind_poly_box.indices        = {0,1}
AddElement(ind_poly_box)

-- 右平尾
ind_poly_box                 = CreateElement "ceMeshPoly"
ind_poly_box.primitivetype   = "lines"
ind_poly_box.material        = IND_VAL_MAT
ind_poly_box.parent_element  = base.name
ind_poly_box.init_pos        = {hw/5, -hh+2.5*hh/10, 0}
ind_poly_box.vertices        = {{ 0.00,-0.02},
                                { 0.00, 0.02},
                                { 0.05, 0.01},
                                { 0.05,-0.02}}
ind_poly_box.indices         = {0,1,1,2,2,3,3,0}
ind_poly_box.element_params  = {"ASM_MECHINFO_RIGHT_STAB",}
ind_poly_box.controllers     = {{"move_up_down_using_parameter", 0, -1*1.0*hh/10}, }
AddElement(ind_poly_box)

-- 左平尾
ind_poly_box                 = CreateElement "ceMeshPoly"
ind_poly_box.primitivetype   = "lines"
ind_poly_box.material        = IND_VAL_MAT
ind_poly_box.parent_element  = base.name
ind_poly_box.init_pos        = {-hw/5, -hh+2.5*hh/10, 0}
ind_poly_box.vertices        = {{ 0.00,-0.02},
                                { 0.00, 0.02},
                                {-0.05, 0.01},
                                {-0.05,-0.02}}
ind_poly_box.indices         = {0,1,1,2,2,3,3,0}
ind_poly_box.element_params  = {"ASM_MECHINFO_LEFT_STAB",}
ind_poly_box.controllers     = {{"move_up_down_using_parameter", 0, -1*1.0*hh/10}, }
AddElement(ind_poly_box)

-- 垂尾
ind_poly_box                 = CreateElement "ceMeshPoly"
ind_poly_box.primitivetype   = "lines"
ind_poly_box.material        = IND_VAL_MAT
ind_poly_box.parent_element  = base.name
ind_poly_box.init_pos        = {0, -hh+2.5*hh/10, 0}
ind_poly_box.vertices        = {{-0.01,-0.0},
                                { 0.01, 0.0},
                                { 0.00,-0.15*hh},}
ind_poly_box.indices         = {0,1,1,2,2,0}
ind_poly_box.element_params  = {"ASM_MECHINFO_VERT_STAB",}
ind_poly_box.controllers     = {{"rotate_using_parameter", 0, -1*math.rad(30)}, }
AddElement(ind_poly_box)

-- 副翼襟翼参考线
ind_poly_box                = CreateElement "ceMeshPoly"
ind_poly_box.primitivetype  = "lines"
ind_poly_box.material       = IND_CMD_MAT
ind_poly_box.parent_element = base.name
ind_poly_box.init_pos       = {0, 0, 0}
ind_poly_box.vertices       = {{-hw, 0}, { hw, 0},}
ind_poly_box.indices        = {0,1}
AddElement(ind_poly_box)

-- 左副翼
ind_poly_box                 = CreateElement "ceMeshPoly"
ind_poly_box.primitivetype   = "lines"
ind_poly_box.material        = IND_VAL_MAT
ind_poly_box.parent_element  = base.name
ind_poly_box.init_pos        = {-2.4*hw/5, -4*hh/10, 0}
ind_poly_box.vertices        = {{ 0.00,-0.01},
                                { 0.00, 0.01},
                                {-0.05, 0.005},
                                {-0.05,-0.01}}
ind_poly_box.indices         = {0,1,1,2,2,3,3,0}
ind_poly_box.element_params  = {"ASM_MECHINFO_LEFT_AILERON",}
ind_poly_box.controllers     = {{"move_up_down_using_parameter", 0, 1*0.5*hh/10}, }
AddElement(ind_poly_box)

-- 右副翼
ind_poly_box                 = CreateElement "ceMeshPoly"
ind_poly_box.primitivetype   = "lines"
ind_poly_box.material        = IND_VAL_MAT
ind_poly_box.parent_element  = base.name
ind_poly_box.init_pos        = { 2.4*hw/5, -4*hh/10, 0}
ind_poly_box.vertices        = {{ 0.00,-0.01},
                                { 0.00, 0.01},
                                { 0.05, 0.005},
                                { 0.05,-0.01}}
ind_poly_box.indices         = {0,1,1,2,2,3,3,0}
ind_poly_box.element_params  = {"ASM_MECHINFO_RIGHT_AILERON",}
ind_poly_box.controllers     = {{"move_up_down_using_parameter", 0, 1*0.5*hh/10}, }
AddElement(ind_poly_box)

-- 左襟翼
ind_poly_box                 = CreateElement "ceMeshPoly"
ind_poly_box.primitivetype   = "lines"
ind_poly_box.material        = IND_VAL_MAT
ind_poly_box.parent_element  = base.name
ind_poly_box.init_pos        = {-1*hw/5, -4*hh/10, 0}
ind_poly_box.vertices        = {{ 0.00,-0.01},
                                { 0.00, 0.01},
                                {-0.05, 0.01},
                                {-0.05,-0.01}}
ind_poly_box.indices         = {0,1,1,2,2,3,3,0}
ind_poly_box.element_params  = {"ASM_MECHINFO_AFTER_LEFT_FLAP",}
ind_poly_box.controllers     = {{"move_up_down_using_parameter", 0, -1*1.0*hh/10}, }
AddElement(ind_poly_box)

-- 右襟翼
ind_poly_box                 = CreateElement "ceMeshPoly"
ind_poly_box.primitivetype   = "lines"
ind_poly_box.material        = IND_VAL_MAT
ind_poly_box.parent_element  = base.name
ind_poly_box.init_pos        = {1*hw/5, -4*hh/10, 0}
ind_poly_box.vertices        = {{ 0.00,-0.01},
                                { 0.00, 0.01},
                                { 0.05, 0.01},
                                { 0.05,-0.01}}
ind_poly_box.indices         = {0,1,1,2,2,3,3,0}
ind_poly_box.element_params  = {"ASM_MECHINFO_AFTER_RIGHT_FLAP",}
ind_poly_box.controllers     = {{"move_up_down_using_parameter", 0, -1*1.0*hh/10}, }
AddElement(ind_poly_box)

-- 内外前缘
-- 左前缘内
ind_poly_box                 = CreateElement "ceMeshPoly"
ind_poly_box.primitivetype   = "lines"
ind_poly_box.material        = IND_VAL_MAT
ind_poly_box.parent_element  = base.name
ind_poly_box.init_pos        = {-1*hw/5, -1.0*hh/10, 0}
ind_poly_box.vertices        = {{ 0.00,-0.005},
                                { 0.00, 0.005},
                                {-0.05,-0.005},
                                {-0.05,-0.015}}
ind_poly_box.indices         = {0,1,1,2,2,3,3,0}
ind_poly_box.element_params  = {"ASM_MECHINFO_FORWARD_INNER_LEFT_AILERON",}
ind_poly_box.controllers     = {{"move_up_down_using_parameter", 0, 1*0.5*hh/10}, }
AddElement(ind_poly_box)

-- 右前缘内
ind_poly_box                 = CreateElement "ceMeshPoly"
ind_poly_box.primitivetype   = "lines"
ind_poly_box.material        = IND_VAL_MAT
ind_poly_box.parent_element  = base.name
ind_poly_box.init_pos        = {1*hw/5, -1.0*hh/10, 0}
ind_poly_box.vertices        = {{ 0.00,-0.005},
                                { 0.00, 0.005},
                                { 0.05,-0.005},
                                { 0.05,-0.015}}
ind_poly_box.indices         = {0,1,1,2,2,3,3,0}
ind_poly_box.element_params  = {"ASM_MECHINFO_FORWARD_INNER_RIGHT_AILERON",}
ind_poly_box.controllers     = {{"move_up_down_using_parameter", 0, 1*0.5*hh/10}, }
AddElement(ind_poly_box)

-- 左前缘外
ind_poly_box                 = CreateElement "ceMeshPoly"
ind_poly_box.primitivetype   = "lines"
ind_poly_box.material        = IND_VAL_MAT
ind_poly_box.parent_element  = base.name
ind_poly_box.init_pos        = {-2.4*hw/5, -1.5*hh/10, 0}
ind_poly_box.vertices        = {{ 0.00,-0.005},
                                { 0.00, 0.005},
                                {-0.05,-0.005},
                                {-0.05,-0.015}}
ind_poly_box.indices         = {0,1,1,2,2,3,3,0}
ind_poly_box.element_params  = {"ASM_MECHINFO_FORWARD_INNER_LEFT_AILERON",}
ind_poly_box.controllers     = {{"move_up_down_using_parameter", 0, 1*0.5*hh/10}, }
AddElement(ind_poly_box)

-- 右前缘外
ind_poly_box                 = CreateElement "ceMeshPoly"
ind_poly_box.primitivetype   = "lines"
ind_poly_box.material        = IND_VAL_MAT
ind_poly_box.parent_element  = base.name
ind_poly_box.init_pos        = {2.4*hw/5, -1.5*hh/10, 0}
ind_poly_box.vertices        = {{ 0.00,-0.005},
                                { 0.00, 0.005},
                                { 0.05,-0.005},
                                { 0.05,-0.015}}
ind_poly_box.indices         = {0,1,1,2,2,3,3,0}
ind_poly_box.element_params  = {"ASM_MECHINFO_FORWARD_INNER_RIGHT_AILERON",}
ind_poly_box.controllers     = {{"move_up_down_using_parameter", 0, 1*0.5*hh/10}, }
AddElement(ind_poly_box)

-- 舱盖
ind_poly_box                = CreateElement "ceMeshPoly"
ind_poly_box.primitivetype  = "lines"
ind_poly_box.material       = IND_VAL_MAT
ind_poly_box.parent_element = base.name
ind_poly_box.init_pos       = {0, 0, 0}
ind_poly_box.vertices       = {{-0.015, 0.01},
                               {-0.015, 0.08},
                               { 0.000, 0.10},
                               { 0.015, 0.08},
                               { 0.015, 0.01}}
ind_poly_box.indices        = {0,1,1,2,2,3,3,4,4,0}
ind_poly_box.element_params = {"ASM_MECHINFO_CANOPYPOS",}
ind_poly_box.controllers    = {{"parameter_in_range", 0, 0.01, 1.1},}
AddElement(ind_poly_box)

-- 减速板
ind_poly_box                = CreateElement "ceMeshPoly"
ind_poly_box.primitivetype  = "lines"
ind_poly_box.material       = IND_VAL_MAT
ind_poly_box.parent_element = base.name
ind_poly_box.init_pos       = {0, -3*hh/10, 0}
ind_poly_box.vertices       = {{-0.015,-0.035},
                               {-0.015, 0.035},
                               { 0.015, 0.035},
                               { 0.015,-0.035}}
ind_poly_box.indices        = {0,1,1,2,2,3,3,0}
ind_poly_box.element_params = {"ASM_MECHINFO_SPEEDBREAK",}
ind_poly_box.controllers    = {{"parameter_in_range", 0, 0.01, 1.1},}
AddElement(ind_poly_box)


-- 前轮
ind_poly_box                = CreateElement "ceMeshPoly"
ind_poly_box.primitivetype  = "lines"
ind_poly_box.material       = IND_VAL_MAT
ind_poly_box.parent_element = base.name
ind_poly_box.init_pos       = {0, -1*hh/10, 0}
set_circle(ind_poly_box, 0.02, 0.02, 360, 32)
ind_poly_box.element_params = {"ASM_MECHINFO_NOSEGEAR",}
ind_poly_box.controllers    = {{"parameter_in_range", 0, 0.01, 1.1},}
AddElement(ind_poly_box)

-- 左主轮
ind_poly_box                = CreateElement "ceMeshPoly"
ind_poly_box.primitivetype  = "lines"
ind_poly_box.material       = IND_VAL_MAT
ind_poly_box.parent_element = base.name
ind_poly_box.init_pos       = {-0.12*hw, -5.5*hh/10, 0}
set_circle(ind_poly_box, 0.02, 0.02, 360, 32)
ind_poly_box.element_params = {"ASM_MECHINFO_LEFT_MAINGEAR",}
ind_poly_box.controllers    = {{"parameter_in_range", 0, 0.01, 1.1},}
AddElement(ind_poly_box)

-- 右主轮
ind_poly_box                = CreateElement "ceMeshPoly"
ind_poly_box.primitivetype  = "lines"
ind_poly_box.material       = IND_VAL_MAT
ind_poly_box.parent_element = base.name
ind_poly_box.init_pos       = {0.12*hw, -5.5*hh/10, 0}
set_circle(ind_poly_box, 0.02, 0.02, 360, 32)
ind_poly_box.element_params = {"ASM_MECHINFO_RIGHT_MAINGEAR",}
ind_poly_box.controllers    = {{"parameter_in_range", 0, 0.01, 1.1},}
AddElement(ind_poly_box)
]]

--文字显示
local text_data = {
    -- rate
    {
        init_pos       = {0, hh-2*hh/10 ,0},
		material       = IND_FONT_W,
        alignment      = "LeftCenter",
        formats        = {"RATE DEG/SEC:\nR %.1f\n","Y %.1f\n","P %.1f",},
        element_params = {"ASM_RATE_ROLL","ASM_RATE_YAW","ASM_RATE_PITCH",},
        controllers    = {{"text_using_parameter",0,0 },
                          {"text_using_parameter",1,1 },
                          {"text_using_parameter",2,2 },},
    },

	-- 减速板
    {
        init_pos       = {0, -3*hh/10, 0},
		material       = IND_FONT,
        alignment      = "CenterCenter",
        value          = 'B',
        element_params = {"ASM_MECHINFO_SPEEDBREAK",},
        controllers    = {{"parameter_in_range", 0, 0.01, 1.1},},
    },
	
	-- 鼻轮
    {
        init_pos       = {0, -1*hh/10, 0},
		material       = IND_FONT,
        alignment      = "CenterCenter",
        value          = 'N',
        element_params = {"ASM_MECHINFO_NOSEGEAR",},
        controllers    = {{"parameter_in_range", 0, 0.01, 1.1},},
    },
	
	-- 左主轮
    {
        init_pos       = {-0.12*hw, -5.5*hh/10, 0},
		material       = IND_FONT,
        alignment      = "CenterCenter",
        value          = 'L',
        element_params = {"ASM_MECHINFO_LEFT_MAINGEAR",},
        controllers    = {{"parameter_in_range", 0, 0.01, 1.1},},
    },
	
	-- 右主轮
    {
        init_pos       = {0.12*hw, -5.5*hh/10, 0},
		material       = IND_FONT,
        alignment      = "CenterCenter",
        value          = 'R',
        element_params = {"ASM_MECHINFO_RIGHT_MAINGEAR",},
        controllers    = {{"parameter_in_range", 0, 0.01, 1.1},},
    },
}

for i=1, #(text_data) do
    text_strpoly                 = CreateElement "ceStringPoly"
    text_strpoly.name            = create_guid_string()
    text_strpoly.material        = text_data[i].material or IND_FONT_W
    text_strpoly.parent_element  = base.name
    text_strpoly.init_pos        = text_data[i].init_pos
    text_strpoly.alignment       = text_data[i].alignment
    text_strpoly.formats         = text_data[i].formats
    text_strpoly.element_params  = text_data[i].element_params
    if text_data[i].controllers ~= nil then
        text_strpoly.controllers = text_data[i].controllers
    else
        text_strpoly.controllers = {{"text_using_parameter",0,0 },}
    end
	if text_data[i].value ~= nil then
        text_strpoly.value = text_data[i].value
    end
    AddElement(text_strpoly)
    text_strpoly = nil
end
----------------------------------------------------------------------------------------
--                    File by whisky.actual@gmail.com - v.1.2.2                       --
----------------------------------------------------------------------------------------