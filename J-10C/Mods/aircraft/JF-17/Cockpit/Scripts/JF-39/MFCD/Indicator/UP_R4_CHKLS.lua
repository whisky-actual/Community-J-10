dofile(LockOn_Options.script_path .. "MFCD/MFCDs_defs.lua")

local page_root = create_page_root()



-- Title
local Poly_Text        = CreateElement "ceStringPoly"
Poly_Text.material     = MFCD_FONT_DEF
Poly_Text.stringdefs   = MFCD_STRINGDEFS_DEF_X15
Poly_Text.init_pos     = {0.1, 0.6, 0}
Poly_Text.alignment    = "CenterCenter"
Poly_Text.value        = "CHECK LIST (WIP)"
Poly_Text.controllers  = {{"CHKLST_subsys_name",},}
AddToUpper(Poly_Text)
Poly_Text = nil

local osb_txt = {
    {value="CHLST",      init_pos={ MFCD_FONT_UD1_X, MFCD_FONT_U_Y},                            align="CenterCenter"},
	{value="COLD",      init_pos={ MFCD_FONT_UD3_X, MFCD_FONT_U_Y},                             align="CenterCenter", controller = {{"CHKLST_stage_name"},}},
    {value="S\nY\nS",    init_pos={ MFCD_FONT_L_HORI_X, (MFCD_FONT_LR1_Y + MFCD_FONT_LR2_Y)/2}, align="LeftCenter", controller = {{"CHKLST_subsys_info"},}},
    {value="P\nA\nG\nE", init_pos={ MFCD_FONT_L_HORI_X, (MFCD_FONT_LR4_Y + MFCD_FONT_LR5_Y)/2}, align="LeftCenter", controller = {{"CHKLST_page_info"},}},
}

local text_strpoly
local mesh_poly

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
    if osb_txt[i].controller then
        text_strpoly.controllers = osb_txt[i].controller
    end
    text_strpoly.name = "osb_txt_" .. i
    if osb_txt[i].value ~= nil then
        text_strpoly.value = osb_txt[i].value
    else
        text_strpoly.value = "OSB" .. i
    end
    AddToUpper(text_strpoly)
    text_strpoly = nil
end

----
local MFCD_TEX_IND1_W  = "mfcd_tex_ind1_w"
local MFCD_TEX_IND1_SIZE_X = 2048
local MFCD_TEX_IND1_SIZE_Y = 2048
local tex_polys = {
    { -- subsys prev
        material = MFCD_TEX_IND1_W,
        init_pos = {MFCD_BOX3_L_VERT_X, MFCD_FONT_LR1_Y},
        vertices = {{113.333/2000, 113.333/2000}, {113.333/2000, -113.333/2000}, {-113.333/2000, -113.333/2000}, {-113.333/2000, 113.333/2000}},
        tex_coords = MFCD_tex_coord(1196, 1596, 68, 68, MFCD_TEX_IND1_SIZE_X, MFCD_TEX_IND1_SIZE_Y),
        ctrls = {{"CHKLST_have_dev", -1}},
    },
    { -- subsys next
        material = MFCD_TEX_IND1_W,
        init_pos = {MFCD_BOX3_L_VERT_X, MFCD_FONT_LR2_Y},
        vertices = {{113.333/2000, 113.333/2000}, {113.333/2000, -113.333/2000}, {-113.333/2000, -113.333/2000}, {-113.333/2000, 113.333/2000}},
        tex_coords = MFCD_tex_coord(1196, 1664, 68, 68, MFCD_TEX_IND1_SIZE_X, MFCD_TEX_IND1_SIZE_Y),
        ctrls = {{"CHKLST_have_dev", 1}},
    },
    { -- page prev
        material = MFCD_TEX_IND1_W,
        init_pos = {MFCD_BOX3_L_VERT_X, MFCD_FONT_LR4_Y},
        vertices = {{113.333/2000, 113.333/2000}, {113.333/2000, -113.333/2000}, {-113.333/2000, -113.333/2000}, {-113.333/2000, 113.333/2000}},
        tex_coords = MFCD_tex_coord(1196, 1596, 68, 68, MFCD_TEX_IND1_SIZE_X, MFCD_TEX_IND1_SIZE_Y),
        ctrls = {{"CHKLST_have_page", -1}},
    },
    { -- page next
        material = MFCD_TEX_IND1_W,
        init_pos = {MFCD_BOX3_L_VERT_X, MFCD_FONT_LR5_Y},
        vertices = {{113.333/2000, 113.333/2000}, {113.333/2000, -113.333/2000}, {-113.333/2000, -113.333/2000}, {-113.333/2000, 113.333/2000}},
        tex_coords = MFCD_tex_coord(1196, 1664, 68, 68, MFCD_TEX_IND1_SIZE_X, MFCD_TEX_IND1_SIZE_Y),
        ctrls = {{"CHKLST_have_page", 1}},
    },
}

