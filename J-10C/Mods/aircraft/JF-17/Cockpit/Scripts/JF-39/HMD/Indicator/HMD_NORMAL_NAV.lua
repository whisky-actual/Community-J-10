-- must be loaded in HUD_NORMAL.lua

----------------------------------------------------
-- Speed bar
----------------------------------------------------
-- Position Parameters (you can change these to move the bar)
speed_bar_pos_x = -50      -- Horizontal position

local tex_coord_box  = HUD_tex_coord(224, 312, 268, 152, HUD_TEX_IND1_W, HUD_TEX_IND1_H)
local SIDE_OFFSET    = HUD_HALF_WIDTH*5/12
HW = (42.064/2)+15
HH = 23.857/2

tex_poly             = CreateElement "ceTexPoly"
tex_poly.material    = HUD_TEX_IND1
tex_poly.name        = "SPD_Box"
tex_poly.tex_coords  = tex_coord_box
tex_poly.init_pos    = {-113.625 + speed_bar_pos_x, spd_bar_vert_bias+145, 0}
tex_poly.vertices    = {{30.845/2, 11.961/2}, {30.845/2,-11.961/2}, {-30.845/2,-11.961/2}, {-30.845/2,11.961/2}}
tex_poly.indices     = DEF_BOX_INDICES
tex_poly.h_clip_relation = h_clip_relations.REWRITE_LEVEL
tex_poly.isvisible       = false
tex_poly.use_mipfilter   = true
tex_poly.additive_alpha  = true
tex_poly.collimated      = true
tex_poly.level           = HUD_DEFAULT_LEVEL + 2
tex_poly.element_params  = {"JF39_HMD","JF39_HMD_HORIZONTAL_VIEW","JF39_HMD_VERTICAL_VIEW"}   
tex_poly.controllers     = {{"parameter_in_range" ,0, 0.9,1.1},{"parameter_in_range" ,1, 25,360},{"parameter_in_range" ,2, -35,190},{"hud_check_power"},{"hud_check_declutter"},}
Add(tex_poly)
tex_poly = nil

-- Clip speed bar
clipPoly                = CreateElement "ceMeshPoly"
clipPoly.name           = "clipPoly-spd"
clipPoly.primitivetype  = "triangles"
clipPoly.init_pos       = {-101.164 + speed_bar_pos_x, spd_bar_vert_bias+145, 0}
clipPoly.vertices       = {{HW/2, 88.13/2},{HW/2, -88.13/2},{-2*HW, -88.13/2},{-2*HW, 88.13/2}}
clipPoly.indices        = DEF_BOX_INDICES
clipPoly.material       = HUD_MAT_DEF
clipPoly.h_clip_relation= h_clip_relations.INCREASE_IF_LEVEL
clipPoly.level          = HUD_DEFAULT_LEVEL
clipPoly.collimated     = true
clipPoly.isvisible      = false
clipPoly.element_params  = {"JF39_HMD","JF39_HMD_HORIZONTAL_VIEW","JF39_HMD_VERTICAL_VIEW"}   
clipPoly.controllers    = {{"parameter_in_range" ,0, 0.9,1.1},{"parameter_in_range" ,1, 25,360},{"parameter_in_range" ,2, -35,190},{"hud_check_power"},{"hud_check_declutter"},}
Add(clipPoly)

clipPoly = nil

-- Speed bar
local _dummyspd          = CreateElement "ceSimple"
_dummyspd.level          = HUD_DEFAULT_LEVEL + 1
_dummyspd.isvisible      = false
_dummyspd.init_pos       = {-98.2 + speed_bar_pos_x, spd_bar_vert_bias+145, 0}
_dummyspd.element_params  = {"JF39_HMD","JF39_HMD_HORIZONTAL_VIEW","JF39_HMD_VERTICAL_VIEW"}   
_dummyspd.controllers    = {{"parameter_in_range" ,0, 0.9,1.1},{"parameter_in_range" ,1, 25,360},{"parameter_in_range" ,2, -35,190},{"hud_check_power"},{"hud_move_speedtape", 0.03},{"hud_check_declutter"},}
AddElementObject(_dummyspd)

