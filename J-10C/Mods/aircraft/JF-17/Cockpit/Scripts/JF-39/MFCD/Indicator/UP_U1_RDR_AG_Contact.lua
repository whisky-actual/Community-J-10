
--============================================================--

local MAX_CONTACTS = SA_CONTACT_NUM_SHARED
local MAX_HISTORY  = 4
local hh           = 246.667/2000

for c = 0, (MAX_CONTACTS-1) do
    for h = 0, (MAX_HISTORY-1) do
        -- 目标模板
        tex_poly          = CreateElement "ceTexPoly"
        tex_poly.name     = 'rdr_contact_ag_' .. tostring(c) .. '_' .. tostring(h)

        tex_poly.material     = MFCD_TEX_IND3_W
        tex_poly.init_pos     = {0, -rdr_frame_length_half, 0}
        --tex_poly.tex_coords = MFCD_tex_coord(304, 368, 366-304, 431-368, BASIC_TEX_SIZE_X, BASIC_TEX_SIZE_Y)
        tex_poly.vertices     = { {hh, hh}, {hh,-hh}, {-hh,-hh}, {-hh,hh}, }
        tex_poly.indices      = DEF_BOX_INDICES
        --
        tex_poly.state_tex_coords = {
            MFCD_tex_coord(1332,    0, 148, 148, TEX_SIZE_X, TEX_SIZE_Y),--0 静态物体
            MFCD_tex_coord(1184,    0, 148, 148, TEX_SIZE_X, TEX_SIZE_Y),--1 移动综合
        }

        tex_poly.controllers     = {{"rdr_update_contact_ag", c, h}}
        tex_poly.isdraw          = false
        tex_poly.use_mipfilter   = true
        tex_poly.additive_alpha  = false
        tex_poly.h_clip_relation = h_clip_relations.COMPARE
        tex_poly.level           = RDR_LEVEL
        AddToUpper(tex_poly)
        
        --[[
        -- alt str
        rdr_contact_alt_str                = CreateElement "ceStringPoly"
        rdr_contact_alt_str.material       = MFCD_FONT_W
        rdr_contact_alt_str.stringdefs     = MFCD_STRINGDEFS_DEF_X04
        rdr_contact_alt_str.alignment      = "LeftCenter"
        rdr_contact_alt_str.init_pos       = {0.25*hh, -0.25*hh}
        rdr_contact_alt_str.value          = "00"
        rdr_contact_alt_str.parent_element = tex_poly.name
        rdr_contact_alt_str.controllers    = {{"rdr_contact_ag_alt_str", c, h}}
        AddToUpper(rdr_contact_alt_str)
        rdr_contact_alt_str = nil
        ]]
        
        tex_poly = nil
    end
    
end

-- bcn
bcn_poly                 = CreateElement "ceTexPoly"
bcn_poly.name            = 'rdr_contact_bcn'
bcn_poly.material        = MFCD_TEX_IND3_W
bcn_poly.init_pos        = {0, -rdr_frame_length_half, 0}
bcn_poly.tex_coords      = MFCD_tex_coord(1332,    0, 148, 148, TEX_SIZE_X, TEX_SIZE_Y)
bcn_poly.vertices        = { {hh, hh}, {hh,-hh}, {-hh,-hh}, {-hh,hh}, }
bcn_poly.indices         = DEF_BOX_INDICES
bcn_poly.controllers     = {{"rdr_update_contact_bcn"}}
bcn_poly.isdraw          = false
bcn_poly.use_mipfilter   = true
bcn_poly.additive_alpha  = false
bcn_poly.h_clip_relation = h_clip_relations.COMPARE
bcn_poly.level           = RDR_LEVEL
AddToUpper(bcn_poly)

