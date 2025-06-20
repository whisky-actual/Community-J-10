dofile(LockOn_Options.common_script_path.."devices_defs.lua")
dofile(LockOn_Options.script_path .. "utils.lua")

indicator_type = indicator_types.COMMON
purposes       = {render_purpose.GENERAL, render_purpose.HUD_ONLY_VIEW}

local page_path = LockOn_Options.script_path.."JF-39/Radio/Indicator/"

local ELEMENTSET_OFF    = 0
local ELEMENTSET_NORMAL = 1
-- 子页面源定义
page_subsets = {
    [ELEMENTSET_OFF    ] = page_path .. "RADIO_OFF.lua",
    [ELEMENTSET_NORMAL ] = page_path .. "RADIO_NORMAL.lua",
}

local PAGE_OFF = 0
local PAGE_NORMAL = 1
-- 页面定义
pages = {
    [PAGE_OFF    ] = { ELEMENTSET_OFF, },
    [PAGE_NORMAL ] = { ELEMENTSET_NORMAL, },
}

init_pageID = PAGE_NORMAL
--

dofile(LockOn_Options.common_script_path.."ViewportHandling.lua")
-- MFCD position in HUD only view
local w = LockOn_Options.screen.width;
local h = LockOn_Options.screen.height;

local rect_w = w/8
local rect_h = rect_w / RADIO_aspect
local hud_only_view_position = best_fit_rect(
                                                w*3/4 - rect_w/2, 
                                                h - 1 * rect_h,
                                                rect_w,
                                                rect_h,
                                                Viewport_Align.hcenter,
                                                Viewport_Align.vcenter,
                                                RADIO_aspect)
dedicated_viewport           = hud_only_view_position
dedicated_viewport_arcade    = hud_only_view_position

-- render_purpose.GENERAL
-- try_find_assigned_viewport('RADIO')

local default_viewport = try_find_assigned_viewport('JF17_RADIO', 'RADIO')
if default_viewport then
    dedicated_viewport        = {default_viewport.x, default_viewport.y, default_viewport.width, default_viewport.height}
    dedicated_viewport_arcade = {default_viewport.x, default_viewport.y, default_viewport.width, default_viewport.height}
    purposes                  = {render_purpose.GENERAL, render_purpose.SCREENSPACE_INSIDE_COCKPIT, render_purpose.HUD_ONLY_VIEW}
    render_target_always      = true
end
