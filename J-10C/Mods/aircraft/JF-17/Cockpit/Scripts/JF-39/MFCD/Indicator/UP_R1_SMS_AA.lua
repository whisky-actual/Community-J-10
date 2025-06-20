dofile(LockOn_Options.script_path .. "MFCD/MFCDs_defs.lua")

local page_root = create_page_root()

--dofile(LockOn_Options.script_path .. "MFCD/Indicator/UP_R1_SMS_Base.lua")
dofile(LockOn_Options.script_path .. "MFCD/Indicator/UP_R1_SMS_AA_Base.lua")


MFCD_TEX_IND1 = "mfcd_tex_ind1"
MFCD_TEX_IND2 = "mfcd_tex_ind2"

TEX_SIZE_X = 2048
TEX_SIZE_Y = 2048

---- 贴图部分
local texs = {
    {-- <----
        cx = -0.85, cy = MFCD_FONT_LR3_Y, hw = 233.333/2000, hh = 100/2000, ulx = 1480, uly = 1008, w = 140, h = 60,
        mat = MFCD_TEX_IND1, tex_sx = TEX_SIZE_X, tex_sy = TEX_SIZE_Y,
        ctrls = {{"mfcd_isedit_show", 0}, {"sms_aa_ir_msl", 0}},
    },
    {-- <----
        cx = -0.85, cy = MFCD_FONT_LR5_Y, hw = 233.333/2000, hh = 100/2000, ulx = 1480, uly = 1008, w = 140, h = 60,
        mat = MFCD_TEX_IND1, tex_sx = TEX_SIZE_X, tex_sy = TEX_SIZE_Y,
        ctrls = {{"mfcd_isedit_show", 0}, {"sms_aa_ir_msl", 0}},
    },
    {-- ---->
        cx = 0.85, cy = MFCD_FONT_LR3_Y, hw = 233.333/2000, hh = 100/2000, ulx = 1480, uly = 948, w = 140, h = 60,
        mat = MFCD_TEX_IND1, tex_sx = TEX_SIZE_X, tex_sy = TEX_SIZE_Y,
        ctrls = {{"mfcd_isedit_show", 0}, {"sms_aa_ir_msl", 0}},
    },
    
    {-- <----
        cx = -0.85, cy = MFCD_FONT_LR4_Y, hw = 233.333/2000, hh = 100/2000, ulx = 1480, uly = 1008, w = 140, h = 60,
        mat = MFCD_TEX_IND1, tex_sx = TEX_SIZE_X, tex_sy = TEX_SIZE_Y,
        ctrls = {{"mfcd_isedit_show", 0}, {"sms_state_draw"}},
    },
    {-- ---->
        cx = 0.85, cy = MFCD_FONT_LR4_Y, hw = 233.333/2000, hh = 100/2000, ulx = 1480, uly = 948, w = 140, h = 60,
        mat = MFCD_TEX_IND1, tex_sx = TEX_SIZE_X, tex_sy = TEX_SIZE_Y,
        ctrls = {{"mfcd_isedit_show", 0}, {"sms_state_draw"}},
    },
    {-- ----> 2
        cx = 0.85, cy = MFCD_FONT_LR5_Y, hw = 233.333/2000, hh = 100/2000, ulx = 1480, uly = 948, w = 140, h = 60,
        mat = MFCD_TEX_IND1, tex_sx = TEX_SIZE_X, tex_sy = TEX_SIZE_Y,
        ctrls = {{"mfcd_isedit_show", 0}, {"sms_state_draw"}},
    },
    
    --[[{-- L3 disable X
        cx = -0.5*238/512, cy = MFCD_FONT_LR3_Y, hw = 530/2000, hh = 336.667/2000, ulx = 1196, uly = 1188, w = 318, h = 202,
        mat = MFCD_TEX_IND1, tex_sx = TEX_SIZE_X, tex_sy = TEX_SIZE_Y,
        ctrls = {{"sms_prog_aa_l3_x_mark"}},
    },]]
    {-- L4 disable X
        cx = -0.5*238/512, cy = MFCD_FONT_LR4_Y, hw = 530/2000, hh = 336.667/2000, ulx = 1196, uly = 1188, w = 318, h = 202,
        mat = MFCD_TEX_IND1, tex_sx = TEX_SIZE_X, tex_sy = TEX_SIZE_Y,
        ctrls = {{"sms_prog_aa_l4_x_mark"}},
    },
    --[[{-- L5 disable X
        cx = -0.5*238/512, cy = MFCD_FONT_LR5_Y, hw = 530/2000, hh = 336.667/2000, ulx = 1196, uly = 1188, w = 318, h = 202,
        mat = MFCD_TEX_IND1, tex_sx = TEX_SIZE_X, tex_sy = TEX_SIZE_Y,
        ctrls = {{"sms_prog_aa_l5_x_mark"}},
    },]]
    --[[{-- R3 disable X
        cx = 0.5*238/512, cy = MFCD_FONT_LR3_Y, hw = 530/2000, hh = 336.667/2000, ulx = 1196, uly = 1188, w = 318, h = 202,
        mat = MFCD_TEX_IND1, tex_sx = TEX_SIZE_X, tex_sy = TEX_SIZE_Y,
        ctrls = {{"sms_prog_aa_r3_x_mark"}},
    },]]
    --[[{-- R4 disable X
        cx = 0.5*238/512, cy = MFCD_FONT_LR4_Y, hw = 530/2000, hh = 336.667/2000, ulx = 1196, uly = 1188, w = 318, h = 202,
        mat = MFCD_TEX_IND1, tex_sx = TEX_SIZE_X, tex_sy = TEX_SIZE_Y,
        ctrls = {{"sms_prog_aa_r4_x_mark"}},
    },
    {-- R5 disable X
        cx = 0.5*238/512, cy = MFCD_FONT_LR5_Y, hw = 530/2000, hh = 336.667/2000, ulx = 1196, uly = 1188, w = 318, h = 202,
        mat = MFCD_TEX_IND1, tex_sx = TEX_SIZE_X, tex_sy = TEX_SIZE_Y,
        ctrls = {{"sms_prog_aa_r5_x_mark"}},
    },]]
    
}

