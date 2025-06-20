dofile(LockOn_Options.common_script_path.."elements_defs.lua")
dofile(LockOn_Options.common_script_path.."Fonts/symbols_locale.lua")
dofile(LockOn_Options.common_script_path.."Fonts/fonts_cmn.lua")

local IndicationFontPath = LockOn_Options.script_path.."JF-39/Textures/Fonts"
local MFD_IND_TEX_PATH        = LockOn_Options.script_path .. "JF-39/Textures/"  



SetScale(FOV)

stringdefs = {0.012,0.75 * 0.012, 0, 0}
mfd_strdefs_text  = {0.007,0.007, 0, 0}
mfd_strdefs_digit = {0.006,0.006, 0, 0}
mfd_strdefs_digit_Large = {0.010,0.010, 0, 0}
mfd_strdefs_digit_S = {0.005,0.005, 0, 0}
mfd_strdefs_digit_XS = {0.0045,0.0045, 0, 0}
mfd_strdefs_digit_XXS = {0.0035,0.0035, 0, 0}
mfd_strdefs_digit_b = {0.0075,0.0075, 0, 0}
mfd_strdefs_digit_f = {0.008,0.008, 0, 0}

lcp_strdefs_digit = {0.0045,0.0045, 0, 0}
ucp_strdefs_digit = {0.0055,0.0055, 0, 0}
acp_strdefs_digit = {0.0048,0.0048, 0, 0}

materials = {}
materials["DBG_GREY"]    = {5, 5, 5, 255}
materials["DBG_BLACK"]   = {0, 0, 0, 255}
materials["DBG_BLUE"]    = {0, 0, 100, 255}
materials["DBG_GREEN"]   = {0, 80, 0, 255}
materials["DBG_YELLOW"]   = {255, 153, 0, 255}
materials["DBG_RED"]     = {255, 0, 0, 255}
materials["DBG_WHITE"]   = {255, 255, 255, 255}
materials["DBG_CYAN"]    = {1, 244, 244, 255}
materials["BASE_GREEN"]  = {0,255,0, 255}
materials["TAN_COLOR"]	 = {242, 235, 179,255}
materials["DGREEN"]     = MakeMaterial(nil, materials["BASE_GREEN"])
materials["BGCOLOR"]    = MakeMaterial(nil,{242, 235, 179,255})

materials["maskColor"] = MakeMaterial(nil, {100, 0, 0, 255})


materials["MWHITE"]     = MakeMaterial(nil, materials["DBG_WHITE"])
materials["BBLACK"]     = MakeMaterial(nil, materials["DBG_BLACK"])
materials["GRAY"]		= MakeMaterial(nil,{69, 69, 70,255})

materials["TAN_BACKGROUND"]	 = MakeMaterial(nil,materials["TAN_COLOR"])

materials["DGREEN"]     = MakeMaterial(nil, materials["BASE_GREEN"])
materials["RWRGEEN"]     = MakeMaterial(nil, materials["BASE_GREEN"])
materials["RWRYELLOW"]     = MakeMaterial(nil, materials["DBG_YELLOW"])
materials["RWRRED"]     = MakeMaterial(nil, materials["DBG_RED"])
materials["RWRGREY"]     = MakeMaterial(nil, materials["DBG_GREY"])


-------FONTS-------
local IndicationTexturesPath = LockOn_Options.script_path.."JF-39/Textures/fonts/"


BASE_COLOR  = {36,255,113,255}
WHITE 		= {255,255,255,255}
RED 		= {255,0,0,255}
BLACK 		= {0,0,0,255}
lcpGREEN	= {50,255,50,255}
ucpGREEN	= {50,255,50,255}
BGCOLOR     = {242, 235, 179,255}
HORIZON_LINE_GREEN = {10,100,10,255}
Gripen_Font_ContactsOrange = {255,50,0,255}
YELLOW      = {255, 153, 0, 255}
BLUE      = {0, 0, 255, 255}

ADIGROUND	 = {160,115,90, 255}
ADIDAYSKY	 = {125,155,185, 255}


--Brightness Control

JAS_Bright	=
{	--										   param number, value, R,   G,     B
	[1] = {"change_color_when_parameter_equal_to_number",  0, 1.00, 1.00, 1.00,		1.0000},
	[2] = {"change_color_when_parameter_equal_to_number",  0, 0.95, 0.95, 0.95,		0.9500},
	[3] = {"change_color_when_parameter_equal_to_number",  0, 0.90, 0.90, 0.90,		0.9000},
	[4] = {"change_color_when_parameter_equal_to_number",  0, 0.85, 0.85, 0.85,		0.8500},
	[5] = {"change_color_when_parameter_equal_to_number",  0, 0.80, 0.80, 0.80,		0.8000},
	[6] = {"change_color_when_parameter_equal_to_number",  0, 0.75, 0.75, 0.75,		0.7500},
	[7] = {"change_color_when_parameter_equal_to_number",  0, 0.70, 0.70, 0.70,		0.7000},
	[8] = {"change_color_when_parameter_equal_to_number",  0, 0.65, 0.65, 0.65,		0.6500},
	[9] = {"change_color_when_parameter_equal_to_number",  0, 0.60, 0.60, 0.60,		0.6000},
	[10] = {"change_color_when_parameter_equal_to_number", 0, 0.55, 0.55, 0.55,		0.5500},
	[11] = {"change_color_when_parameter_equal_to_number", 0, 0.50, 0.50, 0.50,		0.5000},
	[12] = {"change_color_when_parameter_equal_to_number", 0, 0.45, 0.455, 0.455,   0.4550},
	[13] = {"change_color_when_parameter_equal_to_number", 0, 0.40, 0.4075, 0.4075, 0.4075},
	[14] = {"change_color_when_parameter_equal_to_number", 0, 0.35, 0.357, 0.357,   0.3570},
	[15] = {"change_color_when_parameter_equal_to_number", 0, 0.30, 0.3095, 0.3095, 0.3095},
	[16] = {"change_color_when_parameter_equal_to_number", 0, 0.25, 0.2595, 0.2595, 0.2595},	
	[17] = {"change_color_when_parameter_equal_to_number", 0, 0.20, 0.2075, 0.2075, 0.2075},	
	[18] = {"change_color_when_parameter_equal_to_number", 0, 0.15, 0.1575, 0.1575, 0.1575},	
	[19] = {"change_color_when_parameter_equal_to_number", 0, 0.10, 0.1075, 0.105,  0.1075},	
	[20] = {"change_color_when_parameter_equal_to_number", 0, 0.05, 0.05, 0.05,     0.0500},		
}                                                          

Green_Bright	=
{	--										   param number, value, R,   G,     B
	[1] = {"change_color_when_parameter_equal_to_number",  0, 1.00, 0.1961, 0.3922, 0.1961},
	[2] = {"change_color_when_parameter_equal_to_number",  0, 0.95, 0.1863, 0.3726, 0.1863},
	[3] = {"change_color_when_parameter_equal_to_number",  0, 0.90, 0.1765, 0.3530, 0.1765},
	[4] = {"change_color_when_parameter_equal_to_number",  0, 0.85, 0.1667, 0.3334, 0.1667},
	[5] = {"change_color_when_parameter_equal_to_number",  0, 0.80, 0.1569, 0.3138, 0.1569},
	[6] = {"change_color_when_parameter_equal_to_number",  0, 0.75, 0.1471, 0.2942, 0.1471},
	[7] = {"change_color_when_parameter_equal_to_number",  0, 0.70, 0.1373, 0.2745, 0.1373},
	[8] = {"change_color_when_parameter_equal_to_number",  0, 0.65, 0.1275, 0.2549, 0.1275},
	[9] = {"change_color_when_parameter_equal_to_number",  0, 0.60, 0.1177, 0.2353, 0.1177},
	[10] = {"change_color_when_parameter_equal_to_number", 0, 0.55, 0.1079, 0.2157, 0.1079},
	[11] = {"change_color_when_parameter_equal_to_number", 0, 0.50, 0.0980, 0.1961, 0.0980},
	[12] = {"change_color_when_parameter_equal_to_number", 0, 0.45, 0.0882, 0.1765, 0.0882},
	[13] = {"change_color_when_parameter_equal_to_number", 0, 0.40, 0.0784, 0.1569, 0.0784},
	[14] = {"change_color_when_parameter_equal_to_number", 0, 0.35, 0.0686, 0.1373, 0.0686},
	[15] = {"change_color_when_parameter_equal_to_number", 0, 0.30, 0.0588, 0.1177, 0.0588},
	[16] = {"change_color_when_parameter_equal_to_number", 0, 0.25, 0.0490, 0.0981, 0.0490},	
	[17] = {"change_color_when_parameter_equal_to_number", 0, 0.20, 0.0392, 0.0785, 0.0392},	
	[18] = {"change_color_when_parameter_equal_to_number", 0, 0.15, 0.0294, 0.0588, 0.0294},	
	[19] = {"change_color_when_parameter_equal_to_number", 0, 0.10, 0.0196, 0.0392, 0.0196},	
	[20] = {"change_color_when_parameter_equal_to_number", 0, 0.05, 0.0098, 0.0196, 0.0098},	
} 

Contact_Orange	=
{	--										   param number, value, R,   G,     B
	[1] = {"change_color_when_parameter_equal_to_number",  0, 1.00, 1.000 * 0.9 , 1.000 * 0.5,  0},
	[2] = {"change_color_when_parameter_equal_to_number",  0, 0.95, 0.950 * 0.9 , 0.950 * 0.5,  0},
	[3] = {"change_color_when_parameter_equal_to_number",  0, 0.90, 0.900 * 0.9 , 0.900 * 0.5,  0},
	[4] = {"change_color_when_parameter_equal_to_number",  0, 0.85, 0.850 * 0.9 , 0.850 * 0.5,  0},
	[5] = {"change_color_when_parameter_equal_to_number",  0, 0.80, 0.800 * 0.9 , 0.800 * 0.5,  0},
	[6] = {"change_color_when_parameter_equal_to_number",  0, 0.75, 0.750 * 0.9 , 0.750 * 0.5,  0},
	[7] = {"change_color_when_parameter_equal_to_number",  0, 0.70, 0.700 * 0.9 , 0.700 * 0.5,  0},
	[8] = {"change_color_when_parameter_equal_to_number",  0, 0.65, 0.650 * 0.9 , 0.650 * 0.5,  0},
	[9] = {"change_color_when_parameter_equal_to_number",  0, 0.60, 0.600 * 0.9 , 0.600 * 0.5,  0},
	[10] = {"change_color_when_parameter_equal_to_number", 0, 0.55, 0.550 * 0.9 , 0.550 * 0.5,  0},
	[11] = {"change_color_when_parameter_equal_to_number", 0, 0.50, 0.500 * 0.9 , 0.500 * 0.5,  0},
	[12] = {"change_color_when_parameter_equal_to_number", 0, 0.45, 0.455 * 0.9 ,0.450 * 0.5, 0},
	[13] = {"change_color_when_parameter_equal_to_number", 0, 0.40, 0.407 * 0.9 ,0.407 * 0.5, 0},
	[14] = {"change_color_when_parameter_equal_to_number", 0, 0.35, 0.357 * 0.9 ,0.357 * 0.5, 0},
	[15] = {"change_color_when_parameter_equal_to_number", 0, 0.30, 0.309 * 0.9 ,0.309 * 0.5, 0},
	[16] = {"change_color_when_parameter_equal_to_number", 0, 0.25, 0.259 * 0.9 ,0.259 * 0.5, 0},	
	[17] = {"change_color_when_parameter_equal_to_number", 0, 0.20, 0.207 * 0.9 ,0.207 * 0.5, 0},	
	[18] = {"change_color_when_parameter_equal_to_number", 0, 0.15, 0.157 * 0.9 ,0.157 * 0.5, 0},	
	[19] = {"change_color_when_parameter_equal_to_number", 0, 0.10, 0.107 * 0.9 ,0.107 * 0.5, 0},	
	[20] = {"change_color_when_parameter_equal_to_number", 0, 0.05, 0.050 * 0.9 , 0.050 * 0.5,  0},	
}

Brightness_blue	=
{	--										   param number, value, R,   G,     B
	[1] = {"change_color_when_parameter_equal_to_number",  0, 1.00, 0 , 0 ,  1.0000},
	[2] = {"change_color_when_parameter_equal_to_number",  0, 0.95, 0 , 0 ,  0.9500},
	[3] = {"change_color_when_parameter_equal_to_number",  0, 0.90, 0 , 0 ,  0.9000},
	[4] = {"change_color_when_parameter_equal_to_number",  0, 0.85, 0 , 0 ,  0.8500},
	[5] = {"change_color_when_parameter_equal_to_number",  0, 0.80, 0 , 0 ,  0.8000},
	[6] = {"change_color_when_parameter_equal_to_number",  0, 0.75, 0 , 0 ,  0.7500},
	[7] = {"change_color_when_parameter_equal_to_number",  0, 0.70, 0 , 0 ,  0.7000},
	[8] = {"change_color_when_parameter_equal_to_number",  0, 0.65, 0 , 0 ,  0.6500},
	[9] = {"change_color_when_parameter_equal_to_number",  0, 0.60, 0 , 0 ,  0.6000},
	[10] = {"change_color_when_parameter_equal_to_number", 0, 0.55, 0 , 0 ,  0.5500},
	[11] = {"change_color_when_parameter_equal_to_number", 0, 0.50, 0 , 0 ,  0.5000},
	[12] = {"change_color_when_parameter_equal_to_number", 0, 0.45, 0 , 0 ,  0.4550},
	[13] = {"change_color_when_parameter_equal_to_number", 0, 0.40, 0 , 0 ,  0.4075},
	[14] = {"change_color_when_parameter_equal_to_number", 0, 0.35, 0 , 0 ,  0.3570},
	[15] = {"change_color_when_parameter_equal_to_number", 0, 0.30, 0 , 0 ,  0.3095},
	[16] = {"change_color_when_parameter_equal_to_number", 0, 0.25, 0 , 0 ,  0.2595},	
	[17] = {"change_color_when_parameter_equal_to_number", 0, 0.20, 0 , 0 ,  0.2075},	
	[18] = {"change_color_when_parameter_equal_to_number", 0, 0.15, 0 , 0 ,  0.1575},	
	[19] = {"change_color_when_parameter_equal_to_number", 0, 0.10, 0 , 0 ,  0.1075},	
	[20] = {"change_color_when_parameter_equal_to_number", 0, 0.05, 0 , 0 ,  0.0500},	
}


fontdescription = {}

CMFD_X_PIXEL =  88
CMFD_Y_PIXEL =  144

