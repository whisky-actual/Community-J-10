dofile(LockOn_Options.script_path .. "MFCD/MFCDs_defs.lua")

local page_root = create_page_root()

-- current input text
local Poly_Text       = CreateElement "ceStringPoly"
Poly_Text.material    = MFCD_FONT_DEF
Poly_Text.stringdefs  = MFCD_STRINGDEFS_DEF_X2
Poly_Text.init_pos    = {0, 0.5, 0}
Poly_Text.alignment   = "CenterCenter"
Poly_Text.value       = "MENU"
Poly_Text.controllers = {{"mfcd_input_text", "1"},}
AddToUpper(Poly_Text)
Poly_Text = nil

-- OSB
local TXT_HW = 0.15
local HH = 0
--5 * H2W_SCALE

local osb_txt = {
    {value="1", init_pos={ MFCD_FONT_L_HORI_X, MFCD_FONT_LR1_Y }, align="LeftCenter", },
    {value="2", init_pos={ MFCD_FONT_L_HORI_X, MFCD_FONT_LR2_Y }, align="LeftCenter", },
    {value="3", init_pos={ MFCD_FONT_L_HORI_X, MFCD_FONT_LR3_Y }, align="LeftCenter", },
    {value="4", init_pos={ MFCD_FONT_L_HORI_X, MFCD_FONT_LR4_Y }, align="LeftCenter", },
    {value="5", init_pos={ MFCD_FONT_L_HORI_X, MFCD_FONT_LR5_Y }, align="LeftCenter", },
    
    {value="6", init_pos={ MFCD_FONT_R_HORI_X, MFCD_FONT_LR1_Y }, align="RightCenter",},
    {value="7", init_pos={ MFCD_FONT_R_HORI_X, MFCD_FONT_LR2_Y }, align="RightCenter",},
    {value="8", init_pos={ MFCD_FONT_R_HORI_X, MFCD_FONT_LR3_Y }, align="RightCenter",},
    {value="9", init_pos={ MFCD_FONT_R_HORI_X, MFCD_FONT_LR4_Y }, align="RightCenter",},
    {value="0", init_pos={ MFCD_FONT_R_HORI_X, MFCD_FONT_LR5_Y }, align="RightCenter",},
--[[
    {value="1",    init_pos={ MFCD_FONT_UD1_X,    MFCD_FONT_U_Y  },  align="CenterCenter", },
    {value="2",    init_pos={ MFCD_FONT_UD2_X,    MFCD_FONT_U_Y  },  align="CenterCenter", },
    {value="3",    init_pos={ MFCD_FONT_UD3_X,    MFCD_FONT_U_Y  },  align="CenterCenter", },
    {value="4",    init_pos={ MFCD_FONT_UD4_X,    MFCD_FONT_U_Y  },  align="CenterCenter", },
    {value="5",    init_pos={ MFCD_FONT_UD5_X,    MFCD_FONT_U_Y  },  align="CenterCenter", },

    {value=">",    init_pos={ MFCD_FONT_R_HORI_X, MFCD_FONT_LR1_Y},  align="RightCenter",  },
    {value="<",    init_pos={ MFCD_FONT_R_HORI_X, MFCD_FONT_LR2_Y},  align="RightCenter",  },
    {value="CLR",  init_pos={ MFCD_FONT_R_HORI_X, MFCD_FONT_LR3_Y},  align="RightCenter",  },
    {value="RTN",  init_pos={ MFCD_FONT_R_HORI_X, MFCD_FONT_LR4_Y},  align="RightCenter",  },
    {value="ENT",  init_pos={ MFCD_FONT_R_HORI_X, MFCD_FONT_LR5_Y},  align="RightCenter",  },

    {value="6",    init_pos={ MFCD_FONT_L_HORI_X, MFCD_FONT_LR1_Y }, align="LeftCenter"    },
    {value="7",    init_pos={ MFCD_FONT_L_HORI_X, MFCD_FONT_LR2_Y }, align="LeftCenter"    },
    {value="8",    init_pos={ MFCD_FONT_L_HORI_X, MFCD_FONT_LR3_Y }, align="LeftCenter",   },
    {value="9",    init_pos={ MFCD_FONT_L_HORI_X, MFCD_FONT_LR4_Y }, align="LeftCenter"    },
    {value="0",    init_pos={ MFCD_FONT_L_HORI_X, MFCD_FONT_LR5_Y }, align="LeftCenter",   },
]]
}

local text_strpoly
local mesh_poly

for i=1, #(osb_txt) do
    text_strpoly                 = CreateElement "ceStringPoly"
    text_strpoly.material        = MFCD_FONT_DEF
    text_strpoly.stringdefs      = MFCD_STRINGDEFS_DEF_X08
    text_strpoly.init_pos        = osb_txt[i].init_pos
    text_strpoly.alignment       = osb_txt[i].align
    text_strpoly.formats         = osb_txt[i].formats

    if osb_txt[i].controller then
        text_strpoly.controllers = osb_txt[i].controller
    end

    if osb_txt[i].value ~= nil then
        text_strpoly.value = osb_txt[i].value
    else
        text_strpoly.value = "OSB" .. i
    end
    AddToUpper(text_strpoly)
    text_strpoly = nil
end
