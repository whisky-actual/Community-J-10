----[[ 导航信息 ]]

-- 航路点模板
local MAX_WPT_NUM = 30
for c = 0, (MAX_WPT_NUM-1) do
    -- 目标符号
    wpt_dot_sym                 = CreateElement "ceTexPoly"
    wpt_dot_sym.name            = "wpt_sym_" .. tostring(c)
    wpt_dot_sym.material        = MFCD_TEX_IND3
    wpt_dot_sym.tex_coords      = MFCD_tex_coord(962-24, 74-24, 48, 48, TEX_SIZE_X, TEX_SIZE_X)
    wpt_dot_sym.vertices        = {{ 80/2000,  80/2000},
                                   { 80/2000, -80/2000},
                                   {-80/2000, -80/2000},
                                   {-80/2000,  80/2000}}
    wpt_dot_sym.init_pos        = {0, FWD_COMP_BIAS, 0}
    wpt_dot_sym.indices         = DEF_BOX_INDICES
    wpt_dot_sym.level           = HSD_NAV_LEVEL + 2 + HSD_NAV_LEVEL_SHIFT
    wpt_dot_sym.h_clip_relation = h_clip_relations.COMPARE
    wpt_dot_sym.controllers     = {{"nav_update_wpt", c}}
    wpt_dot_sym.isdraw          = false
    wpt_dot_sym.use_mipfilter   = true
    wpt_dot_sym.isvisible       = true
    wpt_dot_sym.additive_alpha  = true
    AddToUpper(wpt_dot_sym)

    -- 目标识别
    wpt_text_poly                 = CreateElement "ceStringPoly"
    wpt_text_poly.name            = "wpt_id_" .. tostring(c)
    wpt_text_poly.material        = MFCD_FONT_G
    wpt_text_poly.stringdefs      = MFCD_STRINGDEFS_DEF_X075
    wpt_text_poly.alignment       = "LeftCenter"
    wpt_text_poly.init_pos        = {0, 0, 0}
    wpt_text_poly.value           = "0"
    wpt_text_poly.level           = HSD_NAV_LEVEL + 2 + HSD_NAV_LEVEL_SHIFT
    wpt_text_poly.formats         = {"%s"}
    wpt_text_poly.h_clip_relation = h_clip_relations.COMPARE
    wpt_text_poly.controllers     = {{"nav_update_wptid", 0.03, c}}
    wpt_text_poly.parent_element  = wpt_dot_sym.name
    wpt_text_poly.isdraw          = false
    wpt_text_poly.use_mipfilter   = true
    wpt_text_poly.additive_alpha  = true
    AddToUpper(wpt_text_poly)
    wpt_text_poly = nil
end

wpt_route_line                 = CreateElement "ceSimpleLineObject"
wpt_route_line.name            = "wpt_route_line"
wpt_route_line.material        = MFCD_MATERIAL_GREEN
wpt_route_line.width           = 0.005
wpt_route_line.init_pos        = {0, FWD_COMP_BIAS, 0}
wpt_route_line.level           = HSD_NAV_LEVEL + 2 + HSD_NAV_LEVEL_SHIFT
wpt_route_line.h_clip_relation = h_clip_relations.COMPARE
wpt_route_line.controllers     = {{"nav_update_wpt_route"}}
wpt_route_line.isdraw          = false
wpt_route_line.use_mipfilter   = true
wpt_route_line.additive_alpha  = true
AddToUpper(wpt_route_line)


-- To AF
af_dot_sym                 = CreateElement "ceTexPoly"
af_dot_sym.name            = "af_dot_sym"
af_dot_sym.material        = MFCD_TEX_IND3
af_dot_sym.tex_coords      = MFCD_tex_coord(962-24, 74-24, 48, 48, TEX_SIZE_X, TEX_SIZE_X)
af_dot_sym.vertices        = {{ 80/2000,  80/2000},
                              { 80/2000, -80/2000},
                              {-80/2000, -80/2000},
                              {-80/2000,  80/2000}}
af_dot_sym.init_pos        = {0, FWD_COMP_BIAS, 0}
af_dot_sym.indices         = DEF_BOX_INDICES
af_dot_sym.level           = HSD_NAV_LEVEL + 2 + HSD_NAV_LEVEL_SHIFT
af_dot_sym.h_clip_relation = h_clip_relations.COMPARE
af_dot_sym.controllers     = {{"nav_update_af_dot"}}
af_dot_sym.isdraw          = false
af_dot_sym.use_mipfilter   = true
af_dot_sym.isvisible       = true
af_dot_sym.additive_alpha  = true
AddToUpper(af_dot_sym)


