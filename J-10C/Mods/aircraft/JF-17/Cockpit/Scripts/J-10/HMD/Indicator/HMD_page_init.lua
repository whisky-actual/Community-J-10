dofile(LockOn_Options.common_script_path .. "devices_defs.lua")
dofile(LockOn_Options.script_path .. "materials.lua")

--indicator_type = indicator_types.COLLIMATOR
indicator_type 	= indicator_types.HELMET
purposes       = {render_purpose.GENERAL, render_purpose.HMD_ONLY_VIEW}

-- debugGUI = true
local script_path = LockOn_Options.script_path

-- 子页面 id
HMD_PAGE_BASE       = 0
HMD_PAGE_OFF        = 1
HMD_PAGE_NORMAL     = 2
HMD_PAGE_GRID       = 3

page_subsets  = {
    [HMD_PAGE_BASE]    = script_path .. "JF-39/HMD/Indicator/HMD_BASE.lua",   -- 底层页面
    [HMD_PAGE_OFF]     = script_path .. "JF-39/HMD/Indicator/HMD_OFF.lua",    -- 关机页面
    [HMD_PAGE_NORMAL]  = script_path .. "JF-39/HMD/Indicator/HMD_NORMAL.lua", -- 正常显示
    [HMD_PAGE_GRID]    = script_path .. "JF-39/HMD/Indicator/HMD_GRID.lua",   -- 备用模式
}

-- 页面
HMD_PAGESET_OFF    = 0
HMD_PAGESET_NORMAL = 1
HMD_PAGESET_GRID   = 2
HMD_PAGESET_TEST   = 3 -- to be removed

pages = {
    [HMD_PAGESET_OFF]    = { HMD_PAGE_BASE, HMD_PAGE_OFF },        -- 关机模式 页面集
    [HMD_PAGESET_NORMAL] = { HMD_PAGE_BASE, HMD_PAGE_NORMAL, },    -- 正常模式 页面集
    [HMD_PAGESET_GRID]   = { HMD_PAGE_BASE, HMD_PAGE_GRID },       -- 备用模式 页面集
    [HMD_PAGESET_TEST]   = { HMD_PAGE_GENERAL },                   -- 单页测试
}

init_pageID = HMD_PAGESET_NORMAL

mat_tbl = {
    "hud_tex_ind1",
    "hud_tex_ind2",
    
    "hud_mesh_def",
    "hud_mesh_base1",
    "hud_mesh_base2",
    
    "hud_tex_clip",
    "hud_line_dashed_def",
    
    "hud_font_def",
    "hud_font_g",
    "hud_font_b",
    "hud_font_w",
    "hud_font_r",

    "hud_big_font_def",
}

brightness_sensitive_materials = mat_tbl
opacity_sensitive_materials    = mat_tbl
color_sensitive_materials      = mat_tbl

is_colored   = true
day_color    = {0, 1.0, 0}
night_color  = {0, 0.5, 0}
----------------------------------------------------------------------------------------
--                    File by whisky.actual@gmail.com - v.1.2.2                       --
----------------------------------------------------------------------------------------