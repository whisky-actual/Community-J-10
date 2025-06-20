dofile(LockOn_Options.script_path .. "MFCD/MFCDs_defs.lua")

local page_root = create_page_root()

--dofile(LockOn_Options.script_path .. "MFCD/Indicator/UP_R1_SMS_Base.lua")
dofile(LockOn_Options.script_path .. "MFCD/Indicator/UP_R1_SMS_Base.lua")


---- 文字部分
local texts = {
    -- left
    {
        cx = MFCD_FONT_L_HORI_X, cy = MFCD_FONT_LR2_Y, value = "AA 1", alignment = "LeftCenter", -- TODO: controller
        ctrls = {{"sms_prog_list", 0}},
    },
    {
        cx = MFCD_FONT_L_HORI_X, cy = MFCD_FONT_LR3_Y, value = "AA 2", alignment = "LeftCenter", -- TODO: controller
        ctrls = {{"sms_prog_list", 1}},
    },
    {
        cx = MFCD_FONT_L_HORI_X, cy = MFCD_FONT_LR4_Y, value = "AG 1", alignment = "LeftCenter", -- TODO: controller
        ctrls = {{"sms_prog_list", 2}},
    },
    {
        cx = MFCD_FONT_L_HORI_X, cy = MFCD_FONT_LR5_Y, value = "AG 2", alignment = "LeftCenter", -- TODO: controller
        ctrls = {{"sms_prog_list", 3}},
    },
    
    -- right
    {
        cx = MFCD_FONT_R_HORI_X, cy = MFCD_FONT_LR2_Y, value = "AG 3", alignment = "RightCenter", -- TODO: controller
        ctrls = {{"sms_prog_list", 4}},
    },
    {
        cx = MFCD_FONT_R_HORI_X, cy = MFCD_FONT_LR3_Y, value = "AG 4", alignment = "RightCenter", -- TODO: controller
        ctrls = {{"sms_prog_list", 5}},
    },
    {
        cx = MFCD_FONT_R_HORI_X, cy = MFCD_FONT_LR4_Y, value = "AG 5", alignment = "RightCenter", -- TODO: controller
        ctrls = {{"sms_prog_list", 6}},
    },
    {
        cx = MFCD_FONT_R_HORI_X, cy = MFCD_FONT_LR5_Y, value = "AG 6", alignment = "RightCenter", -- TODO: controller
        ctrls = {{"sms_prog_list", 7}},
    },
    
}

for i=1, #(texts) do
    text_strpoly            = CreateElement "ceStringPoly"
    text_strpoly.material   = MFCD_FONT_DEF
    text_strpoly.stringdefs = MFCD_STRINGDEFS_DEF
    text_strpoly.init_pos   = {texts[i].cx, texts[i].cy, 0}
    text_strpoly.alignment  = "CenterCenter"
    
    if texts[i].name then
        text_strpoly.name           = texts[i].name
    end
    
    if texts[i].alignment then
        text_strpoly.alignment      = texts[i].alignment
    end    
    if texts[i].formats then
        text_strpoly.formats        = texts[i].formats
    end
    if texts[i].params then
        text_strpoly.element_params = texts[i].params
    end
    if texts[i].ctrls then
        text_strpoly.controllers    = texts[i].ctrls
    end
    if texts[i].value then
        text_strpoly.value          = texts[i].value
    end
    AddToUpper(text_strpoly)
    text_strpoly = nil
end

-- TODO: add controller
split_white_line                 = CreateElement "ceMeshPoly"
split_white_line.name            = "split_white_line"
split_white_line.material        = MFCD_MATERIAL_WHITE_Y
split_white_line.primitivetype   = "triangles"
split_white_line.vertices        = {{ 1.0,  0.006},
                                    { 1.0, -0.006},
                                    {-1.0, -0.006},
                                    {-1.0,  0.006},}
split_white_line.indices         = DEF_BOX_INDICES
split_white_line.init_pos        = {0, -0.4, 0}
--split_white_line.h_clip_relation = h_clip_relations.COMPARE
split_white_line.level           = PAGE_LEVEL_SMS
split_white_line.isdraw          = true
split_white_line.isvisible       = true
split_white_line.use_mipfilter   = true
split_white_line.additive_alpha  = true
split_white_line.collimated      = false
split_white_line.parent_element  = page_root.name
--split_white_line.controllers     = {{"apply_contrast"}}
--Add(split_white_line)
split_white_line = nil