-- 锁定的目标
local tex_locked           = CreateElement "ceTexPoly"
tex_locked.name            = 'rdr_contact_ag_locked'
tex_locked.material        = MFCD_TEX_IND3_W
tex_locked.init_pos        = {0, -rdr_frame_length_half, 0}
--tex_locked.tex_coords      = MFCD_tex_coord(1184, 0, 148, 148, TEX_SIZE_X, TEX_SIZE_Y)
tex_locked.vertices        = { {hh, hh}, {hh,-hh}, {-hh,-hh}, {-hh,hh}, }
tex_locked.indices         = DEF_BOX_INDICES
tex_locked.state_tex_coords = {
    MFCD_tex_coord(1184,   0, 148, 148, TEX_SIZE_X, TEX_SIZE_Y), -- 目标回波
    MFCD_tex_coord( 740, 592, 148, 148, TEX_SIZE_X, TEX_SIZE_Y), -- 实心菱形
}
tex_locked.controllers     = {{"rdr_update_contact_ag_locked"}}
tex_locked.level           = RDR_LEVEL
tex_locked.h_clip_relation = h_clip_relations.COMPARE
tex_locked.isdraw          = false
tex_locked.use_mipfilter   = true
tex_locked.additive_alpha  = false
AddToUpper(tex_locked)


local tex_locked_hdg          = CreateElement "ceTexPoly"
tex_locked_hdg.name           = 'rdr_contact_ag_locked_hdg'
tex_locked_hdg.material       = MFCD_TEX_IND3_W
tex_locked_hdg.init_pos       = {0, 0, 0}
tex_locked_hdg.tex_coords     = MFCD_tex_coord(592, 0, 148, 148, TEX_SIZE_X, TEX_SIZE_Y)
tex_locked_hdg.vertices       = { {hh, hh}, {hh,-hh}, {-hh,-hh}, {-hh,hh}, }
tex_locked_hdg.indices        = DEF_BOX_INDICES
tex_locked_hdg.controllers    = {{"rdr_update_contact_ag_locked_hdg"}}
tex_locked_hdg.parent_element = tex_locked.name
tex_locked_hdg.use_mipfilter  = true
tex_locked_hdg.additive_alpha = false
AddToUpper(tex_locked_hdg)


local tex_locked_line_vert           = CreateElement "ceTexPoly"
tex_locked_line_vert.name            = 'rdr_contact_ag_locked_line_vert'
tex_locked_line_vert.material        = MFCD_TEX_IND5_W
tex_locked_line_vert.init_pos        = {0, 0, 0}
tex_locked_line_vert.tex_coords      = MFCD_tex_coord(2012, 0, 36, 1800, TEX_SIZE_X, TEX_SIZE_Y)
tex_locked_line_vert.vertices        = {{ 60/2000, 3000/2000},
                                        { 60/2000,-3000/2000},
                                        {-60/2000,-3000/2000},
                                        {-60/2000, 3000/2000},}
tex_locked_line_vert.indices         = DEF_BOX_INDICES
tex_locked_line_vert.level           = RDR_LEVEL
tex_locked_line_vert.h_clip_relation = h_clip_relations.COMPARE
tex_locked_line_vert.parent_element  = tex_locked.name
tex_locked_line_vert.use_mipfilter   = true
tex_locked_line_vert.additive_alpha  = false
AddToUpper(tex_locked_line_vert)


local tex_locked_line_hori           = CreateElement "ceTexPoly"
tex_locked_line_hori.name            = 'rdr_contact_ag_locked_line_hori'
tex_locked_line_hori.material        = MFCD_TEX_IND5_W
tex_locked_line_hori.init_pos        = {0, 0, 0}
tex_locked_line_hori.tex_coords      = MFCD_tex_coord(0, 2012, 1800, 36, TEX_SIZE_X, TEX_SIZE_Y)
tex_locked_line_hori.vertices        = {{ 3000/2000, 60/2000},
                                        { 3000/2000,-60/2000},
                                        {-3000/2000,-60/2000},
                                        {-3000/2000, 60/2000},}
tex_locked_line_hori.indices         = DEF_BOX_INDICES
tex_locked_line_hori.level           = RDR_LEVEL
tex_locked_line_hori.h_clip_relation = h_clip_relations.COMPARE
tex_locked_line_hori.parent_element  = tex_locked.name
tex_locked_line_hori.use_mipfilter   = true
tex_locked_line_hori.additive_alpha  = false
AddToUpper(tex_locked_line_hori)


