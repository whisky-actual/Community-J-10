dofile(LockOn_Options.script_path .. "MFCD/MFCDs_defs.lua")

local page_root = create_page_root()

dofile(LockOn_Options.script_path .. "MFCD/Indicator/UP_R1_SMS_Base.lua")


-- selection box for 1-7
local texs_local = {
    {
        cx = MFCD_BOX3_L_VERT_X, cy = MFCD_FONT_LR1_Y, hw = 173.333/2000, hh = 173.333/2000, ulx =   0, uly = 1944, w = 104, h = 104,
        ctrls = {{"sms_jet_pylon_select_box", 0}},
    },
    {
        cx = MFCD_FONT_UD1_X, cy = MFCD_FONT_U_Y, hw = 173.333/2000, hh = 173.333/2000, ulx =   0, uly = 1944, w = 104, h = 104,
        ctrls = {{"sms_jet_pylon_select_box", 1}},
    },
    {
        cx = MFCD_FONT_UD2_X, cy = MFCD_FONT_U_Y, hw = 173.333/2000, hh = 173.333/2000, ulx =   0, uly = 1944, w = 104, h = 104,
        ctrls = {{"sms_jet_pylon_select_box", 2}},
    },
    {
        cx = MFCD_FONT_UD3_X, cy = MFCD_FONT_U_Y, hw = 173.333/2000, hh = 173.333/2000, ulx =   0, uly = 1944, w = 104, h = 104,
        ctrls = {{"sms_jet_pylon_select_box", 3}},
    },
    {
        cx = MFCD_FONT_UD4_X, cy = MFCD_FONT_U_Y, hw = 173.333/2000, hh = 173.333/2000, ulx =   0, uly = 1944, w = 104, h = 104,
        ctrls = {{"sms_jet_pylon_select_box", 4}},
    },
    {
        cx = MFCD_FONT_UD5_X, cy = MFCD_FONT_U_Y, hw = 173.333/2000, hh = 173.333/2000, ulx =   0, uly = 1944, w = 104, h = 104,
        ctrls = {{"sms_jet_pylon_select_box", 5}},
    },
    {
        cx = MFCD_BOX3_R_VERT_X, cy = MFCD_FONT_LR1_Y, hw = 173.333/2000, hh = 173.333/2000, ulx =   0, uly = 1944, w = 104, h = 104,
        ctrls = {{"sms_jet_pylon_select_box", 6}},
    },
}

for i=1, #(texs_local) do
    tex_poly            = CreateElement "ceTexPoly"
    tex_poly.material   = MFCD_TEX_IND1
    tex_poly.init_pos   = {texs_local[i].cx, texs_local[i].cy, 0}
    tex_poly.vertices   = {{ texs_local[i].hw, texs_local[i].hh},
                           { texs_local[i].hw,-texs_local[i].hh},
                           {-texs_local[i].hw,-texs_local[i].hh},
                           {-texs_local[i].hw, texs_local[i].hh},}
    tex_poly.indices    = DEF_BOX_INDICES
    
    if texs_local[i].mat then
        tex_poly.material = texs_local[i].mat
    end
    if texs_local[i].state_tex then
        tex_poly.state_tex_coords = texs_local[i].multi_tex
    else    
        tex_poly.tex_coords = MFCD_tex_coord(texs_local[i].ulx, texs_local[i].uly, texs_local[i].w, texs_local[i].h, TEX_SIZE_X, TEX_SIZE_Y)
    end
    
    if texs_local[i].name then
        tex_poly.name = texs_local[i].name
    end
    if texs_local[i].parent_element then
        tex_poly.parent_element = texs_local[i].parent_element
    end
    
    if texs_local[i].ctrls then
        tex_poly.controllers = texs_local[i].ctrls
    end

    AddToUpper(tex_poly)
    tex_poly = nil
end

---- 文字部分
local texts = {
    {
        cx = MFCD_FONT_L_VERT_X, cy = MFCD_FONT_LR1_Y, value = "1", alignment = "LeftCenter", -- TODO: controller
        ctrls = {{"sms_state_draw"}},
    },
    {
        cx = MFCD_FONT_UD1_X, cy = MFCD_FONT_U_Y, value = "2", -- TODO: controller
        ctrls = {{"sms_state_draw"}},
    },
    {
        cx = MFCD_FONT_UD2_X, cy = MFCD_FONT_U_Y, value = "3", -- TODO: controller
        ctrls = {{"sms_state_draw"}},
    },
    {
        cx = MFCD_FONT_UD3_X, cy = MFCD_FONT_U_Y, value = "4", -- TODO: controller
        ctrls = {{"sms_state_draw"}},
    },
    {
        cx = MFCD_FONT_UD4_X, cy = MFCD_FONT_U_Y, value = "5", -- TODO: controller
        ctrls = {{"sms_state_draw"}},
    },
    {
        cx = MFCD_FONT_UD5_X, cy = MFCD_FONT_U_Y, value = "6", -- TODO: controller
        ctrls = {{"sms_state_draw"}},
    },
    {
        cx = MFCD_FONT_R_VERT_X, cy = MFCD_FONT_LR1_Y, value = "7", alignment = "RightCenter", -- TODO: controller
        ctrls = {{"sms_state_draw"}},
    },
    --[[{
        cx = MFCD_FONT_R_VERT_X, cy = MFCD_FONT_LR2_Y, value = "GUN", alignment = "RightCenter", -- TODO: controller
    },]]
    
    {-- big LOAD
        cx = 0.00, cy = -0.48 + 0.38, value = "SEL JETT", alignment = "CenterCenter", str = MFCD_STRINGDEFS_DEF_X15,
        ctrls = {{"sms_state_draw"}},
        --[[ctrls = {{"sms_jet_pylon_selected", 0}}]]
    },
    --[[{-- LOAD STA
        cx = -0.15, cy = -0.48 + 0.40, value = "JET PYLON 1", alignment = "LeftCenter", -- TODO: controller
        ctrls = {{"sms_jet_pylon_selected", 1}, {"sms_jet_pylon_id"}} -- TODO: controller
    },]]
    
}

for i=1, #(texts) do
    text_strpoly            = CreateElement "ceStringPoly"
    text_strpoly.material   = MFCD_FONT_DEF
    text_strpoly.stringdefs = MFCD_STRINGDEFS_DEF
    text_strpoly.init_pos   = {texts[i].cx, texts[i].cy, 0}
    text_strpoly.alignment  = "CenterCenter"
    
    if texts[i].str then
        text_strpoly.stringdefs     = texts[i].str
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

