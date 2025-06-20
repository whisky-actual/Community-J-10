
MFCD_TEX_IND1 = "mfcd_tex_ind1"
MFCD_TEX_IND2 = "mfcd_tex_ind2"

TEX_SIZE_X = 2048
TEX_SIZE_Y = 2048

-- for table text
tbl_bias_up =  0.06
tbl_bias_dn = -0.06

tbl_left_col_align  = -0.42
tbl_right_col_align =  0.04

lr_bias = 0.027

---- 贴图部分
texs_ac = 
{
    {-- 飞机造型
        cx = 3.333/1000, cy = 610/1000, hw = 1293.333/2000, hh = 346.667/2000, ulx = 598, uly = 1802, w = 776, h = 208,
        ctrls = {{"sms_state_draw"}}, mat = MFCD_TEX_IND1, tex_sx = TEX_SIZE_X, tex_sy = TEX_SIZE_Y,
    },
    
    {-- L2
        cx= (MFCD_FONT_UD2_X+MFCD_FONT_UD3_X)/2 - lr_bias, cy = MFCD_FONT_LR2_Y, hw = 490/2000, hh = 343.333/2000, ulx = 1196, uly = 1390, w = 294, h = 206,
        ctrls = {{"sms_prog_select_box", 0}}, mat = MFCD_TEX_IND1, tex_sx = TEX_SIZE_X, tex_sy = TEX_SIZE_Y,
    },
    {-- L3
        cx= (MFCD_FONT_UD2_X+MFCD_FONT_UD3_X)/2 - lr_bias, cy = MFCD_FONT_LR3_Y, hw = 490/2000, hh = 343.333/2000, ulx = 1196, uly = 1390, w = 294, h = 206,
        ctrls = {{"sms_prog_select_box", 1}}, mat = MFCD_TEX_IND1, tex_sx = TEX_SIZE_X, tex_sy = TEX_SIZE_Y,
    },
    {-- L4
        cx= (MFCD_FONT_UD2_X+MFCD_FONT_UD3_X)/2 - lr_bias, cy = MFCD_FONT_LR4_Y, hw = 490/2000, hh = 343.333/2000, ulx = 1196, uly = 1390, w = 294, h = 206,
        ctrls = {{"sms_prog_select_box", 2}}, mat = MFCD_TEX_IND1, tex_sx = TEX_SIZE_X, tex_sy = TEX_SIZE_Y,
    },
    {-- L5
        cx= (MFCD_FONT_UD2_X+MFCD_FONT_UD3_X)/2 - lr_bias, cy = MFCD_FONT_LR5_Y, hw = 490/2000, hh = 343.333/2000, ulx = 1196, uly = 1390, w = 294, h = 206,
        ctrls = {{"sms_prog_select_box", 3}}, mat = MFCD_TEX_IND1, tex_sx = TEX_SIZE_X, tex_sy = TEX_SIZE_Y,
    },
    {-- R2
        cx= (MFCD_FONT_UD3_X+MFCD_FONT_UD4_X)/2 + lr_bias, cy = MFCD_FONT_LR2_Y, hw = 490/2000, hh = 343.333/2000, ulx = 1196, uly = 1390, w = 294, h = 206,
        ctrls = {{"sms_prog_select_box", 4}}, mat = MFCD_TEX_IND1, tex_sx = TEX_SIZE_X, tex_sy = TEX_SIZE_Y,
    },
    {-- R3
        cx= (MFCD_FONT_UD3_X+MFCD_FONT_UD4_X)/2 + lr_bias, cy = MFCD_FONT_LR3_Y, hw = 490/2000, hh = 343.333/2000, ulx = 1196, uly = 1390, w = 294, h = 206,
        ctrls = {{"sms_prog_select_box", 5}}, mat = MFCD_TEX_IND1, tex_sx = TEX_SIZE_X, tex_sy = TEX_SIZE_Y,
    },
    {-- R4
        cx= (MFCD_FONT_UD3_X+MFCD_FONT_UD4_X)/2 + lr_bias, cy = MFCD_FONT_LR4_Y, hw = 490/2000, hh = 343.333/2000, ulx = 1196, uly = 1390, w = 294, h = 206,
        ctrls = {{"sms_prog_select_box", 6}}, mat = MFCD_TEX_IND1, tex_sx = TEX_SIZE_X, tex_sy = TEX_SIZE_Y,
    },
    {-- R5
        cx= (MFCD_FONT_UD3_X+MFCD_FONT_UD4_X)/2 + lr_bias, cy = MFCD_FONT_LR5_Y, hw = 490/2000, hh = 343.333/2000, ulx = 1196, uly = 1390, w = 294, h = 206,
        ctrls = {{"sms_prog_select_box", 7}}, mat = MFCD_TEX_IND1, tex_sx = TEX_SIZE_X, tex_sy = TEX_SIZE_Y,
    },
}