-- DST
dst_mesh_poly                 = CreateElement "ceMeshPoly"
dst_mesh_poly.name            = "dst_sym_node"
dst_mesh_poly.material        = MFCD_MATERIAL_GREEN
dst_mesh_poly.init_pos        = {0, FWD_COMP_BIAS, 0}
dst_mesh_poly.level           = HSD_NAV_LEVEL + 2 + HSD_NAV_LEVEL_SHIFT
dst_mesh_poly.h_clip_relation = h_clip_relations.COMPARE
dst_mesh_poly.controllers     = {{"nav_update_dst"}}
dst_mesh_poly.isdraw          = true
dst_mesh_poly.use_mipfilter   = true
dst_mesh_poly.additive_alpha  = true
set_circle(dst_mesh_poly, 0.014, 0.002, 360, 36)
AddToUpper(dst_mesh_poly)

dst_diam_poly                 = CreateElement "ceMeshPoly"
dst_diam_poly.name            = "dst_sym_diam"
dst_diam_poly.material        = MFCD_MATERIAL_GREEN
dst_diam_poly.init_pos        = {0, 0, 0}
dst_diam_poly.level           = HSD_NAV_LEVEL + 2 + HSD_NAV_LEVEL_SHIFT
dst_diam_poly.h_clip_relation = h_clip_relations.COMPARE
dst_diam_poly.parent_element  = dst_mesh_poly.name
dst_diam_poly.isdraw          = true
dst_diam_poly.use_mipfilter   = true
dst_diam_poly.additive_alpha  = true
set_circle(dst_diam_poly, 0.030, 0.022, 360, 4)
AddToUpper(dst_diam_poly)

dst_text_poly                 = CreateElement "ceStringPoly"
dst_text_poly.name            = "dst_id_node"
dst_text_poly.material        = MFCD_FONT_G
dst_text_poly.stringdefs      = MFCD_STRINGDEFS_DEF_X075
dst_text_poly.alignment       = "LeftCenter"
dst_text_poly.init_pos        = {0.03, -0.03, 0}
dst_text_poly.value           = "0"
dst_text_poly.level           = HSD_NAV_LEVEL + 2 + HSD_NAV_LEVEL_SHIFT
dst_text_poly.formats         = {"%s"}
dst_text_poly.h_clip_relation = h_clip_relations.COMPARE
dst_text_poly.parent_element  = dst_mesh_poly.name
dst_text_poly.controllers     = {{"nav_update_dstid", 0.00}}
dst_text_poly.isdraw          = true
dst_text_poly.use_mipfilter   = true
dst_text_poly.additive_alpha  = true
AddToUpper(dst_text_poly)


-- APR模式
faf_dot_sym                 = CreateElement "ceTexPoly"
faf_dot_sym.name            = "faf_dot_sym"
faf_dot_sym.material        = MFCD_TEX_IND3
faf_dot_sym.tex_coords      = MFCD_tex_coord(962-24, 74-24, 48, 48, TEX_SIZE_X, TEX_SIZE_X)
faf_dot_sym.vertices        = {{ 80/2000,  80/2000},
                               { 80/2000, -80/2000},
                               {-80/2000, -80/2000},
                               {-80/2000,  80/2000}}
faf_dot_sym.init_pos        = {0, FWD_COMP_BIAS, 0}
faf_dot_sym.indices         = DEF_BOX_INDICES
faf_dot_sym.level           = HSD_NAV_LEVEL + 2 + HSD_NAV_LEVEL_SHIFT
faf_dot_sym.h_clip_relation = h_clip_relations.COMPARE
faf_dot_sym.controllers     = {{"nav_update_faf_dot"}}
faf_dot_sym.isdraw          = false
faf_dot_sym.use_mipfilter   = true
faf_dot_sym.isvisible       = true
faf_dot_sym.additive_alpha  = true
AddToUpper(faf_dot_sym)


faf_cir                 = CreateElement "ceSimpleLineObject"
faf_cir.name            = "faf_cir"
faf_cir.material        = MFCD_MATERIAL_DEF
faf_cir.width           = 2/600
faf_cir.init_pos        = {0, FWD_COMP_BIAS, 0}
faf_cir.level           = HSD_NAV_LEVEL + 2 + HSD_NAV_LEVEL_SHIFT
faf_cir.h_clip_relation = h_clip_relations.COMPARE
faf_cir.controllers     = {{"nav_update_faf_cir"}}
faf_cir.isdraw          = false
faf_cir.isvisible       = true
faf_cir.use_mipfilter   = true
faf_cir.additive_alpha  = true
AddToUpper(faf_cir)

