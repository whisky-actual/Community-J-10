local self_ID = 'China Asset Pack by Deka Ironwork Simulations and Eagle Dynamics'
local pack_name = 'China Asset Pack'

declare_plugin(self_ID, {
    installed = true, -- if false that will be place holder , or advertising
    state = 'installed',
    dirName = current_mod_path,
    shortName = pack_name,
    fileMenuName = _(pack_name),
    displayName = _(pack_name),
    developerName = _('Whisky.Actual'),
    version = __DCS_VERSION__,
    info = _('These are mods for the JF-17'),
    encyclopedia_path = current_mod_path .. '/Encyclopedia',
    Skins = {{
        name = pack_name,
        dir = 'Skins/1'
    }},
    load_immediately = true,
    binaries = {'CAP_AI', 'JF-17_AI'}
})
----------------------------------------------------------------------------------------
-- J-10 Files
----------------------------------------------------------------------------------------
-- models
mount_vfs_model_path(current_mod_path .. '/J-10/Shapes/')
--mount_vfs_model_path(current_mod_path .. '/J-10/Shapes/Aircraft')
--mount_vfs_model_path(current_mod_path .. '/J-10/Shapes/Weapons')

-- textures
mount_vfs_texture_path(current_mod_path .. '/J-10/ImagesGUI')
mount_vfs_texture_path(current_mod_path .. '/J-10/Textures/')

-- liveries
mount_vfs_liveries_path(current_mod_path .. '/J-10/Liveries/')
----------------------------------------------------------------------------------------
-- Deka Ironwork Simulations Files
----------------------------------------------------------------------------------------
-- models
mount_vfs_model_path(current_mod_path .. '/Shapes/Weapons')
mount_vfs_model_path(current_mod_path .. '/Shapes/Navy')
mount_vfs_model_path(current_mod_path .. '/Shapes/Vehicles')
mount_vfs_model_path(current_mod_path .. '/Shapes/Static')
mount_vfs_model_path(current_mod_path .. '/Shapes/FAG')
mount_vfs_model_path(current_mod_path .. '/Shapes/H-6J')
mount_vfs_model_path(current_mod_path .. '/Shapes/J-11A')
mount_vfs_model_path(current_mod_path .. '/Shapes/JF-17')
mount_vfs_model_path(current_mod_path .. '/Shapes/KJ-2000')
mount_vfs_model_path(current_mod_path .. '/Shapes/Vehicles')
mount_vfs_model_path(current_mod_path .. '/Shapes/WingLoong-1')

-- textures
mount_vfs_texture_path(current_mod_path .. '/Textures/FAG')
mount_vfs_texture_path(current_mod_path .. '/Textures/H-6J/')
mount_vfs_texture_path(current_mod_path .. '/Textures/J-11A')
mount_vfs_texture_path(current_mod_path .. '/Textures/JF-17/')
mount_vfs_texture_path(current_mod_path .. '/Textures/KJ-2000')
mount_vfs_texture_path(current_mod_path .. '/Textures/Navy/')
mount_vfs_texture_path(current_mod_path .. '/Textures/Static/')
mount_vfs_texture_path(current_mod_path .. '/Textures/Vehicles/')
mount_vfs_texture_path(current_mod_path .. '/Textures/Weapons')
mount_vfs_texture_path(current_mod_path .. '/Textures/WingLoong-1')

-- liveries
mount_vfs_texture_path(current_mod_path .. '/Skins/1/ME')

----------------------------------------------------------------------------------------
-- Below sequence must NOT be changed!!!
---------------------------------------------------------------------------------------- 
-- loadouts
dofile(current_mod_path .. '/J-10/Payload.lua')
--dofile(current_mod_path .. '/J-10/weapon_config.lua')

-- load entries
dofile(current_mod_path .. '/J-10/Aircrafts.lua')
dofile(current_mod_path .. '/Entries/Tech.lua')
----------------------------------------------------------------------------------------
plugin_done()
----------------------------------------------------------------------------------------
--                    File by whisky.actual@gmail.com - v.1.2.1                       --
----------------------------------------------------------------------------------------