for i=1, #(texs_ac) do
    local tex_poly       = CreateElement "ceTexPoly"
    tex_poly.material    = MFCD_TEX_IND1
    tex_poly.tex_coords  = MFCD_tex_coord(texs_ac[i].ulx, texs_ac[i].uly, texs_ac[i].w, texs_ac[i].h, texs_ac[i].tex_sx, texs_ac[i].tex_sy)
    tex_poly.init_pos    = {texs_ac[i].cx, texs_ac[i].cy, 0}
    tex_poly.vertices    = {{ texs_ac[i].hw, texs_ac[i].hh},
                            { texs_ac[i].hw,-texs_ac[i].hh},
                            {-texs_ac[i].hw,-texs_ac[i].hh},
                            {-texs_ac[i].hw, texs_ac[i].hh} }
    tex_poly.indices     = DEF_BOX_INDICES

    if texs_ac[i].mat then
        tex_poly.material       = texs_ac[i].mat
    end
    if texs_ac[i].params then
        tex_poly.element_params = texs_ac[i].params
    end
    if texs_ac[i].ctrls then
        tex_poly.controllers    = texs_ac[i].ctrls
    end

    AddToUpper(tex_poly)
    tex_poly = nil
end

strs_ac = {
    {-- STATE Label
        cx = 0, cy = MFCD_FONT_LR2_Y, value = "SMS OFF", alignment = "CenterTop", strdef = MFCD_STRINGDEFS_DEF_X15,
        ctrls = {{"sms_state_label"}},
    },
    
    {-- 机炮剩余数量
        cx = 0.0, cy = 606.667/1000, value = "180", ctrls = {{"sms_gun_rounds"},},
    },
}


for i=1, #(strs_ac) do
    text_strpoly            = CreateElement "ceStringPoly"
    text_strpoly.material   = MFCD_FONT_DEF
    text_strpoly.stringdefs = MFCD_STRINGDEFS_DEF
    text_strpoly.init_pos   = {strs_ac[i].cx, strs_ac[i].cy, 0}
    text_strpoly.alignment  = "CenterCenter"
    
    if strs_ac[i].strdef then
        text_strpoly.stringdefs     = strs_ac[i].strdef
    end
    if strs_ac[i].alignment then
        text_strpoly.alignment      = strs_ac[i].alignment
    end    
    if strs_ac[i].formats then
        text_strpoly.formats        = strs_ac[i].formats
    end
    if strs_ac[i].params then
        text_strpoly.element_params = strs_ac[i].params
    end
    if strs_ac[i].ctrls then
        text_strpoly.controllers    = strs_ac[i].ctrls
    end
    if strs_ac[i].value then
        text_strpoly.value          = strs_ac[i].value
    end
    AddToUpper(text_strpoly)
    text_strpoly = nil
end


-- 各挂架的挂载信息
pilon_pos = 
{
    {cx = -686.667/1000, cy = 593.333/1000,}, -- 0.56
    {cx = -476.667/1000, cy = 456.667/1000,}, -- 0.43
    {cx = -240/1000,     cy = 450/1000,}, -- 0.42
    
    {cx =  0.0,          cy = 420/1000,},
    
    {cx =  240/1000,     cy = 450/1000,},
    {cx =  476.667/1000, cy = 456.667/1000,},
    {cx =  686.667/1000, cy = 593.333/1000,},
}

pilon_bias =
{
    {cy = -(593.333-530)/1000},
    {cy = -(456.667-363.333)/1000},
    {cy = -(450-363.333)/1000},
    
    {cy = -(420-363.333)/1000},
    
    {cy = -(450-363.333)/1000},
    {cy = -(456.667-363.333)/1000},
    {cy = -(593.333-530)/1000},
}