local tex_poly
for i=1, #(tex_polys) do
    tex_poly              = CreateElement "ceTexPoly"
    tex_poly.material     = WHITE
    if tex_polys[i].material ~= nil then
        tex_poly.material = tex_polys[i].material
    end
    tex_poly.vertices     = tex_polys[i].vertices
    tex_poly.tex_coords   = tex_polys[i].tex_coords
    tex_poly.init_pos     = {0, 0, 0}

    if tex_polys[i].init_pos ~= nil then
        tex_poly.init_pos = tex_polys[i].init_pos
    end
    
    if tex_polys[i].ctrls  then
        tex_poly.controllers = tex_polys[i].ctrls
    end
    
    tex_poly.indices = DEF_BOX_INDICES
    AddToUpper(tex_poly)
    tex_poly = nil
end

--
tex_poly     = CreateElement "ceSimpleLineObject"
tex_poly.material  = MFCD_MATERIAL_GREEN
tex_poly.width     = 0.005
tex_poly.init_pos  = {0.05, 0.6, 0}
tex_poly.vertices  = {{ -0.75,  0.1, 0}, { 0.75, 0.1, 0}, {0.75, -0.1, 0}, {-0.75,  -0.1, 0}, { -0.75,  0.1, 0}}
AddToUpper(tex_poly)
tex_poly = nil

--
tex_poly     = CreateElement "ceSimpleLineObject"
tex_poly.material  = MFCD_MATERIAL_GREEN
tex_poly.width     = 0.005
tex_poly.init_pos  = {0.05, -0.2, 0}
tex_poly.vertices  = {{ -0.75, 0.68, 0}, { 0.75, 0.68, 0}, {0.75, -0.68, 0}, {-0.75, -0.68, 0}, { -0.75, 0.68, 0}}
AddToUpper(tex_poly)
tex_poly = nil

local list_txt = {
    {value="CHECK1",  init_pos={ -0.6,  0.2}, align="LeftCenter", controller = {{"CHKLST_item", 0},}},
    {value="CHECK2",  init_pos={ -0.6,  0.1}, align="LeftCenter", controller = {{"CHKLST_item", 1},}},
    {value="CHECK3",  init_pos={ -0.6,  0.0}, align="LeftCenter", controller = {{"CHKLST_item", 2},}},
    {value="CHECK4",  init_pos={ -0.6, -0.1}, align="LeftCenter", controller = {{"CHKLST_item", 3},}},
    {value="CHECK5",  init_pos={ -0.6, -0.2}, align="LeftCenter", controller = {{"CHKLST_item", 4},}},
    {value="CHECK6",  init_pos={ -0.6, -0.3}, align="LeftCenter", controller = {{"CHKLST_item", 5},}},
    {value="CHECK7",  init_pos={ -0.6, -0.4}, align="LeftCenter", controller = {{"CHKLST_item", 6},}},
    {value="CHECK8",  init_pos={ -0.6, -0.5}, align="LeftCenter", controller = {{"CHKLST_item", 7},}},
    {value="CHECK9",  init_pos={ -0.6, -0.6}, align="LeftCenter", controller = {{"CHKLST_item", 8},}},
    {value="CHECK10", init_pos={ -0.6, -0.7}, align="LeftCenter", controller = {{"CHKLST_item", 9},}},
}

for i=1, #(list_txt) do
    text_strpoly                = CreateElement "ceStringPoly"
    text_strpoly.material       = MFCD_FONT_DEF
    text_strpoly.stringdefs     = MFCD_STRINGDEFS_DEF_X08
    text_strpoly.init_pos       = list_txt[i].init_pos
    text_strpoly.alignment      = list_txt[i].align
    text_strpoly.formats        = list_txt[i].formats
    if list_txt[i].params then
        text_strpoly.element_params    = list_txt[i].params
    end
    if list_txt[i].controller then
        text_strpoly.controllers       = list_txt[i].controller
    end
    text_strpoly.name = "list_txt_" .. i
    if list_txt[i].value ~= nil then
        text_strpoly.value = list_txt[i].value
    else
        text_strpoly.value = "LST" .. i
    end
    AddToUpper(text_strpoly)
    text_strpoly = nil
end