for s = 0, 4000 do
    if s >= 12 and s <= 12.1 then
    min_spd_scale                 = CreateElement "ceStringPoly"
    min_spd_scale.material        = HUD_IND_FONT
    min_spd_scale.stringdefs      = HUD_STRINGDEFS_DEF_X12
    min_spd_scale.init_pos        = {14, s * 31.725, 0}  -- 125
    min_spd_scale.alignment       = "RightCenter"
    min_spd_scale.value           = "["
    min_spd_scale.level           = HUD_DEFAULT_LEVEL + 1
    min_spd_scale.parent_element  = _dummyspd.name
    min_spd_scale.isdraw          = true
    min_spd_scale.isvisible       = true
    min_spd_scale.use_mipfilter   = true
    min_spd_scale.additive_alpha  = true
    min_spd_scale.collimated      = true
    min_spd_scale.element_params  = {"JF39_HMD","JF39_HMD_HORIZONTAL_VIEW","JF39_HMD_VERTICAL_VIEW"}   
    min_spd_scale.controllers     = {{"parameter_in_range" ,0, 0.9,1.1},{"parameter_in_range" ,1, 25,360},{"parameter_in_range" ,2, -35,190},{0.045, spd_bar_vert_bias+145*MMIL2MIL}, {"hud_check_declutter"}}  -- Fixed syntax
    AddElementObject(min_spd_scale)
    min_spd_scale = nil
    end
end

for s = 0, 4000 do
    if s >= 82 and s <= 81.1 then
    max_spd_scale                 = CreateElement "ceStringPoly"
    max_spd_scale.material        = HUD_IND_FONT
    max_spd_scale.stringdefs      = HUD_STRINGDEFS_DEF_X12
    max_spd_scale.init_pos        = {14, s * 30.225, 0}  -- 820
    max_spd_scale.alignment       = "RightCenter"
    max_spd_scale.value           = "]"
    max_spd_scale.level           = HUD_DEFAULT_LEVEL + 1
    max_spd_scale.parent_element  = _dummyspd.name
    max_spd_scale.isdraw          = true
    max_spd_scale.isvisible       = true
    max_spd_scale.use_mipfilter   = true
    max_spd_scale.additive_alpha  = true
    max_spd_scale.collimated      = true
    max_spd_scale.element_params  = {"JF39_HMD","JF39_HMD_HORIZONTAL_VIEW","JF39_HMD_VERTICAL_VIEW"}   
    max_spd_scale.controllers     = {{"parameter_in_range" ,0, 0.9,1.1},{"parameter_in_range" ,1, 25,360},{"parameter_in_range" ,2, -35,190},{0.045, spd_bar_vert_bias+145*MMIL2MIL}, {"hud_check_declutter"}}  -- Fixed syntax
    AddElementObject(max_spd_scale)
    max_spd_scale = nil
    end
end

for s = 0, 4000 do
    if s >= 14 and s <= 14.1 then
    land_spd_scale                 = CreateElement "ceStringPoly"
    land_spd_scale.material        = HUD_IND_FONT
    land_spd_scale.stringdefs      = HUD_STRINGDEFS_DEF_X12
    land_spd_scale.init_pos        = {14, s * 30.225, 0}  -- 140
    land_spd_scale.alignment       = "RightCenter"
    land_spd_scale.value           = "{"
    land_spd_scale.level           = HUD_DEFAULT_LEVEL + 1
    land_spd_scale.parent_element  = _dummyspd.name
    land_spd_scale.isdraw          = true
    land_spd_scale.isvisible       = true
    land_spd_scale.use_mipfilter   = true
    land_spd_scale.additive_alpha  = true
    land_spd_scale.collimated      = true
    land_spd_scale.element_params  = {"JF39_HMD","JF39_HMD_HORIZONTAL_VIEW","JF39_HMD_VERTICAL_VIEW"}   
    land_spd_scale.controllers     = {{"parameter_in_range" ,0, 0.9,1.1},{"parameter_in_range" ,1, 25,360},{"parameter_in_range" ,2, -35,190},{0.045, spd_bar_vert_bias+145*MMIL2MIL}, {"hud_check_declutter"}}  -- Fixed syntax
    AddElementObject(land_spd_scale)
    land_spd_scale = nil
    end
