dofile(LockOn_Options.common_script_path.."Fonts/symbols_locale.lua")
dofile(LockOn_Options.common_script_path.."Fonts/fonts_cmn.lua")


-- Global Macro
IND_TEX_PATH = LockOn_Options.script_path .. "../Textures/IndicationTextures/"

dofile(LockOn_Options.script_path.."fonts.lua")

------- MATERIALS -------

materials = {}
--[[
materials["INDICATION_COMMON_RED"]      = {255, 0, 0, 255}
materials["INDICATION_COMMON_WHITE"]    = {255, 255, 255, 255}
materials["MASK_MATERIAL"]              = {255, 0, 255, 50}

materials["HUD_IND_YELLOW"]             = {243, 116, 13, 255}
materials["INDICATION_COMMON_RED"]      = {255, 0, 0, 255}

materials["LBLUE"]                      = {173, 216, 230, 255}

materials["DBG_GREY"]                   = {25, 25, 25, 255}
materials["DBG_BLACK"]                  = {0, 0, 0, 100}
materials["DBG_RED"]                    = {255, 0, 0, 100}
materials["DBG_GREEN"]                  = {0, 255, 0, 100}
materials["BLACK"]                      = {0, 0, 0, 255}
materials["SIMPLE_WHITE"]               = {255, 255, 255, 255}
materials["PURPLE"]                     = {255, 0, 255, 255}

materials["GENERAL_INFO_GOLD"]          = {255, 197, 3, 255}
materials["YELLOW"]                     = {255, 255, 0, 255}
materials["BLUE"]                       = {255, 0, 0, 255}
materials["RED"]                        = {255, 0, 0, 255}
]]

-- COMMON
materials["IND_COMMON_RED"]      = {255,   0,   0, 255}
materials["DBG_GREY"]            = { 25,  25,  25, 255}
materials["DBG_BLACK"]           = {  0,   0,   0, 100}
materials["DBG_RED"]             = {255,   0,   0, 100}
materials["DBG_GREEN"]           = {  0, 255,   0, 100}
materials["BLACK"]               = {  0,   0,   0, 255}
materials["SIMPLE_WHITE"]        = {255, 255, 255, 255}
materials["PURPLE"]              = {255,   0, 255, 255}

-- HUD
materials["HUD_IND_DEF"]         = {  0, 255,   0, 255}
materials["HUD_IND_CLIP"]        = {  0, 255,   0,   4}
materials["HUD_IND_RED"]         = {255,   0,   0, 255}
materials["HUD_IND_GREEN"]       = {  0, 255,   0, 255}
materials["HUD_IND_BLUE"]        = {  0,   0, 255, 255}
materials["HUD_IND_WHITE"]       = {255, 255, 255, 255}
materials["HUD_IND_YELLOW"]      = {255,   0,   0, 240}
materials["HUD_IND_DARK"]        = {  0,   0,   0, 255}
materials["HUD_IND_HIDE"]        = {  0,   0,   0,   0}

materials["HUD_IND_BASE1"]       = {  0, 255,   0,   4}
materials["HUD_IND_BASE2"]       = {255, 255,   0,   4}

-- MFCDs
materials["MFCD_IND_DEF"]        = {  0, 255,   0, 240}
materials["MFCD_IND_RED"]        = {255,   0,   0, 240}
materials["MFCD_IND_GREEN"]      = {  0, 255,   0, 150}
materials["MFCD_IND_DGREEN"]     = {  3,  67,  40, 240}
materials["MFCD_IND_BLUE"]       = {  0,   0, 255, 240}
materials["MFCD_IND_BLUE_L"]     = { 70, 130, 180, 255}
materials["MFCD_IND_BLACK"]      = {  0,   0,   0, 100}
materials["MFCD_IND_DARK"]       = {  0,   0,   0, 100}
materials["MFCD_IND_WHITE"]      = {0,   0,   0, 240}
materials["MFCD_IND_WHITE_Y"]    = {255, 255, 240, 240}
materials["MFCD_IND_PINK"]       = {160,  32, 240, 240}
materials["MFCD_IND_YELLOW"]     = {255,   0,   0, 240}
materials["MFCD_IND_SKY"]        = { 47, 135, 255, 255}
materials["MFCD_IND_GRND"]       = { 49,   5,   1, 255}
materials["MFCD_IND_BOXBASE"]    = {255, 255, 255,   0}
materials["MFCD_IND_W_BASE"]     = {255, 255, 255, 255}

