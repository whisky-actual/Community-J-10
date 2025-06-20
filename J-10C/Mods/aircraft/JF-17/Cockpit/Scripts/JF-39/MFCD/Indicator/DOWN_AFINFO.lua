dofile(LockOn_Options.script_path .. "MFCD/MFCDs_defs.lua")

local page_root = create_page_root()



local osb_txt = {
    {
        value="NEXT", init_pos={MFCD_FONT_R_HORI_X, MFCD_FONT_LR6_Y}, align="RightCenter",
        --ctrls = {{"nav_afinfo_page"}},
    },
    {
        value="BACK", init_pos={MFCD_FONT_R_HORI_X, MFCD_FONT_LR7_Y}, align="RightCenter",
        --ctrls = {{"nav_afinfo_page"}},
    },
    {
        value="RTN",  init_pos={MFCD_FONT_R_HORI_X, MFCD_FONT_LR8_Y}, align="RightCenter",
    },
}

for i=1, #(osb_txt) do
    text_strpoly                = CreateElement "ceStringPoly"
    text_strpoly.material       = MFCD_FONT_DEF
    text_strpoly.stringdefs     = MFCD_STRINGDEFS_DEF_X08
    text_strpoly.init_pos       = osb_txt[i].init_pos
    text_strpoly.alignment      = osb_txt[i].align
    text_strpoly.formats        = osb_txt[i].formats
    if osb_txt[i].params then
        text_strpoly.element_params = osb_txt[i].params
    end
    if osb_txt[i].ctrls then
        text_strpoly.controllers = osb_txt[i].ctrls
    end
    text_strpoly.name = "osb_txt_" .. i
    if osb_txt[i].value ~= nil then
        text_strpoly.value = osb_txt[i].value
    else
        text_strpoly.value = "OSB" .. i
    end
    AddToLOWER(text_strpoly)
    text_strpoly = nil
end



-- 内容部分
local textsDown = {
    {
        init_pos = {-0.65, 0.25}, alignment = "LeftCenter", stringdefs = MFCD_STRINGDEFS_DEF_X08,
        value = "NO.   DIS   BRG     ALT   ILS   TCN",
    },
    {
        init_pos = {-0.65, 0.17}, alignment = "LeftCenter", stringdefs = MFCD_STRINGDEFS_DEF_X08,
        value = "00      0     0    1693            ", ctrls = {{"nav_afinfo_list", 0}},
    },
    {
        init_pos = {-0.65, 0.10}, alignment = "LeftCenter", stringdefs = MFCD_STRINGDEFS_DEF_X08,
        value = "00      0     0    1693            ", ctrls = {{"nav_afinfo_list", 1}},
    },
    {
        init_pos = {-0.65, 0.03}, alignment = "LeftCenter", stringdefs = MFCD_STRINGDEFS_DEF_X08,
        value = "00      0     0    1693            ", ctrls = {{"nav_afinfo_list", 2}},
    },
    {
        init_pos = {-0.65, -0.04}, alignment = "LeftCenter", stringdefs = MFCD_STRINGDEFS_DEF_X08,
        value = "00      0     0    1693            ", ctrls = {{"nav_afinfo_list", 3}},
    },
    {
        init_pos = {-0.65, -0.11}, alignment = "LeftCenter", stringdefs = MFCD_STRINGDEFS_DEF_X08,
        value = "00      0     0    1693            ", ctrls = {{"nav_afinfo_list", 4}},
    },
    {
        init_pos = {-0.65, -0.18}, alignment = "LeftCenter", stringdefs = MFCD_STRINGDEFS_DEF_X08,
        value = "00      0     0    1693            ", ctrls = {{"nav_afinfo_list", 5}},
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

