dofile(LockOn_Options.common_script_path.."elements_defs.lua")
dofile(LockOn_Options.script_path .. "materials.lua")

RADIO_DEFAULT_LEVEL = 12

SetScale(FOV)

RADIO_LCD_FONT     = "radio_font_def"
RADIO_LCD_FONT_Y   = "radio_font_y"

RADIO_MATERIAL_DEF = "radio_mesh_def"
RADIO_MATERIAL_R   = "radio_mesh_r"
RADIO_MATERIAL_Y   = "radio_mesh_y"


RADIO_FONT_SIZE  = 0.0070
RADIO_FONT_SCALE = 0.95

RADIO_FONT_W = RADIO_FONT_SIZE / 1.1
RADIO_FONT_H = RADIO_FONT_SIZE * RADIO_FONT_SCALE

-- 同比例字体 :1                {高,          宽,字间,行间,水平偏,  垂直偏}
RADIO_STRINGDEFS_DEF = {RADIO_FONT_H, RADIO_FONT_W, RADIO_FONT_W * 0.14, 0}

DEF_BOX_INDICES = { 0,1,2, 0,2,3 }

H2W_SCALE = GetAspect()

function AddElementObject(object)
    if object.name == nil or string.len(object.name) < 1 then
        object.name = create_guid_string()
    end
    if object.h_clip_relation == nil then
        object.h_clip_relation = h_clip_relations.COMPARE
    end
    if (object.level == nil) or (object.level < RADIO_DEFAULT_LEVEL) then
        object.level = RADIO_DEFAULT_LEVEL
    end
    object.collimated         = false
    object.use_mipfilter      = true
    object.additive_alpha     = true
    --cur_poly.z_emable         = true
    Add(object)
end

function AddStringObject(object)
    object.stringdefs = RADIO_STRINGDEFS_DEF
    AddElementObject(object)
end
----------------------------------------------------------------------------------------
--                    File by whisky.actual@gmail.com - v.1.2.2                       --
----------------------------------------------------------------------------------------