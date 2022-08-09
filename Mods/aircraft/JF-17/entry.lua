local self_ID  = 'J-10A'
local ac_name  = 'J-10A'
-- local bin_name = 'JF-17_ASM'

-- dofile(current_mod_path .. '/preload.lua')

declare_plugin(self_ID, {
    installed     = true,
    dirName       = current_mod_path,
    displayName   = 'J-10A',
    shortName     = 'J-10A',
    fileMenuName  = 'J-10A',
    version       = "1.2.0",
    state         = 'installed',
    developerName = _('Whisky-Actual'),
    developerLink = _('https://github.com/whisky-actual/Community-J-10-A'),
    info          = _("THIS MATERIAL IS NOT MADE OR SUPPORTED BY EAGLE DYNAMICS SA"),
    -- binaries      = { bin_name, },
    -- update_id     = 'DEKA_JF-17',
    InputProfiles = {
		['J-10A'] = current_mod_path .. '/Input/J-10A',
    },
    Skins = {
		{ name = 'J-10A', dir = 'Skins/2' },
    },
    Missions = {
        -- { name = _("JF-17"), dir = 'Missions', CLSID = '{JF-17 missions}', },
    },
    LogBook = {
        { name = 'J-10A', type = 'J-10A' },
    },
    Options =
    {
        {
            name   = 'J-10A',
            nameId = "J-10A",
            dir    = "Options",
            CLSID  = '{J-10A options}',
            --AircraftSettingsFile = 'AircraftSettings.lua'
        },
    },
    -- preload_resources = preload_files,
    infoWaitScreen = _('DCS : J10-A Community MOD'),
})

---------------------------------------------------------------------------------------
mount_vfs_texture_path (current_mod_path .. '/Textures/J-10A')
mount_vfs_texture_path (current_mod_path .. '/Textures/Weapons J-10')
mount_vfs_texture_path (current_mod_path .. '/Cockpit/Shapes/Textures')
mount_vfs_texture_path (current_mod_path .. '/Cockpit/Textures/IndicationTextures')
mount_vfs_liveries_path(current_mod_path .. '/Liveries')
mount_vfs_texture_path (current_mod_path .. '/Skins/1/ME')
mount_vfs_model_path   (current_mod_path .. '/Shapes/J-10A')

local cfg_path = current_mod_path .. '/FM/config.lua'
dofile(cfg_path)

dofile(current_mod_path .. '/J-10A.lua')


J10A_FM[1]           = self_ID
J10A_FM[2]           = 'JF-17_ASM'
J10A_FM.config_path  = cfg_path
J10A_FM.user_options = 'J-10A'



---------------------------------------------------------------------------------------

dofile(current_mod_path .. '/Views.lua')

make_view_settings('J-10A', ViewSettings, SnapViews)
---------------------------------------------------------------------------------------
make_flyable('J-10A', current_mod_path .. '/Cockpit/Scripts/', JF17_FM, current_mod_path .. '/Comm/comm.lua')

-- make_flyable('J-10A', current_mod_path .. '/Cockpit/Scripts/', nil, current_mod_path .. '/Comm/comm.lua')

plugin_done()