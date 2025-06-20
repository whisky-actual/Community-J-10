dofile(LockOn_Options.script_path.."MFCD/MFCD_pageID_defs.lua")
mfcd_id = MFCD.CMFCD

dofile(LockOn_Options.script_path.."MFCD/MFCD_init_COMMON.lua")

-- debugGUI = true

init_pageID = PAGE_ID.PAGE_ID_RDR_AA


dofile(LockOn_Options.common_script_path.."ViewportHandling.lua")
-- MFCD position in HUD only view
-- MFCD_set_screenspace_displacement(3/4, -1, 0.8)
local w = LockOn_Options.screen.width;
local h = LockOn_Options.screen.height;

local hud_only_view_position = best_fit_rect(w/2 - w/3/2, h * (1 - 50/120), w/3 , h * 50/120, Viewport_Align.hcenter, Viewport_Align.vcenter, MFCD_aspect)
dedicated_viewport           = hud_only_view_position
dedicated_viewport_arcade    = hud_only_view_position

-- render_purpose.GENERAL
-- try_find_assigned_viewport('CENTER_MFCD')

local default_viewport = try_find_assigned_viewport('JF17_CENTER_MFCD','CENTER_MFCD')
if default_viewport then
    dedicated_viewport        = {
        default_viewport.x, default_viewport.y,
        default_viewport.width, default_viewport.height
    }
    dedicated_viewport_arcade = {
        default_viewport.x, default_viewport.y,
        default_viewport.width, default_viewport.height
    }
    purposes                  = {
        render_purpose.GENERAL,
        render_purpose.SCREENSPACE_INSIDE_COCKPIT,
        render_purpose.SCREENSPACE_OUTSIDE_COCKPIT,
        render_purpose.HUD_ONLY_VIEW
    }
    render_target_always      = true
end
