dofile(LockOn_Options.script_path .. "MFCD/MFCDs_defs.lua")

local page_root = create_page_root()

MFCD_TEX_IND1  = "mfcd_tex_ind1"
MFCD_TEX_IND2  = "mfcd_tex_ind2"

TEX_SIZE_X = 2048
TEX_SIZE_Y = 2048

--OSB
-- !!!! sync dtc_id with avDTC.h !!!!
local osb_txt = {
    --[[{
        value = "DTC OFF", init_pos = {0, MFCD_FONT_LR3_Y}, align = "CenterCenter",
        --ctrls = {{"dtc_state_label"}},
    },]]

    {
        value = "DATA", init_pos = {MFCD_FONT_UD1_X, MFCD_FONT_U_Y}, align = "CenterCenter",
        ctrls = {{"dtc_state_draw"}},
    },
    {
        value = "ALL",  init_pos = {MFCD_FONT_UD5_X, MFCD_FONT_U_Y}, align = "CenterCenter",
        ctrls = {{"dtc_state_draw"}},
    },
    {
        value = "EWS",  init_pos = {MFCD_FONT_R_HORI_X, MFCD_FONT_LR1_Y}, align = "RightCenter", dtc_id = 1,
        ctrls = {{"dtc_state_draw"}},
    },
    {
        value = "ENT",  init_pos = {MFCD_FONT_R_HORI_X, MFCD_FONT_LR5_Y}, align = "RightCenter",
        ctrls = {{"dtc_state_draw"}},
    },
    {
        value = "NAV",  init_pos = {MFCD_FONT_L_HORI_X, MFCD_FONT_LR1_Y}, align = "LeftCenter", dtc_id = 2,
        ctrls = {{"dtc_state_draw"}},
    },
    {
        value = "SMS",  init_pos = {MFCD_FONT_L_HORI_X, MFCD_FONT_LR2_Y}, align = "LeftCenter", dtc_id = 3,
        ctrls = {{"dtc_state_draw"}},
    },
    {
        value = "CNI",  init_pos = {MFCD_FONT_L_HORI_X, MFCD_FONT_LR3_Y}, align = "LeftCenter", dtc_id = 4,
        ctrls = {{"dtc_state_draw"}},
    },
    {
        value = "APR",  init_pos = {MFCD_FONT_L_HORI_X, MFCD_FONT_LR4_Y}, align = "LeftCenter", dtc_id = 5,
        ctrls = {{"dtc_state_draw"}},
    },
    {
        value = "OAP",  init_pos = {MFCD_FONT_L_HORI_X, MFCD_FONT_LR5_Y}, align = "LeftCenter", dtc_id = 6,
        ctrls = {{"dtc_state_draw"}},
    },
}

local text_strpoly
local mesh_poly

local HW = 0.15
local HH = 0.05
for i=1, #(osb_txt) do
    text_strpoly            = CreateElement "ceStringPoly"
    text_strpoly.material   = MFCD_FONT_DEF
    text_strpoly.stringdefs = MFCD_STRINGDEFS_DEF_X08
    text_strpoly.init_pos   = osb_txt[i].init_pos
    text_strpoly.alignment  = osb_txt[i].align
    text_strpoly.value      = osb_txt[i].value

    if osb_txt[i].stringdefs ~= nil then
        text_strpoly.stringdefs  = osb_txt[i].stringdefs
    end
    if osb_txt[i].ctrls ~= nil then
        text_strpoly.controllers = osb_txt[i].ctrls
    end
    
    AddToUpper(text_strpoly)

    if (osb_txt[i].dtc_id ~= nil) then
        -- box
        boxinitpos = text_strpoly.init_pos
        if text_strpoly.alignment == "LeftCenter" then
            boxinitpos[1] = MFCD_BOX3_L_HORI_X -- boxinitpos[1] + 0.06
        elseif text_strpoly.alignment == "RightCenter" then
            boxinitpos[1] = MFCD_BOX3_R_HORI_X -- boxinitpos[1] - 0.06
        end
        
        item_box             = CreateElement "ceTexPoly"
        item_box.material    = MFCD_TEX_IND2
        item_box.tex_coords  = MFCD_tex_coord(72, 1770, 116, 80, TEX_SIZE_X, TEX_SIZE_Y)
        item_box.init_pos    = {boxinitpos[1], boxinitpos[2], 0}
        item_box.vertices    = {{ 116/160 * 266.667/2000, 133.333/2000},
                                { 116/160 * 266.667/2000,-133.333/2000},
                                {-116/160 * 266.667/2000,-133.333/2000},
                                {-116/160 * 266.667/2000, 133.333/2000},}
        item_box.indices     = DEF_BOX_INDICES
        item_box.controllers = {{"DTC_osb_selected_reading", osb_txt[i].dtc_id}}
        AddToUpper(item_box)
        item_box = nil
        
        -- line
        boxinitpos[2] = boxinitpos[2] - 0.055
        local line_poly           = CreateElement "ceMeshPoly"
        line_poly.material        = MFCD_MATERIAL_GREEN --MakeMaterial(nil, MFCD_COLOR_GREEN)
        line_poly.primitivetype   = "triangles"
        line_poly.vertices        = {{ 0.08, 0.005},
                                     { 0.08, -0.005},
                                     {-0.08, -0.005},
                                     {-0.08, 0.005},}
        line_poly.indices         = DEF_BOX_INDICES
        line_poly.init_pos        = boxinitpos
        line_poly.isdraw          = true
        line_poly.isvisible       = true
        line_poly.use_mipfilter   = true
        line_poly.additive_alpha  = true
        line_poly.collimated      = false
        line_poly.controllers     = {{"DTC_osb_have_data", osb_txt[i].dtc_id},}
        AddToUpper(line_poly)
        line_poly = nil
    end
    
    
    text_strpoly = nil
end

local poly_txt = {
    {
        value = "DTC",  init_pos = {0, 0.5},     align = "CenterCenter", stringdefs = MFCD_STRINGDEFS_DEF_X15,
        ctrls = {{"DTC_state"}},
    },
    {
        value = "SN",   init_pos = {-0.65, 0.3}, align = "LeftCenter",
        ctrls = {{"DTC_serial_number"}},
    },
    {
        value = "PID",  init_pos = {-0.65, 0.1}, align = "LeftCenter",
        ctrls = {{"DTC_planeid"}},
    },
    {
        value = "EID",  init_pos = {-0.65,-0.2}, align = "LeftCenter",
        ctrls = {{"DTC_engineid"}},
    },
    {
        value = "EID",  init_pos = {-0.65,-0.4}, align = "LeftCenter",
        ctrls = {{"DTC_chief"}},
    },
}

for i=1, #(poly_txt) do
    text_strpoly                 = CreateElement "ceStringPoly"
    text_strpoly.material        = MFCD_FONT_DEF
    if (poly_txt[i].stringdefs ~= nil) then
        text_strpoly.stringdefs  = poly_txt[i].stringdefs
    else
        text_strpoly.stringdefs  = MFCD_STRINGDEFS_DEF
    end
    text_strpoly.init_pos        = poly_txt[i].init_pos
    text_strpoly.alignment       = poly_txt[i].align
    text_strpoly.value           = poly_txt[i].value
    if (poly_txt[i].ctrls ~= nil) then
        text_strpoly.controllers = poly_txt[i].ctrls
    end
    AddToUpper(text_strpoly)
    text_strpoly = nil
end