local Gripen_Font = 
{
    texture = IndicationTexturesPath.."Gripen_Font_MFD",
    size        = {10, 10},
    resolution  = {1440, 1440},
    default     = {CMFD_X_PIXEL, CMFD_Y_PIXEL},
    chars       = {
        {32, CMFD_X_PIXEL, CMFD_Y_PIXEL}, -- space
        {48, CMFD_X_PIXEL, CMFD_Y_PIXEL}, -- 0
        {49, CMFD_X_PIXEL, CMFD_Y_PIXEL}, -- 1
        {50, CMFD_X_PIXEL, CMFD_Y_PIXEL}, -- 2
        {51, CMFD_X_PIXEL, CMFD_Y_PIXEL}, -- 3
        {52, CMFD_X_PIXEL, CMFD_Y_PIXEL}, -- 4
        {53, CMFD_X_PIXEL, CMFD_Y_PIXEL}, -- 5
        {54, CMFD_X_PIXEL, CMFD_Y_PIXEL}, -- 6
        {55, CMFD_X_PIXEL, CMFD_Y_PIXEL}, -- 7
        {56, CMFD_X_PIXEL, CMFD_Y_PIXEL}, -- 8
        {57, CMFD_X_PIXEL, CMFD_Y_PIXEL}, -- 9

        {64, CMFD_X_PIXEL, CMFD_Y_PIXEL}, -- Alpha -> @

        {65, CMFD_X_PIXEL, CMFD_Y_PIXEL}, -- A
        {66, CMFD_X_PIXEL, CMFD_Y_PIXEL}, -- B
        {67, CMFD_X_PIXEL, CMFD_Y_PIXEL}, -- C
        {68, CMFD_X_PIXEL, CMFD_Y_PIXEL}, -- D
        {69, CMFD_X_PIXEL, CMFD_Y_PIXEL}, -- E
        {70, CMFD_X_PIXEL, CMFD_Y_PIXEL}, -- F
        {71, CMFD_X_PIXEL, CMFD_Y_PIXEL}, -- G
        {72, CMFD_X_PIXEL, CMFD_Y_PIXEL}, -- H
        {73, CMFD_X_PIXEL, CMFD_Y_PIXEL}, -- I
        {74, CMFD_X_PIXEL, CMFD_Y_PIXEL}, -- J
        {75, CMFD_X_PIXEL, CMFD_Y_PIXEL}, -- K
        {76, CMFD_X_PIXEL, CMFD_Y_PIXEL}, -- L
        {77, CMFD_X_PIXEL, CMFD_Y_PIXEL}, -- M
        {78, CMFD_X_PIXEL, CMFD_Y_PIXEL}, -- N
        {79, CMFD_X_PIXEL, CMFD_Y_PIXEL}, -- O
        {80, CMFD_X_PIXEL, CMFD_Y_PIXEL}, -- P
        {81, CMFD_X_PIXEL, CMFD_Y_PIXEL}, -- Q
        {82, CMFD_X_PIXEL, CMFD_Y_PIXEL}, -- R
        {83, CMFD_X_PIXEL, CMFD_Y_PIXEL}, -- S
        {84, CMFD_X_PIXEL, CMFD_Y_PIXEL}, -- T
        {85, CMFD_X_PIXEL, CMFD_Y_PIXEL}, -- U
        {86, CMFD_X_PIXEL, CMFD_Y_PIXEL}, -- V
        {87, CMFD_X_PIXEL, CMFD_Y_PIXEL}, -- W
        {88, CMFD_X_PIXEL, CMFD_Y_PIXEL}, -- X
        {89, CMFD_X_PIXEL, CMFD_Y_PIXEL}, -- Y
        {90, CMFD_X_PIXEL, CMFD_Y_PIXEL}, -- Z
         
        {42, CMFD_X_PIXEL, CMFD_Y_PIXEL}, -- *
        {43, CMFD_X_PIXEL, CMFD_Y_PIXEL}, -- +
        {45, CMFD_X_PIXEL, CMFD_Y_PIXEL}, -- -
        {47, CMFD_X_PIXEL, CMFD_Y_PIXEL}, -- /
        {92, CMFD_X_PIXEL, CMFD_Y_PIXEL}, -- \
        {40, CMFD_X_PIXEL, CMFD_Y_PIXEL}, -- (
        {41, CMFD_X_PIXEL, CMFD_Y_PIXEL}, -- )
        {91, CMFD_X_PIXEL, CMFD_Y_PIXEL}, -- [
        {93, CMFD_X_PIXEL, CMFD_Y_PIXEL}, -- ]
        {123, CMFD_X_PIXEL, CMFD_Y_PIXEL}, -- {
        {125, CMFD_X_PIXEL, CMFD_Y_PIXEL}, -- }
        {60, CMFD_X_PIXEL, CMFD_Y_PIXEL}, -- <
        {62, CMFD_X_PIXEL, CMFD_Y_PIXEL}, -- >
        {61, CMFD_X_PIXEL, CMFD_Y_PIXEL}, -- =
        {63, CMFD_X_PIXEL, CMFD_Y_PIXEL}, -- ?
        {124, CMFD_X_PIXEL, CMFD_Y_PIXEL}, -- |
        {33, CMFD_X_PIXEL, CMFD_Y_PIXEL}, -- !
        {35, CMFD_X_PIXEL, CMFD_Y_PIXEL}, -- #
        {37, CMFD_X_PIXEL, CMFD_Y_PIXEL}, -- %
        {94, CMFD_X_PIXEL, CMFD_Y_PIXEL}, -- ^
        {38, CMFD_X_PIXEL, CMFD_Y_PIXEL}, -- &
        {96, CMFD_X_PIXEL, CMFD_Y_PIXEL}, -- o -- degree, change its ascii code to 96 ', original 248 (out of index)
        {46, CMFD_X_PIXEL*0.5, CMFD_Y_PIXEL*0.6}, -- .
        {58, CMFD_X_PIXEL, CMFD_Y_PIXEL}, -- :
        {44, CMFD_X_PIXEL, CMFD_Y_PIXEL}, -- ,
        {126, CMFD_X_PIXEL, CMFD_Y_PIXEL}, -- cursor -> ~
        {95, CMFD_X_PIXEL, CMFD_Y_PIXEL}, -- _
        
        {39, CMFD_X_PIXEL, CMFD_Y_PIXEL}, -- '
        {34, CMFD_X_PIXEL, CMFD_Y_PIXEL}, -- "
		{127, CMFD_X_PIXEL, CMFD_Y_PIXEL}, -- delta
		
		{97, CMFD_X_PIXEL, CMFD_Y_PIXEL}, -- a
		{98, CMFD_X_PIXEL, CMFD_Y_PIXEL}, -- b
		{99, CMFD_X_PIXEL, CMFD_Y_PIXEL}, -- c
		{100, CMFD_X_PIXEL, CMFD_Y_PIXEL}, -- d
		{101, CMFD_X_PIXEL, CMFD_Y_PIXEL}, -- e
		{102, CMFD_X_PIXEL, CMFD_Y_PIXEL}, -- f
		{103, CMFD_X_PIXEL, CMFD_Y_PIXEL}, -- g
		{104, CMFD_X_PIXEL, CMFD_Y_PIXEL}, -- h
		{105, CMFD_X_PIXEL, CMFD_Y_PIXEL}, -- i
		{106, CMFD_X_PIXEL, CMFD_Y_PIXEL}, -- j
		{107, CMFD_X_PIXEL, CMFD_Y_PIXEL}, -- k
		{108, CMFD_X_PIXEL, CMFD_Y_PIXEL}, -- l
		{109, CMFD_X_PIXEL, CMFD_Y_PIXEL}, -- m
		{110, CMFD_X_PIXEL, CMFD_Y_PIXEL}, -- n
		{111, CMFD_X_PIXEL, CMFD_Y_PIXEL}, -- o
		{112, CMFD_X_PIXEL, CMFD_Y_PIXEL}, -- p
		{113, CMFD_X_PIXEL, CMFD_Y_PIXEL}, -- q
		{114, CMFD_X_PIXEL, CMFD_Y_PIXEL}, -- r
		{115, CMFD_X_PIXEL, CMFD_Y_PIXEL}, -- s
		{116, CMFD_X_PIXEL, CMFD_Y_PIXEL}, -- t
		{117, CMFD_X_PIXEL, CMFD_Y_PIXEL}, -- u
		{118, CMFD_X_PIXEL, CMFD_Y_PIXEL}, -- v
		{119, CMFD_X_PIXEL, CMFD_Y_PIXEL}, -- w
		{120, CMFD_X_PIXEL, CMFD_Y_PIXEL}, -- x
		{121, CMFD_X_PIXEL, CMFD_Y_PIXEL}, -- y
		{122, CMFD_X_PIXEL, CMFD_Y_PIXEL}, -- z, use last ascii code
       
    }
}


LCP_X_PIXEL =  144
LCP_Y_PIXEL =  144

local Gripen_LCP_FONT = 
{
    texture = IndicationTexturesPath.."Gripen_Font_LCP",
    size        = {10, 10},
    resolution  = {1440, 1440},
    default     = {LCP_X_PIXEL, LCP_Y_PIXEL},
    chars       = {
        {32, LCP_X_PIXEL, LCP_Y_PIXEL}, -- space
        {48, LCP_X_PIXEL, LCP_Y_PIXEL}, -- 0
        {49, LCP_X_PIXEL, LCP_Y_PIXEL}, -- 1
        {50, LCP_X_PIXEL, LCP_Y_PIXEL}, -- 2
        {51, LCP_X_PIXEL, LCP_Y_PIXEL}, -- 3
        {52, LCP_X_PIXEL, LCP_Y_PIXEL}, -- 4
        {53, LCP_X_PIXEL, LCP_Y_PIXEL}, -- 5
        {54, LCP_X_PIXEL, LCP_Y_PIXEL}, -- 6
        {55, LCP_X_PIXEL, LCP_Y_PIXEL}, -- 7
        {56, LCP_X_PIXEL, LCP_Y_PIXEL}, -- 8
        {57, LCP_X_PIXEL, LCP_Y_PIXEL}, -- 9

        {64, LCP_X_PIXEL, LCP_Y_PIXEL}, -- Alpha -> @

        {65, LCP_X_PIXEL, LCP_Y_PIXEL}, -- A
        {66, LCP_X_PIXEL, LCP_Y_PIXEL}, -- B
        {67, LCP_X_PIXEL, LCP_Y_PIXEL}, -- C
        {68, LCP_X_PIXEL, LCP_Y_PIXEL}, -- D
        {69, LCP_X_PIXEL, LCP_Y_PIXEL}, -- E
        {70, LCP_X_PIXEL, LCP_Y_PIXEL}, -- F
        {71, LCP_X_PIXEL, LCP_Y_PIXEL}, -- G
        {72, LCP_X_PIXEL, LCP_Y_PIXEL}, -- H
        {73, LCP_X_PIXEL, LCP_Y_PIXEL}, -- I
        {74, LCP_X_PIXEL, LCP_Y_PIXEL}, -- J
        {75, LCP_X_PIXEL, LCP_Y_PIXEL}, -- K
        {76, LCP_X_PIXEL, LCP_Y_PIXEL}, -- L
        {77, LCP_X_PIXEL, LCP_Y_PIXEL}, -- M
        {78, LCP_X_PIXEL, LCP_Y_PIXEL}, -- N
        {79, LCP_X_PIXEL, LCP_Y_PIXEL}, -- O
        {80, LCP_X_PIXEL, LCP_Y_PIXEL}, -- P
        {81, LCP_X_PIXEL, LCP_Y_PIXEL}, -- Q
        {82, LCP_X_PIXEL, LCP_Y_PIXEL}, -- R
        {83, LCP_X_PIXEL, LCP_Y_PIXEL}, -- S
        {84, LCP_X_PIXEL, LCP_Y_PIXEL}, -- T
        {85, LCP_X_PIXEL, LCP_Y_PIXEL}, -- U
        {86, LCP_X_PIXEL, LCP_Y_PIXEL}, -- V
        {87, LCP_X_PIXEL, LCP_Y_PIXEL}, -- W
        {88, LCP_X_PIXEL, LCP_Y_PIXEL}, -- X
        {89, LCP_X_PIXEL, LCP_Y_PIXEL}, -- Y
        {90, LCP_X_PIXEL, LCP_Y_PIXEL}, -- Z
         
        {42, LCP_X_PIXEL, LCP_Y_PIXEL}, -- *
        {43, LCP_X_PIXEL, LCP_Y_PIXEL}, -- +
        {45, LCP_X_PIXEL, LCP_Y_PIXEL}, -- -
        {61, LCP_X_PIXEL, LCP_Y_PIXEL}, -- =
        {47, LCP_X_PIXEL, LCP_Y_PIXEL}, -- /
        {92, LCP_X_PIXEL, LCP_Y_PIXEL}, -- \
        {40, LCP_X_PIXEL, LCP_Y_PIXEL}, -- (
        {41, LCP_X_PIXEL, LCP_Y_PIXEL}, -- )
        {91, LCP_X_PIXEL, LCP_Y_PIXEL}, -- [
        {93, LCP_X_PIXEL, LCP_Y_PIXEL}, -- ]
        {123, LCP_X_PIXEL, LCP_Y_PIXEL}, -- {
        {125, LCP_X_PIXEL, LCP_Y_PIXEL}, -- }
        {60, LCP_X_PIXEL, LCP_Y_PIXEL}, -- <
        {62, LCP_X_PIXEL, LCP_Y_PIXEL}, -- >
        {63, LCP_X_PIXEL, LCP_Y_PIXEL}, -- ?
        {124, LCP_X_PIXEL, LCP_Y_PIXEL}, -- |
        {33, LCP_X_PIXEL, LCP_Y_PIXEL}, -- !
        {35, LCP_X_PIXEL, LCP_Y_PIXEL}, -- #
        {37, LCP_X_PIXEL, LCP_Y_PIXEL}, -- %
        {94, LCP_X_PIXEL, LCP_Y_PIXEL}, -- ^
        {38, LCP_X_PIXEL, LCP_Y_PIXEL}, -- &
        {96, LCP_X_PIXEL, LCP_Y_PIXEL}, -- o -- degree, change its ascii code to 96 ', original 248 (out of index)
        {46, LCP_X_PIXEL, LCP_Y_PIXEL}, -- .
        {58, LCP_X_PIXEL, LCP_Y_PIXEL}, -- :
        {44, LCP_X_PIXEL, LCP_Y_PIXEL}, -- ,
        {95, LCP_X_PIXEL, LCP_Y_PIXEL}, -- _
        
        {127, LCP_X_PIXEL, LCP_Y_PIXEL}, -- delta, use last ascii code
    }
}

UCP_X_PIXEL =  144
UCP_Y_PIXEL =  144

local Gripen_UCP_FONT = 
{
    texture = IndicationTexturesPath.."Gripen_Font_UCP",
    size        = {10, 10},
    resolution  = {1440, 1440},
    default     = {UCP_X_PIXEL, UCP_Y_PIXEL},
    chars       = {
        {32, UCP_X_PIXEL, UCP_Y_PIXEL}, -- space
        {48, UCP_X_PIXEL, UCP_Y_PIXEL}, -- 0
        {49, UCP_X_PIXEL, UCP_Y_PIXEL}, -- 1
        {50, UCP_X_PIXEL, UCP_Y_PIXEL}, -- 2
        {51, UCP_X_PIXEL, UCP_Y_PIXEL}, -- 3
        {52, UCP_X_PIXEL, UCP_Y_PIXEL}, -- 4
        {53, UCP_X_PIXEL, UCP_Y_PIXEL}, -- 5
        {54, UCP_X_PIXEL, UCP_Y_PIXEL}, -- 6
        {55, UCP_X_PIXEL, UCP_Y_PIXEL}, -- 7
        {56, UCP_X_PIXEL, UCP_Y_PIXEL}, -- 8
        {57, UCP_X_PIXEL, UCP_Y_PIXEL}, -- 9

        {64, UCP_X_PIXEL, UCP_Y_PIXEL}, -- Alpha -> @

        {65, UCP_X_PIXEL, UCP_Y_PIXEL}, -- A
        {66, UCP_X_PIXEL, UCP_Y_PIXEL}, -- B
        {67, UCP_X_PIXEL, UCP_Y_PIXEL}, -- C
        {68, UCP_X_PIXEL, UCP_Y_PIXEL}, -- D
        {69, UCP_X_PIXEL, UCP_Y_PIXEL}, -- E
        {70, UCP_X_PIXEL, UCP_Y_PIXEL}, -- F
        {71, UCP_X_PIXEL, UCP_Y_PIXEL}, -- G
        {72, UCP_X_PIXEL, UCP_Y_PIXEL}, -- H
        {73, UCP_X_PIXEL, UCP_Y_PIXEL}, -- I
        {74, UCP_X_PIXEL, UCP_Y_PIXEL}, -- J
        {75, UCP_X_PIXEL, UCP_Y_PIXEL}, -- K
        {76, UCP_X_PIXEL, UCP_Y_PIXEL}, -- L
        {77, UCP_X_PIXEL, UCP_Y_PIXEL}, -- M
        {78, UCP_X_PIXEL, UCP_Y_PIXEL}, -- N
        {79, UCP_X_PIXEL, UCP_Y_PIXEL}, -- O
        {80, UCP_X_PIXEL, UCP_Y_PIXEL}, -- P
        {81, UCP_X_PIXEL, UCP_Y_PIXEL}, -- Q
        {82, UCP_X_PIXEL, UCP_Y_PIXEL}, -- R
        {83, UCP_X_PIXEL, UCP_Y_PIXEL}, -- S
        {84, UCP_X_PIXEL, UCP_Y_PIXEL}, -- T
        {85, UCP_X_PIXEL, UCP_Y_PIXEL}, -- U
        {86, UCP_X_PIXEL, UCP_Y_PIXEL}, -- V
        {87, UCP_X_PIXEL, UCP_Y_PIXEL}, -- W
        {88, UCP_X_PIXEL, UCP_Y_PIXEL}, -- X
        {89, UCP_X_PIXEL, UCP_Y_PIXEL}, -- Y
        {90, UCP_X_PIXEL, UCP_Y_PIXEL}, -- Z
         
        {42, UCP_X_PIXEL, UCP_Y_PIXEL}, -- *
        {43, UCP_X_PIXEL, UCP_Y_PIXEL}, -- +
        {45, UCP_X_PIXEL, UCP_Y_PIXEL}, -- -
        {61, UCP_X_PIXEL, UCP_Y_PIXEL}, -- =
        {47, UCP_X_PIXEL, UCP_Y_PIXEL}, -- /
        {92, UCP_X_PIXEL, UCP_Y_PIXEL}, -- \
        {40, UCP_X_PIXEL, UCP_Y_PIXEL}, -- (
        {41, UCP_X_PIXEL, UCP_Y_PIXEL}, -- )
        {91, UCP_X_PIXEL, UCP_Y_PIXEL}, -- [
        {93, UCP_X_PIXEL, UCP_Y_PIXEL}, -- ]
        {123, UCP_X_PIXEL, UCP_Y_PIXEL}, -- {
        {125, UCP_X_PIXEL, UCP_Y_PIXEL}, -- }
        {60, UCP_X_PIXEL, UCP_Y_PIXEL}, -- <
        {62, UCP_X_PIXEL, UCP_Y_PIXEL}, -- >
        {63, UCP_X_PIXEL, UCP_Y_PIXEL}, -- ?
        {124, UCP_X_PIXEL, UCP_Y_PIXEL}, -- |
        {33, UCP_X_PIXEL, UCP_Y_PIXEL}, -- !
        {35, UCP_X_PIXEL, UCP_Y_PIXEL}, -- #
        {37, UCP_X_PIXEL, UCP_Y_PIXEL}, -- %
        {94, UCP_X_PIXEL, UCP_Y_PIXEL}, -- ^
        {38, UCP_X_PIXEL, UCP_Y_PIXEL}, -- &
        {96, UCP_X_PIXEL, UCP_Y_PIXEL}, -- o -- degree, change its ascii code to 96 ', original 248 (out of index)
        {46, UCP_X_PIXEL, UCP_Y_PIXEL}, -- .
        {58, UCP_X_PIXEL, UCP_Y_PIXEL}, -- :
        {44, UCP_X_PIXEL, UCP_Y_PIXEL}, -- ,
        {95, UCP_X_PIXEL, UCP_Y_PIXEL}, -- _
        
        {127, UCP_X_PIXEL, UCP_Y_PIXEL}, -- delta, use last ascii code
    }
}







--fonts["Gripen_Font_Yellow"]
Gripen_Font_black  	= MakeFont(Gripen_Font, BLACK, "Gripen_Font_black")
Gripen_Font_Yellow  = MakeFont(Gripen_Font, YELLOW, "Gripen_Font_Yellow") --black
Gripen_Font_Blue  = MakeFont(Gripen_Font, BLUE, "Gripen_Font_Blue") --black
Gripen_Font_white  	= MakeFont(Gripen_Font, WHITE, "Gripen_Font_white")
Gripen_Font_HL_Green  = MakeFont(Gripen_Font, HORIZON_LINE_GREEN, "Gripen_Font_Green_HL")

Gripen_Font_ContactsOrange  = MakeFont(Gripen_Font, Gripen_Font_ContactsOrange, "Gripen_Font_ContactsOrange")

Gripen_fontLCP = MakeFont(Gripen_LCP_FONT, lcpGREEN , "Gripen_Font_LCP")
Gripen_fontUCP = MakeFont(Gripen_UCP_FONT, lcpGREEN , "Gripen_Font_UCP")
Gripen_Font_MFDBG = MakeFont(Gripen_Font, BGCOLOR , "Gripen_Font_MFDBG")
fonts = {}

