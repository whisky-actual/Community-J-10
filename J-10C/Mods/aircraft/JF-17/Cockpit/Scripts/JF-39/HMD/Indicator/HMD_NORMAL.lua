dofile(LockOn_Options.script_path..  "JF-39/HMD/Indicator/HMD_def.lua")

local clipPoly
local tex_poly
local text_strpoly

local texts ={  
    --{value="FPL",  alignment="CenterCenter",  formats={"%s"}, init_pos={-025, -165}, ctrls={{"hud_txt_rwin7", -9.418},} },--Flight Plan Leg
    --{value="HDG", alignment="CenterCenter", name = "hud_hdg_txt", formats={"%s"}, init_pos={0, 300}, params={"JF39_HMD","JF39_HMD_HORIZONTAL_VIEW","JF39_HMD_VERTICAL_VIEW"}, ctrls={{"parameter_in_range" ,0, 0.9,1.1},{"parameter_in_range" ,1, 25,360},{"parameter_in_range" ,2, -35,190},{"hud_txt_hdg"},{"hud_check_declutter"}},},--Heading value
    {value="ARM",  alignment="CenterCenter",  formats={"%s"}, init_pos={0, -125}, params={"JF39_HMD","JF39_HMD_HORIZONTAL_VIEW","JF39_HMD_VERTICAL_VIEW"}, ctrls={{"parameter_in_range" ,0, 0.9,1.1},{"parameter_in_range" ,1, 25,360},{"parameter_in_range" ,2, -35,190},{"hud_txt_lwin5"}}, },--Selected weapon
    {value="MODE",alignment="CenterCenter",  formats={"%s"},  init_pos={0, -155}, params={"JF39_HMD","JF39_HMD_HORIZONTAL_VIEW","JF39_HMD_VERTICAL_VIEW"}, ctrls={{"parameter_in_range" ,0, 0.9,1.1},{"parameter_in_range" ,1, 25,360},{"parameter_in_range" ,2, -35,190},{"hud_txt_lwin6"}},},--Mode
    {value="*",   alignment="CenterCenter", formats={"%s"},   init_pos={0, 0}, params={"JF39_HMD","JF39_HMD_HORIZONTAL_VIEW","JF39_HMD_VERTICAL_VIEW"}, ctrls={{"parameter_in_range" ,0, 0.9,1.1},{"parameter_in_range" ,1, 25,360},{"parameter_in_range" ,2, -35,190},{"hud_txt_lwin7"}},},--HUD SOI
    {value="RANGE",alignment="CenterCenter",  formats={"%s"}, init_pos={0, -25}, params={"JF39_HMD","JF39_HMD_HORIZONTAL_VIEW","JF39_HMD_VERTICAL_VIEW"}, ctrls={{"parameter_in_range" ,0, 0.9,1.1},{"parameter_in_range" ,1, 25,360},{"parameter_in_range" ,2, -35,190},{"hud_txt_rwin4"}},},-- Distance to Target
    
    --Left
    --{value="A",     alignment="RightCenter",  formats={"%s"}, init_pos={-200, 112},ctrls={{"hud_txt_lwin0"},} },--Alpha
    --{value="A_val", alignment="RightCenter", formats={"%s"}, init_pos={-105, 112}, ctrls={{"hud_txt_lwin1"},} },--Alpha value
    --{value="G",     alignment="RightCenter",  formats={"%s"}, init_pos={-200, 000},},--G    
    --{value="G_val", alignment="RightCenter", formats={"%s"}, init_pos={-105, 000}, ctrls={{"hud_txt_lwin2"},} },--G value 
    {value="AS", alignment="RightCenter",  formats={"%s"},   init_pos={-195, 75},params={"JF39_HMD","JF39_HMD_HORIZONTAL_VIEW","JF39_HMD_VERTICAL_VIEW"}, ctrls={{"parameter_in_range" ,0, 0.9,1.1},{"parameter_in_range" ,1, 25,360},{"parameter_in_range" ,2, -35,190},{"hud_txt_lwin31"},{"hud_check_declutter"},},},--Air speed type
    {value="AS",  alignment="RightCenter", formats={"%s"},   init_pos={-155, 75},params={"JF39_HMD","JF39_HMD_HORIZONTAL_VIEW","JF39_HMD_VERTICAL_VIEW"}, ctrls={{"parameter_in_range" ,0, 0.9,1.1},{"parameter_in_range" ,1, 25,360},{"parameter_in_range" ,2, -35,190},{"hud_txt_lwin3"},{"hud_check_declutter"},},},--Air speed
    
    --Right
    --{value="VVI",  alignment="LeftCenter", formats={"%s"}, init_pos={ 100, 10}, ctrls={{"hud_txt_rwin9"},{"hud_check_declutter"},}},-- Veritcal Velocity
    --{value="RALT", alignment="LeftCenter",  formats={"%s"}, init_pos={ 100, 25}, ctrls={{"hud_txt_rwin3"},} },--Radar ALT
    --{value="DT",   alignment="LeftCenter",  formats={"%s"}, init_pos={ 100, 40}, ctrls={{"hud_txt_rwin6", -9.418/2},} },--Time to Destination
    --{value="KTS",  alignment="LeftCenter",  formats={"%s"}, init_pos={ 100, 65}, ctrls={{"hud_txt_rwin5"},} },--
}

