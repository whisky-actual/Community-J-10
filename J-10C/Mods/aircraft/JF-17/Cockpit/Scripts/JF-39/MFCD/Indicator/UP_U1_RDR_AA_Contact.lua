
--============================================================--

local MAX_CONTACTS = SA_CONTACT_NUM_SHARED
local MAX_HISTORY  = 4
local hh           = 246.667/2000

for c = 0, (MAX_CONTACTS-1) do
    for h = (MAX_HISTORY-1), 0, -1 do
        -- 目标模板
        tex_poly          = CreateElement "ceTexPoly"
        tex_poly.name     = 'rdr_contact_aa_' .. tostring(c) .. '_' .. tostring(h)

        tex_poly.material     = MFCD_TEX_IND3
        tex_poly.init_pos     = {0, -rdr_frame_length_half, 0}
        --tex_poly.tex_coords = MFCD_tex_coord(304, 368, 366-304, 431-368, BASIC_TEX_SIZE_X, BASIC_TEX_SIZE_Y)
        tex_poly.vertices     = { {hh, hh}, {hh,-hh}, {-hh,-hh}, {-hh,hh}, }
        tex_poly.indices      = DEF_BOX_INDICES
        --
        tex_poly.state_tex_coords = {
            MFCD_tex_coord( 148,    0, 148, 148, TEX_SIZE_X, TEX_SIZE_Y), -- 0 实心正方形 -- RAW
            MFCD_tex_coord( 296,  592, 148, 148, TEX_SIZE_X, TEX_SIZE_Y), -- 1 空心三角 (Skip)
            MFCD_tex_coord( 444,  592, 148, 148, TEX_SIZE_X, TEX_SIZE_Y), -- 2 空心圆 (Skip)

            MFCD_tex_coord( 296,    0, 148, 148, TEX_SIZE_X, TEX_SIZE_Y), -- 3 空心三角形 -- Track File
            MFCD_tex_coord( 592,    0, 148, 148, TEX_SIZE_X, TEX_SIZE_Y), -- 4 空心圆形 -- Track File
            MFCD_tex_coord( 296,  444, 148, 148, TEX_SIZE_X, TEX_SIZE_Y), -- 5 空心菱形 -- JAM

            MFCD_tex_coord( 148,    0, 148, 148, TEX_SIZE_X, TEX_SIZE_Y), -- 6 实心正方形 (Skip)
            MFCD_tex_coord( 296,  592, 148, 148, TEX_SIZE_X, TEX_SIZE_Y), -- 7 空心三角 (Skip)
            MFCD_tex_coord( 444,  592, 148, 148, TEX_SIZE_X, TEX_SIZE_Y), -- 8 空心圆 (Skip)

            MFCD_tex_coord( 444,    0, 148, 148, TEX_SIZE_X, TEX_SIZE_Y), -- 9 实心三角形 -- SPT
            MFCD_tex_coord( 740,    0, 148, 148, TEX_SIZE_X, TEX_SIZE_Y), --10 实心圆形 -- SPT
            MFCD_tex_coord( 148,  444, 148, 148, TEX_SIZE_X, TEX_SIZE_Y), --11 实心菱形

            MFCD_tex_coord(   0,    0, 148, 148, TEX_SIZE_X, TEX_SIZE_Y), --12 圆内三角 -- HPT
        }

        tex_poly.controllers     = {{"rdr_update_contact_aa", c, h}}
        tex_poly.isdraw          = false
        tex_poly.use_mipfilter   = true
        tex_poly.additive_alpha  = false
        tex_poly.h_clip_relation = h_clip_relations.COMPARE
        tex_poly.level           = RDR_LEVEL
        AddToUpper(tex_poly)

        -- alt str
        rdr_contact_alt_str                 = CreateElement "ceStringPoly"
        rdr_contact_alt_str.material        = MFCD_FONT_W
        rdr_contact_alt_str.stringdefs      = MFCD_STRINGDEFS_DEF_X06
        rdr_contact_alt_str.alignment       = "LeftTop"
        rdr_contact_alt_str.init_pos        = {0, 0}--{0.25*hh*1.5, -0.25*hh*1.5}
        rdr_contact_alt_str.value           = "00"
        rdr_contact_alt_str.parent_element  = tex_poly.name
        rdr_contact_alt_str.controllers     = {{"rdr_contact_aa_alt_str", c, h, 0.42*hh, 0.42*hh}}
        rdr_contact_alt_str.h_clip_relation = h_clip_relations.COMPARE
        rdr_contact_alt_str.level           = RDR_LEVEL
        AddToUpper(rdr_contact_alt_str)
        rdr_contact_alt_str = nil

        tex_poly = nil
    end

end