fonts["FONT_WHITE"]  = MakeFont({used_DXUnicodeFontData = "FUI/Fonts/font_arial_17"},materials["DBG_WHITE"],50,"test_font") --this is font object declaration. Mig-21 does not have fonts, therefore disabled.
fonts["FONT_BLUE"]   = MakeFont({used_DXUnicodeFontData = "FUI/Fonts/font_arial_17"},materials["DBG_BLUE"],50,"test_font") --this is font object declaration. Mig-21 does not have fonts, therefore disabled.
fonts["FONT_RED"]    = MakeFont({used_DXUnicodeFontData = "FUI/Fonts/font_arial_17"},materials["DBG_RED"],50,"test_font") --this is font object declaration. Mig-21 does not have fonts, therefore disabled.
fonts["FONT_GREEN"]  = MakeFont({used_DXUnicodeFontData = "FUI/Fonts/font_arial_17"}, materials["DBG_GREEN"],50,"test_font") 
fonts["FONT_YELLOW"] = MakeFont({used_DXUnicodeFontData = "FUI/Fonts/font_arial_17"},materials["DBG_YELLOW"],50,"test_font")
fonts["FONT_BLACK"]  = MakeFont({used_DXUnicodeFontData = "FUI/Fonts/font_arial_17"}, materials["DBG_BLACK"],50,"test_font") 
fonts["FONT_WHITE"]  = MakeFont({used_DXUnicodeFontData = "FUI/Fonts/font_arial_17"}, materials["DBG_WHITE"],50,"test_font") 

fonts["FONT_gripen"]   = {fontdescription["font_39"], 10, materials["DBG_BLACK"]}
fonts["Gripen_Font_black"]  = Gripen_Font_black
fonts["Gripen_Font_WHITE"]  = Gripen_Font_white
fonts["Gripen_Font_HL_Green"]  = Gripen_Font_HL_Green
fonts["Gripen_Font_ContactsOrange"]  = Gripen_Font_ContactsOrange
fonts["Gripen_Font_LCP"]  = Gripen_fontLCP
fonts["Gripen_Font_UCP"]  = Gripen_fontUCP
fonts["Gripen_Font_MFDBG"] = Gripen_Font_MFDBG
fonts["Gripen_Font_Yellow"] = Gripen_Font_Yellow
fonts["Gripen_Font_Blue"] = Gripen_Font_Blue
--all vertices in files who include this file will be scaled in millyradians
-- SetScale(MILLYRADIANS)
 
DEGREE_TO_MRAD = 17.4532925199433
DEGREE_TO_RAD  = 0.0174532925199433
RAD_TO_DEGREE  = 57.29577951308233
MRAD_TO_DEGREE = 0.05729577951308233
 

REWRITE_LEVEL = h_clip_relations.REWRITE_LEVEL
ACPDeafultLevel = 2
ACPDeafultNoclipLevel = ACPDeafultLevel - 1

MFD_DEFAULT_LEVEL = 7                               
MFD_DEFAULT_NOCLIP_LEVEL  = MFD_DEFAULT_LEVEL - 1  
 
DEBUG_COLOR                 = {0,255,0,200}
MFD_DAY_COLOR               = {255,255,255,255}
MFD_DARK_COLOR               = {0,0,0,255}


MFD_ELEMENTS = MakeMaterial(MFD_IND_TEX_PATH.."MFD/Left_MFD", MFD_DAY_COLOR)
MFD_ELEMENTS_D = MakeMaterial(MFD_IND_TEX_PATH.."MFD/Left_MFD_D", MFD_DAY_COLOR)
MFD_ELEMENTS_DARK = MakeMaterial(MFD_IND_TEX_PATH.."MFD/Left_MFD_D", MFD_DARK_COLOR)
ADI_FRAME_B = MakeMaterial(MFD_IND_TEX_PATH.."MFD/ADIBALL_frame", MFD_DAY_COLOR)
LD_LABLES = MakeMaterial(MFD_IND_TEX_PATH.."MFD/ADIBALL_frame", MFD_DARK_COLOR)
ADI_FRAME_EMGY = MakeMaterial(MFD_IND_TEX_PATH.."MFD/ADIBALL_EMGY_frame", MFD_DAY_COLOR)
ADI_BACKGROUND_B = MakeMaterial(MFD_IND_TEX_PATH.."MFD/ADI_Sphere_Normal", MFD_DAY_COLOR)
ADI_BACKGROUND_TEST = MakeMaterial(MFD_IND_TEX_PATH.."MFD/ADIBALL_background_WIDEtest", MFD_DAY_COLOR)

ADI_BACKGROUND_EMGY = MakeMaterial(MFD_IND_TEX_PATH.."MFD/ADI_Sphere_Emergency", MFD_DAY_COLOR)
ADI_BACKGROUND_MONITOR = MakeMaterial(MFD_IND_TEX_PATH.."MFD/ADI_Sphere_Monitor", MFD_DAY_COLOR)
MFD_ELEMENTS_PDD = MakeMaterial(MFD_IND_TEX_PATH.."MFD/Gripen_PDD_Page", MFD_DARK_COLOR)
MFD_ELEMENTS_PDD_WHITE = MakeMaterial(MFD_IND_TEX_PATH.."MFD/Gripen_PDD_Page_White", MFD_DAY_COLOR)
NAV_WHEEL_BLACK = MakeMaterial(MFD_IND_TEX_PATH.."MFD/Navigation_Wheel", MFD_DARK_COLOR)
NAV_WHEEL_WHITE = MakeMaterial(MFD_IND_TEX_PATH.."MFD/Navigation_Wheel_White", MFD_DAY_COLOR)
AAR_LDP_BLACK = MakeMaterial(MFD_IND_TEX_PATH.."MFD/AAR_LDP", MFD_DARK_COLOR)
AAR_LDP_WHITE_COLOR = MakeMaterial(MFD_IND_TEX_PATH.."MFD/AAR_LDP", MFD_DAY_COLOR)
STORES_BLACK = MakeMaterial(MFD_IND_TEX_PATH.."MFD/Loadout_Indicator", MFD_DARK_COLOR)
STORES_WHITE_COLOR = MakeMaterial(MFD_IND_TEX_PATH.."MFD/Loadout_Indicator", MFD_DAY_COLOR)
CENTER_DISPLAY_COLOR = MakeMaterial(MFD_IND_TEX_PATH.."MFD/LDP_MASK_BOOST_CD_MARKINGS", MFD_DAY_COLOR)
CENTER_DISPLAY_BLACK = MakeMaterial(MFD_IND_TEX_PATH.."MFD/LDP_MASK_BOOST_CD_MARKINGS", MFD_DARK_COLOR)
LDP_BACKGROUND = MakeMaterial(MFD_IND_TEX_PATH.."MFD/LDP_MASK", MFD_DARK_COLOR)
ADI_MASK = MakeMaterial(MFD_IND_TEX_PATH.."MFD/ADI_MASK", MFD_DARK_COLOR)
EMGY_HEADING_WHITE = MakeMaterial(MFD_IND_TEX_PATH.."MFD/EMGY_HEADING TAPE", MFD_DAY_COLOR)
EMGY_HEADING_BLACK = MakeMaterial(MFD_IND_TEX_PATH.."MFD/EMGY_HEADING TAPE", MFD_DARK_COLOR)
ADI_VEELOCITYVECTOR = MakeMaterial(MFD_IND_TEX_PATH.."MFD/ADI_VelocityVector", MFD_DARK_COLOR)
RMFD_BACKGRUND = MakeMaterial(MFD_IND_TEX_PATH.."MFD/RMFD", MFD_DARK_COLOR)

default_MFD_x = 512
default_MFD_y = 512

default_MFD_z_offset = 0.8
default_MFD_rot_offset = 30

local box_indices =
{
	0,1,2;0,2,3
}

CursorGain = 0.08292




function set_oval(obj, radius_outer, radius_inner, arc, sides, oval_multiplier)
	local verts    = {}
	local inds     = {}
	local solid    = radius_inner == nil or radius_inner == 0
	local arc      = arc or 360
	if    arc > 360 then arc = 360 end
	local count    = sides or 32 
	local delta    = math.rad(arc/count)

	local min_i    = 1
	local max_i    = count + 1
	verts[1] = {0,0}
	for i=min_i,max_i do
		if solid then
			verts[1 + i]      = { radius_outer * math.sin(delta *(i-1)),radius_outer * math.cos(delta *(i-1)) * oval_multiplier}
			inds[3*(i-1) + 1] = 0
			inds[3*(i-1) + 2] = i - 1 
			inds[3*(i-1) + 3] = i 
		else
			verts[2*(i - 1) + 1] = { radius_outer * math.sin(delta *(i-1)), radius_outer * math.cos(delta *(i-1)) * oval_multiplier}
			verts[2*(i - 1) + 2] = { radius_inner * math.sin(delta *(i-1)), radius_inner * math.cos(delta *(i-1)) * oval_multiplier}
			
			if i == max_i  then
			  if arc == 360 then  
				inds[6*(i-1) + 1] = 2*(i     - 1)
				inds[6*(i-1) + 2] = 2*(min_i - 1)
				inds[6*(i-1) + 3] = 2*(i     - 1) + 1 
				inds[6*(i-1) + 4] = 2*(i     - 1) + 1
				inds[6*(i-1) + 5] = 2*(min_i - 1)
				inds[6*(i-1) + 6] = 2*(min_i - 1) + 1 
			  end        
			else 
				inds[6*(i-1) + 1] = 2*(i - 1)
				inds[6*(i-1) + 2] = 2*(i) 
				inds[6*(i-1) + 3] = 2*(i - 1) + 1 
				inds[6*(i-1) + 4] = 2*(i - 1) + 1
				inds[6*(i-1) + 5] = 2*(i) 
				inds[6*(i-1) + 6] = 2*(i)     + 1  
			end
		end
	end
	obj.vertices         = verts              
	obj.indices          = inds
end



function Add_Text_With_Screen_Brightness(text, posx, posy, pparent, font_mat, stringdefs, valign, screen)

	local rec_parent       		= CreateElement "ceSimple"
	rec_parent.name				= create_guid_string()
	rec_parent.init_pos       	= {posx, posy}
	if pparent ~= nil then
		rec_parent.parent_element	= pparent.name
	end
	AddElement(rec_parent)
	-------------------
	if valign == nil then
		valign = "CenterCenter"
	end
	vfont_mat = fonts["FONT_GREEN"]
	if font_mat ~= nil then
		vfont_mat = fonts[font_mat]
	end
	if stringdefs == nil then
		stringdefs = mfd_strdefs_text
	end		
	-------------------
	if text ~= nil then
		local parent          = CreateElement "ceStringPoly"
		parent.name           = create_guid_string()
		parent.material       = vfont_mat
		parent.init_pos       = {0, 0}
		parent.stringdefs     = stringdefs
		parent.alignment	  = valign
		parent.value  	      = text
		parent.parent_element = rec_parent.name
		parent.element_params  = {screen .. "_BRIGHTNESS"}
		parent.controllers	 = {JAS_Bright[1],JAS_Bright[2],JAS_Bright[3],JAS_Bright[4],JAS_Bright[5],JAS_Bright[6],JAS_Bright[7],JAS_Bright[8],JAS_Bright[9],JAS_Bright[10],JAS_Bright[11],JAS_Bright[12],JAS_Bright[13],JAS_Bright[14],JAS_Bright[15], JAS_Bright[16],JAS_Bright[17],JAS_Bright[18],JAS_Bright[19],JAS_Bright[20]}
		AddElement(parent)
		parent.level          = MFD_DEFAULT_LEVEL  
	end
	-------------------
	return rec_parent
end

function Add_Text_Param_With_Screen_Brightness(param, posx, posy, pparent, font_mat, stringdefs, valign, screen)

	local rec_parent       		= CreateElement "ceSimple"
	rec_parent.name				= create_guid_string()
	rec_parent.init_pos       	= {posx, posy}
	if pparent ~= nil then
		rec_parent.parent_element	= pparent.name
	end
	AddElement(rec_parent)
	-------------------
	if valign == nil then
		valign = "CenterCenter"
	end
	vfont_mat = fonts["FONT_GREEN"]
	if font_mat ~= nil then
		vfont_mat = fonts[font_mat]
	end
	if stringdefs == nil then
		stringdefs = mfd_strdefs_text
	end		
	-------------------
	if text ~= nil then
		local parent          = CreateElement "ceStringPoly"
		parent.name           = create_guid_string()
		parent.material       = vfont_mat
		parent.init_pos       = {0, 0}
		parent.stringdefs     = stringdefs
		parent.alignment	  = valign
		parent.parent_element = rec_parent.name
		parent.element_params  = {screen .. "_BRIGHTNESS", param}
		parent.controllers	 = {JAS_Bright[1],JAS_Bright[2],JAS_Bright[3],JAS_Bright[4],JAS_Bright[5],JAS_Bright[6],JAS_Bright[7],JAS_Bright[8],JAS_Bright[9],JAS_Bright[10],JAS_Bright[11],JAS_Bright[12],JAS_Bright[13],JAS_Bright[14],JAS_Bright[15], JAS_Bright[16],JAS_Bright[17],JAS_Bright[18],JAS_Bright[19],JAS_Bright[20], {"text_using_parameter",1}}
		AddElement(parent)
		parent.level          = MFD_DEFAULT_LEVEL  
	end
	-------------------
	return rec_parent
end