--local hh = 0.04

for i=1,7 do
    local sym_scale = 0.7
    local tex_poly    = CreateElement "ceTexPoly"
    tex_poly.name     = "sms_pilon_" .. tostring(i)
    tex_poly.material = MFCD_TEX_IND1
    tex_poly.init_pos = {pilon_pos[i].cx, pilon_pos[i].cy, 0}
    tex_poly.vertices = {{ 173.333/2000, 173.333/2000},
                         { 173.333/2000,-173.333/2000},
                         {-173.333/2000,-173.333/2000},
                         {-173.333/2000, 173.333/2000},}
    tex_poly.indices  = DEF_BOX_INDICES
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
    AddToUpper(tex_poly)
    tex_poly = nil
    
    -- 选中标记
    --local box_scale = 1.2
    local tex_poly          = CreateElement "ceTexPoly"
    tex_poly.name           = "sms_pilon_mark_" .. tostring(i)
    tex_poly.material       = MFCD_TEX_IND1
    tex_poly.init_pos       = {pilon_pos[i].cx, pilon_pos[i].cy, 0}
    tex_poly.vertices       = {{ 173.333/2000, 173.333/2000},
                               { 173.333/2000,-173.333/2000},
                               {-173.333/2000,-173.333/2000},
                               {-173.333/2000, 173.333/2000},}
    tex_poly.indices        = DEF_BOX_INDICES
    tex_poly.state_tex_coords = {
                        MFCD_tex_coord(  0, 1944, 104, 104, TEX_SIZE_X, TEX_SIZE_Y), -- 单个
                        MFCD_tex_coord(104, 1944, 104, 104, TEX_SIZE_X, TEX_SIZE_Y), -- 多联 上
                        MFCD_tex_coord(208, 1944, 104, 104, TEX_SIZE_X, TEX_SIZE_Y), -- 多联 下
                        MFCD_tex_coord(312, 1944, 104, 104, TEX_SIZE_X, TEX_SIZE_Y), -- 多联 全
                    }
    tex_poly.controllers    = {{"sms_pilon_selected", i-1}}
    tex_poly.isdraw         = false
    tex_poly.use_mipfilter  = true
    tex_poly.additive_alpha = true
    AddToUpper(tex_poly)
    tex_poly = nil

    local payload_name_offset_y = 1.8
    
    -- 挂载名字
    local text_strpoly      = CreateElement "ceStringPoly"
    text_strpoly.material   = MFCD_WPN_FONT_DEF
    text_strpoly.stringdefs = MFCD_STRINGDEFS_DEF_X05
    text_strpoly.alignment  = "CenterCenter"
    --text_strpoly.init_pos   = {pilon_pos[i].cx, pilon_pos[i].cy - 1.6*hh, 0}
    text_strpoly.init_pos   = {0, pilon_bias[i].cy, 0}
    text_strpoly.parent_element = "sms_pilon_" .. tostring(i)
    
    text_strpoly.value          = "SD10" -- for test
    text_strpoly.controllers    = {{"sms_payload_name", i-1}}
    text_strpoly.isdraw         = false
    text_strpoly.use_mipfilter  = true
    text_strpoly.additive_alpha = true
    AddToUpper(text_strpoly)
    text_strpoly = nil
    
    if __SHOW_ARM_STATE__ then
        -- ARM 状态
        local arm_strpoly      = CreateElement "ceStringPoly"
        arm_strpoly.material   = MFCD_WPN_FONT_DEF
        arm_strpoly.stringdefs = MFCD_STRINGDEFS_DEF_X05
        arm_strpoly.alignment  = "CenterCenter"
        --arm_strpoly.init_pos   = {pilon_pos[i].cx, pilon_pos[i].cy - 1.6*hh, 0}
        arm_strpoly.init_pos   = {0, pilon_bias[i].cy-1.2*0.04, 0}
        arm_strpoly.parent_element = "sms_pilon_" .. tostring(i)
        
        arm_strpoly.value          = "OFF" -- for test
        arm_strpoly.controllers    = {{"sms_pilon_arm_state", i-1},}
        arm_strpoly.isdraw         = true
        arm_strpoly.use_mipfilter  = true
        arm_strpoly.additive_alpha = true
        AddToUpper(arm_strpoly)
        arm_strpoly = nil    
    end
    
end


