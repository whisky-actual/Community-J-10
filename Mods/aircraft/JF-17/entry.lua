local self_ID  = 'JF-17 by Deka Ironwork Simulations'
local ac_name  = 'JF-17'
local bin_name = 'JF-17_ASM'

dofile(current_mod_path .. '/preload.lua')

declare_plugin(self_ID, {
    --installed     = true,
    dirName       = current_mod_path,
    displayName   = _(ac_name),
    shortName     = ac_name,
    fileMenuName  = _(ac_name),
    version       = "1.1.2",
    state         = 'installed',
    developerName = _('https://github.com/whisky-actual/Community-J-10-A'),
    info          = _("THIS MATERIAL IS NOT MADE OR SUPPORTED BY EAGLE DYNAMICS SA"),
    binaries      = { bin_name, },
    update_id     = 'DEKA_JF-17',
    InputProfiles = {
        [ac_name] = current_mod_path .. '/Input/JF-17',
		--J-10A
		["J-10A"] = current_mod_path .. '/Input/J-10A',
    },
    Skins = {
        { name = ac_name, dir = 'Skins/1' },
	--J-10A
		{ name = _("J-10A"), dir = 'Skins/2' },
    },
    Missions = {
        { name = _(ac_name), dir = 'Missions', CLSID = '{JF-17 missions}', },
    },
    LogBook = {
        { name = _(ac_name), type = ac_name },
    },
    Options =
    {
        {
            name   = _(ac_name),
            nameId = ac_name,
            dir    = 'Options',
            CLSID  = '{JF-17 options}',
            --AircraftSettingsFile = 'AircraftSettings.lua'
        },
    },
    preload_resources = preload_files,
    infoWaitScreen = _('DCS : J10-A Community MOD'),
})

---------------------------------------------------------------------------------------
mount_vfs_model_path   (current_mod_path .. '/Cockpit/Shapes')
mount_vfs_texture_path (current_mod_path .. '/Cockpit/Shapes/Textures')
mount_vfs_texture_path (current_mod_path .. '/Cockpit/Textures/IndicationTextures')
mount_vfs_liveries_path(current_mod_path .. '/Liveries')
mount_vfs_texture_path (current_mod_path .. '/Skins/1/ME')

--J-10A
--mount_vfs_model_path   (current_mod_path.."/Shapes/J-10A")
mount_vfs_texture_path (current_mod_path.."/Skins/2/ME")--for simulator loading window


local cfg_path = current_mod_path .. '/FM/config.lua'
dofile(cfg_path)

JF17_FM[1]           = self_ID
JF17_FM[2]           = bin_name
JF17_FM.config_path  = cfg_path
JF17_FM.user_options = ac_name

---------------------------------------------------------------------------------------

dofile(current_mod_path .. '/Views.lua')

make_view_settings(ac_name, ViewSettings, SnapViews)
---------------------------------------------------------------------------------------
make_flyable(ac_name, current_mod_path .. '/Cockpit/Scripts/', JF17_FM, current_mod_path .. '/Comm/comm.lua')

--J-10A
dofile(current_mod_path.."/Views.lua")
make_view_settings('J-10A', ViewSettings, SnapViews)
make_flyable('J-10A', current_mod_path .. '/Cockpit/Scripts/', JF17_FM, current_mod_path .. '/Comm/comm.lua')

plugin_done()