function EMGY_Page(screen)
	scale = 2
	aspect = 0.9

	EMGY_PAGE 			= CreateElement "ceSimple"
	EMGY_PAGE.init_pos	= {0,0}
	EMGY_PAGE.name		= create_guid_string()
	EMGY_PAGE.element_params = {screen .. "_EMGY_MODE", "MAINPOWER"}
	EMGY_PAGE.controllers    = {{"parameter_compare_with_number",0, 1}, {"parameter_compare_with_number", 1, 1}}
	AddElement(EMGY_PAGE)		


	local Light_Black_Background 					= CreateElement "ceMeshPoly"
	Light_Black_Background.name 			= create_guid_string()
	Light_Black_Background.primitivetype 	= "triangles"
	Light_Black_Background.vertices	   		= { {-1.0 , 1.4 }, { 1.0,1.4}, { 1.0,-1.4}, {-1.0,-1.4}, }
	Light_Black_Background.indices			= {0, 1, 2, 0, 2, 3}
	Light_Black_Background.init_pos			= {0, 0, 0}
	Light_Black_Background.material			= MakeMaterial(nil,{5, 5, 5,255})	--RGBA
	Light_Black_Background.parent_element	= EMGY_PAGE.name
	Light_Black_Background.h_clip_relation  = h_clip_relations.REWRITE_LEVEL
	Light_Black_Background.level			= MFD_DEFAULT_LEVEL - 3
	Light_Black_Background.change_opacity	= false
	Light_Black_Background.collimated 		= false
	Light_Black_Background.isvisible		= true
	Light_Black_Background.element_params 	= {screen .. "_BRIGHTNESS"}
	Light_Black_Background.controllers    	= {{"opacity_using_parameter", 0}}
	Add(Light_Black_Background)


	--ADI ball
	adi_background_mask 				= AddCircle(-0.01, 0.277, 0.47, 1, true)
	adi_background_mask.h_clip_relation = h_clip_relations.INCREASE_IF_LEVEL  
	adi_background_mask.level			= MFD_DEFAULT_LEVEL - 3
	adi_background_mask.material		= MakeMaterial(nil,{0, 0, 0,255})	--RGBA
	adi_background_mask.isvisible		= false
	adi_background_mask.parent_element	= EMGY_PAGE.name
	AddElement2(adi_background_mask)


	adi_background_mask2 				 = AddCircle(-0.01, 0.24, 0.47, 1, true)
	adi_background_mask2.h_clip_relation = h_clip_relations.INCREASE_IF_LEVEL  
	adi_background_mask2.level			 = MFD_DEFAULT_LEVEL - 3
	adi_background_mask2.material		= MakeMaterial(nil,{0, 0, 0,255})	--RGBA
	adi_background_mask2.isvisible		 = false
	adi_background_mask2.parent_element	 = EMGY_PAGE.name
	AddElement2(adi_background_mask2)	

	local ADI_BASE 				= CreateElement "ceSimple"		-- Ball background
	ADI_BASE.init_pos			= {0, 0.195+0.06}
	ADI_BASE.name				= create_guid_string()
	ADI_BASE.h_clip_relation 	= h_clip_relations.DECREASE_IF_LEVEL  
	ADI_BASE.level           	= MFD_DEFAULT_LEVEL - 3 + 1
	ADI_BASE.parent_element	 	= EMGY_PAGE.name
	ADI_BASE.element_params 	= {"ADI_ROLL",}
	ADI_BASE.controllers		= {{"rotate_using_parameter" ,0, 1},}
	AddElement2(ADI_BASE)	

	local ADI_EMGY_BACKGROUND			= create_mfd_tex_3300(ADI_BACKGROUND_EMGY, 0, 0, 3072, 1920,1.4*1.611)
	ADI_EMGY_BACKGROUND.name			= create_guid_string()
	ADI_EMGY_BACKGROUND.init_pos		= {0.62, 0}
	ADI_EMGY_BACKGROUND.parent_element	= ADI_BASE.name
	ADI_EMGY_BACKGROUND.h_clip_relation = h_clip_relations.DECREASE_IF_LEVEL  
	ADI_EMGY_BACKGROUND.level           = MFD_DEFAULT_LEVEL - 3 + 1
	ADI_EMGY_BACKGROUND.element_params  = {screen .. "_BRIGHTNESS","ADI_ATTITUDE"}
	ADI_EMGY_BACKGROUND.controllers		= {JAS_Bright[1],JAS_Bright[2],JAS_Bright[3],JAS_Bright[4],JAS_Bright[5],JAS_Bright[6],JAS_Bright[7],JAS_Bright[8],JAS_Bright[9],JAS_Bright[10],JAS_Bright[11],JAS_Bright[12],JAS_Bright[13],JAS_Bright[14],JAS_Bright[15], JAS_Bright[16],JAS_Bright[17],JAS_Bright[18],JAS_Bright[19],JAS_Bright[20],{"move_up_down_using_parameter",1, 0.036}}
	AddElement2(ADI_EMGY_BACKGROUND)

	local ADI_EMGY_FRAME			= create_mfd_tex(ADI_FRAME_EMGY, 10, 15, 1260, 1260,0.92)
	ADI_EMGY_FRAME.name				= create_guid_string()
	ADI_EMGY_FRAME.init_pos			= {0, 0.270}
	ADI_EMGY_FRAME.parent_element	= EMGY_PAGE.name
	ADI_EMGY_FRAME.element_params   = {screen .. "_BRIGHTNESS"}
	ADI_EMGY_FRAME.controllers	 	= {JAS_Bright[1],JAS_Bright[2],JAS_Bright[3],JAS_Bright[4],JAS_Bright[5],JAS_Bright[6],JAS_Bright[7],JAS_Bright[8],JAS_Bright[9],JAS_Bright[10],JAS_Bright[11],JAS_Bright[12],JAS_Bright[13],JAS_Bright[14],JAS_Bright[15], JAS_Bright[16],JAS_Bright[17],JAS_Bright[18],JAS_Bright[19],JAS_Bright[20]}
	AddElement(ADI_EMGY_FRAME)	

	local ADI_EMGY_ATTITUDE				= create_mfd_tex(ADI_FRAME_EMGY, 1400, 905 , 1915, 985,0.92)
	ADI_EMGY_ATTITUDE.name				= create_guid_string()
	ADI_EMGY_ATTITUDE.init_pos			= {0, 0.23}
	ADI_EMGY_ATTITUDE.parent_element	= EMGY_PAGE.name
	ADI_EMGY_ATTITUDE.element_params    = {screen .. "_BRIGHTNESS"}
	ADI_EMGY_ATTITUDE.controllers	    = {JAS_Bright[1],JAS_Bright[2],JAS_Bright[3],JAS_Bright[4],JAS_Bright[5],JAS_Bright[6],JAS_Bright[7],JAS_Bright[8],JAS_Bright[9],JAS_Bright[10],JAS_Bright[11],JAS_Bright[12],JAS_Bright[13],JAS_Bright[14],JAS_Bright[15], JAS_Bright[16],JAS_Bright[17],JAS_Bright[18],JAS_Bright[19],JAS_Bright[20]}
	AddElement(ADI_EMGY_ATTITUDE)	

	local ADI_EMGY_ROLL_MARKER				= create_mfd_tex(ADI_FRAME_EMGY, 1975, 0, 2038, 1143.27-110, 1.0 )
	ADI_EMGY_ROLL_MARKER.name				= create_guid_string()
	ADI_EMGY_ROLL_MARKER.init_pos			= {-0.0065, 0}
	ADI_EMGY_ROLL_MARKER.parent_element		= ADI_EMGY_FRAME.name	
	ADI_EMGY_ROLL_MARKER.element_params 	= {screen .. "_BRIGHTNESS","ADI_ROLL",}
	ADI_EMGY_ROLL_MARKER.controllers		= {JAS_Bright[1],JAS_Bright[2],JAS_Bright[3],JAS_Bright[4],JAS_Bright[5],JAS_Bright[6],JAS_Bright[7],JAS_Bright[8],JAS_Bright[9],JAS_Bright[10],JAS_Bright[11],JAS_Bright[12],JAS_Bright[13],JAS_Bright[14],JAS_Bright[15], JAS_Bright[16],JAS_Bright[17],JAS_Bright[18],JAS_Bright[19],JAS_Bright[20],{"rotate_using_parameter" ,1, 1},}
	AddElement(ADI_EMGY_ROLL_MARKER)
	--****************** RPM Gauge
	
	local rpm_indicator				= create_mfd_tex_3k(MFD_ELEMENTS_PDD_WHITE,275, 860, 1035, 1610)
	rpm_indicator.name				= create_guid_string()
	rpm_indicator.init_pos			= {-0.58, -0.8}
	rpm_indicator.parent_element 	= EMGY_PAGE.name
	rpm_indicator.element_params 	= {screen .. "_BRIGHTNESS",screen .. "_ENG_TOGGLE"}
	rpm_indicator.controllers		= {JAS_Bright[1],JAS_Bright[2],JAS_Bright[3],JAS_Bright[4],JAS_Bright[5],JAS_Bright[6],JAS_Bright[7],JAS_Bright[8],JAS_Bright[9],JAS_Bright[10],JAS_Bright[11],JAS_Bright[12],JAS_Bright[13],JAS_Bright[14],JAS_Bright[15], JAS_Bright[16],JAS_Bright[17],JAS_Bright[18],JAS_Bright[19],JAS_Bright[20], {"parameter_compare_with_number", 1, 1}}
	AddElement(rpm_indicator)	

	local rpm_needle 			= create_mfd_tex(MFD_ELEMENTS_D, 463, 824, 674, 855, 1.3, 473 )
	rpm_needle.name				= create_guid_string()
	rpm_needle.init_pos			= {0.053, -0.040}
	rpm_needle.init_rot			= {-90, 0}
	rpm_needle.element_params 	= {screen .. "_BRIGHTNESS", "RPM_NEEDLE"}
	rpm_needle.controllers		= {JAS_Bright[1],JAS_Bright[2],JAS_Bright[3],JAS_Bright[4],JAS_Bright[5],JAS_Bright[6],JAS_Bright[7],JAS_Bright[8],JAS_Bright[9],JAS_Bright[10],JAS_Bright[11],JAS_Bright[12],JAS_Bright[13],JAS_Bright[14],JAS_Bright[15], JAS_Bright[16],JAS_Bright[17],JAS_Bright[18],JAS_Bright[19],JAS_Bright[20], {"rotate_using_parameter" ,1, -math.rad(300)/100},}
	rpm_needle.parent_element	= rpm_indicator.name
	AddElement(rpm_needle)


	local Digital_rpm = Add_Text_With_Screen_Brightness(0.16, -0.19, "RPM_PARAM_U", "%02.0f", rpm_indicator, mfd_strdefs_digit, "Gripen_Font_WHITE", screen)

	local Digital_rpm_100 = Add_Text_With_Screen_Brightness("1", 0.12, -0.19, rpm_indicator , "Gripen_Font_WHITE", mfd_strdefs_digit, "LeftCenter", screen)
	Digital_rpm_100.element_params  = {"RPM_PARAM"}
	Digital_rpm_100.controllers     = {{"parameter_in_range" ,0,0.9,1.1} }


	-- Engine temp

	local tgt_indicator				= create_mfd_tex_3k(MFD_ELEMENTS_PDD_WHITE,1075, 860, 2000, 1583)
	tgt_indicator.name				= create_guid_string()
	tgt_indicator.init_pos			= {0.15, -0.8}
	tgt_indicator.parent_element 	= EMGY_PAGE.name
	tgt_indicator.element_params 	= {screen .. "_BRIGHTNESS",screen .. "_ENG_TOGGLE"}
	tgt_indicator.controllers	 	= {JAS_Bright[1],JAS_Bright[2],JAS_Bright[3],JAS_Bright[4],JAS_Bright[5],JAS_Bright[6],JAS_Bright[7],JAS_Bright[8],JAS_Bright[9],JAS_Bright[10],JAS_Bright[11],JAS_Bright[12],JAS_Bright[13],JAS_Bright[14],JAS_Bright[15], JAS_Bright[16],JAS_Bright[17],JAS_Bright[18],JAS_Bright[19],JAS_Bright[20], {"parameter_compare_with_number", 1, 1}}
	AddElement(tgt_indicator)	

	local tgt_needle 			= create_mfd_tex(MFD_ELEMENTS_D, 463, 824, 674, 855, 1.3, 473 )
	tgt_needle.name				= create_guid_string()
	tgt_needle.init_pos			= {0.000, -0.048}
	tgt_needle.init_rot			= {-90, 0}
	tgt_needle.element_params 	= {screen .. "_BRIGHTNESS", "TGT_NEEDLE",}
	tgt_needle.controllers		= { JAS_Bright[1],JAS_Bright[2],JAS_Bright[3],JAS_Bright[4],JAS_Bright[5],JAS_Bright[6],JAS_Bright[7],JAS_Bright[8],JAS_Bright[9],JAS_Bright[10],JAS_Bright[11],JAS_Bright[12],JAS_Bright[13],JAS_Bright[14],JAS_Bright[15], JAS_Bright[16],JAS_Bright[17],JAS_Bright[18],JAS_Bright[19],JAS_Bright[20],{"rotate_using_parameter" ,1, -math.rad(179/680)}}
	tgt_needle.parent_element	= tgt_indicator.name
	AddElement(tgt_needle)	

	local Digital_TGT = Add_Text_With_Screen_Brightness(0.09, -0.2, "TGT_PARAM", "%02.0f", tgt_indicator, mfd_strdefs_digit, "Gripen_Font_WHITE", screen)

	--Add_Text_With_Screen_Brightness(-0.5, -0.2, "CUR_MACH", "%0.2f", EMGY_PAGE, mfd_strdefs_digit, "Gripen_Font_WHITE", screen)
	local Mach_text_EMGY = Add_Text_With_Screen_Brightness("M", -0.72, -0.2, EMGY_PAGE, "Gripen_Font_WHITE", nil, nil, screen)

	local Mach_indicator 				= CreateElement "ceStringPoly"
	Mach_indicator.name 				= create_guid_string()
	Mach_indicator.parent_element		= EMGY_PAGE.name
	Mach_indicator.material				= fonts["Gripen_Font_WHITE"]
	Mach_indicator.init_pos 			= {-0.5, -0.2}
	Mach_indicator.alignment 			= "LeftCenter"
	Mach_indicator.stringdefs 			= mfd_strdefs_digit
	Mach_indicator.formats 				= {"%0.0f","%s"}
	Mach_indicator.element_params 		= {screen .. "_BRIGHTNESS","MACH_B"}
	Mach_indicator.controllers 			= {JAS_Bright[1],JAS_Bright[2],JAS_Bright[3],JAS_Bright[4],JAS_Bright[5],JAS_Bright[6],JAS_Bright[7],JAS_Bright[8],JAS_Bright[9],JAS_Bright[10],JAS_Bright[11],JAS_Bright[12],JAS_Bright[13],JAS_Bright[14],JAS_Bright[15], JAS_Bright[16],JAS_Bright[17],JAS_Bright[18],JAS_Bright[19],JAS_Bright[20],{"text_using_parameter",1,0},{"parameter_in_range" ,1, 3, 99.5}}
	AddElement(Mach_indicator)

	Add_Text_With_Screen_Brightness(".", -0.011, 0, Mach_indicator, "Gripen_Font_WHITE",mfd_strdefs_digit, nil, screen)

	local Mach_indicator2 				= CreateElement "ceStringPoly"
	Mach_indicator2.name 				= create_guid_string()
	Mach_indicator2.parent_element		= EMGY_PAGE.name
	Mach_indicator2.material			= fonts["Gripen_Font_WHITE"]
	Mach_indicator2.init_pos 			= {-0.568, -0.2}
	Mach_indicator2.alignment 			= "LeftCenter"
	Mach_indicator2.stringdefs 			= mfd_strdefs_digit
	Mach_indicator2.formats 			= {"%0.2f","%s"}
	Mach_indicator2.element_params 		= {screen .. "_BRIGHTNESS","MACH_A"}
	Mach_indicator2.controllers 		= {JAS_Bright[1],JAS_Bright[2],JAS_Bright[3],JAS_Bright[4],JAS_Bright[5],JAS_Bright[6],JAS_Bright[7],JAS_Bright[8],JAS_Bright[9],JAS_Bright[10],JAS_Bright[11],JAS_Bright[12],JAS_Bright[13],JAS_Bright[14],JAS_Bright[15], JAS_Bright[16],JAS_Bright[17],JAS_Bright[18],JAS_Bright[19],JAS_Bright[20],{"text_using_parameter",1},{"parameter_in_range" ,1, 0.995, 3}}
	AddElement(Mach_indicator2)






	Add_Text_With_Screen_Brightness(-0.5, 0.7, "CUR_AOA", "%0.0f", EMGY_PAGE, mfd_strdefs_digit, "Gripen_Font_WHITE", screen)

	local ALFA_SYMBOL_EMGY			 = create_mfd_tex(ADI_FRAME_EMGY, 1795, 435 , 1875, 510,0.80)
	ALFA_SYMBOL_EMGY.name			 = create_guid_string()
	ALFA_SYMBOL_EMGY.init_pos		 = {-0.72, 0.7}
	ALFA_SYMBOL_EMGY.parent_element	 = EMGY_PAGE.name
	ALFA_SYMBOL_EMGY.element_params  = {screen .. "_BRIGHTNESS"}
	ALFA_SYMBOL_EMGY.controllers	 = {JAS_Bright[1],JAS_Bright[2],JAS_Bright[3],JAS_Bright[4],JAS_Bright[5],JAS_Bright[6],JAS_Bright[7],JAS_Bright[8],JAS_Bright[9],JAS_Bright[10],JAS_Bright[11],JAS_Bright[12],JAS_Bright[13],JAS_Bright[14],JAS_Bright[15], JAS_Bright[16],JAS_Bright[17],JAS_Bright[18],JAS_Bright[19],JAS_Bright[20]}
	AddElement(ALFA_SYMBOL_EMGY)

	local FuelSquare			= create_mfd_tex(ADI_FRAME_EMGY, 1400, 12 , 1775, 380,0.82)
	FuelSquare.name				= create_guid_string()
	FuelSquare.init_pos			= {0.75, 1.20}
	FuelSquare.parent_element	= EMGY_PAGE.name
	FuelSquare.element_params   = {screen .. "_BRIGHTNESS"}
	FuelSquare.controllers	 	= {JAS_Bright[1],JAS_Bright[2],JAS_Bright[3],JAS_Bright[4],JAS_Bright[5],JAS_Bright[6],JAS_Bright[7],JAS_Bright[8],JAS_Bright[9],JAS_Bright[10],JAS_Bright[11],JAS_Bright[12],JAS_Bright[13],JAS_Bright[14],JAS_Bright[15], JAS_Bright[16],JAS_Bright[17],JAS_Bright[18],JAS_Bright[19],JAS_Bright[20]}
	AddElement(FuelSquare)

	FUEL_TXT = Add_Text_With_Screen_Brightness("FUEL", 0.755, 1.275, EMGY_PAGE, "Gripen_Font_WHITE", mfd_strdefs_digit_f, nil, screen)
	FUEL_TXT_D = Add_Text_Param_With_Screen_Brightness("FUEL", -0.021,-0.15, FUEL_TXT, "Gripen_Font_WHITE", mfd_strdefs_digit_f, nil, screen)
	Add_Text_With_Screen_Brightness("%", 0.115,0, FUEL_TXT_D, "Gripen_Font_WHITE", mfd_strdefs_digit_b, nil, screen)


	local AIRSPEED_EMGY_SCALE			= create_mfd_tex(ADI_FRAME_EMGY, 1870, 1070 , 1925, 1855,1)
	AIRSPEED_EMGY_SCALE.name			= create_guid_string()
	AIRSPEED_EMGY_SCALE.init_pos		= {-0.65, 0.25}
	AIRSPEED_EMGY_SCALE.parent_element	= EMGY_PAGE.name
	AIRSPEED_EMGY_SCALE.element_params  = {screen .. "_BRIGHTNESS"}
	AIRSPEED_EMGY_SCALE.controllers	    = {JAS_Bright[1],JAS_Bright[2],JAS_Bright[3],JAS_Bright[4],JAS_Bright[5],JAS_Bright[6],JAS_Bright[7],JAS_Bright[8],JAS_Bright[9],JAS_Bright[10],JAS_Bright[11],JAS_Bright[12],JAS_Bright[13],JAS_Bright[14],JAS_Bright[15], JAS_Bright[16],JAS_Bright[17],JAS_Bright[18],JAS_Bright[19],JAS_Bright[20]}
	AddElement(AIRSPEED_EMGY_SCALE)
	
	local AIRSPEED_EMGY_ARROW			= create_mfd_tex(ADI_FRAME_EMGY, 1748, 1497 , 1807, 1555,1)
	AIRSPEED_EMGY_ARROW.name			= create_guid_string()
	AIRSPEED_EMGY_ARROW.init_pos		= {-0.657, -0.241}
	AIRSPEED_EMGY_ARROW.parent_element	= EMGY_PAGE.name
	AIRSPEED_EMGY_ARROW.element_params  = {screen .. "_BRIGHTNESS","EMGY_IAS"}
	AIRSPEED_EMGY_ARROW.controllers	    = {JAS_Bright[1],JAS_Bright[2],JAS_Bright[3],JAS_Bright[4],JAS_Bright[5],JAS_Bright[6],JAS_Bright[7],JAS_Bright[8],JAS_Bright[9],JAS_Bright[10],JAS_Bright[11],JAS_Bright[12],JAS_Bright[13],JAS_Bright[14],JAS_Bright[15], JAS_Bright[16],JAS_Bright[17],JAS_Bright[18],JAS_Bright[19],JAS_Bright[20],{"move_up_down_using_parameter", 1, 0.0001079*1.1125}}
	AddElement(AIRSPEED_EMGY_ARROW)

	AIRSPEED_EMGY_READOUT = Add_Text_With_Screen_Brightness(-0.15,0.0 , "CURR_IAS", "%0.0f", AIRSPEED_EMGY_ARROW, mfd_strdefs_digit, "Gripen_Font_WHITE", screen) 


	local HEADING_TAPE_EMGY_MASK				 = CreateElement "ceSimpleLineObject"
	HEADING_TAPE_EMGY_MASK.name			 		 = create_guid_string()
	HEADING_TAPE_EMGY_MASK.material				 = MakeMaterial(nil, {0,100,0, 255})
	HEADING_TAPE_EMGY_MASK.width		 		 = 0.4
	HEADING_TAPE_EMGY_MASK.vertices	 			 = {{0, 0.25}, {0,0}}
	HEADING_TAPE_EMGY_MASK.init_pos       		 = {0, 1.12}
	HEADING_TAPE_EMGY_MASK.h_clip_relation 		 = h_clip_relations.INCREASE_IF_LEVEL  
	HEADING_TAPE_EMGY_MASK.level				 = MFD_DEFAULT_LEVEL - 3  
	HEADING_TAPE_EMGY_MASK.isvisible			 = false
	HEADING_TAPE_EMGY_MASK.parent_element 		 = EMGY_PAGE.name
	AddElement2(HEADING_TAPE_EMGY_MASK)

	local HEADING_ARROW_EMGY			= create_mfd_tex(ADI_FRAME_EMGY, 1748, 1497 , 1807, 1555,1)
	HEADING_ARROW_EMGY.name				= create_guid_string()
	HEADING_ARROW_EMGY.init_pos			= {0, 1.115}
	HEADING_ARROW_EMGY.init_rot			= {90, 0}
	HEADING_ARROW_EMGY.parent_element	= EMGY_PAGE.name
	HEADING_ARROW_EMGY.element_params   = {screen .. "_BRIGHTNESS"}
	HEADING_ARROW_EMGY.controllers	    = {JAS_Bright[1],JAS_Bright[2],JAS_Bright[3],JAS_Bright[4],JAS_Bright[5],JAS_Bright[6],JAS_Bright[7],JAS_Bright[8],JAS_Bright[9],JAS_Bright[10],JAS_Bright[11],JAS_Bright[12],JAS_Bright[13],JAS_Bright[14],JAS_Bright[15], JAS_Bright[16],JAS_Bright[17],JAS_Bright[18],JAS_Bright[19],JAS_Bright[20]}
	AddElement(HEADING_ARROW_EMGY)

	local HEADING_TAPE_EMGY				= create_mfd_tex_3300(EMGY_HEADING_WHITE, 0, 37, 3072, 107,1.4*1.611)
	HEADING_TAPE_EMGY.name				= create_guid_string()
	HEADING_TAPE_EMGY.init_pos			= {1.26, 1.19}
	HEADING_TAPE_EMGY.parent_element	= EMGY_PAGE.name
	HEADING_TAPE_EMGY.h_clip_relation 	= h_clip_relations.DECREASE_IF_LEVEL  
	HEADING_TAPE_EMGY.level           	= MFD_DEFAULT_LEVEL - 3 + 1
	HEADING_TAPE_EMGY.element_params  	= {screen .. "_BRIGHTNESS","EMGY_HEADING"}
	HEADING_TAPE_EMGY.controllers	 	= {JAS_Bright[1],JAS_Bright[2],JAS_Bright[3],JAS_Bright[4],JAS_Bright[5],JAS_Bright[6],JAS_Bright[7],JAS_Bright[8],JAS_Bright[9],JAS_Bright[10],JAS_Bright[11],JAS_Bright[12],JAS_Bright[13],JAS_Bright[14],JAS_Bright[15], JAS_Bright[16],JAS_Bright[17],JAS_Bright[18],JAS_Bright[19],JAS_Bright[20], {"move_left_right_using_parameter",1, -0.00061001} }
	AddElement2(HEADING_TAPE_EMGY)

	local MAG_text = Add_Text_With_Screen_Brightness("MAG", 0.215,0.215, HEADING_ARROW_EMGY, "Gripen_Font_WHITE", mfd_strdefs_digit_XS, nil, screen)
	MAG_text.init_rot			= {-90, 0}


	local ALTITUDE_SCALE_EMGY_MASK				 	 = CreateElement "ceSimpleLineObject"
	ALTITUDE_SCALE_EMGY_MASK.name			 		 = create_guid_string()
	ALTITUDE_SCALE_EMGY_MASK.material				 = MakeMaterial(nil, {0,100,0, 255})
	ALTITUDE_SCALE_EMGY_MASK.width		 		 	 = 0.20
	ALTITUDE_SCALE_EMGY_MASK.vertices	 			 = {{0, 0.5}, {0,0}}
	ALTITUDE_SCALE_EMGY_MASK.init_pos       		 = {1, 0.29}
	ALTITUDE_SCALE_EMGY_MASK.init_rot				 = {90, 0}
	ALTITUDE_SCALE_EMGY_MASK.h_clip_relation 		 = h_clip_relations.INCREASE_IF_LEVEL  
	ALTITUDE_SCALE_EMGY_MASK.level				 	 = MFD_DEFAULT_LEVEL - 3  
	ALTITUDE_SCALE_EMGY_MASK.isvisible			 	 = false
	ALTITUDE_SCALE_EMGY_MASK.parent_element 		 = EMGY_PAGE.name
	AddElement2(ALTITUDE_SCALE_EMGY_MASK)


	local ALTITUDE_SCALE_EMGY				= create_mfd_tex_3300(EMGY_HEADING_WHITE, 0, 251, 3072 , 415,2.5)
	ALTITUDE_SCALE_EMGY.name				= create_guid_string()
	ALTITUDE_SCALE_EMGY.init_pos			= {0.8, 2.458}
	ALTITUDE_SCALE_EMGY.init_rot			= {90, 0}
	ALTITUDE_SCALE_EMGY.parent_element		= EMGY_PAGE.name
	ALTITUDE_SCALE_EMGY.h_clip_relation 	= h_clip_relations.DECREASE_IF_LEVEL  
	ALTITUDE_SCALE_EMGY.level           	= MFD_DEFAULT_LEVEL - 3 + 1
	ALTITUDE_SCALE_EMGY.element_params  	= {screen .. "_BRIGHTNESS","EMGY_ALTITUDE"}
	ALTITUDE_SCALE_EMGY.controllers	 		= {JAS_Bright[1],JAS_Bright[2],JAS_Bright[3],JAS_Bright[4],JAS_Bright[5],JAS_Bright[6],JAS_Bright[7],JAS_Bright[8],JAS_Bright[9],JAS_Bright[10],JAS_Bright[11],JAS_Bright[12],JAS_Bright[13],JAS_Bright[14],JAS_Bright[15], JAS_Bright[16],JAS_Bright[17],JAS_Bright[18],JAS_Bright[19],JAS_Bright[20], {"move_left_right_using_parameter",1, -0.00001903} }
	AddElement2(ALTITUDE_SCALE_EMGY)

	local ALTITUDE_SCALE_EMGY2				= create_mfd_tex_3300(EMGY_HEADING_WHITE, 0, 438, 3072, 602,2.5)
	ALTITUDE_SCALE_EMGY2.name				= create_guid_string()
	ALTITUDE_SCALE_EMGY2.init_pos			= {0.8, 7.1288}
	ALTITUDE_SCALE_EMGY2.init_rot			= {90, 0}
	ALTITUDE_SCALE_EMGY2.parent_element		= EMGY_PAGE.name
	ALTITUDE_SCALE_EMGY2.h_clip_relation 	= h_clip_relations.DECREASE_IF_LEVEL  
	ALTITUDE_SCALE_EMGY2.level           	= MFD_DEFAULT_LEVEL - 3 + 1
	ALTITUDE_SCALE_EMGY2.element_params  	= {screen .. "_BRIGHTNESS","EMGY_ALTITUDE"}
	ALTITUDE_SCALE_EMGY2.controllers	 		= {JAS_Bright[1],JAS_Bright[2],JAS_Bright[3],JAS_Bright[4],JAS_Bright[5],JAS_Bright[6],JAS_Bright[7],JAS_Bright[8],JAS_Bright[9],JAS_Bright[10],JAS_Bright[11],JAS_Bright[12],JAS_Bright[13],JAS_Bright[14],JAS_Bright[15], JAS_Bright[16],JAS_Bright[17],JAS_Bright[18],JAS_Bright[19],JAS_Bright[20], {"move_left_right_using_parameter",1, -0.00001903} }
	AddElement2(ALTITUDE_SCALE_EMGY2)

	local ALTITUDE_SCALE_EMGY3				= create_mfd_tex_3300(EMGY_HEADING_WHITE, 0, 632 , 3072, 796,2.5)
	ALTITUDE_SCALE_EMGY3.name				= create_guid_string()
	ALTITUDE_SCALE_EMGY3.init_pos			= {0.8, 11.687}
	ALTITUDE_SCALE_EMGY3.init_rot			= {90, 0}
	ALTITUDE_SCALE_EMGY3.parent_element		= EMGY_PAGE.name
	ALTITUDE_SCALE_EMGY3.h_clip_relation 	= h_clip_relations.DECREASE_IF_LEVEL  
	ALTITUDE_SCALE_EMGY3.level           	= MFD_DEFAULT_LEVEL - 3 + 1
	ALTITUDE_SCALE_EMGY3.element_params  	= {screen .. "_BRIGHTNESS","EMGY_ALTITUDE"}
	ALTITUDE_SCALE_EMGY3.controllers	 		= {JAS_Bright[1],JAS_Bright[2],JAS_Bright[3],JAS_Bright[4],JAS_Bright[5],JAS_Bright[6],JAS_Bright[7],JAS_Bright[8],JAS_Bright[9],JAS_Bright[10],JAS_Bright[11],JAS_Bright[12],JAS_Bright[13],JAS_Bright[14],JAS_Bright[15], JAS_Bright[16],JAS_Bright[17],JAS_Bright[18],JAS_Bright[19],JAS_Bright[20], {"move_left_right_using_parameter",1, -0.00001903} }
	AddElement2(ALTITUDE_SCALE_EMGY3)

	local ALTITUDE_SCALE_EMGY4				= create_mfd_tex_3300(EMGY_HEADING_WHITE, 0, 886 , 3072, 991,2.5)
	ALTITUDE_SCALE_EMGY4.name				= create_guid_string()
	ALTITUDE_SCALE_EMGY4.init_pos			= {0.8, 16.244}
	ALTITUDE_SCALE_EMGY4.init_rot			= {90, 0}
	ALTITUDE_SCALE_EMGY4.parent_element		= EMGY_PAGE.name
	ALTITUDE_SCALE_EMGY4.h_clip_relation 	= h_clip_relations.DECREASE_IF_LEVEL  
	ALTITUDE_SCALE_EMGY4.level           	= MFD_DEFAULT_LEVEL - 3 + 1
	ALTITUDE_SCALE_EMGY4.element_params  	= {screen .. "_BRIGHTNESS","EMGY_ALTITUDE"}
	ALTITUDE_SCALE_EMGY4.controllers	 		= {JAS_Bright[1],JAS_Bright[2],JAS_Bright[3],JAS_Bright[4],JAS_Bright[5],JAS_Bright[6],JAS_Bright[7],JAS_Bright[8],JAS_Bright[9],JAS_Bright[10],JAS_Bright[11],JAS_Bright[12],JAS_Bright[13],JAS_Bright[14],JAS_Bright[15], JAS_Bright[16],JAS_Bright[17],JAS_Bright[18],JAS_Bright[19],JAS_Bright[20], {"move_left_right_using_parameter",1, -0.00001903} }
	AddElement2(ALTITUDE_SCALE_EMGY4)


	local ALTITUDE_EMGY_ARROW			= create_mfd_tex(ADI_FRAME_EMGY, 1748, 1497 , 1807, 1555,1)
	ALTITUDE_EMGY_ARROW.name			= create_guid_string()
	ALTITUDE_EMGY_ARROW.init_pos		= {0.645, 0.2935}
	ALTITUDE_EMGY_ARROW.parent_element	= EMGY_PAGE.name
	ALTITUDE_EMGY_ARROW.element_params  = {screen .. "_BRIGHTNESS"}
	ALTITUDE_EMGY_ARROW.controllers	    = {JAS_Bright[1],JAS_Bright[2],JAS_Bright[3],JAS_Bright[4],JAS_Bright[5],JAS_Bright[6],JAS_Bright[7],JAS_Bright[8],JAS_Bright[9],JAS_Bright[10],JAS_Bright[11],JAS_Bright[12],JAS_Bright[13],JAS_Bright[14],JAS_Bright[15], JAS_Bright[16],JAS_Bright[17],JAS_Bright[18],JAS_Bright[19],JAS_Bright[20]}
	AddElement(ALTITUDE_EMGY_ARROW)

	local VSI_SCALE_EMGY			= create_mfd_tex(AAR_LDP_WHITE_COLOR, 1500, 737 , 1730, 1330,1)
	VSI_SCALE_EMGY.name				= create_guid_string()
	VSI_SCALE_EMGY.init_pos			= {0.7, -0.7}
	VSI_SCALE_EMGY.parent_element	= EMGY_PAGE.name
	VSI_SCALE_EMGY.element_params  = {screen .. "_BRIGHTNESS", screen .. "_VSI_TOGGLE"}
	VSI_SCALE_EMGY.controllers	    = {JAS_Bright[1],JAS_Bright[2],JAS_Bright[3],JAS_Bright[4],JAS_Bright[5],JAS_Bright[6],JAS_Bright[7],JAS_Bright[8],JAS_Bright[9],JAS_Bright[10],JAS_Bright[11],JAS_Bright[12],JAS_Bright[13],JAS_Bright[14],JAS_Bright[15], JAS_Bright[16],JAS_Bright[17],JAS_Bright[18],JAS_Bright[19],JAS_Bright[20],{"parameter_compare_with_number",1, 1}}
	AddElement(VSI_SCALE_EMGY) 

	local VSI_SCALE_EMGY_ARROW			= create_mfd_tex(AAR_LDP_WHITE_COLOR, 1314, 960 , 1354, 1000,1)
	VSI_SCALE_EMGY_ARROW.name			= create_guid_string()
	VSI_SCALE_EMGY_ARROW.init_pos		= {0.59, -0.703}
	VSI_SCALE_EMGY_ARROW.parent_element	= EMGY_PAGE.name
	VSI_SCALE_EMGY_ARROW.element_params  = {screen .. "_BRIGHTNESS", "EMGY_VS", screen .. "_VSI_TOGGLE"}
	VSI_SCALE_EMGY_ARROW.controllers	 = {JAS_Bright[1],JAS_Bright[2],JAS_Bright[3],JAS_Bright[4],JAS_Bright[5],JAS_Bright[6],JAS_Bright[7],JAS_Bright[8],JAS_Bright[9],JAS_Bright[10],JAS_Bright[11],JAS_Bright[12],JAS_Bright[13],JAS_Bright[14],JAS_Bright[15], JAS_Bright[16],JAS_Bright[17],JAS_Bright[18],JAS_Bright[19],JAS_Bright[20],{"move_up_down_using_parameter", 1, 0.000010875},{"parameter_compare_with_number",2, 1}}
	AddElement(VSI_SCALE_EMGY_ARROW)

	local DISPLAY_TEMP_EMGY			= create_mfd_tex(AAR_LDP_WHITE_COLOR, 495, 131 , 755, 208,1.5)
	DISPLAY_TEMP_EMGY.name				= create_guid_string()
	DISPLAY_TEMP_EMGY.init_pos			= {0, -0.36}
	DISPLAY_TEMP_EMGY.parent_element	= EMGY_PAGE.name
	DISPLAY_TEMP_EMGY.element_params  = {screen .. "_BRIGHTNESS", screen .. "_TEMP_TOGGLE"}
	DISPLAY_TEMP_EMGY.controllers	    = {JAS_Bright[1],JAS_Bright[2],JAS_Bright[3],JAS_Bright[4],JAS_Bright[5],JAS_Bright[6],JAS_Bright[7],JAS_Bright[8],JAS_Bright[9],JAS_Bright[10],JAS_Bright[11],JAS_Bright[12],JAS_Bright[13],JAS_Bright[14],JAS_Bright[15], JAS_Bright[16],JAS_Bright[17],JAS_Bright[18],JAS_Bright[19],JAS_Bright[20],{"parameter_compare_with_number",1, 1}}
	AddElement(DISPLAY_TEMP_EMGY)








	local FONT_SIZE = 0.64

	local EMGY			= create_mfd_tex(ADI_FRAME_EMGY, 0, 1270, 125 , 1700,FONT_SIZE) 
	EMGY.name			= create_guid_string()
	EMGY.init_pos		= {-0.939, 1.1575}
	EMGY.parent_element	= EMGY_PAGE.name
	EMGY.element_params  = {screen .. "_BRIGHTNESS"}
	EMGY.controllers	    = {JAS_Bright[1],JAS_Bright[2],JAS_Bright[3],JAS_Bright[4],JAS_Bright[5],JAS_Bright[6],JAS_Bright[7],JAS_Bright[8],JAS_Bright[9],JAS_Bright[10],JAS_Bright[11],JAS_Bright[12],JAS_Bright[13],JAS_Bright[14],JAS_Bright[15], JAS_Bright[16],JAS_Bright[17],JAS_Bright[18],JAS_Bright[19],JAS_Bright[20]}
	AddElement(EMGY)

	local EMGY_BOX				= make_softkey_box(4, -0.944, 1.15, 0, EMGY_PAGE.name, screen .. "_EMGY_MODE")
	EMGY_BOX.element_params 	= {screen .. "_BRIGHTNESS",screen .. "_EMGY_MODE"}
	EMGY_BOX.controllers   		= {JAS_Bright[1],JAS_Bright[2],JAS_Bright[3],JAS_Bright[4],JAS_Bright[5],JAS_Bright[6],JAS_Bright[7],JAS_Bright[8],JAS_Bright[9],JAS_Bright[10],JAS_Bright[11],JAS_Bright[12],JAS_Bright[13],JAS_Bright[14],JAS_Bright[15], JAS_Bright[16],JAS_Bright[17],JAS_Bright[18],JAS_Bright[19],JAS_Bright[20],{"parameter_compare_with_number",1, 1}}
	AddElement(EMGY_BOX)

	local NORM			= create_mfd_tex(ADI_FRAME_EMGY, 1415, 435, 1482 , 825,FONT_SIZE) 
	NORM.name			= create_guid_string()
	NORM.init_pos		= {-0.885, 1.1495}
	NORM.parent_element	= EMGY_PAGE.name
	NORM.element_params  = {screen .. "_BRIGHTNESS"}
	NORM.controllers	    = {JAS_Bright[1],JAS_Bright[2],JAS_Bright[3],JAS_Bright[4],JAS_Bright[5],JAS_Bright[6],JAS_Bright[7],JAS_Bright[8],JAS_Bright[9],JAS_Bright[10],JAS_Bright[11],JAS_Bright[12],JAS_Bright[13],JAS_Bright[14],JAS_Bright[15], JAS_Bright[16],JAS_Bright[17],JAS_Bright[18],JAS_Bright[19],JAS_Bright[20]}
	AddElement(NORM)

	local TEMP			= create_mfd_tex(ADI_FRAME_EMGY, 1512 , 435, 1582 , 825,FONT_SIZE) 
	TEMP.name			= create_guid_string()
	TEMP.init_pos		= {-0.939, -0.30125}
	TEMP.parent_element	= EMGY_PAGE.name
	TEMP.element_params  = {screen .. "_BRIGHTNESS"}
	TEMP.controllers	    = {JAS_Bright[1],JAS_Bright[2],JAS_Bright[3],JAS_Bright[4],JAS_Bright[5],JAS_Bright[6],JAS_Bright[7],JAS_Bright[8],JAS_Bright[9],JAS_Bright[10],JAS_Bright[11],JAS_Bright[12],JAS_Bright[13],JAS_Bright[14],JAS_Bright[15], JAS_Bright[16],JAS_Bright[17],JAS_Bright[18],JAS_Bright[19],JAS_Bright[20]}
	AddElement(TEMP)

	local TEMP_BOX				= make_softkey_box(4, -0.939, -0.30, 0, EMGY_PAGE.name, screen .. "_TEMP_TOGGLE")
	TEMP_BOX.element_params 	= {screen .. "_BRIGHTNESS", screen .. "_TEMP_TOGGLE"}
	TEMP_BOX.controllers   		= {JAS_Bright[1],JAS_Bright[2],JAS_Bright[3],JAS_Bright[4],JAS_Bright[5],JAS_Bright[6],JAS_Bright[7],JAS_Bright[8],JAS_Bright[9],JAS_Bright[10],JAS_Bright[11],JAS_Bright[12],JAS_Bright[13],JAS_Bright[14],JAS_Bright[15], JAS_Bright[16],JAS_Bright[17],JAS_Bright[18],JAS_Bright[19],JAS_Bright[20],{"parameter_compare_with_number",1, 1}} --
	AddElement(TEMP_BOX)

	local ENG			= create_mfd_tex(ADI_FRAME_EMGY, 1699, 435, 1768 , 727,FONT_SIZE) 
	ENG.name			= create_guid_string()
	ENG.init_pos		= {-0.939, -0.60125}
	ENG.parent_element	= EMGY_PAGE.name
	ENG.element_params  = {screen .. "_BRIGHTNESS"}
	ENG.controllers	    = {JAS_Bright[1],JAS_Bright[2],JAS_Bright[3],JAS_Bright[4],JAS_Bright[5],JAS_Bright[6],JAS_Bright[7],JAS_Bright[8],JAS_Bright[9],JAS_Bright[10],JAS_Bright[11],JAS_Bright[12],JAS_Bright[13],JAS_Bright[14],JAS_Bright[15], JAS_Bright[16],JAS_Bright[17],JAS_Bright[18],JAS_Bright[19],JAS_Bright[20]}
	AddElement(ENG)

	local ENG_BOX				= make_softkey_box(3, -0.939, -0.60, 0, EMGY_PAGE.name, screen .. "_ENG_TOGGLE")
	ENG_BOX.element_params 		= {screen .. "_BRIGHTNESS",screen .. "_ENG_TOGGLE"}
	ENG_BOX.controllers   		= {JAS_Bright[1],JAS_Bright[2],JAS_Bright[3],JAS_Bright[4],JAS_Bright[5],JAS_Bright[6],JAS_Bright[7],JAS_Bright[8],JAS_Bright[9],JAS_Bright[10],JAS_Bright[11],JAS_Bright[12],JAS_Bright[13],JAS_Bright[14],JAS_Bright[15], JAS_Bright[16],JAS_Bright[17],JAS_Bright[18],JAS_Bright[19],JAS_Bright[20], {"parameter_compare_with_number", 1, 1}} --,{"parameter_compare_with_number",1, 1}
	AddElement(ENG_BOX)

	local VSI			= create_mfd_tex(ADI_FRAME_EMGY, 1606, 435, 1679 , 727,FONT_SIZE) 
	VSI.name			= create_guid_string()
	VSI.init_pos		= {0.939, -0.60125}
	VSI.parent_element	= EMGY_PAGE.name
	VSI.element_params  = {screen .. "_BRIGHTNESS"}
	VSI.controllers	    = {JAS_Bright[1],JAS_Bright[2],JAS_Bright[3],JAS_Bright[4],JAS_Bright[5],JAS_Bright[6],JAS_Bright[7],JAS_Bright[8],JAS_Bright[9],JAS_Bright[10],JAS_Bright[11],JAS_Bright[12],JAS_Bright[13],JAS_Bright[14],JAS_Bright[15], JAS_Bright[16],JAS_Bright[17],JAS_Bright[18],JAS_Bright[19],JAS_Bright[20]}
	AddElement(VSI)

	local VSI_BOX				= make_softkey_box(3, 0.939, -0.60125, 0, EMGY_PAGE.name, screen .. "_VSI_TOGGLE")
	VSI_BOX.element_params 		= {screen .. "_BRIGHTNESS",screen .. "_VSI_TOGGLE"}
	VSI_BOX.controllers   		= {JAS_Bright[1],JAS_Bright[2],JAS_Bright[3],JAS_Bright[4],JAS_Bright[5],JAS_Bright[6],JAS_Bright[7],JAS_Bright[8],JAS_Bright[9],JAS_Bright[10],JAS_Bright[11],JAS_Bright[12],JAS_Bright[13],JAS_Bright[14],JAS_Bright[15], JAS_Bright[16],JAS_Bright[17],JAS_Bright[18],JAS_Bright[19],JAS_Bright[20],{"parameter_compare_with_number",1, 1}} --
	AddElement(VSI_BOX)