apr_rwy_id                 = CreateElement "ceStringPoly"
apr_rwy_id.name            = "apr_rwy_id"
apr_rwy_id.material        = MFCD_FONT_G
apr_rwy_id.stringdefs      = MFCD_STRINGDEFS_DEF_X08
apr_rwy_id.alignment       = "CenterCenter"
apr_rwy_id.value           = ""
apr_rwy_id.init_pos        = {0, FWD_COMP_BIAS, 0}
apr_rwy_id.level           = HSD_NAV_LEVEL + 2 + HSD_NAV_LEVEL_SHIFT
apr_rwy_id.h_clip_relation = h_clip_relations.COMPARE
apr_rwy_id.controllers     = {{"nav_update_rwy_icon"},}
apr_rwy_id.isdraw          = false
apr_rwy_id.use_mipfilter   = true
apr_rwy_id.additive_alpha  = true
AddToUpper(apr_rwy_id)

--[[
rwy_mesh_poly                 = CreateElement "ceMeshPoly"
rwy_mesh_poly.name            = "rwy_mesh_poly"
rwy_mesh_poly.material        = MFCD_MATERIAL_GREEN
rwy_mesh_poly.init_pos        = {0, 0, 0}
rwy_mesh_poly.parent_element  = apr_rwy_id.name
rwy_mesh_poly.level           = HSD_NAV_LEVEL + 2 + HSD_NAV_LEVEL_SHIFT
rwy_mesh_poly.h_clip_relation = h_clip_relations.COMPARE
rwy_mesh_poly.isdraw          = true
rwy_mesh_poly.isvisible       = true
rwy_mesh_poly.use_mipfilter   = true
rwy_mesh_poly.additive_alpha  = true
set_circle(rwy_mesh_poly, 0.054, 0.044, 360, 36)
AddToUpper(rwy_mesh_poly)
]]

rwy_cir_sym                 = CreateElement "ceTexPoly"
rwy_cir_sym.material        = MFCD_TEX_IND2
rwy_cir_sym.tex_coords      = MFCD_tex_coord(1648, 1456, 96, 96, TEX_SIZE_X, TEX_SIZE_X)
rwy_cir_sym.vertices        = {{ 160/2000,  160/2000},
                               { 160/2000, -160/2000},
                               {-160/2000, -160/2000},
                               {-160/2000,  160/2000}}
rwy_cir_sym.init_pos        = {0, 0, 0}
rwy_cir_sym.indices         = DEF_BOX_INDICES
rwy_cir_sym.level           = HSD_NAV_LEVEL + 2 + HSD_NAV_LEVEL_SHIFT
rwy_cir_sym.h_clip_relation = h_clip_relations.COMPARE
rwy_cir_sym.parent_element  = apr_rwy_id.name
rwy_cir_sym.isdraw          = true
rwy_cir_sym.use_mipfilter   = true
rwy_cir_sym.isvisible       = true
rwy_cir_sym.additive_alpha  = true
AddToUpper(rwy_cir_sym)


apr_route_line                 = CreateElement "ceSimpleLineObject"
apr_route_line.name            = "apr_route_line"
apr_route_line.material        = MFCD_MATERIAL_GREEN
apr_route_line.width           = 0.005
apr_route_line.init_pos        = {0, FWD_COMP_BIAS, 0}
apr_route_line.level           = HSD_NAV_LEVEL + 2 + HSD_NAV_LEVEL_SHIFT
apr_route_line.h_clip_relation = h_clip_relations.COMPARE
apr_route_line.controllers     = {{"nav_update_apr_route", 0.044}}
apr_route_line.isdraw          = false
apr_route_line.use_mipfilter   = true
apr_route_line.additive_alpha  = true
AddToUpper(apr_route_line)

faf_rwy_line                 = CreateElement "ceSimpleLineObject"
faf_rwy_line.name            = "faf_rwy_line"
faf_rwy_line.material        = MFCD_MATERIAL_GREEN
faf_rwy_line.width           = 0.005
faf_rwy_line.init_pos        = {0, FWD_COMP_BIAS, 0}
faf_rwy_line.level           = HSD_NAV_LEVEL + 2 + HSD_NAV_LEVEL_SHIFT
faf_rwy_line.h_clip_relation = h_clip_relations.COMPARE
faf_rwy_line.controllers     = {{"nav_update_faf_rwy_line", 0.044}}
faf_rwy_line.isdraw          = false
faf_rwy_line.use_mipfilter   = true
faf_rwy_line.additive_alpha  = true
AddToUpper(faf_rwy_line)

