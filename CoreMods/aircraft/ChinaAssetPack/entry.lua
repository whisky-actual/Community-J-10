
local self_ID = 'China Asset Pack by Deka Ironwork Simulations and Eagle Dynamics'
local pack_name = 'China Asset Pack'

declare_plugin(self_ID, {
    installed     = true, -- if false that will be place holder , or advertising
    state         = 'installed',
    dirName       = current_mod_path,
    shortName     = pack_name,
    fileMenuName  = _(pack_name),
    displayName   = _(pack_name),
    developerName = _("Deka Ironwork Simulations"),
    version       = __DCS_VERSION__,
    info = _('China Asset Pack is a free add-on for DCS World developed by Deka Ironwork Simulations. It contains several AI aircrafts, ground and navy units, as well as weapons that have served or are currently serving in China.'),
    encyclopedia_path = current_mod_path..'/Encyclopedia',
    binaries =
    {
        'CAP_AI',
        'JF-17_AI',
    },
})

-- models
mount_vfs_model_path (current_mod_path .. '/Shapes/Weapons')
mount_vfs_model_path (current_mod_path .. '/Shapes/Navy')
mount_vfs_model_path (current_mod_path .. '/Shapes/Vehicles')
mount_vfs_model_path (current_mod_path .. '/Shapes/Static')

-- textures
mount_vfs_texture_path (current_mod_path .. '/Textures/Weapons')
mount_vfs_texture_path (current_mod_path .. '/Textures/Static/')

-- liveries
mount_vfs_liveries_path (current_mod_path .. '/Liveries')
mount_vfs_texture_path(current_mod_path .. "/Skins/1/ME")

--[[
    Below sequence must NOT be changed!!!
]]

-- loadouts
dofile(current_mod_path .. '/Entries/Payload.lua')

-- load aircraft entries
dofile(current_mod_path .. '/Entries/Aircrafts.lua')
dofile(current_mod_path .. '/Entries/Tech.lua')

--config

dofile(current_mod_path .. '/config.lua')
----------------------------------------------------------------------------------------
plugin_done()
