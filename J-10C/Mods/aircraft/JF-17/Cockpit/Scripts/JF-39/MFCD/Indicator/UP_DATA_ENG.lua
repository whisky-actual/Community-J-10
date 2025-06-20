dofile(LockOn_Options.script_path .. "MFCD/MFCDs_defs.lua")

local page_root = create_page_root()


--OSB
local osb_txt = {
    {value="ENG",    init_pos={MFCD_FONT_UD1_X, MFCD_FONT_U_Y}, align="CenterCenter"},
}

local text_strpoly
local mesh_poly

local HW = 0.15
local HH = 0.05
for i=1, #(osb_txt) do
    text_strpoly                = CreateElement "ceStringPoly"
    text_strpoly.material       = MFCD_FONT_DEF
    text_strpoly.stringdefs     = MFCD_STRINGDEFS_DEF_X08
    text_strpoly.init_pos       = osb_txt[i].init_pos
    text_strpoly.alignment      = osb_txt[i].align
    text_strpoly.value          = osb_txt[i].value

    AddToUpper(text_strpoly)
    text_strpoly = nil
end

local poly_txt = {
    {value="ENGINE", init_pos={   0,  0.5}, align="CenterCenter",  stringdefs=MFCD_STRINGDEFS_DEF_X15},
    {value="N1",     init_pos={-0.5,  0.3}, align="LeftCenter",    controllers={{"data_eng_n1"}}},
    {value="N2",     init_pos={ 0.3,  0.3}, align="LeftCenter",    controllers={{"data_eng_n2"}}},
    {value="T4",     init_pos={-0.5,  0.1}, align="LeftCenter",    controllers={{"data_eng_t4"}}},
    {value="PT1",    init_pos={ 0.3,  0.1}, align="LeftCenter",    controllers={{"data_eng_pt1"}}},
    {value="PM",     init_pos={-0.5, -0.1}, align="LeftCenter",    controllers={{"data_eng_pm"}}},
    {value="VE",     init_pos={ 0.3, -0.1}, align="LeftCenter",    controllers={{"data_eng_ve"}}},
    {value="PT",     init_pos={-0.5, -0.3}, align="LeftCenter",    controllers={{"data_eng_pt"}}},
    {value="ECS",    init_pos={ 0.0, -0.5}, align="CenterCenter",  controllers={{"data_eng_ecs"}}},
}

for i=1, #(poly_txt) do
    text_strpoly                = CreateElement "ceStringPoly"
    text_strpoly.material       = MFCD_FONT_DEF
    if (poly_txt[i].stringdefs ~= nil) then
        text_strpoly.stringdefs = poly_txt[i].stringdefs
    else
        text_strpoly.stringdefs = MFCD_STRINGDEFS_DEF
    end
    text_strpoly.init_pos       = poly_txt[i].init_pos
    text_strpoly.alignment      = poly_txt[i].align
    text_strpoly.value          = poly_txt[i].value
    if (poly_txt[i].controllers ~= nil) then
        text_strpoly.controllers = poly_txt[i].controllers
    end
    AddToUpper(text_strpoly)
    text_strpoly = nil
end
