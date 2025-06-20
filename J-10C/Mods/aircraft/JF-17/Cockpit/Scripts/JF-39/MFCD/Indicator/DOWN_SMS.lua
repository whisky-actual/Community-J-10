dofile(LockOn_Options.script_path .. "MFCD/MFCDs_defs.lua")

local page_root = create_page_root()

local MFCD_TEX_IND1 = "mfcd_tex_ind1"

local TEX_SIZE_X = 2048
local TEX_SIZE_Y = 2048

local __USE_SVG_FONT__ = false

---- 贴图部分
local texs =
{
    {-- 飞机造型
        cx = 0, cy = 190/1000, hw = 1293.333/2000, hh = 346.667/2000, ulx = 598, uly = 1802, w = 776, h = 208,
        ctrls = {{"sms_state_draw"}},
    },
}

local tex_poly
for i=1, #(texs) do
    tex_poly            = CreateElement "ceTexPoly"
    tex_poly.material   = MFCD_TEX_IND1
    tex_poly.tex_coords = MFCD_tex_coord(texs[i].ulx, texs[i].uly, texs[i].w, texs[i].h, TEX_SIZE_X, TEX_SIZE_Y)
    tex_poly.init_pos   = {texs[i].cx, texs[i].cy, 0}
    tex_poly.vertices   = {{ texs[i].hw, texs[i].hh},
                           { texs[i].hw,-texs[i].hh},
                           {-texs[i].hw,-texs[i].hh},
                           {-texs[i].hw, texs[i].hh} }
    tex_poly.indices    = DEF_BOX_INDICES

    if texs[i].params then
        tex_poly.element_params = texs[i].params
    end
    if texs[i].ctrls then
        tex_poly.controllers    = texs[i].ctrls
    end

    AddToLOWER(tex_poly)
    tex_poly = nil
end


---- 文字部分
local texts = {

    {-- STATE Label
        value = "SMS OFF", init_pos={0, MFCD_FONT_LR7_Y}, alignment = "CenterBottom",
        strdef = MFCD_STRINGDEFS_DEF_X15, ctrls = {{"sms_state_label"}},
    },

    -- OSB
    --[[{
        value = "EPI1", init_pos = {MFCD_FONT_R_HORI_X, MFCD_FONT_LR6_Y}, alignment = "RightCenter",
        ctrls = {{"sms_state_draw"}},
    },
    {
        value = "EPI2", init_pos = {MFCD_FONT_R_HORI_X, MFCD_FONT_LR7_Y}, alignment = "RightCenter",
        ctrls = {{"sms_state_draw"}},
    },]]
    {
        value = "RTN",  init_pos = {MFCD_FONT_R_HORI_X, MFCD_FONT_LR8_Y}, alignment = "RightCenter",
        ctrls = {{"sms_state_draw"}},
    },
    --[[{
        value = "NORM", init_pos = {MFCD_FONT_L_HORI_X, MFCD_FONT_LR6_Y}, alignment = "LeftCenter",
        ctrls = {{"sms_state_draw"}},
    },
    {
        value = "SET",  init_pos = {MFCD_FONT_L_HORI_X, MFCD_FONT_LR8_Y}, alignment = "LeftCenter",
        ctrls = {{"sms_state_draw"}},
    },]]
    
    {-- 机炮剩余数量
        value = "180", init_pos = {0.0, 186.667/1000}, ctrls = {{"sms_gun_rounds"}},
    },
}

for i=1, #(texts) do
    text_strpoly               = CreateElement "ceStringPoly"
    text_strpoly.material      = MFCD_FONT_DEF
    text_strpoly.stringdefs    = MFCD_STRINGDEFS_DEF_X08
    text_strpoly.init_pos      = texts[i].init_pos or {0.0, 0.0, 0.0}
    text_strpoly.alignment     = "CenterCenter"
    
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
    AddToLOWER(text_strpoly)
    text_strpoly = nil
end


-- 各挂架的挂载信息
local pilon_pos = 
{
    {cx= -686.667/1000, cy = 173.333/1000 --[[1.5*0.40/2.5 - 0.0]],}, -- 0.0
    {cx= -476.667/1000, cy = 36.667/1000 --[[1.5*0.40/2.5 - 0.25]],}, -- 0.15
    {cx= -240/1000,     cy = 30/1000 --[[1.5*0.40/2.5 - 0.25]],}, -- 0.20
    {cx=  0.0,          cy = 0.0 --[[1.5*0.40/2.5 - 0.25]],},
    {cx=  240/1000,     cy = 30/1000 --[[1.5*0.40/2.5 - 0.25]],},
    {cx=  476.667/1000, cy = 36.667/1000 --[[1.5*0.40/2.5 - 0.25]],},
    {cx=  686.667/1000, cy = 173.333/1000 --[[1.5*0.40/2.5 - 0.0]],},
}

