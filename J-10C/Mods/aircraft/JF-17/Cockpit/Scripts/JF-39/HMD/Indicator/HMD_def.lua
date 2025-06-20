dofile(LockOn_Options.common_script_path.."elements_defs.lua")
dofile(LockOn_Options.common_script_path.."Fonts/symbols_locale.lua")
dofile(LockOn_Options.common_script_path.."Fonts/fonts_cmn.lua")
dofile(LockOn_Options.script_path.."materials.lua")
dofile(LockOn_Options.script_path.."fonts.lua")

----------------------------------------------------------------------------------------
-- JF-17 HMD Definitions
----------------------------------------------------------------------------------------
SetScale(MILLYRADIANS)

-- 20 deg x 20 deg
HUD_HALF_WIDTH  = math.rad(10.0) * 1000
HUD_HALF_HEIGHT = math.rad(10.0) * 1000

-- Unit conversions
DEGREE_TO_MRAD = 17.4532925199433
DEGREE_TO_RAD  = 0.0174532925199433
RAD_TO_DEGREE  = 57.29577951308233
MRAD_TO_DEGREE = 0.05729577951308233

-- Clipping layers
HUD_DEFAULT_LEVEL     = 9
HUD_NOCLIP_LEVEL      = HUD_DEFAULT_LEVEL - 1

INDTEXTURE_PATH       = IND_TEX_PATH

-- Colors
HUD_IND_COLOR         = materials["HUD_IND_DEF"]
HUD_IND_COLOR_R       = materials["HUD_IND_RED"]
HUD_IND_COLOR_G       = materials["HUD_IND_GREEN"]
HUD_IND_COLOR_B       = materials["HUD_IND_BLUE"]
HUD_IND_COLOR_W       = materials["HUD_IND_WHITE"]
HUD_IND_COLOR_D       = materials["HUD_IND_DARK"]
HUD_IND_COLOR_HIDE    = materials["HUD_IND_HIDE"]

-- Mesh and texture materials
HUD_MAT_DEF       = "hud_mesh_def"
HUD_MAT_BASE1     = "hud_mesh_base1"
HUD_MAT_BASE2     = "hud_mesh_base2"

HUD_TEX_IND1      = "hud_tex_ind1"
HUD_TEX_IND1_R    = "hud_tex_ind1_r"
HUD_TEX_IND1_Y    = "hud_tex_ind1_y"
HUD_TEX_CLIP      = "hud_tex_clip"

HUD_TEX_IND2      = "hud_tex_ind2"
HUD_TEX_IND2_R    = "hud_tex_ind2_r"
HUD_TEX_IND2_Y    = "hud_tex_ind2_y"

HUD_LINE_DEF      = "hud_line_dashed_def"

-- Fonts
HUD_IND_FONT      = "hud_font_def"
HUD_IND_FONT_G    = "hud_font_g"
HUD_IND_FONT_B    = "hud_font_b"
HUD_IND_FONT_W    = "hud_font_w"
HUD_IND_FONT_R    = "hud_font_r"
HUD_BIG_IND_FONT  = "hud_big_font_def"

local fontscale = 1
HUD_FONT_W = 0.0045 * 144 / 128 * 1.27
HUD_FONT_H = fontscale * HUD_FONT_W

HUD_STRINGDEFS_DEF     = {HUD_FONT_W, HUD_FONT_H, HUD_FONT_W * 0.032625, 0}
HUD_STRINGDEFS_DEF_X08 = {0.8 * HUD_FONT_W, 0.8 * HUD_FONT_H, 0, 0}
HUD_STRINGDEFS_DEF_X12 = {1.2 * HUD_FONT_W, 1.2 * HUD_FONT_H, 0, 0}
HUD_STRINGDEFS_DEF_X15 = {1.5 * HUD_FONT_W, 1.5 * HUD_FONT_H, 0, 0}
HUD_STRINGDEFS_DEF_X20 = {2.0 * HUD_FONT_W, 2.0 * HUD_FONT_H, 0, 0}

DEF_BOX_INDICES = { 0, 1, 2, 0, 2, 3 }

fpm_name = "hud_fpm"

HUD_TEX_IND1_W = 1200
HUD_TEX_IND1_H = 1200
HUD_TEX_IND2_W = 1200
HUD_TEX_IND2_H = 1200

MIL2MMIL = 1000
MMIL2MIL = 0.001

-- Bias and positioning
horizon_offset      = -0.0 * DEGREE_TO_MRAD
vert_bias           = -1.5 * DEGREE_TO_MRAD
center_vert_bias    = -4.0 * DEGREE_TO_MRAD

general_vert_bias = -54.118
spd_bar_vert_bias = general_vert_bias
alt_bar_vert_bias = general_vert_bias
hdg_bar_vert_bias =  16.198

