dofile(LockOn_Options.script_path .. "MFCD/MFCDs_defs.lua")

local page_root = create_page_root()


--OSB
local osb_txt = {
    {
        value="RLS",  init_pos={MFCD_FONT_UD1_X, MFCD_FONT_U_Y}, align="CenterCenter"
    },
    {
        value="RTN",  init_pos={MFCD_FONT_UD5_X, MFCD_FONT_U_Y}, align="CenterCenter"
    },
    -- left
    {
        value="RLS1", init_pos={MFCD_FONT_L_HORI_X, MFCD_FONT_LR1_Y}, align="LeftCenter",
        ctrl = {{"data_rls_osb_txt", 0}},
    },
    {
        value="RLS2", init_pos={MFCD_FONT_L_HORI_X, MFCD_FONT_LR2_Y}, align="LeftCenter",
        ctrl = {{"data_rls_osb_txt", 1}},
    },
    {
        value="RLS3", init_pos={MFCD_FONT_L_HORI_X, MFCD_FONT_LR3_Y}, align="LeftCenter",
        ctrl = {{"data_rls_osb_txt", 2}},
    },
    {
        value="RLS4", init_pos={MFCD_FONT_L_HORI_X, MFCD_FONT_LR4_Y}, align="LeftCenter",
        ctrl = {{"data_rls_osb_txt", 3}},
    },
    {
        value="RLS5", init_pos={MFCD_FONT_L_HORI_X, MFCD_FONT_LR5_Y}, align="LeftCenter",
        ctrl = {{"data_rls_osb_txt", 4}},
    },
    -- right
    {
        value="RLS6", init_pos={MFCD_FONT_R_HORI_X, MFCD_FONT_LR1_Y}, align="RightCenter",
        ctrl = {{"data_rls_osb_txt", 5}},
    },
    {
        value="RLS7", init_pos={MFCD_FONT_R_HORI_X, MFCD_FONT_LR2_Y}, align="RightCenter",
        ctrl = {{"data_rls_osb_txt", 6}},
    },
    {
        value="RLS8", init_pos={MFCD_FONT_R_HORI_X, MFCD_FONT_LR3_Y}, align="RightCenter",
        ctrl = {{"data_rls_osb_txt", 7}},
    },
    {
        value="RLS9", init_pos={MFCD_FONT_R_HORI_X, MFCD_FONT_LR4_Y}, align="RightCenter",
        ctrl = {{"data_rls_osb_txt", 8}},
    },
    {
        value="RLS10", init_pos={MFCD_FONT_R_HORI_X, MFCD_FONT_LR5_Y}, align="RightCenter",
        ctrl = {{"data_rls_osb_txt", 9}},
    },
}

local text_strpoly
local mesh_poly

for i=1, #(osb_txt) do
    text_strpoly              = CreateElement "ceStringPoly"
    text_strpoly.material     = MFCD_FONT_DEF
    text_strpoly.stringdefs   = MFCD_STRINGDEFS_DEF_X08
    text_strpoly.init_pos     = osb_txt[i].init_pos
    text_strpoly.alignment    = osb_txt[i].align
    text_strpoly.value        = osb_txt[i].value
    text_strpoly.controllers  = osb_txt[i].ctrl
    AddToUpper(text_strpoly)
    text_strpoly = nil
end

-- detail
local self_data       = CreateElement "ceStringPoly"
self_data.material    = MFCD_FONT_DEF
self_data.stringdefs  = MFCD_STRINGDEFS_DEF_X08
--self_data.init_pos    = {(MFCD_FONT_UD2_X+MFCD_FONT_UD3_X)/2, MFCD_FONT_LR1_Y, 0}
--self_data.alignment   = "LeftTop"
self_data.init_pos    = {MFCD_FONT_UD3_X, MFCD_FONT_LR1_Y, 0}
self_data.alignment   = "CenterTop"
self_data.value       = "    RELEASE --\n     --:--:--\nWPN:         XXXXX\nALT:         ---\nPITCH:         -----\nTAS:         ----"
self_data.controllers = {{"data_rls_self_record"}}
AddToUpper(self_data)
self_data = nil

--[[
local env_title       = CreateElement "ceStringPoly"
env_title.material    = MFCD_FONT_DEF
env_title.stringdefs  = MFCD_STRINGDEFS_DEF_X08
env_title.init_pos    = {MFCD_FONT_UD3_X, MFCD_FONT_LR4_Y, 0}
env_title.alignment   = "CenterCenter"
env_title.value       = "WIND\n\n"
AddToUpper(env_title)
env_title = nil
]]

local env_data       = CreateElement "ceStringPoly"
env_data.material    = MFCD_FONT_DEF
env_data.stringdefs  = MFCD_STRINGDEFS_DEF_X08
env_data.init_pos    = {MFCD_FONT_UD3_X, MFCD_FONT_LR4_Y, 0}
env_data.alignment   = "CenterCenter"
env_data.value       = "WIND\n\nN 000 M/S    E 000 M/S"
env_data.controllers = {{"data_rls_env_record"}}
AddToUpper(env_data)
env_data = nil