end

for s = 0, 4000 do
    if s >= 38 and s <= 38.1 then
    corner_spd_scale                 = CreateElement "ceStringPoly"
    corner_spd_scale.material        = HUD_IND_FONT
    corner_spd_scale.stringdefs      = HUD_STRINGDEFS_DEF_X12
    corner_spd_scale.init_pos        = {14, s * 30.225, 0}  -- 380
    corner_spd_scale.alignment       = "RightCenter"
    corner_spd_scale.value           = "}"
    corner_spd_scale.level           = HUD_DEFAULT_LEVEL + 1
    corner_spd_scale.parent_element  = _dummyspd.name
    corner_spd_scale.isdraw          = true
    corner_spd_scale.isvisible       = true
    corner_spd_scale.use_mipfilter   = true
    corner_spd_scale.additive_alpha  = true
    corner_spd_scale.collimated      = true
    corner_spd_scale.element_params  = {"JF39_HMD","JF39_HMD_HORIZONTAL_VIEW","JF39_HMD_VERTICAL_VIEW"}   
    corner_spd_scale.controllers     = {{"parameter_in_range" ,0, 0.9,1.1},{"parameter_in_range" ,1, 25,360},{"parameter_in_range" ,2, -35,190},{0.045, spd_bar_vert_bias+145*MMIL2MIL}, {"hud_check_declutter"}}  -- Fixed syntax
    AddElementObject(corner_spd_scale)
    corner_spd_scale = nil
    end
end

----------------------------------------------------
-- Altitue bar
----------------------------------------------------

-- Position Parameters (you can change these to move the bar)
alt_bar_pos_x = 150      -- Horizontal position
alt_bar_pos_y = 70  -- Vertical position

local tex_coord_box = HUD_tex_coord(716, 312, 364, 152, HUD_TEX_IND1_W, HUD_TEX_IND1_H)
HW = 57.131 / 2
HH = 23.857 / 2

-- Altitude Bar clip layer
clipPoly                 = CreateElement "ceMeshPoly"
clipPoly.name            = "clipPoly-alt"
clipPoly.primitivetype   = "triangles"
clipPoly.init_pos        = {alt_bar_pos_x + 2.963, alt_bar_pos_y, 0}  -- Adjusted relative to _dummyalt
clipPoly.vertices        = {
    {2 * HW, 88.13 / 2},
    {2 * HW, -88.13 / 2},
    {-HW / 2, -88.13 / 2},
    {-HW / 2, 88.13 / 2}
}
clipPoly.indices         = DEF_BOX_INDICES
clipPoly.material        = HUD_MAT_DEF
clipPoly.h_clip_relation = h_clip_relations.INCREASE_IF_LEVEL
clipPoly.level           = HUD_DEFAULT_LEVEL
clipPoly.isvisible       = false
clipPoly.element_params  = {"JF39_HMD","JF39_HMD_HORIZONTAL_VIEW","JF39_HMD_VERTICAL_VIEW"}   
clipPoly.controllers     = {{"parameter_in_range" ,0, 0.9,1.1},{"parameter_in_range" ,1, 25,360},{"parameter_in_range" ,2, -35,190},{"hud_check_power"}, {"hud_check_declutter"}}
Add(clipPoly)
clipPoly = nil