local tex_poly
for i=1, #(texs) do
    tex_poly             = CreateElement "ceTexPoly"
    tex_poly.material    = MFCD_TEX_IND1
    tex_poly.tex_coords  = MFCD_tex_coord(texs[i].ulx, texs[i].uly, texs[i].w, texs[i].h, texs[i].tex_sx, texs[i].tex_sy)
    tex_poly.init_pos    = {texs[i].cx, texs[i].cy, 0}
    tex_poly.vertices    = {{ texs[i].hw, texs[i].hh},
                            { texs[i].hw,-texs[i].hh},
                            {-texs[i].hw,-texs[i].hh},
                            {-texs[i].hw, texs[i].hh} }
    tex_poly.indices     = DEF_BOX_INDICES

    if texs[i].mat then
        tex_poly.material = texs[i].mat
    end
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
    {-- CLR D1
        cx = MFCD_FONT_UD1_X, cy = MFCD_FONT_D_Y - UP_CY, value = "CLR",
        ctrls = {{"sms_state_draw"}},
    },
    {-- CMBT D2
        cx = MFCD_FONT_UD2_X, cy = MFCD_FONT_D_Y - UP_CY, value = "CMBT",
        ctrls = {{"sms_state_draw"}},
    },
    {-- JET D4
        cx = MFCD_FONT_UD4_X, cy = MFCD_FONT_D_Y - UP_CY, value = "JET",
        ctrls = {{"sms_state_draw"}},
    },
    
    {-- Missle Arm State
        cx = MFCD_FONT_R_HORI_X, cy = MFCD_FONT_LR2_Y, value = "MSL STATE", align = "RightCenter",
        ctrls = {{"sms_prog_aa_msl_arm"}, {"mfcd_isedit_show", 0}},
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
    
    if texts[i].align then
        text_strpoly.alignment      = texts[i].align
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