for i=1, #(texts) do
    text_strpoly                = CreateElement "ceStringPoly"
    text_strpoly.material       = HUD_IND_FONT
    text_strpoly.init_pos       = texts[i].init_pos
    text_strpoly.alignment      = "CenterCenter"
    text_strpoly.stringdefs     = HUD_STRINGDEFS_DEF

    if texts[i].name         then text_strpoly.name           = texts[i].name         end
    if texts[i].strdef       then text_strpoly.stringdefs     = texts[i].strdef       end
    if texts[i].alignment    then text_strpoly.alignment      = texts[i].alignment    end
    if texts[i].formats      then text_strpoly.formats        = texts[i].formats      end
    if texts[i].params       then text_strpoly.element_params = texts[i].params       end
    if texts[i].ctrls        then text_strpoly.controllers    = texts[i].ctrls        end
    if texts[i].value        then text_strpoly.value          = texts[i].value        end

    AddHUDElement(text_strpoly)
    text_strpoly = nil
end
----------------------------------------------------------------------------------------
-- JF-39 HMD Elements
----------------------------------------------------------------------------------------
--HMD Circle
local HMD_Circle		    = create_HMD_Circle(HMD_Circle, 0, 0, 2048, 2048, 2) 
HMD_Circle.name			    = create_guid_string()
HMD_Circle.init_pos		    = {0 ,75, 0}
HMD_Circle.init_rot		    = {0, 0, 0}
HMD_Circle.element_params   = {"JF39_HMD","JF39_HMD_HORIZONTAL_VIEW","JF39_HMD_VERTICAL_VIEW"}          
HMD_Circle.controllers      = {{"parameter_in_range" ,0, 0.9,1.1},{"parameter_in_range" ,1, 25,360},{"parameter_in_range" ,2, -35,190}}
AddHUDElement(HMD_Circle)

-- Add caret ("<") next to "AS" value
local caret_as = CreateElement "ceStringPoly"
caret_as.material = HUD_IND_FONT
caret_as.init_pos = {-130, 75} -- Adjust this to place the caret next to "AS"
caret_as.alignment = "LeftCenter" -- Align it to the left of the "AS" value
caret_as.value = "<" -- The caret symbol
caret_as.stringdefs = HUD_STRINGDEFS_DEF_X15 -- Adjust string size if needed
caret_as.element_params   = {"JF39_HMD","JF39_HMD_HORIZONTAL_VIEW","JF39_HMD_VERTICAL_VIEW"}    
caret_as.controllers = {{"parameter_in_range" ,0, 0.9,1.1},{"parameter_in_range" ,1, 25,360},{"parameter_in_range" ,2, -35,190},{"hud_check_power"}} -- Use the appropriate controller if needed
AddHUDElement(caret_as)

-- Add caret (">") next to "ALT" value
local caret_alt = CreateElement "ceStringPoly"
caret_alt.material = HUD_IND_FONT
caret_alt.init_pos = {130, 75} -- Adjust this to place the caret next to "AS"
caret_alt.alignment = "LeftCenter" -- Align it to the left of the "AS" value
caret_alt.value = ">" -- The caret symbol
caret_alt.stringdefs = HUD_STRINGDEFS_DEF_X15 -- Adjust string size if needed
caret_alt.element_params   = {"JF39_HMD","JF39_HMD_HORIZONTAL_VIEW","JF39_HMD_VERTICAL_VIEW"}    
caret_alt.controllers = {{"parameter_in_range" ,0, 0.9,1.1},{"parameter_in_range" ,1, 25,360},{"parameter_in_range" ,2, -35,190},{"hud_check_power"}} -- Use the appropriate controller if needed
AddHUDElement(caret_alt)


local JF39_HMD_HDG = get_param_handle("JF39_HMD_HDG")

local hud_hdg_txt = CreateElement "ceStringPoly"
hud_hdg_txt.name = "hud_hdg_txt_dynamic"
hud_hdg_txt.material = HUD_IND_FONT
hud_hdg_txt.init_pos = {0, 300} -- Adjust this as needed for display position
hud_hdg_txt.alignment = "CenterCenter"
hud_hdg_txt.stringdefs = HUD_STRINGDEFS_DEF
hud_hdg_txt.formats = {"%03.0f"}  -- Format like: 003, 057, 120, etc.
hud_hdg_txt.element_params = {"JF39_HMD_HDG","JF39_HMD","JF39_HMD_HORIZONTAL_VIEW","JF39_HMD_VERTICAL_VIEW"}
hud_hdg_txt.controllers = {{"text_using_parameter", 0},{"parameter_in_range", 1, 0.9, 1.1},{"parameter_in_range", 2, 25, 360},{"parameter_in_range", 3, -35, 190},{"hud_check_power"}}
AddHUDElement(hud_hdg_txt)

---------------------------------------------------------------------------------------------------
-- 武器相关符号

--dofile(LockOn_Options.script_path .. "JF-39/HMD/Indicator/HMD_NORMAL_WPN.lua")

----------------------------------------------------------------------------------------------------
-- 基本信息和导航相关

dofile(LockOn_Options.script_path .. "JF-39/HMD/Indicator/HMD_NORMAL_NAV.lua")

----------------------------------------------------------------------------------------
--                    File by whisky.actual@gmail.com - v.1.2.2                       --
----------------------------------------------------------------------------------------