-- Altitude Bar parent element
local _dummyalt          = CreateElement "ceSimple"
_dummyalt.level          = HUD_DEFAULT_LEVEL + 1
_dummyalt.isvisible      = false
_dummyalt.init_pos       = {alt_bar_pos_x, alt_bar_pos_y, 0}
_dummyalt.element_params  = {"JF39_HMD","JF39_HMD_HORIZONTAL_VIEW","JF39_HMD_VERTICAL_VIEW"}   
_dummyalt.controllers    = {{"parameter_in_range" ,0, 0.9,1.1},{"parameter_in_range" ,1, 25,360},{"parameter_in_range" ,2, -35,190},{"hud_check_power"}, {"hud_move_alttape", 0.03}, {"hud_check_declutter"}}
AddElementObject(_dummyalt)

-- Zero tick line
hud_alt_scale_long0                 = CreateElement "ceMeshPoly"
hud_alt_scale_long0.name            = "hud_alt_scale_long_0"
hud_alt_scale_long0.material        = HUD_MAT_DEF
hud_alt_scale_long0.primitivetype   = "triangles"
hud_alt_scale_long0.vertices        = {
    {0, 1.256},
    {0, -1.256},
    {6.278, -1.256},
    {6.278, 1.256}
}
hud_alt_scale_long0.indices         = DEF_BOX_INDICES
hud_alt_scale_long0.level           = HUD_DEFAULT_LEVEL + 1
hud_alt_scale_long0.parent_element  = _dummyalt.name
hud_alt_scale_long0.isdraw          = true
hud_alt_scale_long0.isvisible       = true
hud_alt_scale_long0.use_mipfilter   = true
hud_alt_scale_long0.additive_alpha  = true
AddElementObject(hud_alt_scale_long0)

-- Zero label
hud_alt_scale_idx0                 = CreateElement "ceStringPoly"
hud_alt_scale_idx0.name            = "hud_alt_scale_idx_0"
hud_alt_scale_idx0.material        = HUD_IND_FONT
hud_alt_scale_idx0.stringdefs      = HUD_STRINGDEFS_DEF
hud_alt_scale_idx0.init_pos        = {6.278 + 0.942, 0, 0}
hud_alt_scale_idx0.alignment       = "LeftCenter"
hud_alt_scale_idx0.value           = "0"
hud_alt_scale_idx0.level           = HUD_DEFAULT_LEVEL + 1
hud_alt_scale_idx0.parent_element  = _dummyalt.name
hud_alt_scale_idx0.isdraw          = true
hud_alt_scale_idx0.isvisible       = true
hud_alt_scale_idx0.use_mipfilter   = true
hud_alt_scale_idx0.additive_alpha  = true
AddElementObject(hud_alt_scale_idx0)
hud_alt_scale_idx0 = nil