end



IS_HUD = false


function AddBox(name,width,height,pos,rot,material,level,h_clip_relation,parent,element_param_name,controllers,isMask)
	width = width or Width
	height = height or Height
	local vertices        = {
		{ -width,       height }, { width, height }, { width, -height }, { -width, -height },
	}
	local indices         = {
		0,1,2,2,3,0
	}
	return AddMeshPoly(name,vertices,indices,pos,rot,material,h_clip_relation,level,parent,element_param_name,controllers,isMask)
end

function AddMeshPoly(name,vertices,indices,pos,rot,material,h_clip_relation,level,parent,element_params,controllers,isMask)
	local meshPoly           = CreateElement "ceMeshPoly"
	meshPoly.name            = name or create_guid_string()
	meshPoly.primitivetype   = "triangles"
	meshPoly.vertices        = vertices
	meshPoly.indices         = indices
	meshPoly.init_pos        = pos or {0,0}
	meshPoly.init_rot        = rot or {0,0}
	meshPoly.material        = material or ''
	meshPoly.h_clip_relation = h_clip_relation or COMPARE
	meshPoly.level           = level or DEFAULT_LEVEL
	meshPoly.isdraw          = true
	meshPoly.change_opacity  = false
	if parent then
		if type(parent) == 'userdata' and parent.name then
			meshPoly.parent_element = parent.name
		elseif type(parent) == 'string' then
			meshPoly.parent_element = parent
		end
	end
	local element_ctrl
	if PAGE_NAME and Pages then
		element_ctrl=AddPageControll(element_params,controllers,IndicatorName..'_PAGE',Pages[PAGE_NAME])
	end
	if element_ctrl then
		element_ctrl = AddLightnessControll(element_ctrl[1],element_ctrl[2],IndicatorName)
	else
		element_ctrl = AddLightnessControll(element_params,controllers,IndicatorName)
	end
	if element_ctrl then
		meshPoly.element_params = element_ctrl[1]
		meshPoly.controllers = element_ctrl[2]
	end
	meshPoly.isvisible       = not isMask
	if type(IS_HUD) == "boolean" then
		meshPoly.collimated = IS_HUD
	end
	Add(meshPoly)
	return meshPoly