-- 当前航路点
local current_wpt           = CreateElement "ceTexPoly"
current_wpt.name            = 'rdr_ag_current_wpt'
current_wpt.material        = MFCD_TEX_IND3_W
current_wpt.init_pos        = {0, -rdr_frame_length_half, 0}
current_wpt.tex_coords      = MFCD_tex_coord(1036, 0, 148, 148, TEX_SIZE_X, TEX_SIZE_Y)
current_wpt.vertices        = { {hh, hh}, {hh,-hh}, {-hh,-hh}, {-hh,hh}, }
current_wpt.indices         = DEF_BOX_INDICES
current_wpt.controllers     = {{"rdr_update_current_wpt", 1}, {"rdr_declutter_check"}}
current_wpt.isdraw          = true
current_wpt.use_mipfilter   = true
current_wpt.additive_alpha  = false
current_wpt.h_clip_relation = h_clip_relations.COMPARE
current_wpt.level           = RDR_LEVEL
AddToUpper(current_wpt)

local current_wpt_id           = CreateElement "ceStringPoly"
current_wpt_id.name            = 'rdr_ag_current_wpt_id'
current_wpt_id.material        = MFCD_FONT_W
current_wpt_id.stringdefs      = MFCD_STRINGDEFS_DEF_X04
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


-- ground stabilized point
local hh = 100/2000
map_spi_pnt                  = CreateElement "ceTexPoly"
map_spi_pnt.init_pos         = {0, -rdr_frame_length_half, 0}
map_spi_pnt.name             = 'map_spi_pnt'
map_spi_pnt.vertices         = { {hh, hh}, {hh,-hh}, {-hh,-hh}, {-hh,hh}, }
map_spi_pnt.indices          = DEF_BOX_INDICES
map_spi_pnt.material         = MFCD_TEX_IND5_W
map_spi_pnt.tex_coords       = MFCD_tex_coord(948, 79, 89, 89, TEX_SIZE_X, TEX_SIZE_Y)
map_spi_pnt.controllers      = {{'rdr_map_spi_pnt'},}
map_spi_pnt.isdraw           = false
map_spi_pnt.use_mipfilter    = true
map_spi_pnt.additive_alpha   = false
map_spi_pnt.h_clip_relation  = h_clip_relations.COMPARE
map_spi_pnt.level            = RDR_LEVEL
AddToUpper(map_spi_pnt)
map_spi_pnt = nil


-- frz a/c
local hh = 166.7/2000
local ac_sym           = CreateElement "ceTexPoly"
ac_sym.name            = "ag_frz_ac"
ac_sym.material        = MFCD_TEX_IND2_W
ac_sym.tex_coords      = MFCD_tex_coord(886, 716, 100, 100, TEX_SIZE_X, TEX_SIZE_Y)
ac_sym.vertices        = {{ hh,  hh},
                          { hh, -hh},
                          {-hh, -hh},
                          {-hh,  hh}}
ac_sym.indices         = DEF_BOX_INDICES
ac_sym.init_pos        = {0, -rdr_frame_length_half, 0}
ac_sym.h_clip_relation = h_clip_relations.COMPARE
ac_sym.level           = RDR_LEVEL
ac_sym.controllers     = {{'rdr_map_frz_ac'},}
ac_sym.isdraw          = false
ac_sym.use_mipfilter   = true
ac_sym.additive_alpha  = false
AddToUpper(ac_sym)


local hh = 126.667/2000
local ac_sym_x           = CreateElement "ceTexPoly"
ac_sym_x.material        = MFCD_TEX_IND1_W
ac_sym_x.tex_coords      = MFCD_tex_coord(1912, 86, 76, 76, TEX_SIZE_X, TEX_SIZE_Y)
ac_sym_x.vertices        = {{ hh,  hh},
                            { hh, -hh},
                            {-hh, -hh},
                            {-hh,  hh}}
ac_sym_x.indices         = DEF_BOX_INDICES
ac_sym_x.init_pos        = {0, -0.02, 0}
ac_sym_x.h_clip_relation = h_clip_relations.COMPARE
ac_sym_x.level           = RDR_LEVEL
ac_sym_x.parent_element  = ac_sym.name
ac_sym_x.controllers     = {{'rdr_map_frz_ac', 1.0},}
ac_sym_x.isdraw          = false
ac_sym_x.use_mipfilter   = true
ac_sym_x.additive_alpha  = false
AddToUpper(ac_sym_x)