-- ILS

_dummy_ils               = CreateElement "ceSimple"
_dummy_ils.level         = HSD_NAV_LEVEL + 2
_dummy_ils.isdraw        = true
_dummy_ils.isvisible     = true
_dummy_ils.init_pos      = {0, FWD_COMP_BIAS, 0}
_dummy_ils.controllers   = {{"nav_apr_ils_crs"},}
AddToUpper(_dummy_ils)

local ils_crs_arrow           = CreateElement "ceTexPoly"
ils_crs_arrow.name            = create_guid_string()
ils_crs_arrow.material        = MFCD_TEX_IND2
ils_crs_arrow.tex_coords      = MFCD_tex_coord(1520, 864, 64, 1184, TEX_SIZE_X, TEX_SIZE_Y)
ils_crs_arrow.vertices        = {{ 106.667/2000,  1973.333/2000},
                                 { 106.667/2000, -1973.333/2000},
                                 {-106.667/2000, -1973.333/2000},
                                 {-106.667/2000,  1973.333/2000}}
ils_crs_arrow.indices         = DEF_BOX_INDICES
ils_crs_arrow.level           = HSD_NAV_LEVEL + 2 + HSD_NAV_LEVEL_SHIFT
ils_crs_arrow.init_pos        = {0, 0, 0}
ils_crs_arrow.parent_element  = _dummy_ils.name
ils_crs_arrow.h_clip_relation = h_clip_relations.COMPARE
ils_crs_arrow.isdraw          = true
ils_crs_arrow.isvisible       = true
ils_crs_arrow.use_mipfilter   = true
ils_crs_arrow.additive_alpha  = true
ils_crs_arrow.collimated      = false
AddToUpper(ils_crs_arrow)

local ils_crs_deviate           = CreateElement "ceTexPoly"
ils_crs_deviate.name            = create_guid_string()
ils_crs_deviate.material        = MFCD_TEX_IND2
ils_crs_deviate.tex_coords      = MFCD_tex_coord(1584, 864, 64, 1184, TEX_SIZE_X, TEX_SIZE_Y)
ils_crs_deviate.vertices        = {{ 106.667/2000,  1973.333/2000},
                                   { 106.667/2000, -1973.333/2000},
                                   {-106.667/2000, -1973.333/2000},
                                   {-106.667/2000,  1973.333/2000}}
ils_crs_deviate.indices         = DEF_BOX_INDICES
ils_crs_deviate.level           = HSD_NAV_LEVEL + 2 + HSD_NAV_LEVEL_SHIFT
ils_crs_deviate.init_pos        = {0, 0, 0}
ils_crs_deviate.parent_element  = _dummy_ils.name
ils_crs_deviate.h_clip_relation = h_clip_relations.COMPARE
ils_crs_deviate.isdraw          = true
ils_crs_deviate.isvisible       = true
ils_crs_deviate.use_mipfilter   = true
ils_crs_deviate.additive_alpha  = true
ils_crs_deviate.collimated      = false
ils_crs_deviate.controllers     = {{"nav_apr_ils_loc", 0.10},}
AddToUpper(ils_crs_deviate)

local ils_deviate_mark           = CreateElement "ceTexPoly"
ils_deviate_mark.name            = create_guid_string()
ils_deviate_mark.material        = MFCD_TEX_IND2
ils_deviate_mark.tex_coords      = MFCD_tex_coord(1150, 772, 300, 44, TEX_SIZE_X, TEX_SIZE_Y)
ils_deviate_mark.vertices        = {{ 500/2000,  73.333/2000},
                                    { 500/2000, -73.333/2000},
                                    {-500/2000, -73.333/2000},
                                    {-500/2000,  73.333/2000}}
ils_deviate_mark.indices         = DEF_BOX_INDICES
ils_deviate_mark.level           = HSD_NAV_LEVEL + 2 + HSD_NAV_LEVEL_SHIFT
ils_deviate_mark.init_pos        = {0, 0, 0}
ils_deviate_mark.parent_element  = _dummy_ils.name
ils_deviate_mark.h_clip_relation = h_clip_relations.COMPARE
ils_deviate_mark.isdraw          = true
ils_deviate_mark.isvisible       = true
ils_deviate_mark.use_mipfilter   = true
ils_deviate_mark.additive_alpha  = true
ils_deviate_mark.collimated      = false
AddToUpper(ils_deviate_mark)


-- TACAN

