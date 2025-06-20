dofile(LockOn_Options.script_path .. "MFCD/MFCDs_defs.lua")

local page_root = create_page_root()

-- OSB
local TXT_HW = 0.15
local HH = 0
--5 * H2W_SCALE

local osb_txt = {
    {value="1", init_pos={ MFCD_FONT_L_HORI_X, MFCD_FONT_LR1_Y }, align="LeftCenter", },
    {value="2", init_pos={ MFCD_FONT_L_HORI_X, MFCD_FONT_LR2_Y }, align="LeftCenter", },
    {value="3", init_pos={ MFCD_FONT_L_HORI_X, MFCD_FONT_LR3_Y }, align="LeftCenter", },
    {value="4", init_pos={ MFCD_FONT_L_HORI_X, MFCD_FONT_LR4_Y }, align="LeftCenter", },
    {value="5", init_pos={ MFCD_FONT_L_HORI_X, MFCD_FONT_LR5_Y }, align="LeftCenter", },
    
    {value="6", init_pos={ MFCD_FONT_R_HORI_X, MFCD_FONT_LR1_Y }, align="RightCenter",},
    {value="7", init_pos={ MFCD_FONT_R_HORI_X, MFCD_FONT_LR2_Y }, align="RightCenter",},
    {value="8", init_pos={ MFCD_FONT_R_HORI_X, MFCD_FONT_LR3_Y }, align="RightCenter",},
    {value="9", init_pos={ MFCD_FONT_R_HORI_X, MFCD_FONT_LR4_Y }, align="RightCenter",},
    {value="0", init_pos={ MFCD_FONT_R_HORI_X, MFCD_FONT_LR5_Y }, align="RightCenter",},
    
    {value="CLR", init_pos={ MFCD_FONT_UD1_X, MFCD_FONT_D_Y - UP_CY }, align="CenterCenter" },
}

local text_strpoly

for i=1, #(osb_txt) do
    text_strpoly                    = CreateElement "ceStringPoly"
    text_strpoly.material           = MFCD_FONT_DEF
    text_strpoly.BackgroundMaterial = MFCD_MATERIAL_DARK
    text_strpoly.stringdefs         = MFCD_STRINGDEFS_DEF_X08
    text_strpoly.init_pos           = osb_txt[i].init_pos
    text_strpoly.alignment          = osb_txt[i].align
    text_strpoly.formats            = osb_txt[i].formats

    --[[if osb_txt[i].ctrls then
        text_strpoly.controllers = osb_txt[i].ctrls
    end]]
    text_strpoly.controllers = {{"mfcd_isbgcolor"}, {"mfcd_isedit_show", 1}}

    if osb_txt[i].value ~= nil then
        text_strpoly.value = osb_txt[i].value
    else
        text_strpoly.value = "OSB" .. i
    end
    AddToUpper(text_strpoly)
    text_strpoly = nil
end

--[[
text_strpoly             = CreateElement "ceStringPoly"
text_strpoly.material    = MFCD_FONT_DEF
text_strpoly.stringdefs  = MFCD_STRINGDEFS_DEF_X08
text_strpoly.init_pos    = { MFCD_FONT_UD1_X, MFCD_FONT_U_Y }
text_strpoly.alignment   = "CenterCenter"
text_strpoly.controllers = {{"mfcd_isedit_show", 1}}
text_strpoly.value       = "RTN"
AddToUpper(text_strpoly)
text_strpoly = nil
]]
