dofile(LockOn_Options.script_path .. "MFCD/MFCDs_defs.lua")

local page_root = create_page_root()

--dofile(LockOn_Options.script_path .. "MFCD/Indicator/UP_R1_SMS_Base.lua")
dofile(LockOn_Options.script_path .. "MFCD/Indicator/UP_R1_SMS_AA_Base.lua")


---- 文字部分
local texts = {
    -- left
    {
        cx = MFCD_FONT_L_HORI_X, cy = MFCD_FONT_LR3_Y, value = "OFF", alignment = "LeftCenter", -- TODO: controller
        --ctrls = {{"sms_aa_limiter_list", 0}},
    },
    {
        cx = MFCD_FONT_L_HORI_X, cy = MFCD_FONT_LR4_Y, value = "0.2", alignment = "LeftCenter", -- TODO: controller
        --ctrls = {{"sms_aa_limiter_list", 1}},
    },
    {
        cx = MFCD_FONT_L_HORI_X, cy = MFCD_FONT_LR5_Y, value = "0.5", alignment = "LeftCenter", -- TODO: controller
        --ctrls = {{"sms_aa_limiter_list", 2}},
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