for c = 0, (MAX_CONTACTS-1) do
    -- 目标模板
    local tex_poly        = CreateElement "ceTexPoly"
    tex_poly.init_pos     = {0, -rdr_frame_length_half, 0}
    tex_poly.name         = 'rdr_dl_contact_' .. c .. '_0'
    tex_poly.vertices     = {{0.6*hh, 0.6*hh}, {0.6*hh,-0.6*hh}, {-0.6*hh,-0.6*hh}, {-0.6*hh,0.6*hh},}
    tex_poly.indices      = DEF_BOX_INDICES
    --

    tex_poly.material     = MFCD_TEX_IND3
    tex_poly.state_tex_coords = {
        MFCD_tex_coord( 148, 148, 148, 148, TEX_SIZE_X, TEX_SIZE_Y),--3 空心三角形+横线: 敌机
        MFCD_tex_coord( 740, 148, 148, 148, TEX_SIZE_X, TEX_SIZE_Y),--4 空心圆+横线    : 友机
    }
    tex_poly.controllers     = {{'rdr_dl_update_contact', c},}
    tex_poly.level           = RDR_LEVEL
    tex_poly.h_clip_relation = h_clip_relations.COMPARE
    tex_poly.isdraw          = false
    tex_poly.use_mipfilter   = true
    tex_poly.additive_alpha  = false
    AddToUpper(tex_poly)

    -- net ID
    local dl_contact_id              = CreateElement 'ceStringPoly'
    dl_contact_id.material           = MFCD_FONT_DEF
    dl_contact_id.stringdefs         = MFCD_STRINGDEFS_DEF_X05
    dl_contact_id.init_pos           = {0, 0, 0}
    dl_contact_id.alignment          = 'CenterCenter'
    dl_contact_id.value              = "00"
    dl_contact_id.level              = RDR_LEVEL
    dl_contact_id.h_clip_relation    = h_clip_relations.COMPARE
    dl_contact_id.controllers        = {{'rdr_dl_contact_text', c, 0},}
    dl_contact_id.parent_element     = tex_poly.name
    --AddToUpper(dl_contact_id)

    -- alt str
    local dl_contact_alt_str           = CreateElement "ceStringPoly"
    dl_contact_alt_str.material        = MFCD_FONT_DEF
    dl_contact_alt_str.stringdefs      = MFCD_STRINGDEFS_DEF_X05
    dl_contact_alt_str.init_pos        = {0.6*hh, -0.6*hh, 0}
    dl_contact_alt_str.alignment       = "LeftCenter"
    dl_contact_alt_str.value           = "00"
    dl_contact_alt_str.level           = RDR_LEVEL
    dl_contact_alt_str.h_clip_relation = h_clip_relations.COMPARE
    dl_contact_alt_str.controllers     = {{"rdr_dl_contact_text", c, 1}}
    dl_contact_alt_str.parent_element  = tex_poly.name
    AddToUpper(dl_contact_alt_str)

    tex_poly = nil
end

-- 当前航路点
local current_wpt           = CreateElement "ceTexPoly"
current_wpt.name            = 'rdr_aa_current_wpt'
current_wpt.material        = MFCD_TEX_IND3_W
current_wpt.init_pos        = {0, -rdr_frame_length_half, 0}
current_wpt.tex_coords      = MFCD_tex_coord(1036, 0, 148, 148, TEX_SIZE_X, TEX_SIZE_Y)
current_wpt.vertices        = { {hh, hh}, {hh,-hh}, {-hh,-hh}, {-hh,hh}, }
current_wpt.indices         = DEF_BOX_INDICES
current_wpt.controllers     = {{"rdr_update_current_wpt", 0}, {"rdr_declutter_check"}}
current_wpt.isdraw          = true
current_wpt.use_mipfilter   = true
current_wpt.additive_alpha  = false
current_wpt.h_clip_relation = h_clip_relations.COMPARE
current_wpt.level           = RDR_LEVEL
AddToUpper(current_wpt)

local current_wpt_id           = CreateElement "ceStringPoly"
current_wpt_id.name            = 'rdr_aa_current_wpt_id'
current_wpt_id.material        = MFCD_FONT_W
current_wpt_id.stringdefs      = MFCD_STRINGDEFS_DEF_X06
current_wpt_id.alignment       = "CenterCenter"
current_wpt_id.init_pos        = {0, 0}
current_wpt_id.value           = "00"
current_wpt_id.controllers     = {{"rdr_update_current_wpt_id"}, {"rdr_declutter_check"}}
current_wpt_id.parent_element  = current_wpt.name
current_wpt_id.isdraw          = true
current_wpt_id.use_mipfilter   = true
current_wpt_id.additive_alpha  = false
current_wpt_id.h_clip_relation = h_clip_relations.COMPARE
current_wpt_id.level           = RDR_LEVEL
AddToUpper(current_wpt_id)



---- exp ---
aa_exp_ref_box                 = CreateElement "ceSimpleLineObject"
aa_exp_ref_box.name            = "aa_exp_ref_box"
aa_exp_ref_box.material        = MFCD_MATERIAL_WHITE
aa_exp_ref_box.width           = 0.005
aa_exp_ref_box.init_pos        = {0, -740/1000, 0}
aa_exp_ref_box.level           = RDR_LEVEL
aa_exp_ref_box.h_clip_relation = h_clip_relations.COMPARE
aa_exp_ref_box.controllers     = {{"rdr_aa_exp_area", 1}}
aa_exp_ref_box.isdraw          = false
--aa_exp_ref_box.use_mipfilter   = true
--aa_exp_ref_box.additive_alpha  = true
AddToUpper(aa_exp_ref_box)