-- UFCP
materials["UFCP_IND_DEF"]        = {0, 255, 0, 100}
materials["UFCP_IND_CURSOR"]     = {  0, 255, 0, 100}
materials["UFCP_IND_PAGEBASE"]   = {0, 255, 0, 100}

-- RADIO
materials["RADIO_IND_DEF"]       = {  0, 255,   0, 150}
materials["RADIO_IND_RED"]       = {255,   0,   0, 240}
materials["RADIO_IND_YELLOW"]    = {0, 255, 0, 100}

-- CLOCK
materials["CLOCK_IND_DEF"]       = {  0, 255,   0, 150}
materials["CLOCK_IND_RED"]       = {255,   0,   0, 240}
materials["CLOCK_IND_YELLOW"]    = {255, 255,   0, 240}

------- TEXTURES -------
textures = {}

-- COMMON
textures["ARCADE"]               = {"arcade.tga", materials["IND_COMMON_RED"]}
textures["ARCADE_PUPRLE"]        = {"arcade.tga", materials["PURPLE"]}
textures["ARCADE_WHITE"]         = {"arcade.tga", materials["SIMPLE_WHITE"]}

-- HUD
textures["hud_tex_ind1"]         = {IND_TEX_PATH .. "Indication_HUD_1.dds", materials["HUD_IND_DEF"]}
textures["hud_tex_ind1_r"]       = {IND_TEX_PATH .. "Indication_HUD_1.dds", materials["HUD_IND_RED"]}
textures["hud_tex_ind1_y"]       = {IND_TEX_PATH .. "Indication_HUD_1.dds", materials["HUD_IND_YELLOW"]}

textures["hud_tex_ind2"]         = {IND_TEX_PATH .. "Indication_HUD_2.dds", materials["HUD_IND_DEF"]}
textures["hud_tex_ind2_r"]       = {IND_TEX_PATH .. "Indication_HUD_2.dds", materials["HUD_IND_RED"]}
textures["hud_tex_ind2_y"]       = {IND_TEX_PATH .. "Indication_HUD_2.dds", materials["HUD_IND_YELLOW"]}

textures["hud_tex_clip"]         = {IND_TEX_PATH .. "Indication_HUD_clip.dds", materials["HUD_IND_CLIP"]}

textures["hud_mesh_def"]         = {nil, materials["HUD_IND_DEF"]}
textures["hud_mesh_base1"]       = {nil, materials["HUD_IND_BASE1"]}
textures["hud_mesh_base2"]       = {nil, materials["HUD_IND_BASE2"]}

textures["hud_line_dashed_def"]  = {IND_TEX_PATH .. "Indication_Line_Dashed.dds", materials["HUD_IND_DEF"]}

-- UFCP
textures["ufcd_mesh_def"]        = {nil, materials["UFCP_IND_DEF"]}
textures["ufcd_mesh_cursor"]     = {nil, materials["UFCP_IND_CURSOR"]}
textures["ufcd_mesh_pagebase"]   = {nil, materials["UFCP_IND_PAGEBASE"]}

-- RADIO
textures["radio_mesh_def"]       = {nil, materials["RADIO_IND_DEF"]}
textures["radio_mesh_r"]         = {nil, materials["RADIO_IND_RED"]}
textures["radio_mesh_y"]         = {nil, materials["RADIO_IND_YELLOW"]}

-- Clock
textures["clock_mesh_def"]       = {nil, materials["CLOCK_IND_DEF"]}

-- MFCDs
textures["mfcd_tex_ind1"]        = {IND_TEX_PATH .. "Indication_MFCD_1.dds", materials["MFCD_IND_DEF"]}
textures["mfcd_tex_ind1_g"]      = {IND_TEX_PATH .. "Indication_MFCD_1.dds", materials["MFCD_IND_GREEN"]}
textures["mfcd_tex_ind1_w"]      = {IND_TEX_PATH .. "Indication_MFCD_1.dds", materials["MFCD_IND_WHITE"]}
textures["mfcd_tex_ind1_wy"]     = {IND_TEX_PATH .. "Indication_MFCD_1.dds", materials["MFCD_IND_WHITE_Y"]}
textures["mfcd_tex_ind1_y"]      = {IND_TEX_PATH .. "Indication_MFCD_1.dds", materials["MFCD_IND_YELLOW"]}
textures["mfcd_tex_ind1_r"]      = {IND_TEX_PATH .. "Indication_MFCD_1.dds", materials["MFCD_IND_RED"]}