range_l  = -6.0
range_r  =  6.0
range_u  =  0.005
range_d  = -9.5
range_d2 = -11

----------------------------------------------------------------------------------------
-- HUD Utility Functions
----------------------------------------------------------------------------------------

function AddElementObject(object)
    if not object.name or string.len(object.name) < 1 then
        object.name = create_guid_string()
    end

    if (type(object.stringdefs) ~= "table") or (next(object.stringdefs) == nil) then
        object.stringdefs = HUD_STRINGDEFS_DEF
    end

    if (not object.level) or (object.level < HUD_DEFAULT_LEVEL) then
        object.level = HUD_DEFAULT_LEVEL
    end

    object.h_clip_relation = h_clip_relations.COMPARE
    object.isdraw          = true
    object.isvisible       = true
    object.use_mipfilter   = true
    object.additive_alpha  = true
    object.collimated      = true
    Add(object)
end

function HUD_tex_coord(UL_X, UL_Y, W, H, SZX, SZY)
    local ux = UL_X / SZX
    local uy = UL_Y / SZY
    local w  = W / SZX
    local h  = H / SZY
    return {
        {ux + w, uy},
        {ux + w, uy + h},
        {ux    , uy + h},
        {ux    , uy}
    }
end

function SetMeshCircle(object, radius, numpts)
    local verts = {}
    local inds = {}
    local step = math.rad(360.0 / numpts)

    verts[1] = {0, 0}
    for i = 1, numpts + 1 do
        local angle = step * (i - 1)
        verts[i + 1] = {radius * math.cos(angle), radius * math.sin(angle)}
    end

    for i = 1, numpts do
        table.insert(inds, 1)
        table.insert(inds, i + 1)
        table.insert(inds, i + 2)
    end

    object.vertices = verts
    object.indices  = inds
end

function AddHUDElement(object)
    object.use_mipfilter   = true
    object.h_clip_relation = h_clip_relations.COMPARE
    object.level           = HUD_DEFAULT_LEVEL
    object.additive_alpha  = true
    object.collimated      = true
    Add(object)
end

function AddToFPM(elem)
    elem.parent_element = fpm_name
    AddHUDElement(elem)
    return elem
end

function AddToGunCross(elem)
    AddHUDElement(elem)
    return elem
end
----------------------------------------------------------------------------------------
-- JF-39 HMD Elements
----------------------------------------------------------------------------------------

local box_indices = {0, 1, 2, 0, 2, 3}
local HUD_IND_TEX_PATH = LockOn_Options.script_path .. "JF-39/Textures/Hud/"
HMD_Circle = MakeMaterial(HUD_IND_TEX_PATH.."HMD_CIRCLE", HUD_IND_COLOR_G)

-- Texture coordinate mapping
function HMD_texture_box(UL_X, UL_Y, W, H, texture_size_x, texture_size_y)
    local ux = UL_X / texture_size_x
    local uy = UL_Y / texture_size_y
    local w = W / texture_size_x
    local h = H / texture_size_y
    return {
        {ux,       uy},
        {ux + w,   uy},
        {ux + w,   uy + h},
        {ux,       uy + h}
    }
end

-- Creates the circle element
function create_HMD_Circle(HUD_material, UL_X, UL_Y, DR_X, DR_Y, scale, CENTER_X, CENTER_Y)

    local mils_per_texel = scale / 7  -- texel-to-milliradian ratio

    local W = DR_X - UL_X
    local H = DR_Y - UL_Y
    local cx = UL_X + 0.5 * W
    local cy = UL_Y + 0.5 * H

    CENTER_X = CENTER_X or cx
    CENTER_Y = CENTER_Y or cy

    local dcx = mils_per_texel * (CENTER_X - cx)
    local dcy = mils_per_texel * (CENTER_Y - cy)

    local half_x = 0.5 * W * mils_per_texel
    local half_y = 0.5 * H * mils_per_texel

    local object = CreateElement "ceTexPoly"
    object.material = HUD_material
    object.vertices = {
        {-half_x - dcx,  half_y + dcy},
        { half_x - dcx,  half_y + dcy},
        { half_x - dcx, -half_y + dcy},
        {-half_x - dcx, -half_y + dcy}
    }
    object.tex_coords = HMD_texture_box(UL_X, UL_Y, W, H, 2048, 2048)
    object.indices = box_indices
    
	-- HUD-specific render properties
    object.init_pos = {0, 0, 0}  -- Optional: move the circle
    object.h_clip_relation = h_clip_relations.COMPARE
    object.level = HUD_DEFAULT_LEVEL
    object.additive_alpha = true
    object.collimated = true
    object.use_mipfilter = true
    object.isvisible = true

    return object
end

----------------------------------------------------------------------------------------
--                    File by whisky.actual@gmail.com - v.1.2.2                       --
----------------------------------------------------------------------------------------