end

function AddLightnessControll(element_params,controllers,element_param_name)
	local ret_obj = nil
	if element_params and type(element_params)=='table' and #element_params>0 then
		if type(element_param_name)=="string" and not IGNORE_BRT then
			element_params[#element_params+1] = element_param_name..'_BRT'
			controllers[#controllers+1] = {AnimalControllor.opacityUsingParameter,#element_params - 1}
		end
		ret_obj = {element_params,controllers}
	elseif type(element_param_name)=="string" and not IGNORE_BRT then
		element_params = {element_param_name..'_BRT'}
		controllers = {{AnimalControllor.opacityUsingParameter,0}}
		ret_obj = {element_params,controllers}
	end
	return ret_obj
end

function AddSimple(name,pos,rot,parent_element,element_params,controllers)
	local simple    = CreateElement "ceSimple"
	simple.name     = name or create_guid_string()
	simple.init_pos = pos or { 0, 0 }
	simple.init_rot = rot or { 0, 0 }
	if parent_element then
		if type(parent_element) == 'userdata' and parent_element.name then
			simple.parent_element = parent_element.name
		elseif type(parent_element) == 'string' then
			simple.parent_element = parent_element
		end
	end
	if element_params and controllers then
		simple.element_params = element_params
		simple.controllers = controllers
	end
	if type(IS_HUD) == "boolean" then
		simple.collimated = IS_HUD
	end
	Add(simple)
	return simple
end

function addACPRow(name, posy, textParam)
	local textObj          = CreateElement "ceStringPoly"
	textObj.name           = name
	textObj.material       = fonts["Gripen_Font_UCP"]
	textObj.init_pos       = {-0.04, posy}
	textObj.stringdefs     = acp_strdefs_digit
	textObj.alignment      = "CenterCenter"
	textObj.parent_element = "ACP_Base" --ACPBase.name
	textObj.formats        = {"%.8s"} 
	textObj.element_params = {"UCP_BRIGHTNESS", textParam, "%s"}
	textObj.controllers    = {{"opacity_using_parameter",0}, {"text_using_parameter",1}}
	textObj.level          = ACPDeafultLevel
	AddElement(textObj)
end



function SelectedPylon(xpos, ypos, Pylonn, SPParent)
	local SPylon          = CreateElement "ceMeshPoly"
	SPylon.name           = create_guid_string()
	SPylon.primitivetype  = "triangles"
	SPylon.vertices       = {{-0.081, -0.027}, {0.091, -0.027}, {-0.081, 0.03}, {0.091, 0.03}}
	SPylon.indices        = {0,1,2 , 3,2,1}
	SPylon.init_pos       = {xpos, ypos}
	SPylon.material       = MakeMaterial(nil, {0, 0, 0, 255})
	SPylon.parent_element = SPParent
	SPylon.level          = MFD_DEFAULT_LEVEL -1
	SPylon.element_params = {"SELECTED_PYLON"}
	SPylon.controllers    = {{"parameter_in_range",0, ((Pylonn - 1) + 0.9), (Pylonn + 0.1)}}
	return SPylon
end



function make_softkey_box(length, posx, posy, rot, skbParent, skbParam)

	local softkey_box           = CreateElement "ceMeshPoly"
	softkey_box.name            = create_guid_string()
	softkey_box.primitivetype   = "triangles"
	softkey_box.vertices        = {{(-0.002 - 0.021),-(length / 35)}, {(0.002 - 0.021),-(length / 35)}, {(-0.002 - 0.021),(length / 35)}, {(0.002 - 0.021),(length / 35)},
	                               {(-0.002 + 0.021),-(length / 35)}, {(0.002 + 0.021),-(length / 35)}, {(-0.002 + 0.021),(length / 35)}, {(0.002 + 0.021),(length / 35)},
								   {(0.002 - 0.021),(length / 35) - 0.004}, {(0.002 + 0.021),(length / 35) - 0.004},
								   {(0.002 - 0.021),-(length / 35) + 0.004}, {(0.002 + 0.021),-(length / 35) + 0.004}}
	softkey_box.indices         = {0,1,2 , 3,2,1,
	                               4,5,6 , 7,6,5,
								   8,9,3 , 6,3,9,
								   1,4,10 , 11,10,4}
	softkey_box.init_pos        = {posx, posy}
	softkey_box.init_rot        = {rot, 0}
	softkey_box.material        = MakeMaterial(nil, {0, 0, 0, 255})
	softkey_box.parent_element  = skbParent.name
	softkey_box.element_params  = {skbParam}
	softkey_box.controllers     = {{"parameter_compare_with_number",0, 1}}
	return softkey_box	
end



function mfd_texture_box (UL_X,UL_Y,W,H, texture_size_x, texture_size_y)
local ux = UL_X / texture_size_x
local uy = UL_Y / texture_size_y
local w  = W / texture_size_x
local h  = H / texture_size_y
return {{ux	    ,uy},
		{ux + w ,uy},
		{ux + w ,uy + h},
		{ux	 	,uy + h}}
end
 
function create_mfd_tex(mfd_material, UL_X,UL_Y,DR_X,DR_Y, sale,CENTER_X,CENTER_Y)

if sale == nil then
	sale = 1.4
end

local mils_per_pixel =  sale/1024
local W 	   		 = DR_X - UL_X
local H 	   		 = DR_Y - UL_Y
local cx		     = (UL_X + 0.5 * W)
local cy		     = (UL_Y + 0.5 * H)

local CENTER_X 		 = CENTER_X or cx
local CENTER_Y 		 = CENTER_Y or cy
local dcx 		 	 = mils_per_pixel * (CENTER_X - cx)
local dcy 		     = mils_per_pixel * (CENTER_Y - cy)

local half_x 		 = 0.47 * W * mils_per_pixel
local half_y 		 = 0.49 * H * mils_per_pixel


local object = CreateElement "ceTexPoly"
	  object.material =  mfd_material
 	  object.vertices =  {{-half_x - dcx, half_y + dcy},
						  { half_x - dcx, half_y + dcy},
						  { half_x - dcx,-half_y + dcy},
						  {-half_x - dcx,-half_y + dcy}}
	  object.tex_coords = mfd_texture_box(UL_X,UL_Y,W,H, 2048, 2048)
	  object.indices	  = box_indices
	  return object
end

function create_mfd_VELVEC(mfd_material, UL_X,UL_Y,DR_X,DR_Y, sale,CENTER_X,CENTER_Y)

if sale == nil then
	sale = 1.4
end

local mils_per_pixel =  sale/2048
local W 	   		 = DR_X - UL_X
local H 	   		 = DR_Y - UL_Y
local cx		     = (UL_X + 0.5 * W)
local cy		     = (UL_Y + 0.5 * H)

local CENTER_X 		 = CENTER_X or cx
local CENTER_Y 		 = CENTER_Y or cy
local dcx 		 	 = mils_per_pixel * (CENTER_X - cx)
local dcy 		     = mils_per_pixel * (CENTER_Y - cy)

local half_x 		 = 0.47 * W * mils_per_pixel
local half_y 		 = 0.49 * H * mils_per_pixel


local object = CreateElement "ceTexPoly"
	  object.material =  mfd_material
 	  object.vertices =  {{-half_x - dcx, half_y + dcy},
						  { half_x - dcx, half_y + dcy},
						  { half_x - dcx,-half_y + dcy},
						  {-half_x - dcx,-half_y + dcy}}
	  object.tex_coords = mfd_texture_box(UL_X,UL_Y,W,H, 384, 256)
	  object.indices	  = box_indices
	  return object
end


function create_mfd_tex_3k(mfd_material, UL_X,UL_Y,DR_X,DR_Y, sale,CENTER_X,CENTER_Y)

if sale == nil then
	sale = 1.25
end

local mils_per_pixel =  sale/1500
local W 	   		 = DR_X - UL_X
local H 	   		 = DR_Y - UL_Y
local cx		     = (UL_X + 0.5 * W)
local cy		     = (UL_Y + 0.5 * H)

local CENTER_X 		 = CENTER_X or cx
local CENTER_Y 		 = CENTER_Y or cy
local dcx 		 	 = mils_per_pixel * (CENTER_X - cx)
local dcy 		     = mils_per_pixel * (CENTER_Y - cy)

local half_x 		 = 0.47 * W * mils_per_pixel
local half_y 		 = 0.49 * H * mils_per_pixel


local object = CreateElement "ceTexPoly"
	  object.material =  mfd_material
 	  object.vertices =  {{-half_x - dcx, half_y + dcy},
						  { half_x - dcx, half_y + dcy},
						  { half_x - dcx,-half_y + dcy},
						  {-half_x - dcx,-half_y + dcy}}
	  object.tex_coords = mfd_texture_box(UL_X,UL_Y,W,H, 3000, 3000)
	  object.indices	  = box_indices
	  return object
end

function create_mfd_tex_3300(mfd_material, UL_X,UL_Y,DR_X,DR_Y, sale,CENTER_X,CENTER_Y)

if sale == nil then
	sale = 1.25
end

local mils_per_pixel =  sale/1536
local W 	   		 = DR_X - UL_X
local H 	   		 = DR_Y - UL_Y
local cx		     = (UL_X + 0.5 * W)
local cy		     = (UL_Y + 0.5 * H)

local CENTER_X 		 = CENTER_X or cx
local CENTER_Y 		 = CENTER_Y or cy
local dcx 		 	 = mils_per_pixel * (CENTER_X - cx)
local dcy 		     = mils_per_pixel * (CENTER_Y - cy)

local half_x 		 = 0.47 * W * mils_per_pixel
local half_y 		 = 0.49 * H * mils_per_pixel


local object = CreateElement "ceTexPoly"
	  object.material =  mfd_material
 	  object.vertices =  {{-half_x - dcx, half_y + dcy},
						  { half_x - dcx, half_y + dcy},
						  { half_x - dcx,-half_y + dcy},
						  {-half_x - dcx,-half_y + dcy}}
	  object.tex_coords = mfd_texture_box(UL_X,UL_Y,W,H, 3072, 1920)
	  object.indices	  = box_indices
	  return object
end

function create_hdg_textr_box(vth_hdg_material, UL_X,UL_Y,DR_X,DR_Y,scale, CENTER_X,CENTER_Y)

if scale == nil then
	scale = 1.4
end

local mils_per_pixel =  scale/4096

local W 	   		 = DR_X - UL_X
local H 	   		 = DR_Y - UL_Y
local cx		     = (UL_X + 0.5 * W)
local cy		     = (UL_Y + 0.5 * H)

local CENTER_X 		 = CENTER_X or cx
local CENTER_Y 		 = CENTER_Y or cy
local dcx 		 	 = mils_per_pixel * (CENTER_X - cx)
local dcy 		     = mils_per_pixel * (CENTER_Y - cy)

local half_x 		 = 0.5 * W * mils_per_pixel
local half_y 		 = 0.5 * H * mils_per_pixel


local object = CreateElement "ceTexPoly"
	  object.material =  vth_hdg_material
 	  object.vertices =  {{-half_x - dcx, half_y + dcy},
						  { half_x - dcx, half_y + dcy},
						  { half_x - dcx,-half_y + dcy},
						  {-half_x - dcx,-half_y + dcy}}
	  object.tex_coords = mfd_texture_box(UL_X,UL_Y,W,H, 4096,64)
	  object.indices	  = box_indices
	  return object
end

function create_mfd_tex_sq(mfd_material, UL_X,UL_Y,DR_X,DR_Y, sale,CENTER_X,CENTER_Y)

if sale == nil then
	sale = 1.4
end

local mils_per_pixel =  sale/1024
local W 	   		 = DR_X - UL_X
local H 	   		 = DR_Y - UL_Y
local cx		     = (UL_X + 0.5 * W)
local cy		     = (UL_Y + 0.5 * H)

local CENTER_X 		 = CENTER_X or cx
local CENTER_Y 		 = CENTER_Y or cy
local dcx 		 	 = mils_per_pixel * (CENTER_X - cx)
local dcy 		     = mils_per_pixel * (CENTER_Y - cy)

local half_x 		 = 0.5 * W * mils_per_pixel
local half_y 		 = 0.5 * H * mils_per_pixel


local object = CreateElement "ceTexPoly"
	  object.material =  mfd_material
 	  object.vertices =  {{-half_x - dcx, half_y + dcy},
						  { half_x - dcx, half_y + dcy},
						  { half_x - dcx,-half_y + dcy},
						  {-half_x - dcx,-half_y + dcy}}
	  object.tex_coords = mfd_texture_box(UL_X,UL_Y,W,H,2048,2048)
	  object.indices	  = box_indices
	  return object
end

function create_hdg_text_d(UL_X,UL_Y,DR_X,DR_Y, CENTER_X,CENTER_Y)
local mils_per_pixel =  2.2/1024

local W 	   		 = DR_X - UL_X
local H 	   		 = DR_Y - UL_Y
local cx		     = (UL_X + 0.5 * W)
local cy		     = (UL_Y + 0.5 * H)

local CENTER_X 		 = CENTER_X or cx
local CENTER_Y 		 = CENTER_Y or cy
local dcx 		 	 = mils_per_pixel * (CENTER_X - cx)
local dcy 		     = mils_per_pixel * (CENTER_Y - cy)

local half_x 		 = 0.5 * W * mils_per_pixel
local half_y 		 = 0.5 * H * mils_per_pixel
local object = CreateElement "ceTexPoly"
	  object.material =  MFD_RPM_DIGIT_D
 	  object.vertices =  {{-half_x - dcx, half_y + dcy},
						  { half_x - dcx, half_y + dcy},
						  { half_x - dcx,-half_y + dcy},
						  {-half_x - dcx,-half_y + dcy}}
	  object.tex_coords = mfd_texture_box(UL_X,UL_Y,W,H, 31, 324)
	  object.indices	  = box_indices
	  return object
end


function create_hdg_text_dark(UL_X,UL_Y,DR_X,DR_Y, CENTER_X,CENTER_Y)
local mils_per_pixel =  2.2/1024

local W 	   		 = DR_X - UL_X
local H 	   		 = DR_Y - UL_Y
local cx		     = (UL_X + 0.5 * W)
local cy		     = (UL_Y + 0.5 * H)

local CENTER_X 		 = CENTER_X or cx
local CENTER_Y 		 = CENTER_Y or cy
local dcx 		 	 = mils_per_pixel * (CENTER_X - cx)
local dcy 		     = mils_per_pixel * (CENTER_Y - cy)

local half_x 		 = 0.5 * W * mils_per_pixel
local half_y 		 = 0.5 * H * mils_per_pixel
local object = CreateElement "ceTexPoly"
	  object.material =  MFD_RPM_DIGIT_DARK
 	  object.vertices =  {{-half_x - dcx, half_y + dcy},
						  { half_x - dcx, half_y + dcy},
						  { half_x - dcx,-half_y + dcy},
						  {-half_x - dcx,-half_y + dcy}}
	  object.tex_coords = mfd_texture_box(UL_X,UL_Y,W,H, 31, 324)
	  object.indices	  = box_indices
	  return object
end


function MFD_vert_gen(width, height)
    return {{(0 - width) / 2 / default_MFD_x , (0 + height) / 2 / default_MFD_y},
    {(0 + width) / 2 / default_MFD_x , (0 + height) / 2 / default_MFD_y},
    {(0 + width) / 2 / default_MFD_x , (0 - height) / 2 / default_MFD_y},
    {(0 - width) / 2 / default_MFD_x , (0 - height) / 2 / default_MFD_y},}
end

function MFD_duo_vert_gen(width, total_height, not_include_height)
    return {
        {(0 - width) / 2 / default_MFD_x , (0 + total_height) / 2 / default_MFD_y},
        {(0 + width) / 2 / default_MFD_x , (0 + total_height) / 2 / default_MFD_y},
        {(0 + width) / 2 / default_MFD_x , (0 + not_include_height) / 2 / default_MFD_y},
        {(0 - width) / 2 / default_MFD_x , (0 + not_include_height) / 2 / default_MFD_y},
        {(0 + width) / 2 / default_MFD_x , (0 - not_include_height) / 2 / default_MFD_y},
        {(0 - width) / 2 / default_MFD_x , (0 - not_include_height) / 2 / default_MFD_y},
        {(0 + width) / 2 / default_MFD_x , (0 - total_height) / 2 / default_MFD_y},
        {(0 - width) / 2 / default_MFD_x , (0 - total_height) / 2 / default_MFD_y},
    }
end

function tex_coord_gen(x_dis,y_dis,width,height,size_X,size_Y)
    return {{x_dis / size_X , y_dis / size_Y},
			{(x_dis + width) / size_X , y_dis / size_Y},
			{(x_dis + width) / size_X , (y_dis + height) / size_Y},
			{x_dis / size_X , (y_dis + height) / size_Y},}
end

function mirror_tex_coord_gen(x_dis,y_dis,width,height,size_X,size_Y)
    return {{(x_dis + width) / size_X , y_dis / size_Y},
			{x_dis / size_X , y_dis / size_Y},
			{x_dis / size_X , (y_dis + height) / size_Y},
			{(x_dis + width) / size_X , (y_dis + height) / size_Y},}
end

function AddElement(object)
	object.use_mipfilter    = true
	object.additive_alpha   = false
	object.change_opacity	 = false
	object.h_clip_relation  = h_clip_relations.compare
	object.level			= MFD_DEFAULT_LEVEL
    Add(object)
end

function AddElement2(object)
	object.use_mipfilter    = true
	object.additive_alpha   = false
	object.change_opacity	 = false
	-- object.h_clip_relation  = h_clip_relations.compare
	-- object.level			= MFD_DEFAULT_LEVEL
    Add(object)
end

function AddElement3(object)
	object.use_mipfilter    = true
	object.additive_alpha   = false
	object.change_opacity	 = false
	object.h_clip_relation  = h_clip_relations.NULL
	object.level			= MFD_DEFAULT_LEVEL
    Add(object)
end

function create_line(PosX, PosY, lLenght, lwidth, parent, material, vertices)
	vmaterial =  materials["MWHITE"]
	if material ~= nil then
		vmaterial =  materials[material]
	end
	vvertices = {{0, 0}, {lLenght,0}}
	if material ~= nil then
		vvertices = vertices
	end	
	line_object				 = CreateElement "ceSimpleLineObject"
	line_object.name		 = create_guid_string()
	line_object.material	 = vmaterial
	line_object.width		 = lwidth
	line_object.vertices	 =  vvertices
	line_object.init_pos     = {PosX, PosY}
	line_object.parent_element	= parent.name
	-- AddElement(line_object)
	return line_object
end

function create_rect(xpos, ypos, bw, bh, Border, parent, material)
	local rec_parent       		= CreateElement "ceSimple"
	rec_parent.name				= create_guid_string()
	rec_parent.init_pos       	= {xpos, ypos}
	rec_parent.parent_element	= parent.name
	
	local  rect_top_line 		= create_line(0 ,0 , bw * 2, Border, rec_parent, material)
	rect_top_line.init_pos 		= {-bw,bh}
	AddElement(rect_top_line)

	local  rect_bottom_line = Copy(rect_top_line)
	rect_bottom_line.init_pos 	= {-bw, -bh}
	AddElement(rect_bottom_line)

	local  rect_left_line 		= create_line(Border ,0 , Border, bh , rec_parent, material)
	rect_left_line.init_pos 	= {-bw +(Border ) - 0.005, 0}
	AddElement(rect_left_line)

	local  rect_right_line = Copy(rect_left_line)
	rect_right_line.init_pos 	= { bw -(Border ) , 0}
	AddElement(rect_right_line)
	
	return rec_parent
end


function AddCircle(xpos, ypos, radius, border, fill, parent_element, color)
	if border <=0 then
		border = 1
	end
	if color == nil then
		color =  "DBG_GREEN"
	end
	for i=1, border do
		    RWR_circle_i 				= CreateElement "ceMeshPoly"
			RWR_circle_i.name 			= create_guid_string()
			RWR_circle_i.primitivetype 	= "triangles"
			RWR_circle_i.init_pos       = {xpos, ypos}
			if fill == true then
				set_circle	(RWR_circle_i, radius + 0.0020 )
			else
				set_circle	(RWR_circle_i, radius + 0.0020, radius - 0.0020, 360, 36)
			end
			RWR_circle_i.material 		= color
			RWR_circle_i.parent_element = parent_element
			-- AddElement(RWR_circle_i)
			radius = radius + 0.001
	end
	

	return RWR_circle_i
end

function AddCircle_b(xpos, ypos, radius, border, fill, parent_element, color)

	local rec_parent       		= CreateElement "ceSimple"
	rec_parent.name				= create_guid_string()
	rec_parent.init_pos       	= {xpos, ypos}
	rec_parent.parent_element	= parent_element
	-- AddElement(rec_parent)
	
	if border <=0 then
		border = 1
	end
	if color == nil then
		color =  "DBG_GREEN"
	end
	for i=1, border do
		    RWR_circle_i 				= CreateElement "ceMeshPoly"
			RWR_circle_i.name 			= create_guid_string()
			RWR_circle_i.primitivetype 	= "triangles"
			RWR_circle_i.init_pos       = {0 , 0}
			if fill == true then
				set_circle	(RWR_circle_i, radius + 0.0020 )
			else
				set_circle	(RWR_circle_i, radius + 0.0020, radius - 0.0020, 360, 36)
			end
			RWR_circle_i.material 		= color
			RWR_circle_i.parent_element = rec_parent.name
			AddElement(RWR_circle_i)
			radius = radius + 0.001
	end
	

	return rec_parent
end

function add_text(text, posx, posy, pparent, font_mat, stringdefs, valign)

	local rec_parent       		= CreateElement "ceSimple"
	rec_parent.name				= create_guid_string()
	rec_parent.init_pos       	= {posx, posy}
	if pparent ~= nil then
		rec_parent.parent_element	= pparent.name
	end
	AddElement(rec_parent)
	-------------------
	if valign == nil then
		valign = "CenterCenter"
	end
	vfont_mat = fonts["FONT_GREEN"]
	if font_mat ~= nil then
		vfont_mat = fonts[font_mat]
	end
	if stringdefs == nil then
		stringdefs = mfd_strdefs_text
	end		
	-------------------
	if text ~= nil then
		local parent          = CreateElement "ceStringPoly"
		parent.name           = create_guid_string()
		parent.material       = vfont_mat
		parent.init_pos       = {0, 0}
		parent.stringdefs     = stringdefs
		parent.alignment	  = valign
		parent.value  	      = text
		parent.parent_element = rec_parent.name
		AddElement(parent)
		parent.level          = MFD_DEFAULT_LEVEL  
	end
	-------------------
	return rec_parent
end

function add_text_with_brightness(text, posx, posy, pparent, font_mat, stringdefs, valign)

	local rec_parent       		= CreateElement "ceSimple"
	rec_parent.name				= create_guid_string()
	rec_parent.init_pos       	= {posx, posy}
	if pparent ~= nil then
		rec_parent.parent_element	= pparent.name
	end
	AddElement(rec_parent)
	-------------------
	if valign == nil then
		valign = "CenterCenter"
	end
	vfont_mat = fonts["FONT_GREEN"]
	if font_mat ~= nil then
		vfont_mat = fonts[font_mat]
	end
	if stringdefs == nil then
		stringdefs = mfd_strdefs_text
	end		
	-------------------
	if text ~= nil then
		local parent          = CreateElement "ceStringPoly"
		parent.name           = create_guid_string()
		parent.material       = vfont_mat
		parent.init_pos       = {0, 0}
		parent.stringdefs     = stringdefs
		parent.alignment	  = valign
		parent.value  	      = text
		parent.parent_element = rec_parent.name
		parent.element_params  = {"LD_BRIGHTNESS"}
		parent.controllers	 = {JAS_Bright[1],JAS_Bright[2],JAS_Bright[3],JAS_Bright[4],JAS_Bright[5],JAS_Bright[6],JAS_Bright[7],JAS_Bright[8],JAS_Bright[9],JAS_Bright[10],JAS_Bright[11],JAS_Bright[12],JAS_Bright[13],JAS_Bright[14],JAS_Bright[15], JAS_Bright[16],JAS_Bright[17],JAS_Bright[18],JAS_Bright[19],JAS_Bright[20]}
		AddElement(parent)
		parent.level          = MFD_DEFAULT_LEVEL  
	end
	-------------------
	return rec_parent
end





function add_text_param(posx, posy, element_parm, tformat, pparent, stringdefs, font_mat, talignment)
	if tformat == nil then
		tformat = "%.0f"
	end
	if talignment == nil then
		talignment = "CenterCenter"
	end
	vfont_mat = fonts["FONT_GREEN"]
	if font_mat ~= nil then
		vfont_mat = fonts[font_mat]
	end	
	if stringdefs == nil then
		stringdefs = mfd_strdefs_text
	end	
	
	local parent          = CreateElement "ceStringPoly"
	parent.name           = create_guid_string()
	parent.material       = vfont_mat
	parent.init_pos       = {posx, posy}
	parent.stringdefs     = stringdefs
	parent.alignment	  = talignment
	if pparent ~= nil then
		parent.parent_element = pparent.name
	end
	parent.formats           = {tformat} 
	parent.element_params    = {element_parm,"%s"}
	parent.controllers       = {{"text_using_parameter",0},}
	AddElement(parent)
	parent.level          = MFD_DEFAULT_LEVEL  
	-------------------
	return parent
end

function green_text_param_with_brightness(posx, posy, element_parm, tformat, pparent, stringdefs, font_mat, talignment)
	if tformat == nil then
		tformat = "%.0f"
	end
	if talignment == nil then
		talignment = "CenterCenter"
	end
	vfont_mat = fonts["FONT_GREEN"]
	if font_mat ~= nil then
		vfont_mat = fonts[font_mat]
	end	
	if stringdefs == nil then
		stringdefs = mfd_strdefs_text
	end	
	
	local parent          = CreateElement "ceStringPoly"
	parent.name           = create_guid_string()
	parent.material       = vfont_mat
	parent.init_pos       = {posx, posy}
	parent.stringdefs     = stringdefs
	parent.alignment	  = talignment
	if pparent ~= nil then
		parent.parent_element = pparent.name
	end
	parent.formats           = {tformat} 
	parent.element_params    = {"LD_BRIGHTNESS", element_parm,"%s"}
	parent.controllers       = {Green_Bright[1],Green_Bright[2],Green_Bright[3],Green_Bright[4],Green_Bright[5],Green_Bright[6],Green_Bright[7],Green_Bright[8],Green_Bright[9],Green_Bright[10],Green_Bright[11],Green_Bright[12],Green_Bright[13],Green_Bright[14],Green_Bright[15], Green_Bright[16],Green_Bright[17],Green_Bright[18],Green_Bright[19],Green_Bright[20] ,{"text_using_parameter",1},}
	AddElement(parent)
	parent.level          = MFD_DEFAULT_LEVEL  
	-------------------
	return parent
end

function green_text_param_with_cd_brightness(posx, posy, element_parm, tformat, pparent, stringdefs, font_mat, talignment)
	if tformat == nil then
		tformat = "%.0f"
	end
	if talignment == nil then
		talignment = "CenterCenter"
	end
	vfont_mat = fonts["FONT_GREEN"]
	if font_mat ~= nil then
		vfont_mat = fonts[font_mat]
	end	
	if stringdefs == nil then
		stringdefs = mfd_strdefs_text
	end	
	
	local parent          = CreateElement "ceStringPoly"
	parent.name           = create_guid_string()
	parent.material       = vfont_mat
	parent.init_pos       = {posx, posy}
	parent.stringdefs     = stringdefs
	parent.alignment	  = talignment
	if pparent ~= nil then
		parent.parent_element = pparent.name
	end
	parent.formats           = {tformat} 
	parent.element_params    = {"CD_BRIGHTNESS", element_parm,"%s"}
	parent.controllers       = {Green_Bright[1],Green_Bright[2],Green_Bright[3],Green_Bright[4],Green_Bright[5],Green_Bright[6],Green_Bright[7],Green_Bright[8],Green_Bright[9],Green_Bright[10],Green_Bright[11],Green_Bright[12],Green_Bright[13],Green_Bright[14],Green_Bright[15], Green_Bright[16],Green_Bright[17],Green_Bright[18],Green_Bright[19],Green_Bright[20] ,{"text_using_parameter",1},}
	AddElement(parent)
	parent.level          = MFD_DEFAULT_LEVEL  
	-------------------
	return parent
end

function blue_text_param_with_cd_brightness(posx, posy, element_parm, tformat, pparent, stringdefs, font_mat, talignment)
	if tformat == nil then
		tformat = "%.0f"
	end
	if talignment == nil then
		talignment = "CenterCenter"
	end
	vfont_mat = fonts["FONT_GREEN"]
	if font_mat ~= nil then
		vfont_mat = fonts[font_mat]
	end	
	if stringdefs == nil then
		stringdefs = mfd_strdefs_text
	end	
	
	local parent          = CreateElement "ceStringPoly"
	parent.name           = create_guid_string()
	parent.material       = vfont_mat
	parent.init_pos       = {posx, posy}
	parent.stringdefs     = stringdefs
	parent.alignment	  = talignment
	if pparent ~= nil then
		parent.parent_element = pparent.name
	end
	parent.formats           = {tformat} 
	parent.element_params    = {"CD_BRIGHTNESS", element_parm,"%s"}
	parent.controllers       = {Brightness_blue[1],Brightness_blue[2],Brightness_blue[3],Brightness_blue[4],Brightness_blue[5],Brightness_blue[6],Brightness_blue[7],Brightness_blue[8],Brightness_blue[9],Brightness_blue[10],Brightness_blue[11],Brightness_blue[12],Brightness_blue[13],Brightness_blue[14],Brightness_blue[15], Brightness_blue[16],Brightness_blue[17],Brightness_blue[18],Brightness_blue[19],Brightness_blue[20] ,{"text_using_parameter",1},}
	AddElement(parent)
	parent.level          = MFD_DEFAULT_LEVEL  
	-------------------
	return parent
end


function orange_text_param_with_cd_brightness(posx, posy, element_parm, tformat, pparent, stringdefs, font_mat, talignment)
	if tformat == nil then
		tformat = "%.0f"
	end
	if talignment == nil then
		talignment = "CenterCenter"
	end
	vfont_mat = fonts["FONT_GREEN"]
	if font_mat ~= nil then
		vfont_mat = fonts[font_mat]
	end	
	if stringdefs == nil then
		stringdefs = mfd_strdefs_text
	end	
	
	local parent          = CreateElement "ceStringPoly"
	parent.name           = create_guid_string()
	parent.material       = vfont_mat
	parent.init_pos       = {posx, posy}
	parent.stringdefs     = stringdefs
	parent.alignment	  = talignment
	if pparent ~= nil then
		parent.parent_element = pparent.name
	end
	parent.formats           = {tformat} 
	parent.element_params    = {"CD_BRIGHTNESS", element_parm,"%s"}
	parent.controllers       = {Contact_Orange[1],Contact_Orange[2],Contact_Orange[3],Contact_Orange[4],Contact_Orange[5],Contact_Orange[6],Contact_Orange[7],Contact_Orange[8],Contact_Orange[9],Contact_Orange[10],Contact_Orange[11],Contact_Orange[12],Contact_Orange[13],Contact_Orange[14],Contact_Orange[15], Contact_Orange[16],Contact_Orange[17],Contact_Orange[18],Contact_Orange[19],Contact_Orange[20], {"text_using_parameter",1},}
	AddElement(parent)
	parent.level          = MFD_DEFAULT_LEVEL  
	-------------------
	return parent
end


function green_text_param_with_rd_brightness(posx, posy, element_parm, tformat, pparent, stringdefs, font_mat, talignment)
	if tformat == nil then
		tformat = "%.0f"
	end
	if talignment == nil then
		talignment = "CenterCenter"
	end
	vfont_mat = fonts["FONT_GREEN"]
	if font_mat ~= nil then
		vfont_mat = fonts[font_mat]
	end	
	if stringdefs == nil then
		stringdefs = mfd_strdefs_text
	end	
	
	local parent          = CreateElement "ceStringPoly"
	parent.name           = create_guid_string()
	parent.material       = vfont_mat
	parent.init_pos       = {posx, posy}
	parent.stringdefs     = stringdefs
	parent.alignment	  = talignment
	if pparent ~= nil then
		parent.parent_element = pparent.name
	end
	parent.formats           = {tformat} 
	parent.element_params    = {"RD_BRIGHTNESS", element_parm,"%s"}
	parent.controllers       = {Green_Bright[1],Green_Bright[2],Green_Bright[3],Green_Bright[4],Green_Bright[5],Green_Bright[6],Green_Bright[7],Green_Bright[8],Green_Bright[9],Green_Bright[10],Green_Bright[11],Green_Bright[12],Green_Bright[13],Green_Bright[14],Green_Bright[15], Green_Bright[16],Green_Bright[17],Green_Bright[18],Green_Bright[19],Green_Bright[20] ,{"text_using_parameter",1},}
	AddElement(parent)
	parent.level          = MFD_DEFAULT_LEVEL  
	-------------------
	return parent
end

function white_text_param_with_brightness(posx, posy, element_parm, tformat, pparent, stringdefs, font_mat, talignment)
	if tformat == nil then
		tformat = "%.0f"
	end
	if talignment == nil then
		talignment = "CenterCenter"
	end
	vfont_mat = fonts["FONT_GREEN"]
	if font_mat ~= nil then
		vfont_mat = fonts[font_mat]
	end	
	if stringdefs == nil then
		stringdefs = mfd_strdefs_text
	end	
	
	local parent          = CreateElement "ceStringPoly"
	parent.name           = create_guid_string()
	parent.material       = vfont_mat
	parent.init_pos       = {posx, posy}
	parent.stringdefs     = stringdefs
	parent.alignment	  = talignment
	if pparent ~= nil then
		parent.parent_element = pparent.name
	end
	parent.formats           = {tformat} 
	parent.element_params    = {"LD_BRIGHTNESS", element_parm,"%s"}
	parent.controllers       = {JAS_Bright[1],JAS_Bright[2],JAS_Bright[3],JAS_Bright[4],JAS_Bright[5],JAS_Bright[6],JAS_Bright[7],JAS_Bright[8],JAS_Bright[9],JAS_Bright[10],JAS_Bright[11],JAS_Bright[12],JAS_Bright[13],JAS_Bright[14],JAS_Bright[15], JAS_Bright[16],JAS_Bright[17],JAS_Bright[18],JAS_Bright[19],JAS_Bright[20] ,{"text_using_parameter",1},}
	AddElement(parent)
	parent.level          = MFD_DEFAULT_LEVEL  
	-------------------
	return parent
end

function white_text_param_with_CD_brightness(posx, posy, element_parm, tformat, pparent, stringdefs, font_mat, talignment)
	if tformat == nil then
		tformat = "%.0f"
	end
	if talignment == nil then
		talignment = "CenterCenter"
	end
	vfont_mat = fonts["FONT_GREEN"]
	if font_mat ~= nil then
		vfont_mat = fonts[font_mat]
	end	
	if stringdefs == nil then
		stringdefs = mfd_strdefs_text
	end	
	
	local parent          = CreateElement "ceStringPoly"
	parent.name           = create_guid_string()
	parent.material       = vfont_mat
	parent.init_pos       = {posx, posy}
	parent.stringdefs     = stringdefs
	parent.alignment	  = talignment
	if pparent ~= nil then
		parent.parent_element = pparent.name
	end
	parent.formats           = {tformat} 
	parent.element_params    = {"CD_BRIGHTNESS", element_parm,"%s"}
	parent.controllers       = {JAS_Bright[1],JAS_Bright[2],JAS_Bright[3],JAS_Bright[4],JAS_Bright[5],JAS_Bright[6],JAS_Bright[7],JAS_Bright[8],JAS_Bright[9],JAS_Bright[10],JAS_Bright[11],JAS_Bright[12],JAS_Bright[13],JAS_Bright[14],JAS_Bright[15], JAS_Bright[16],JAS_Bright[17],JAS_Bright[18],JAS_Bright[19],JAS_Bright[20] ,{"text_using_parameter",1},}
	AddElement(parent)
	parent.level          = MFD_DEFAULT_LEVEL  
	-------------------
	return parent
end

function add_text_with_CD_brightness(text, posx, posy, pparent, font_mat, stringdefs, valign)

	local rec_parent       		= CreateElement "ceSimple"
	rec_parent.name				= create_guid_string()
	rec_parent.init_pos       	= {posx, posy}
	if pparent ~= nil then
		rec_parent.parent_element	= pparent.name
	end
	AddElement(rec_parent)
	-------------------
	if valign == nil then
		valign = "CenterCenter"
	end
	vfont_mat = fonts["FONT_GREEN"]
	if font_mat ~= nil then
		vfont_mat = fonts[font_mat]
	end
	if stringdefs == nil then
		stringdefs = mfd_strdefs_text
	end		
	-------------------
	if text ~= nil then
		local parent          = CreateElement "ceStringPoly"
		parent.name           = create_guid_string()
		parent.material       = vfont_mat
		parent.init_pos       = {0, 0}
		parent.stringdefs     = stringdefs
		parent.alignment	  = valign
		parent.value  	      = text
		parent.parent_element = rec_parent.name
		parent.element_params  = {"CD_BRIGHTNESS"}
		parent.controllers	 = {JAS_Bright[1],JAS_Bright[2],JAS_Bright[3],JAS_Bright[4],JAS_Bright[5],JAS_Bright[6],JAS_Bright[7],JAS_Bright[8],JAS_Bright[9],JAS_Bright[10],JAS_Bright[11],JAS_Bright[12],JAS_Bright[13],JAS_Bright[14],JAS_Bright[15], JAS_Bright[16],JAS_Bright[17],JAS_Bright[18],JAS_Bright[19],JAS_Bright[20]}
		AddElement(parent)
		parent.level          = MFD_DEFAULT_LEVEL  
	end
	-------------------
	return rec_parent
end


function AddRWRElement(object)
	object.use_mipfilter    = true
	object.additive_alpha   = false
	object.change_opacity	 = false

    if (object.h_clip_relation == nil) then
        object.h_clip_relation = h_clip_relations.COMPARE
    end 
    
    if (object.level == nil) or (object.level < MFD_DEFAULT_LEVEL) then
        object.level        = MFD_DEFAULT_LEVEL
    end
	
    Add(object)
end

function AddCompass(parent_element, element_params, scale, vypos)
	local lstringdefs = {0.006 ,0.002}
	local dstringdefs = {0.0042,0.0015}
	aspect = 0.9
	if vypos == nil then
		vypos =  0
	end
	mfd_tsd_compass_base 				= CreateElement "ceSimple"
	mfd_tsd_compass_base.init_pos		= {0,0}
	mfd_tsd_compass_base.name			= create_guid_string()
	mfd_tsd_compass_base.parent_element	= parent_element.name
	-- mfd_tsd_compass.element_params 	= {element_params}
	-- mfd_tsd_compass.controllers		= {{"rotate_using_parameter" ,0, math.rad(1)}, } 	
	AddElement(mfd_tsd_compass_base)	

	local xpos       = 0
	local ypos       = 0

	local TST  		 = MakeMaterial(nil,{0, 255, 0,255})
	local SHOW_MASKS = false		 
				 
	local aspect       = GetAspect()  -- GetHalfHeight()/GetHalfWidth()

	nav_total_field_of_view 				= CreateElement "ceMeshPoly"
	nav_total_field_of_view.name 			= create_guid_string()
	nav_total_field_of_view.primitivetype 	= "triangles"
	nav_total_field_of_view.vertices	    = { {-aspect , aspect }, { aspect,aspect}, { aspect,-aspect}, {-aspect,-aspect}, }
	nav_total_field_of_view.indices			= {0, 1, 2, 0, 2, 3}
	nav_total_field_of_view.init_pos		= {0, 0, 0}
	nav_total_field_of_view.material		= TST
	nav_total_field_of_view.h_clip_relation = h_clip_relations.REWRITE_LEVEL
	nav_total_field_of_view.level			= MFD_DEFAULT_LEVEL   + 1
	nav_total_field_of_view.change_opacity	= false
	nav_total_field_of_view.collimated 		= false
	nav_total_field_of_view.parent_element	= mfd_tsd_compass_base.name
	nav_total_field_of_view.isvisible		= SHOW_MASKS
	Add(nav_total_field_of_view)

	mfd_base_clip 					= CreateElement "ceMeshPoly"
	mfd_base_clip.name 				=  create_guid_string()
	mfd_base_clip.primitivetype 	= "triangles"
	mfd_base_clip.vertices	   	 	= { {-aspect , aspect }, { aspect,aspect}, { aspect ,-aspect}, {-aspect ,-aspect}, }
	mfd_base_clip.indices			= {0, 1, 2, 0, 2, 3}
	mfd_base_clip.init_pos			= {0, 0, 0}
	mfd_base_clip.material			= TST
	mfd_base_clip.h_clip_relation   = h_clip_relations.INCREASE_IF_LEVEL 
	mfd_base_clip.level  		 	= MFD_DEFAULT_LEVEL   + 1
	mfd_base_clip.change_opacity	= false
	mfd_base_clip.collimated 		= false
	mfd_base_clip.isvisible			= SHOW_MASKS
	mfd_base_clip.parent_element	= mfd_tsd_compass_base.name
	Add(mfd_base_clip)	

	mfd_tsd_compass 				= CreateElement "ceSimple"
	mfd_tsd_compass.init_pos		= {0, vypos}
	mfd_tsd_compass.name			= create_guid_string()
	mfd_tsd_compass.parent_element	= mfd_tsd_compass_base.name
	mfd_tsd_compass.element_params 	= {element_params}
	mfd_tsd_compass.h_clip_relation = h_clip_relations.INCREASE_IF_LEVEL 
	mfd_tsd_compass.level  		 	= MFD_DEFAULT_LEVEL   + 2
	mfd_tsd_compass.controllers		= {{"rotate_using_parameter" ,0, math.rad(1)}, } 	
	AddElement(mfd_tsd_compass)		
	
	AddCircleClip2(0, 0, scale/1.57, 9, mfd_tsd_compass.name, false , "DGREEN" )
	-- AddCircleClip(0, 0, scale/3.15, 9, mfd_tsd_compass.name, false, "DGREEN" )

	
	return mfd_tsd_compass
end

function AddCircleClip2(xpos, ypos, radius, border, parent_element, fill, color)
	vmaterial =  materials["MWHITE"]
	if border <=0 then
		border = 1
	end
	if color ~= nil then
		vmaterial =  materials[color]
	end
	for i=1, border do
		RWR_circle_i 				= CreateElement "ceMeshPoly"
		RWR_circle_i.name 			= create_guid_string()
		RWR_circle_i.primitivetype 	= "triangles"
		RWR_circle_i.init_pos       = {xpos, ypos}
		RWR_circle_i.element_params    = {"LD_BRIGHTNESS"}
		RWR_circle_i.controllers       = {{"opacity_using_parameter", 0}}	
		RWR_circle_i.h_clip_relation   = h_clip_relations.INCREASE_IF_LEVEL 
		RWR_circle_i.level  		 	  = MFD_DEFAULT_LEVEL  + 2
		if fill == true then
			set_circle	(RWR_circle_i, radius + 0.0020 )
		else
			set_circle	(RWR_circle_i, radius + 0.0020, radius - 0.0020, 360, 36)
		end
		RWR_circle_i.material 		= vmaterial
		if parent_element ~= nil then
			RWR_circle_i.parent_element = parent_element
		end
		AddElement(RWR_circle_i)
		radius = radius + 0.001
	end
	-- return RWR_circle_i
end

function textParamWithOpacity(posx, posy, brightnessparam, element_parm2, tformat, pparent, stringdefs, font_mat, talignment)
	if tformat == nil then
		tformat = "%.0f"
	end
	if talignment == nil then
		talignment = "CenterCenter"
	end
	vfont_mat = fonts["FONT_GREEN"]
	if font_mat ~= nil then
		vfont_mat = fonts[font_mat]
	end	
	if stringdefs == nil then
		stringdefs = mfd_strdefs_text
	end	
	
	local parent          = CreateElement "ceStringPoly"
	parent.name           = create_guid_string()
	parent.material       = vfont_mat
	parent.init_pos       = {posx, posy}
	parent.stringdefs     = stringdefs
	parent.alignment	  = talignment
	if pparent ~= nil then
		parent.parent_element = pparent.name
	end
	parent.formats           = {tformat} 
	parent.element_params    = {brightnessparam, element_parm2,"%s"}
	parent.controllers       = {{"opacity_using_parameter", 0} ,{"text_using_parameter",1},}
	parent.level          = MFD_DEFAULT_LEVEL  
	AddElement(parent)
	-------------------
	return parent
end

function add_text_with_opacity(text, posx, posy,brightnessparam, pparent, font_mat, stringdefs, valign)

	local rec_parent       		= CreateElement "ceSimple"
	rec_parent.name				= create_guid_string()
	rec_parent.init_pos       	= {posx, posy}
	if pparent ~= nil then
		rec_parent.parent_element	= pparent.name
	end
	AddElement(rec_parent)
	-------------------
	if valign == nil then
		valign = "CenterCenter"
	end
	vfont_mat = fonts["FONT_GREEN"]
	if font_mat ~= nil then
		vfont_mat = fonts[font_mat]
	end
	if stringdefs == nil then
		stringdefs = mfd_strdefs_text
	end		
	-------------------
	if text ~= nil then
		local parent          = CreateElement "ceStringPoly"
		parent.name           = create_guid_string()
		parent.material       = vfont_mat
		parent.init_pos       = {0, 0}
		parent.stringdefs     = stringdefs
		parent.alignment	  = valign
		parent.value  	      = text
		parent.parent_element = rec_parent.name
		parent.element_params    = {brightnessparam}
		parent.controllers       = {{"opacity_using_parameter", 0}}


		AddElement(parent)
		parent.level          = MFD_DEFAULT_LEVEL  
	end
	-------------------
	return rec_parent
end



function MakeDial(Xpos, YPos, outer_radius, inner_radius, startpoint, endpoint, line_thickness, has_inner,
				segmentcount, dial_param, needle_param, max_value, cmaterial , parent, material)

	local OuterDial = CreateElement "ceMeshPoly"
	OuterDial.name 				= create_guid_string()
	OuterDial.primitivetype 	= "triangles"
	OuterDial.init_pos			= {Xpos, YPos}
	OuterDial.init_rot			= {180 + startpoint, 0}
	OuterDial.material 			= cmaterial
	OuterDial.parent_element	= parent
	OuterDial.element_params	= {dial_param}
	OuterDial.controllers		= { {"parameter_compare_with_number",0, 1}}
	set_circle(OuterDial, outer_radius, outer_radius - line_thickness, endpoint - startpoint, segmentcount)
	AddElement(OuterDial)
	
	if has_inner == true then
		local InnerDial				= CreateElement "ceMeshPoly"
		InnerDial.name 				= create_guid_string()
		InnerDial.primitivetype 	= "triangles"
		InnerDial.init_pos			= {0, 0}
		InnerDial.init_rot			= {0, 0}
		InnerDial.material 			= cmaterial
		InnerDial.parent_element	= OuterDial.name
		set_circle(InnerDial, inner_radius, inner_radius - line_thickness, endpoint - startpoint, segmentcount)
		AddElement(InnerDial)
	end

	
	for i = 0, max_value, 1 do
		DialGrayBackground = CreateElement "ceMeshPoly"			-- needed for opacity againist bright background
		DialGrayBackground.name 			= create_guid_string()
		DialGrayBackground.primitivetype 	= "triangles"
		DialGrayBackground.init_pos			= {0, 0}
		DialGrayBackground.init_rot			= {0, 0}
		DialGrayBackground.material 		= material
		DialGrayBackground.parent_element	= OuterDial.name
		DialGrayBackground.element_params	= {needle_param}
		DialGrayBackground.controllers		= {{"parameter_in_range",0, i -1 , i}}
		set_circle(DialGrayBackground, outer_radius - line_thickness, inner_radius, (endpoint - startpoint) / max_value * i, segmentcount)
		AddElement(DialGrayBackground)

		DialGray = CreateElement "ceMeshPoly"
		DialGray.name 			= create_guid_string()
		DialGray.primitivetype 	= "triangles"
		DialGray.init_pos       = {0, 0}
		DialGray.init_rot       = {0, 0}
		DialGray.material 		= materials["GRAY"]
		DialGray.parent_element = OuterDial.name
		DialGray.element_params = {needle_param, "LD_BRIGHTNESS"}
		DialGray.controllers    = { {"parameter_in_range",0, i -1 , i}, {"opacity_using_parameter", 1, 1 }}
		set_circle(DialGray, outer_radius - line_thickness, inner_radius, (endpoint - startpoint) / max_value * i, segmentcount)
		AddElement(DialGray)
	end
end