textures["mfcd_tex_ind2"]        = {IND_TEX_PATH .. "Indication_MFCD_2.dds", materials["MFCD_IND_DEF"]}
textures["mfcd_tex_ind2_g"]      = {IND_TEX_PATH .. "Indication_MFCD_2.dds", materials["MFCD_IND_GREEN"]}
textures["mfcd_tex_ind2_w"]      = {IND_TEX_PATH .. "Indication_MFCD_2.dds", materials["MFCD_IND_WHITE"]}
textures["mfcd_tex_ind2_wy"]     = {IND_TEX_PATH .. "Indication_MFCD_2.dds", materials["MFCD_IND_WHITE_Y"]}
textures["mfcd_tex_ind2_y"]      = {IND_TEX_PATH .. "Indication_MFCD_2.dds", materials["MFCD_IND_YELLOW"]}
textures["mfcd_tex_ind2_r"]      = {IND_TEX_PATH .. "Indication_MFCD_2.dds", materials["MFCD_IND_RED"]}

textures["mfcd_tex_ind3"]        = {IND_TEX_PATH .. "Indication_MFCD_3.dds", materials["MFCD_IND_DEF"]}
textures["mfcd_tex_ind3_g"]      = {IND_TEX_PATH .. "Indication_MFCD_3.dds", materials["MFCD_IND_GREEN"]}
textures["mfcd_tex_ind3_w"]      = {IND_TEX_PATH .. "Indication_MFCD_3.dds", materials["MFCD_IND_WHITE"]}
textures["mfcd_tex_ind3_wy"]     = {IND_TEX_PATH .. "Indication_MFCD_3.dds", materials["MFCD_IND_WHITE_Y"]}
textures["mfcd_tex_ind3_y"]      = {IND_TEX_PATH .. "Indication_MFCD_3.dds", materials["MFCD_IND_YELLOW"]}
textures["mfcd_tex_ind3_r"]      = {IND_TEX_PATH .. "Indication_MFCD_3.dds", materials["MFCD_IND_RED"]}
textures["mfcd_tex_ind3_bl"]     = {IND_TEX_PATH .. "Indication_MFCD_3.dds", materials["MFCD_IND_BLUE_L"]}

textures["mfcd_tex_ind4"]        = {IND_TEX_PATH .. "Indication_MFCD_4.dds", materials["MFCD_IND_DEF"]}
textures["mfcd_tex_ind4_g"]      = {IND_TEX_PATH .. "Indication_MFCD_4.dds", materials["MFCD_IND_GREEN"]}
textures["mfcd_tex_ind4_w"]      = {IND_TEX_PATH .. "Indication_MFCD_4.dds", materials["MFCD_IND_WHITE"]}
textures["mfcd_tex_ind4_wy"]     = {IND_TEX_PATH .. "Indication_MFCD_4.dds", materials["MFCD_IND_WHITE_Y"]}
textures["mfcd_tex_ind4_y"]      = {IND_TEX_PATH .. "Indication_MFCD_4.dds", materials["MFCD_IND_YELLOW"]}
textures["mfcd_tex_ind4_r"]      = {IND_TEX_PATH .. "Indication_MFCD_4.dds", materials["MFCD_IND_RED"]}

textures["mfcd_tex_ind5"]        = {IND_TEX_PATH .. "Indication_MFCD_5.dds", materials["MFCD_IND_DEF"]}
textures["mfcd_tex_ind5_g"]      = {IND_TEX_PATH .. "Indication_MFCD_5.dds", materials["MFCD_IND_GREEN"]}
textures["mfcd_tex_ind5_w"]      = {IND_TEX_PATH .. "Indication_MFCD_5.dds", materials["MFCD_IND_WHITE"]}
textures["mfcd_tex_ind5_wy"]     = {IND_TEX_PATH .. "Indication_MFCD_5.dds", materials["MFCD_IND_WHITE_Y"]}
textures["mfcd_tex_ind5_y"]      = {IND_TEX_PATH .. "Indication_MFCD_5.dds", materials["MFCD_IND_YELLOW"]}
textures["mfcd_tex_ind5_r"]      = {IND_TEX_PATH .. "Indication_MFCD_5.dds", materials["MFCD_IND_RED"]}

