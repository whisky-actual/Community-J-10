dofile(LockOn_Options.script_path .. "MFCD/MFCDs_defs.lua")

local page_root = create_page_root()

local bias_x  =  0.08
local bias_x2 =  bias_x + 0.08
local bias_y  = -0.04
local bias_y2 =  0.04

-- 内容部分
local textsDown = {
-- Title
    {
        init_pos = {-927.833/1000, 351.333/1000}, alignment = "LeftCenter", stringdefs = MFCD_STRINGDEFS_DEF_X08,
        value = "WPN",
        ctrls = {{"sms_agdata_wpn"}},
    },
    {
        init_pos = {-415.666/1000, 351.333/1000}, alignment = "LeftCenter", stringdefs = MFCD_STRINGDEFS_DEF_X08,
        value = "STA",
        ctrls = {{"sms_agdata_sta"}},
    },
    
-- Row 2
    {
        init_pos = {-927.833/1000 + bias_x, 208.333/1000 + bias_y + bias_y2}, alignment = "LeftTop", stringdefs = MFCD_STRINGDEFS_DEF_X08,
        value = "MODE",
        ctrls = {{"sms_agdata_mode"}},
    },
    {
        init_pos = {-415.666/1000 + bias_x, 208.333/1000 + bias_y + bias_y2}, alignment = "LeftTop", stringdefs = MFCD_STRINGDEFS_DEF_X08,
        value = "FUZE",
        ctrls = {{"sms_agdata_fuze"}},
    },
-- Row 3
    {
        init_pos = {-927.833/1000 + bias_x, 65.333/1000 + bias_y + bias_y2}, alignment = "LeftTop", stringdefs = MFCD_STRINGDEFS_DEF_X08,
        value = "QTY",
        ctrls = {{"sms_agdata_qty"}},
    },
    {
        init_pos = {-415.666/1000 + bias_x, 65.333/1000 + bias_y + bias_y2}, alignment = "LeftTop", stringdefs = MFCD_STRINGDEFS_DEF_X08,
        value = "INTV",
        ctrls = {{"sms_agdata_intv"}},
    },
-- Row 4
    {
        init_pos = {-927.833/1000 + bias_x, -74.667/1000 + bias_y + bias_y2}, alignment = "LeftTop", stringdefs = MFCD_STRINGDEFS_DEF_X08,
        value = "BRK",
        ctrls = {{"sms_agdata_brkalt"}},
    },
-- Row 5
    {
        init_pos = {-927.833/1000 + bias_x, -214.667/1000 + bias_y + bias_y2}, alignment = "LeftTop", stringdefs = MFCD_STRINGDEFS_DEF_X08,
        value = "CODE",
        ctrls = {{"sms_agdata_code"}},
    },
    
-- TGT
    {
        init_pos = {195.334/1000 + bias_x,  208.333/1000  + bias_y + bias_y2}, alignment = "LeftTop", stringdefs = MFCD_STRINGDEFS_DEF_X08,
        value = "TGT COORD",
        ctrls = {{"sms_agdata_tgt_rng"}},
    },
    {
        init_pos = {195.334/1000 + bias_x2, 65.333/1000   + bias_y + bias_y2}, alignment = "LeftTop", stringdefs = MFCD_STRINGDEFS_DEF_X08,
        value = "    LAT",
        ctrls = {{"sms_agdata_tgt_lat"}},
    },
    {
        init_pos = {195.334/1000 + bias_x2, -74.667/1000  + bias_y + bias_y2}, alignment = "LeftTop", stringdefs = MFCD_STRINGDEFS_DEF_X08,
        value = "    LON",
        ctrls = {{"sms_agdata_tgt_lon"}},
    },
    {
        init_pos = {195.334/1000 + bias_x2, -214.667/1000 + bias_y + bias_y2}, alignment = "LeftTop", stringdefs = MFCD_STRINGDEFS_DEF_X08,
        value = "    ALT",
        ctrls = {{"sms_agdata_tgt_alt"}},
    },
}


for i=1, #(textsDown) do
    text_strpoly                 = CreateElement "ceStringPoly"
    text_strpoly.material        = MFCD_FONT_DEF
    text_strpoly.stringdefs      = MFCD_STRINGDEFS_DEF_X075
    text_strpoly.init_pos        = textsDown[i].init_pos or {0.0, 0.0, 0.0}
    text_strpoly.alignment       = "CenterCenter"
    
    if textsDown[i].stringdefs then
        text_strpoly.stringdefs = textsDown[i].stringdefs
    end   
    if textsDown[i].alignment then
        text_strpoly.alignment = textsDown[i].alignment
    end    
    if textsDown[i].formats then
        text_strpoly.formats = textsDown[i].formats
    end
    if textsDown[i].params then
        text_strpoly.element_params = textsDown[i].params
    end
    if textsDown[i].ctrls then
        text_strpoly.controllers = textsDown[i].ctrls
    end
    if textsDown[i].value then
        text_strpoly.value = textsDown[i].value
    end
    AddToLOWER(text_strpoly)
    text_strpoly = nil
end