-- Altitude ticks and labels
for i = -5, 550 do
    if i ~= 0 then
        local dir = (i < 0) and -1 or 1
        local i_plus = math.abs(i)

        -- Long tick
        hud_alt_scale_long = CreateElement "ceMeshPoly"
        hud_alt_scale_long.material = HUD_MAT_DEF
        hud_alt_scale_long.primitivetype = "triangles"
        hud_alt_scale_long.vertices = {
            {0, 1.256},
            {0, -1.256},
            {6.278, -1.256},
            {6.278, 1.256}
        }
        hud_alt_scale_long.indices = DEF_BOX_INDICES
        hud_alt_scale_long.init_pos = {-3, i * 30, 0}
        hud_alt_scale_long.level = HUD_DEFAULT_LEVEL + 1
        hud_alt_scale_long.parent_element = _dummyalt.name
        hud_alt_scale_long.isdraw = true
        hud_alt_scale_long.isvisible = true
        hud_alt_scale_long.use_mipfilter = true
        hud_alt_scale_long.additive_alpha = true
        hud_alt_scale_long.controllers = {
            {"hud_alt_boxclip", 0.045, alt_bar_pos_y * MMIL2MIL},
            {"hud_check_declutter"}
        }
        AddElementObject(hud_alt_scale_long)
        hud_alt_scale_long = nil

        -- Short tick between longs
        hud_alt_scale_short0 = CreateElement "ceMeshPoly"
        hud_alt_scale_short0.material = HUD_MAT_DEF
        hud_alt_scale_short0.primitivetype = "triangles"
        hud_alt_scale_short0.vertices = {
            {0, 1.256},
            {0, -1.256},
            {3.767, -1.256},
            {3.767, 1.256}
        }
        hud_alt_scale_short0.indices = DEF_BOX_INDICES
        hud_alt_scale_short0.init_pos = {-3, (i + 0.5) * 30, 0}
        hud_alt_scale_short0.level = HUD_DEFAULT_LEVEL + 1
        hud_alt_scale_short0.parent_element = _dummyalt.name
        hud_alt_scale_short0.isdraw = true
        hud_alt_scale_short0.isvisible = true
        hud_alt_scale_short0.use_mipfilter = true
        hud_alt_scale_short0.additive_alpha = true
        hud_alt_scale_short0.controllers = {
            {"hud_alt_boxclip", 0.045, alt_bar_pos_y * MMIL2MIL},
            {"hud_check_declutter"}
        }
        AddElementObject(hud_alt_scale_short0)
        hud_alt_scale_short0 = nil

        -- Label formatting
        local p1000 = math.floor(i_plus / 10)
        local p100 = (i_plus % 10) * 100
        local text1000 = tostring(p1000)
        local text100 = string.format("%03d", p100)

        if dir < 0 then
            text1000 = "-" .. text1000
        end

        if p1000 > 0 then
            -- Thousands text
            hud_alt_scale_idx_1000 = CreateElement "ceStringPoly"
            hud_alt_scale_idx_1000.material = HUD_IND_FONT
            hud_alt_scale_idx_1000.stringdefs = HUD_STRINGDEFS_DEF_X12
            hud_alt_scale_idx_1000.init_pos = {26, i * 30, 0}
            hud_alt_scale_idx_1000.alignment = "RightCenter"
            hud_alt_scale_idx_1000.value = text1000
            hud_alt_scale_idx_1000.level = HUD_DEFAULT_LEVEL + 1
            hud_alt_scale_idx_1000.parent_element = _dummyalt.name
            hud_alt_scale_idx_1000.isdraw = true
            hud_alt_scale_idx_1000.isvisible = true
            hud_alt_scale_idx_1000.use_mipfilter = true
            hud_alt_scale_idx_1000.additive_alpha = true
            hud_alt_scale_idx_1000.controllers = {
                {"hud_alt_boxclip", 0.045, alt_bar_pos_y * MMIL2MIL}
            }
            AddElementObject(hud_alt_scale_idx_1000)
            hud_alt_scale_idx_1000 = nil
        end

        -- Hundreds text
        hud_alt_scale_idx_100 = CreateElement "ceStringPoly"
        hud_alt_scale_idx_100.material = HUD_IND_FONT
        hud_alt_scale_idx_100.stringdefs = HUD_STRINGDEFS_DEF
        hud_alt_scale_idx_100.init_pos = {28, i * 30, 0}
        hud_alt_scale_idx_100.alignment = "LeftCenter"
        hud_alt_scale_idx_100.value = text100
        hud_alt_scale_idx_100.level = HUD_DEFAULT_LEVEL + 1
        hud_alt_scale_idx_100.parent_element = _dummyalt.name
        hud_alt_scale_idx_100.isdraw = true
        hud_alt_scale_idx_100.isvisible = true
        hud_alt_scale_idx_100.use_mipfilter = true
        hud_alt_scale_idx_100.additive_alpha = true
        hud_alt_scale_idx_100.controllers = {
            {"hud_alt_boxclip", 0.045, alt_bar_pos_y * MMIL2MIL}
        }
        AddElementObject(hud_alt_scale_idx_100)
        hud_alt_scale_idx_100 = nil
    end
end

----------------------------------------------------------------------------------------
--                    File by whisky.actual@gmail.com - v.1.2.2                       --
----------------------------------------------------------------------------------------