textures["mfcd_line_dashed_def"] = {IND_TEX_PATH .. "Indication_Line_Dashed.dds", materials["MFCD_IND_DEF"]}
textures["mfcd_line_dashed_r"]   = {IND_TEX_PATH .. "Indication_Line_Dashed.dds", materials["MFCD_IND_RED"]}
textures["mfcd_line_dashed_w"]   = {IND_TEX_PATH .. "Indication_Line_Dashed.dds", materials["MFCD_IND_WHITE"]}
textures["mfcd_line_dashed_y"]   = {IND_TEX_PATH .. "Indication_Line_Dashed.dds", materials["MFCD_IND_YELLOW"]}


textures["mfcd_mesh_def"]        = {nil, materials["MFCD_IND_DEF"]}
textures["mfcd_mesh_r"]          = {nil, materials["MFCD_IND_RED"]}
textures["mfcd_mesh_g"]          = {nil, materials["MFCD_IND_GREEN"]}
textures["mfcd_mesh_b"]          = {nil, materials["MFCD_IND_BLUE"]}
textures["mfcd_mesh_d"]          = {nil, materials["MFCD_IND_DARK"]}
textures["mfcd_mesh_w"]          = {nil, materials["MFCD_IND_WHITE"]}
textures["mfcd_mesh_wy"]         = {nil, materials["MFCD_IND_DARK"]} -- 略带淡黄色
textures["mfcd_mesh_p"]          = {nil, materials["MFCD_IND_PINK"]}
textures["mfcd_mesh_y"]          = {nil, materials["MFCD_IND_YELLOW"]}
textures["mfcd_mesh_sky"]        = {nil, materials["MFCD_IND_SKY"]}
textures["mfcd_mesh_gnd"]        = {nil, materials["MFCD_IND_GRND"]}
textures["mfcd_mesh_boxbase"]    = {nil, materials["MFCD_IND_BOXBASE"]}
textures["mfcd_mesh_whitebase"]  = {nil, materials["MFCD_IND_DARK"]}



------- FONTS ----------

fonts = {}
-- GENERAL FONTS
--fonts["font_general_keys"]       = {fontdescription["font_general_loc"], 10, {255,75,75,255}}
--fonts["font_hints_kneeboard"]    = {fontdescription["font_general_loc"], 10, {100,0,100,255}}

-- HUD
fonts["hud_font_def"]   = {fontdescription["font_HUD"], 10, materials["HUD_IND_DEF"]}
fonts["hud_font_g"]     = {fontdescription["font_HUD"], 10, materials["HUD_IND_GREEN"]}
fonts["hud_font_b"]     = {fontdescription["font_HUD"], 10, materials["HUD_IND_BLUE"]}
fonts["hud_font_w"]     = {fontdescription["font_HUD"], 10, materials["HUD_IND_WHITE"]}
fonts["hud_font_r"]     = {fontdescription["font_HUD"], 10, materials["HUD_IND_RED"]}

-- MPCDs
fonts["mfcd_font_def"]  = {fontdescription["font_MFCD"], 10, materials["MFCD_IND_DEF"]}
fonts["mfcd_font_g"]    = {fontdescription["font_MFCD"], 10, materials["MFCD_IND_GREEN"]}
fonts["mfcd_font_dg"]   = {fontdescription["font_MFCD"], 10, materials["MFCD_IND_DGREEN"]}
fonts["mfcd_font_b"]    = {fontdescription["font_MFCD"], 10, materials["MFCD_IND_BLUE"]}
fonts["mfcd_font_w"]    = {fontdescription["font_MFCD"], 10, materials["MFCD_IND_WHITE"]}
fonts["mfcd_font_wy"]   = {fontdescription["font_MFCD"], 10, materials["MFCD_IND_WHITE_Y"]}
fonts["mfcd_font_d"]    = {fontdescription["font_MFCD"], 10, materials["MFCD_IND_DARK"]}
fonts["mfcd_font_y"]    = {fontdescription["font_MFCD"], 10, materials["MFCD_IND_YELLOW"]}
fonts["mfcd_font_r"]    = {fontdescription["font_MFCD"], 10, materials["MFCD_IND_RED"]}