tcn_crs_sym                 = CreateElement "ceTexPoly"
tcn_crs_sym.material        = MFCD_TEX_IND3_Y
tcn_crs_sym.tex_coords      = MFCD_tex_coord(148, 592, 148, 148, TEX_SIZE_X, TEX_SIZE_X)
tcn_crs_sym.vertices        = {{ 246.667/2000,  246.667/2000},
                               { 246.667/2000, -246.667/2000},
                               {-246.667/2000, -246.667/2000},
                               {-246.667/2000,  246.667/2000}}
tcn_crs_sym.init_pos        = {0, FWD_COMP_BIAS, 0}
tcn_crs_sym.indices         = DEF_BOX_INDICES
tcn_crs_sym.level           = HSD_NAV_LEVEL + 2 + HSD_NAV_LEVEL_SHIFT
tcn_crs_sym.h_clip_relation = h_clip_relations.COMPARE
tcn_crs_sym.controllers     = {{"nav_update_tcn_icon"},}
tcn_crs_sym.isdraw          = false
tcn_crs_sym.use_mipfilter   = true
tcn_crs_sym.additive_alpha  = true
AddToUpper(tcn_crs_sym)

tcn_crs_arrow                 = CreateElement "ceTexPoly"
tcn_crs_arrow.material        = MFCD_TEX_IND2_Y
tcn_crs_arrow.tex_coords      = MFCD_tex_coord(1648, 992, 48, 464, TEX_SIZE_X, TEX_SIZE_Y)
tcn_crs_arrow.vertices        = {{ 80/2000,  773.333/2000},
                                 { 80/2000, -773.333/2000},
                                 {-80/2000, -773.333/2000},
                                 {-80/2000,  773.333/2000}}
tcn_crs_arrow.indices         = DEF_BOX_INDICES
tcn_crs_arrow.level           = HSD_NAV_LEVEL + 2 + HSD_NAV_LEVEL_SHIFT
tcn_crs_arrow.h_clip_relation = h_clip_relations.COMPARE
tcn_crs_arrow.parent_element  = tcn_crs_sym.name
tcn_crs_arrow.controllers     = {{"nav_update_tcn_crs"},}
tcn_crs_arrow.isdraw          = false
tcn_crs_arrow.use_mipfilter   = true
tcn_crs_arrow.additive_alpha  = true
AddToUpper(tcn_crs_arrow)


tcn_brg_poly                 = CreateElement "ceTexPoly"
tcn_brg_poly.material        = MFCD_TEX_IND2_Y
tcn_brg_poly.tex_coords      = MFCD_tex_coord(930, 652, 64, 60, TEX_SIZE_X, TEX_SIZE_Y)
tcn_brg_poly.vertices        = {{ 106.667/2000,  100/2000},
                                { 106.667/2000, -100/2000},
                                {-106.667/2000, -100/2000},
                                {-106.667/2000,  100/2000}}
tcn_brg_poly.indices         = DEF_BOX_INDICES
tcn_brg_poly.init_pos        = {0, FWD_COMP_BIAS, 0}
tcn_brg_poly.controllers     = {{"nav_update_tcn_brg", 56.0},
                                {"move", 0, (616.667/1000-FWD_COMP_BIAS)*GetScale(), 0},} -- 0.94*GetScale()
tcn_brg_poly.isdraw          = false
tcn_brg_poly.isvisible       = true
tcn_brg_poly.use_mipfilter   = true
tcn_brg_poly.additive_alpha  = true
AddToUpper(tcn_brg_poly)
tcn_brg_poly = nil



tcn_text_poly                 = CreateElement "ceStringPoly"
tcn_text_poly.name            = "tcn_text_poly"
tcn_text_poly.material        = MFCD_FONT_Y
tcn_text_poly.stringdefs      = MFCD_STRINGDEFS_DEF_X07
tcn_text_poly.alignment       = "LeftCenter"
tcn_text_poly.init_pos        = {0.48, FWD_COMP_BIAS-0.30, 0}
tcn_text_poly.level           = HSD_NAV_LEVEL + 2 + HSD_NAV_LEVEL_SHIFT
--tcn_text_poly.h_clip_relation = h_clip_relations.COMPARE
tcn_text_poly.controllers     = {{"nav_update_tcn_text"}}
--tcn_text_poly.formats         = {"%s"}
tcn_text_poly.value           = "DIS-25.5\nBRG-243\nMCRS-215"
--tcn_text_poly.isdraw          = false
--tcn_text_poly.isvisible       = true
--tcn_text_poly.use_mipfilter   = true
--tcn_text_poly.additive_alpha  = true
AddToUpper(tcn_text_poly)
