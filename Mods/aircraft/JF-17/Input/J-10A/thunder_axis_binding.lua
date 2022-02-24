
local category_device_special = 'Special For Devices'

local axis_binding = {}

axis_binding.axisCommands = {
    {action = axis_cmd.UFCP_HUD_Brt_Abs,       name = _(cmd_names.PNT_729 .. ' Abs')  },
    {action = axis_cmd.UFCP_Brt_Abs,           name = _(cmd_names.PNT_732 .. ' Abs')  },

    {action = axis_cmd.ACP_Com1_Vol_Abs,       name = _('ACP ' .. cmd_names.PNT_934 .. ' Abs')  },
    {action = axis_cmd.ACP_Com2_Vol_Abs,       name = _('ACP ' .. cmd_names.PNT_938 .. ' Abs')  },
    {action = axis_cmd.ACP_TCN_ILS_Vol_Abs,    name = _('ACP ' .. cmd_names.PNT_939 .. ' Abs')  },
    {action = axis_cmd.ACP_MSL_Vol_Abs,        name = _('ACP ' .. cmd_names.PNT_940 .. ' Abs')  },
    
    {action = axis_cmd.Cpt_Light_Inst_Abs,     name = _('Cpt ' .. cmd_names.PNT_944 .. ' Abs')  },
    {action = axis_cmd.Cpt_Light_Console_Abs,  name = _('Cpt ' .. cmd_names.PNT_945 .. ' Abs')  },
    {action = axis_cmd.Cpt_Light_Flood_Abs,    name = _('Cpt ' .. cmd_names.PNT_946 .. ' Abs')  },
    
    {action = axis_cmd.Ext_Light_AAR_Abs,      name = _('Ext ' .. cmd_names.PNT_964 .. ' Abs')  },
}

return axis_binding
