self_ID = "J-10A"
J10A_LOAOUT_enabled = true
declare_plugin(self_ID,
{
installed 	 = true,
dirName	  	 = current_mod_path,
displayName  = _("J-10A"),
developerName = _("J-10A Community Mod: https://github.com/whisky-actual/Community-J-10-A"),
fileMenuName = _("J-10A"),
update_id        = "J-10A",
version		 = "1.3.1",
state		 = "installed",
info		 = _("J-10A Community Mod: THIS MATERIAL IS NOT MADE OR SUPPORTED BY EAGLE DYNAMICS SA"),
infoWaitScreen = _('DCS : J10-A Community MOD'),

encyclopedia_path 	= current_mod_path..'/Encyclopedia',

Skins	=
	{
		{
		    name	= _("J-10A"),
			dir		= "Theme"
		},
	},

Options =
	{
		{
			name		= _("J-10A"),
            nameId		= "J-10A",
            dir			= "Options",
            CLSID		= "{J-10A Options}"
		},
	},
})
-------------------------------------------------------------------------------------
--Mounting 3d model paths and texture paths
-------------------------------------------------------------------------------------
mount_vfs_model_path	(current_mod_path .. "/Shapes")
mount_vfs_texture_path  (current_mod_path .. "/Theme")
mount_vfs_texture_path  (current_mod_path .. "/ImagesGUI")
mount_vfs_texture_path  (current_mod_path .. "/Textures/ExteriorTextures")
mount_vfs_texture_path  (current_mod_path .. "/Textures/WeaponsTextures")
mount_vfs_texture_path  (current_mod_path .. "/Textures/Liveries/")
mount_vfs_liveries_path (current_mod_path .. "/Liveries")
-------------------------------------------------------------------------------------
--J-10A lua
-------------------------------------------------------------------------------------
dofile(current_mod_path..'/Payload.lua')
dofile(current_mod_path..'/Config.lua')
--dofile(current_mod_path..'/J-10A.lua')
-------------------------------------------------------------------------------------
plugin_done()