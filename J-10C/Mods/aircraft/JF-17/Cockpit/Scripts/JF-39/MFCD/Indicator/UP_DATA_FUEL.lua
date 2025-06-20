-- 页面: 油箱燃油
dofile(LockOn_Options.script_path .. "MFCD/MFCDs_defs.lua")

local MFCD_TEX_IND2 = "mfcd_tex_ind2"

local TEX_SIZE_X = 2048
local TEX_SIZE_Y = 2048

--- 贴图部分
local texsUp = {
    {-- #1油箱
        cx = 0, cy = 373.333/1000, hw = 380/2000, hh = 220/2000, ulx = 0, uly = 856, w = 228, h = 132,
    },
    {-- #3油箱
        cx = 0, cy = -150/1000, hw = 380/2000, hh = 220/2000, ulx = 0, uly = 856, w = 228, h = 132,
    },
    {-- 左机翼油箱
        cx = -520/1000, cy = 113.333/1000, hw = 480/2000, hh = 220/2000, ulx = 0, uly = 988, w = 288, h = 132,
    },
    {-- 右机翼油箱
        cx =  520/1000, cy = 113.333/1000, hw = 480/2000, hh = 220/2000, ulx = 0, uly = 988, w = 288, h = 132,
    },
    {-- T2供油箱
        cx = 0, cy = 111.667/1000, hw = 480/2000, hh = 276.667/2000, ulx = 0, uly = 1120, w = 288, h = 166,
    },
    
    {-- 左机翼副油箱
        cx = -520/1000, cy = -520/1000, hw = 433.333/2000, hh = 433.333/2000, ulx = 0, uly = 1286, w = 260, h = 260,
    },
    {-- 右机翼副油箱
        cx =  520/1000, cy = -520/1000, hw = 433.333/2000, hh = 433.333/2000, ulx = 0, uly = 1286, w = 260, h = 260,
    },
    {-- 机身副油箱
        cx = 0, cy = -520/1000, hw = 373.333/2000, hh = 373.333/2000, ulx = 0, uly = 1546, w = 224, h = 224,
    },

}
    
local tex_poly
for i=1, #(texsUp) do
    tex_poly            = CreateElement "ceTexPoly"
    tex_poly.material   = MFCD_TEX_IND2

    tex_poly.tex_coords = MFCD_tex_coord(texsUp[i].ulx, texsUp[i].uly, texsUp[i].w, texsUp[i].h, TEX_SIZE_X, TEX_SIZE_Y)
    tex_poly.init_pos   = {texsUp[i].cx, texsUp[i].cy, 0}
    tex_poly.vertices   = {{ texsUp[i].hw, texsUp[i].hh},
                           { texsUp[i].hw,-texsUp[i].hh},
                           {-texsUp[i].hw,-texsUp[i].hh},
                           {-texsUp[i].hw, texsUp[i].hh},}
    tex_poly.indices    = DEF_BOX_INDICES

    if texsUp[i].params then
        tex_poly.element_params = texsUp[i].params
    end
    if texsUp[i].ctrls then
        tex_poly.controllers    = texsUp[i].ctrls
    end

    AddToUpper(tex_poly)
    tex_poly = nil
end

--- 文字部分
local textsUp = {

    {-- FUEL
        cx = MFCD_FONT_UD1_X, cy = MFCD_FONT_U_Y, value = "FUEL", size = 1.0,
    },
    
    {-- Total Fuel数字
        cx= 0.0, cy = 0.6, stringdefs = MFCD_STRINGDEFS_DEF_X15,
        ctrls = {{"data_fuel_total"},},
        size = 1.7,
    },
    
    {-- TANK 1数字
        cx= 0, cy=373.333/1000,
        ctrls = {{"data_fuel_t1"},},
        size = 1.0,
    },
    {-- TANK 3数字
        cx= 0, cy=-150/1000,
        ctrls = {{"data_fuel_t3"},},
        size = 1.0,
    },
    {-- TANK L数字
        cx= -520/1000, cy=113.333/1000,
        ctrls = {{"data_fuel_wing_l"},},
        size = 1.0,
    },
    {-- TANK R数字
        cx= 520/1000, cy=113.333/1000,
        ctrls = {{"data_fuel_wing_r"},},
        size = 1.0,
    },
    {-- TANK 2/FEED数字
        cx= 0, cy=111.667/1000,
        ctrls = {{"data_fuel_t2_feed"},},
        size = 1.0,
    },
    
    {-- EXT TANK L数字
        cx= -520/1000, cy=-520/1000,
        ctrls = {{"data_fuel_ext_l"},},
        size = 1.0,
    },
    {-- EXT TANK R数字
        cx= 520/1000, cy=-520/1000,
        ctrls = {{"data_fuel_ext_r"},},
        size = 1.0,
    },
    {-- EXT TANK C数字
        cx= 0, cy=-520/1000,
        ctrls = {{"data_fuel_ext_c"},},
        size = 1.0,
    },
}

for i=1, #(textsUp) do
    text_strpoly                 = CreateElement "ceStringPoly"
    text_strpoly.material        = MFCD_FONT_DEF
    text_strpoly.stringdefs      = MFCD_STRINGDEFS_DEF_X08
    text_strpoly.init_pos        = {textsUp[i].cx, textsUp[i].cy, 0}
    text_strpoly.alignment       = "CenterCenter"
    --表格内字体左对齐
    -- if (i >=6 and i <= 11) then
        -- text_strpoly.alignment    = "LeftCenter"        
    -- end
    if textsUp[i].stringdefs then
        text_strpoly.stringdefs   = textsUp[i].stringdefs
    end   
    if textsUp[i].alignment then
        text_strpoly.alignment    = textsUp[i].alignment
    end    
    if textsUp[i].formats then
        text_strpoly.formats      = textsUp[i].formats
    end
    if textsUp[i].params then
        text_strpoly.element_params = textsUp[i].params
    end
    if textsUp[i].ctrls then
        text_strpoly.controllers  = textsUp[i].ctrls
    end
    if textsUp[i].value then
        text_strpoly.value = textsUp[i].value
    end
    
    AddToUpper(text_strpoly, textsUp[i].size)
    --AddElementObject(text_strpoly)
    text_strpoly = nil
end
