dofile(LockOn_Options.script_path .. "MFCD/MFCDs_defs.lua")

local page_root = create_page_root()



local HW = 0.15
local HH = 0.04 * H2W_SCALE

local osb_txt = {
    {value="RDR",   init_pos={MFCD_FONT_UD1_X, (1.0 - HH) * H2W_SCALE}, align="CenterCenter", formats={"%s"}, controller={}},
    {value="INS",   init_pos={MFCD_FONT_UD2_X, (1.0 - HH) * H2W_SCALE}, align="CenterCenter", formats={"%s"}, controller={}},
    {value="TACAN", init_pos={MFCD_FONT_UD3_X, (1.0 - HH) * H2W_SCALE}, align="CenterCenter", formats={"%s"}, controller={}},
    {value="APR",   init_pos={MFCD_FONT_UD4_X, (1.0 - HH) * H2W_SCALE}, align="CenterCenter", formats={"%s"}, controller={}},
    {value="POD",   init_pos={MFCD_FONT_UD5_X, (1.0 - HH) * H2W_SCALE}, align="CenterCenter", formats={"%s"}, controller={}},

    {value="SMS",   init_pos={MFCD_FONT_R_HORI_X, ( 6.8*1.0/8) * H2W_SCALE}, align="RightCenter", formats={"%s"}, controller={}},
    {value="CMBT",  init_pos={MFCD_FONT_R_HORI_X, ( 4.8*1.0/8) * H2W_SCALE}, align="RightCenter", formats={"%s"}, controller={}},
    {value="BIT",   init_pos={MFCD_FONT_R_HORI_X, ( 3*1.0/8) * H2W_SCALE}, align="RightCenter", formats={"%s"}, controller={}},
    {value="CHKLS", init_pos={MFCD_FONT_R_HORI_X, ( 1*1.0/8) * H2W_SCALE}, align="RightCenter", formats={"%s"}, controller={}},
    {value="PFL",   init_pos={MFCD_FONT_R_HORI_X, (-1*1.0/8) * H2W_SCALE}, align="RightCenter", formats={"%s"}, controller={}},
    {value=" ",     init_pos={MFCD_FONT_R_HORI_X, (-3*1.0/8) * H2W_SCALE}, align="RightCenter", formats={"%s"}, controller={}},
    {value=" ",     init_pos={MFCD_FONT_R_HORI_X, (-4.8*1.0/8) * H2W_SCALE}, align="RightCenter", formats={"%s"}, controller={}},
    {value=" ",     init_pos={MFCD_FONT_R_HORI_X, (-6.8*1.0/8) * H2W_SCALE}, align="RightCenter", formats={"%s"}, controller={}},

    {value=" ",     init_pos={MFCD_FONT_UD5_X, (-1.0 + HH) * H2W_SCALE}, align="CenterCenter", formats={"%s"}, controller={}},
    {value="SMS",   init_pos={MFCD_FONT_UD4_X, (-1.0 + HH) * H2W_SCALE}, align="CenterCenter", formats={"%s"}, controller={}},
    {value=" ",     init_pos={MFCD_FONT_UD3_X, (-1.0 + HH) * H2W_SCALE}, align="CenterCenter", formats={"%s"}, controller={}},
    {value="CMBT",  init_pos={MFCD_FONT_UD2_X, (-1.0 + HH) * H2W_SCALE}, align="CenterCenter", formats={"%s"}, controller={}},
    {value="MAINT", init_pos={MFCD_FONT_UD1_X, (-1.0 + HH) * H2W_SCALE}, align="CenterCenter", formats={"%s"}, controller={}},
    
    {value=" ",    init_pos={MFCD_FONT_L_HORI_X, (-6.8*1.0/8) * H2W_SCALE}, align="LeftCenter", formats={"%s"}, controller={}},
    {value=" ",    init_pos={MFCD_FONT_L_HORI_X, (-4.8*1.0/8) * H2W_SCALE}, align="LeftCenter", formats={"%s"}, controller={}},
    {value=" ",    init_pos={MFCD_FONT_L_HORI_X, (-3*1.0/8) * H2W_SCALE}, align="LeftCenter", formats={"%s"}, controller={}},
    {value=" ",    init_pos={MFCD_FONT_L_HORI_X, (-1*1.0/8) * H2W_SCALE}, align="LeftCenter", formats={"%s"}, controller={}},
    {value="DATA", init_pos={MFCD_FONT_L_HORI_X, ( 1*1.0/8) * H2W_SCALE}, align="LeftCenter", formats={"%s"}, controller={}},
    {value="CLNK", init_pos={MFCD_FONT_L_HORI_X, ( 3*1.0/8) * H2W_SCALE}, align="LeftCenter", formats={"%s"}, controller={}},
    {value="EFIS", init_pos={MFCD_FONT_L_HORI_X, ( 4.8*1.0/8) * H2W_SCALE}, align="LeftCenter", formats={"%s"}, controller={}},
    {value="HSD",  init_pos={MFCD_FONT_L_HORI_X, ( 6.8*1.0/8) * H2W_SCALE}, align="LeftCenter", formats={"%s"}, controller={}},
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
        text_strpoly.controllers    = osb_txt[i].controller
    end
    text_strpoly.name = "osb_txt_" .. i
    if osb_txt[i].value ~= nil then
        text_strpoly.value = osb_txt[i].value
    else
        text_strpoly.value = "OSB" .. i
    end
    AddElementObject(text_strpoly)
    text_strpoly = nil
end

-- 选中

for i=1, #(osb_txt) do
    mesh_poly                = CreateElement "ceMeshPoly"
    mesh_poly.name             = "OSBTITLE" .. i
    mesh_poly.parent_element= "osb_txt_" .. i
    if osb_txt[i].align == "LeftCenter" then
        mesh_poly.init_pos = { HW, 0}
    else
        if osb_txt[i].align == "RightCenter" then
            mesh_poly.init_pos = {-HW, 0}
        end
    end
    mesh_poly.material        = MFCD_MATERIAL_DEF
    mesh_poly.primitivetype    = "lines"
    mesh_poly.vertices        = { {HW, HH}, {HW,-HH}, {-HW,-HH}, {-HW, HH }}
    mesh_poly.indices        = {0,1,1,2,2,3,3,0}
    mesh_poly.isvisible        = false
    AddElementObject(mesh_poly)
    mesh_poly = nil
end

-- 下划线
for i=1, #(osb_txt) do
    mesh_poly                = CreateElement "ceMeshPoly"
    mesh_poly.name             = "OSBUNDER" .. i
    mesh_poly.parent_element= "osb_txt_" .. i
    if osb_txt[i].align == "LeftCenter" then
        mesh_poly.init_pos = { HW, 0}
    else
        if osb_txt[i].align == "RightCenter" then
            mesh_poly.init_pos = {-HW, 0}
        end
    end
    mesh_poly.material        = MFCD_MATERIAL_DEF
    mesh_poly.primitivetype    = "lines"
    mesh_poly.vertices        = { { HW, -1.2*HH},    {-HW, -1.2*HH},}
    mesh_poly.indices        = {0,1}
    mesh_poly.isvisible        = false
    AddElementObject(mesh_poly)
    mesh_poly = nil
end

-- 不可用
for i=1, #(osb_txt) do
    mesh_poly                = CreateElement "ceMeshPoly"
    mesh_poly.name             = "OSBNA" .. i
    mesh_poly.parent_element= "osb_txt_" .. i
    if osb_txt[i].align == "LeftCenter" then
        mesh_poly.init_pos = { HW, 0, 0}
    else
        if osb_txt[i].align == "RightCenter" then
            mesh_poly.init_pos = {-HW, 0, 0}
        else
            mesh_poly.init_pos = {0, 0, 0}
        end
    end
    mesh_poly.material        = MFCD_IND_MATERIAL
    mesh_poly.primitivetype    = "lines"
    mesh_poly.vertices        = { { HW, HH},{-HW, -HH}, }
    mesh_poly.indices        = {0,1}
    mesh_poly.isvisible        = false
    AddElementObject(mesh_poly)
    mesh_poly = nil
end