fonts["mfcd_font_stroke_def"]  = {fontdescription["font_MFCD_stroke"], 10, materials["MFCD_IND_DEF"]}
fonts["mfcd_font_stroke_g"]    = {fontdescription["font_MFCD_stroke"], 10, materials["MFCD_IND_GREEN"]}
fonts["mfcd_font_stroke_dg"]   = {fontdescription["font_MFCD_stroke"], 10, materials["MFCD_IND_DGREEN"]}
fonts["mfcd_font_stroke_b"]    = {fontdescription["font_MFCD_stroke"], 10, materials["MFCD_IND_BLUE"]}
fonts["mfcd_font_stroke_w"]    = {fontdescription["font_MFCD_stroke"], 10, materials["MFCD_IND_WHITE"]}
fonts["mfcd_font_stroke_wy"]   = {fontdescription["font_MFCD_stroke"], 10, materials["MFCD_IND_WHITE_Y"]}
fonts["mfcd_font_stroke_d"]    = {fontdescription["font_MFCD_stroke"], 10, materials["MFCD_IND_DARK"]}
fonts["mfcd_font_stroke_r"]    = {fontdescription["font_MFCD_stroke"], 10, materials["MFCD_IND_RED"]}


fonts["mfcd_wpn_font_def"]  = {fontdescription["font_MFCD_wpn"], 10, materials["MFCD_IND_DEF"]}
fonts["mfcd_wpn_font_g"]    = {fontdescription["font_MFCD_wpn"], 10, materials["MFCD_IND_GREEN"]}
fonts["mfcd_wpn_font_dg"]   = {fontdescription["font_MFCD_wpn"], 10, materials["MFCD_IND_DGREEN"]}
fonts["mfcd_wpn_font_b"]    = {fontdescription["font_MFCD_wpn"], 10, materials["MFCD_IND_BLUE"]}
fonts["mfcd_wpn_font_w"]    = {fontdescription["font_MFCD_wpn"], 10, materials["MFCD_IND_WHITE"]}
fonts["mfcd_wpn_font_wy"]   = {fontdescription["font_MFCD_wpn"], 10, materials["MFCD_IND_WHITE_Y"]}
fonts["mfcd_wpn_font_d"]    = {fontdescription["font_MFCD_wpn"], 10, materials["MFCD_IND_DARK"]}
fonts["mfcd_wpn_font_r"]    = {fontdescription["font_MFCD_wpn"], 10, materials["MFCD_IND_RED"]}

-- test
--fonts["mfcd_wpn_svg_font_def"]  = {fontdescription["font_MFCD_wpn_svg"], 10, materials["MFCD_IND_DEF"]}

-- UFC
fonts["ufcp_font_def"]     = {fontdescription["font_UFCP"], 10, materials["UFCP_IND_DEF"]}
fonts["ufcp_font_cursor"]  = {fontdescription["font_UFCP"], 10, materials["UFCP_IND_CURSOR"]}

-- Radio Panel
fonts["radio_font_def"]     = {fontdescription["font_RADIO"], 10, materials["RADIO_IND_DEF"]}
fonts["radio_font_y"]       = {fontdescription["font_RADIO"], 10, materials["RADIO_IND_YELLOW"]}
fonts["radio_font_cursor"]  = {fontdescription["font_RADIO"], 10, materials["RADIO_IND_DEF"]}

-- Clock
fonts["clock_font_def"]     = {fontdescription["font_CLOCK"], 10, materials["CLOCK_IND_DEF"]}

-- Kneeboard 
fonts["kneeboard_font_def"]  = {fontdescription["font_Kneeboard"], 10, {  0, 255,   0, 240}}
fonts["kneeboard_font_g"]    = {fontdescription["font_Kneeboard"], 10, {  0, 255,   0, 150}}
fonts["kneeboard_font_dg"]   = {fontdescription["font_Kneeboard"], 10, {  3,  67,  40, 240}}
fonts["kneeboard_font_b"]    = {fontdescription["font_Kneeboard"], 10, {  0,   0, 255, 240}}
fonts["kneeboard_font_w"]    = {fontdescription["font_Kneeboard"], 10, {255, 255, 255, 255}}
fonts["kneeboard_font_wy"]   = {fontdescription["font_Kneeboard"], 10, {255, 255, 240, 240}}
fonts["kneeboard_font_d"]    = {fontdescription["font_Kneeboard"], 10, {  0,   0,   0, 128}}
fonts["kneeboard_font_r"]    = {fontdescription["font_Kneeboard"], 10, {255,   0,   0, 240}}