local pilon_bias =
{
    {cy = -(173.333-110)/1000},
    {cy = -(56.667+36.667)/1000},
    {cy = -(56.667+30)/1000},
    
    {cy = -(56.667)/1000},
    
    {cy = -(56.667+30)/1000},
    {cy = -(56.667+36.667)/1000},
    {cy = -(173.333-110)/1000},
}

for i=1,7 do
    local sym_scale = 0.7
    local tex_poly      = CreateElement "ceTexPoly"
    tex_poly.name       = "sms_down_pilon" .. tostring(i)
    tex_poly.material   = MFCD_TEX_IND1
    tex_poly.init_pos   = {pilon_pos[i].cx, pilon_pos[i].cy, 0}
    tex_poly.vertices   = {{ 173.333/2000, 173.333/2000},
                           { 173.333/2000,-173.333/2000},
                           {-173.333/2000,-173.333/2000},
                           {-173.333/2000, 173.333/2000},}
    tex_poly.indices    = DEF_BOX_INDICES
    tex_poly.state_tex_coords = {
                        MFCD_tex_coord(1944, 1944, 104, 104, TEX_SIZE_X, TEX_SIZE_Y),--0 导弹符号
                        MFCD_tex_coord(1840, 1944, 104, 104, TEX_SIZE_X, TEX_SIZE_Y),--1 炸弹符号
                        MFCD_tex_coord(1736, 1944, 104, 104, TEX_SIZE_X, TEX_SIZE_Y),--2 油箱
                        MFCD_tex_coord(1632, 1944, 104, 104, TEX_SIZE_X, TEX_SIZE_Y),--3 吊舱
                        MFCD_tex_coord(1736, 1840, 104, 104, TEX_SIZE_X, TEX_SIZE_Y),--4 火箭弹
                        -- TODO
                        MFCD_tex_coord(1944, 1840, 104, 104, TEX_SIZE_X, TEX_SIZE_Y),--5 2x导弹全
                        MFCD_tex_coord(1528, 1944, 104, 104, TEX_SIZE_X, TEX_SIZE_Y),--6 2x导弹上
                        MFCD_tex_coord(1528, 1840, 104, 104, TEX_SIZE_X, TEX_SIZE_Y),--7 2x导弹下
                        MFCD_tex_coord(1840, 1840, 104, 104, TEX_SIZE_X, TEX_SIZE_Y),--8 2x炸弹全
                        MFCD_tex_coord(1424, 1944, 104, 104, TEX_SIZE_X, TEX_SIZE_Y),--9 2x炸弹上
                        MFCD_tex_coord(1424, 1840, 104, 104, TEX_SIZE_X, TEX_SIZE_Y),--10 2x炸弹下
                    }
    tex_poly.controllers    = {{"sms_pilon_info", i-1}}
    tex_poly.isdraw         = false
    tex_poly.use_mipfilter  = true
    tex_poly.additive_alpha = true
    AddToLOWER(tex_poly)
    tex_poly = nil
    
    -- 挂载名字
    if __USE_SVG_FONT__ then
        stroke_font = "mfcd_wpn_svg_font_def"
        local text_strpoly          = CreateElement "ceStringSLine"
        text_strpoly.material       = stroke_font
        text_strpoly.stringdefs     = MFCD_STRINGDEFS_DEF_X05
        text_strpoly.alignment      = "CenterCenter"
        text_strpoly.init_pos       = {0.0, pilon_bias[i].cy--[[pilon_pos[i].cy - 2*0.04]], 0}
        text_strpoly.parent_element = "sms_down_pilon" .. tostring(i)
        
        text_strpoly.value          = "SD10" -- for test
        text_strpoly.controllers    = {{"sms_payload_name", i-1}}
        text_strpoly.isdraw         = false
        text_strpoly.use_mipfilter  = true
        text_strpoly.additive_alpha = true
        AddToLOWER(text_strpoly)
        text_strpoly = nil

    else
        local text_strpoly          = CreateElement "ceStringPoly"
        text_strpoly.material       = MFCD_WPN_FONT_DEF
        text_strpoly.stringdefs     = MFCD_STRINGDEFS_DEF_X05
        text_strpoly.alignment      = "CenterCenter"
        text_strpoly.init_pos       = {0.0, pilon_bias[i].cy--[[pilon_pos[i].cy - 2*0.04]], 0}
        text_strpoly.parent_element = "sms_down_pilon" .. tostring(i)
        
        text_strpoly.value          = "SD10" -- for test
        text_strpoly.controllers    = {{"sms_payload_name", i-1}}
        text_strpoly.isdraw         = false
        text_strpoly.use_mipfilter  = true
        text_strpoly.additive_alpha = true
        AddToLOWER(text_strpoly)
        text_strpoly = nil
    end
end