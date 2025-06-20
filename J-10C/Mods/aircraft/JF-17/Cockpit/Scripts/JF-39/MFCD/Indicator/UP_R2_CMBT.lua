dofile(LockOn_Options.script_path .. "MFCD/MFCDs_defs.lua")

local page_root = create_page_root()

local MFCD_TEX_IND1 = "mfcd_tex_ind1"
local MFCD_TEX_IND2 = "mfcd_tex_ind2"

__SHOW_ARM_STATE__ = true

dofile(LockOn_Options.script_path .. "MFCD/Indicator/UP_R1_SMS_Base.lua")



---- 贴图部分
local texs = {
    {-- 方框
        cx = -320/1000, cy = -358.333/1000, hw = 246.667/2000, hh = 476.667/2000, ulx = 1480, uly = 662, w = 148, h = 286,
        ctrls = {{"cmbt_oesp_state_draw"}},
    },
    {-- 方框
        cx =  320/1000, cy = -358.333/1000, hw = 246.667/2000, hh = 476.667/2000, ulx = 1480, uly = 662, w = 148, h = 286,
        ctrls = {{"cmbt_oesp_state_draw"}},
    },
}

local tex_poly
for i=1, #(texs) do
    tex_poly             = CreateElement "ceTexPoly"
    tex_poly.material    = MFCD_TEX_IND1
    tex_poly.tex_coords  = MFCD_tex_coord(texs[i].ulx, texs[i].uly, texs[i].w, texs[i].h, TEX_SIZE_X, TEX_SIZE_Y)
    tex_poly.init_pos    = {texs[i].cx, texs[i].cy, 0}
    tex_poly.vertices    = {{ texs[i].hw, texs[i].hh},
                            { texs[i].hw,-texs[i].hh},
                            {-texs[i].hw,-texs[i].hh},
                            {-texs[i].hw, texs[i].hh} }
    tex_poly.indices     = DEF_BOX_INDICES

    if texs[i].params then
        tex_poly.element_params = texs[i].params
    end
    if texs[i].ctrls then
        tex_poly.controllers    = texs[i].ctrls
    end

    AddToUpper(tex_poly)
    tex_poly = nil
end

---- 文字部分
local texts = {
    {-- CMBT
        cx = MFCD_FONT_UD1_X, cy = MFCD_FONT_U_Y, value = "CMBT",
    },
    {-- LOAD
        cx = MFCD_FONT_UD5_X, cy = MFCD_FONT_U_Y, value = "LOAD",
        ctrls = {{"sms_state_draw"}},
    },
    {-- FEED
        name = "sms_aa_feed_osb",
        cx = MFCD_FONT_UD2_X, cy = MFCD_FONT_U_Y, value = "FEED",
        ctrls = {{"sms_feed_blink"}},
    },
    {-- GUN
        name = "sms_aa_gun_osb",
        cx = MFCD_FONT_L_HORI_X, cy = MFCD_FONT_LR2_Y, value = "GUN", alignment = "LeftCenter",
        ctrls = {{"sms_gun_blink"}},
    },
    {-- STATE Label
        cx = 0, cy = MFCD_FONT_LR4_Y, value = "OESP OFF", alignment = "CenterBottom", strdef = MFCD_STRINGDEFS_DEF_X15,
        ctrls = {{"cmbt_oesp_state_label"}},
    },
    
    {-- FLARE
        cx = -320/1000, cy = -73.333/1000, value = "FLARE", ctrls = {{"cmbt_oesp_flare_flash"}},
    },
    {-- CHAFF
        cx =  320/1000, cy = -73.333/1000, value = "CHAFF", ctrls = {{"cmbt_oesp_chaff_flash"}},
    },
    
    -- TODO: requires controllers
    {-- AUTO
        cx = MFCD_FONT_L_HORI_X, cy = MFCD_FONT_LR3_Y, value = "AUTO", alignment = "LeftCenter", ctrls = {{"cmbt_oesp_mode_text"}},
    },
    {-- CH
        cx = MFCD_FONT_L_HORI_X, cy = MFCD_FONT_LR4_Y, value = "CH", alignment = "LeftCenter", ctrls = {{"cmbt_oesp_type_text"}},
    },
    {-- PRG02
        cx = MFCD_FONT_L_HORI_X, cy = MFCD_FONT_LR5_Y, value = "PRG02", alignment = "LeftCenter", ctrls = {{"cmbt_oesp_prog_text"}},
    },
    
    -- TODO: requires controllers
    {-- # upper flare
        cx = -320/1000, cy = -273.333/1000, value = "12", ctrls = {{"cmbt_flare_tot"}},
    },
    {-- # lower flare
        cx = -320/1000, cy = -490/1000, value = "5", ctrls = {{"cmbt_flare_low"}},
    },
    {-- # upper chaff
        cx =  320/1000, cy = -273.333/1000, value = "12", ctrls = {{"cmbt_chaff_tot"}},
    },
    {-- # lower chaff
        cx =  320/1000, cy = -490/1000, value = "5", ctrls = {{"cmbt_chaff_low"}},
    },
    
    
    -- SPJ    
    {-- STBY
        cx = MFCD_FONT_R_HORI_X, cy = MFCD_FONT_LR3_Y, value = "STBY", alignment = "RightCenter", ctrls = {{"cmbt_spj_state_text"}},
    },
    {-- TYPE1
        cx = MFCD_FONT_R_HORI_X, cy = MFCD_FONT_LR4_Y, value = "TYPE1", alignment = "RightCenter", ctrls = {{"cmbt_spj_type_text"}},
    },
    {-- F+B
        cx = MFCD_FONT_R_HORI_X, cy = MFCD_FONT_LR5_Y, value = "F+B", alignment = "RightCenter", ctrls = {{"cmbt_spj_direct_text"}},
    },
    
}

