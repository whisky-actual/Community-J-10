dofile(LockOn_Options.script_path .. "MFCD/MFCDs_defs.lua")

local page_root = create_page_root()

--dofile(LockOn_Options.script_path .. "MFCD/Indicator/UP_R1_SMS_Base.lua")
dofile(LockOn_Options.script_path .. "MFCD/Indicator/UP_R1_SMS_Load_Base.lua")


---- 文字部分
local texts = {
    -- left
    {
        cx = MFCD_FONT_L_HORI_X, cy = MFCD_FONT_LR1_Y, value = "PL-5E", alignment = "LeftCenter", -- TODO: controller
        ctrls = {{"sms_load_wpn_list", 0}},
    },
    {
        cx = MFCD_FONT_L_HORI_X, cy = MFCD_FONT_LR2_Y, value = "SD-10", alignment = "LeftCenter", -- TODO: controller
        ctrls = {{"sms_load_wpn_list", 1}},
    },
    {
        cx = MFCD_FONT_L_HORI_X, cy = MFCD_FONT_LR3_Y, value = "C-802K", alignment = "LeftCenter", -- TODO: controller
        ctrls = {{"sms_load_wpn_list", 2}},
    },
    {
        cx = MFCD_FONT_L_HORI_X, cy = MFCD_FONT_LR4_Y, value = "CM-802AKG", alignment = "LeftCenter", -- TODO: controller
        ctrls = {{"sms_load_wpn_list", 3}},
    },
    {
        cx = MFCD_FONT_L_HORI_X, cy = MFCD_FONT_LR5_Y, value = "RKT-1", alignment = "LeftCenter", -- TODO: controller
        ctrls = {{"sms_load_wpn_list", 4}},
    },
    
    -- right
    {
        cx = MFCD_FONT_R_HORI_X, cy = MFCD_FONT_LR1_Y, value = "MK-82", alignment = "RightCenter", -- TODO: controller
        ctrls = {{"sms_load_wpn_list", 5}},
    },
    {
        cx = MFCD_FONT_R_HORI_X, cy = MFCD_FONT_LR2_Y, value = "MK-83", alignment = "RightCenter", -- TODO: controller
        ctrls = {{"sms_load_wpn_list", 6}},
    },
    {
        cx = MFCD_FONT_R_HORI_X, cy = MFCD_FONT_LR3_Y, value = "WMD7", alignment = "RightCenter", -- TODO: controller
        ctrls = {{"sms_load_wpn_list", 7}},
    },
    --[[
    {
        cx = MFCD_FONT_R_HORI_X, cy = MFCD_FONT_LR4_Y, value = "SPJ", alignment = "RightCenter", -- TODO: controller
        ctrls = {{"sms_load_wpn_list", 8}},
    },
    {
        cx = MFCD_FONT_R_HORI_X, cy = MFCD_FONT_LR5_Y, value = "800L", alignment = "RightCenter", -- TODO: controller
        ctrls = {{"sms_load_wpn_list", 9}},
    },
    ]]
    
    {
        cx = MFCD_FONT_R_HORI_X, cy = MFCD_FONT_LR4_Y, value = "STEP", alignment = "RightCenter", -- TODO: controller
        --ctrls = {{"sms_load_wpn_list", 8}},
    },
    {
        cx = MFCD_FONT_R_HORI_X, cy = MFCD_FONT_LR5_Y, value = "BACK", alignment = "RightCenter", -- TODO: controller
        --ctrls = {{"sms_load_wpn_list", 9}},
    },
}

for i=1, #(texts) do
    text_strpoly            = CreateElement "ceStringPoly"
    text_strpoly.material   = MFCD_FONT_DEF
    text_strpoly.stringdefs = MFCD_STRINGDEFS_DEF
    text_strpoly.init_pos   = {texts[i].cx, texts[i].cy, 0}
    text_strpoly.alignment  = "CenterCenter"
    
    if texts[i].str then
        text_strpoly.stringdefs      = texts[i].str
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