for i=1, #(texts) do
    text_strpoly            = CreateElement "ceStringPoly"
    text_strpoly.material   = MFCD_FONT_DEF
    text_strpoly.stringdefs = MFCD_STRINGDEFS_DEF
    text_strpoly.init_pos   = {texts[i].cx, texts[i].cy, 0}
    text_strpoly.alignment  = "CenterCenter"
    
    if texts[i].strdef then
        text_strpoly.stringdefs     = texts[i].strdef
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

gun_box             = CreateElement "ceTexPoly"
gun_box.material    = MFCD_TEX_IND2
gun_box.tex_coords  = MFCD_tex_coord(72, 1770, 116, 80, TEX_SIZE_X, TEX_SIZE_Y)
gun_box.init_pos    = {MFCD_BOX3_L_HORI_X, MFCD_FONT_LR2_Y, 0}
gun_box.vertices    = {{ 116/160 * 266.667/2000, 133.333/2000},
                       { 116/160 * 266.667/2000,-133.333/2000},
                       {-116/160 * 266.667/2000,-133.333/2000},
                       {-116/160 * 266.667/2000, 133.333/2000},}
gun_box.indices     = DEF_BOX_INDICES
gun_box.controllers = {{"sms_gun_box"}}
AddToUpper(gun_box)
gun_box = nil

feed_box             = CreateElement "ceTexPoly"
feed_box.material    = MFCD_TEX_IND2
feed_box.tex_coords  = MFCD_tex_coord(72, 1850, 138, 80, TEX_SIZE_X, TEX_SIZE_Y)
feed_box.init_pos    = {MFCD_FONT_UD2_X, MFCD_FONT_U_Y, 0}
feed_box.vertices    = {{ 138/160 * 266.667/2000, 133.333/2000},
                        { 138/160 * 266.667/2000,-133.333/2000},
                        {-138/160 * 266.667/2000,-133.333/2000},
                        {-138/160 * 266.667/2000, 133.333/2000},}
feed_box.indices     = DEF_BOX_INDICES
feed_box.controllers = {{"sms_feed_box"}}
AddToUpper(feed_box)
feed_box = nil


split_green_line                 = CreateElement "ceMeshPoly"
split_green_line.name            = "split_green_line"
split_green_line.material        = MFCD_MATERIAL_DEF
split_green_line.primitivetype   = "triangles"
split_green_line.vertices        = {{ 0.98, 0.006},
                                    { 0.98, -0.006},
                                    {-0.98, -0.006},
                                    {-0.98, 0.006},}
split_green_line.indices         = DEF_BOX_INDICES
split_green_line.init_pos        = {0, (MFCD_FONT_LR2_Y + MFCD_FONT_LR3_Y)/2, 0}
--split_green_line.h_clip_relation = h_clip_relations.COMPARE
split_green_line.level           = PAGE_LEVEL_CMBT
split_green_line.isdraw          = true
split_green_line.isvisible       = true
split_green_line.use_mipfilter   = true
split_green_line.additive_alpha  = true
split_green_line.collimated      = false
AddToUpper(split_green_line)
split_green_line = nil



