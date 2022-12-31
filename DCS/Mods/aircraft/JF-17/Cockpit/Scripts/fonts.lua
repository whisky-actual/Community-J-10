
fontdescription = {}
fontdescription["font_general_loc"]    = fontdescription_cmn["font_general_loc"]

-- HUD
HUD_X_PIXEL = 88 -- pi
HUD_Y_PIXEL = 144

fontdescription["font_HUD"] = {
    texture     = IND_TEX_PATH .. "font_HUD.dds",
    size        = {10, 10},
    resolution  = {1440, 1440},
    default     = {HUD_X_PIXEL, HUD_Y_PIXEL},
    chars       = {
        {32, HUD_X_PIXEL, HUD_Y_PIXEL}, -- [space]
        {48, HUD_X_PIXEL, HUD_Y_PIXEL}, -- 0
        {49, HUD_X_PIXEL, HUD_Y_PIXEL}, -- 1
        {50, HUD_X_PIXEL, HUD_Y_PIXEL}, -- 2
        {51, HUD_X_PIXEL, HUD_Y_PIXEL}, -- 3
        {52, HUD_X_PIXEL, HUD_Y_PIXEL}, -- 4
        {53, HUD_X_PIXEL, HUD_Y_PIXEL}, -- 5
        {54, HUD_X_PIXEL, HUD_Y_PIXEL}, -- 6
        {55, HUD_X_PIXEL, HUD_Y_PIXEL}, -- 7
        {56, HUD_X_PIXEL, HUD_Y_PIXEL}, -- 8
        {57, HUD_X_PIXEL, HUD_Y_PIXEL}, -- 9

        {64, HUD_X_PIXEL, HUD_Y_PIXEL}, -- Alpha -> @

        -- upper
        {65, HUD_X_PIXEL, HUD_Y_PIXEL}, -- A bold
        {66, HUD_X_PIXEL, HUD_Y_PIXEL}, -- B bold
        {67, HUD_X_PIXEL, HUD_Y_PIXEL}, -- C bold
        {68, HUD_X_PIXEL, HUD_Y_PIXEL}, -- D bold
        {69, HUD_X_PIXEL, HUD_Y_PIXEL}, -- E bold
        {70, HUD_X_PIXEL, HUD_Y_PIXEL}, -- F bold
        {71, HUD_X_PIXEL, HUD_Y_PIXEL}, -- G bold
        {72, HUD_X_PIXEL, HUD_Y_PIXEL}, -- H bold
        {73, HUD_X_PIXEL, HUD_Y_PIXEL}, -- I bold
        {74, HUD_X_PIXEL, HUD_Y_PIXEL}, -- J bold
        {75, HUD_X_PIXEL, HUD_Y_PIXEL}, -- K bold
        {76, HUD_X_PIXEL, HUD_Y_PIXEL}, -- L bold
        {77, HUD_X_PIXEL, HUD_Y_PIXEL}, -- M bold
        {78, HUD_X_PIXEL, HUD_Y_PIXEL}, -- N bold
        {79, HUD_X_PIXEL, HUD_Y_PIXEL}, -- O bold
        {80, HUD_X_PIXEL, HUD_Y_PIXEL}, -- P bold
        {81, HUD_X_PIXEL, HUD_Y_PIXEL}, -- Q bold
        {82, HUD_X_PIXEL, HUD_Y_PIXEL}, -- R bold
        {83, HUD_X_PIXEL, HUD_Y_PIXEL}, -- S bold
        {84, HUD_X_PIXEL, HUD_Y_PIXEL}, -- T bold
        {85, HUD_X_PIXEL, HUD_Y_PIXEL}, -- U bold
        {86, HUD_X_PIXEL, HUD_Y_PIXEL}, -- V bold
        {87, HUD_X_PIXEL, HUD_Y_PIXEL}, -- W bold
        {88, HUD_X_PIXEL, HUD_Y_PIXEL}, -- X bold
        {89, HUD_X_PIXEL, HUD_Y_PIXEL}, -- Y bold
        {90, HUD_X_PIXEL, HUD_Y_PIXEL}, -- Z bold

        -- normal replaced by lower case
        --[[
        {65+32, HUD_X_PIXEL, HUD_Y_PIXEL}, -- A -> a
        {66+32, HUD_X_PIXEL, HUD_Y_PIXEL}, -- B
        {67+32, HUD_X_PIXEL, HUD_Y_PIXEL}, -- C
        {68+32, HUD_X_PIXEL, HUD_Y_PIXEL}, -- D
        {69+32, HUD_X_PIXEL, HUD_Y_PIXEL}, -- E
        {70+32, HUD_X_PIXEL, HUD_Y_PIXEL}, -- F
        {71+32, HUD_X_PIXEL, HUD_Y_PIXEL}, -- G
        {72+32, HUD_X_PIXEL, HUD_Y_PIXEL}, -- H
        {73+32, HUD_X_PIXEL, HUD_Y_PIXEL}, -- I
        {74+32, HUD_X_PIXEL, HUD_Y_PIXEL}, -- J
        {75+32, HUD_X_PIXEL, HUD_Y_PIXEL}, -- K
        {76+32, HUD_X_PIXEL, HUD_Y_PIXEL}, -- L
        {77+32, HUD_X_PIXEL, HUD_Y_PIXEL}, -- M
        {78+32, HUD_X_PIXEL, HUD_Y_PIXEL}, -- N
        {79+32, HUD_X_PIXEL, HUD_Y_PIXEL}, -- O
        {80+32, HUD_X_PIXEL, HUD_Y_PIXEL}, -- P
        {81+32, HUD_X_PIXEL, HUD_Y_PIXEL}, -- Q
        {82+32, HUD_X_PIXEL, HUD_Y_PIXEL}, -- R
        {83+32, HUD_X_PIXEL, HUD_Y_PIXEL}, -- S
        {84+32, HUD_X_PIXEL, HUD_Y_PIXEL}, -- T
        {85+32, HUD_X_PIXEL, HUD_Y_PIXEL}, -- U
        {86+32, HUD_X_PIXEL, HUD_Y_PIXEL}, -- V
        {87+32, HUD_X_PIXEL, HUD_Y_PIXEL}, -- W
        {88+32, HUD_X_PIXEL, HUD_Y_PIXEL}, -- X
        {89+32, HUD_X_PIXEL, HUD_Y_PIXEL}, -- Y
        {90+32, HUD_X_PIXEL, HUD_Y_PIXEL}, -- Z -> z
        ]]

        {42, HUD_X_PIXEL, HUD_Y_PIXEL}, -- *
        {43, HUD_X_PIXEL, HUD_Y_PIXEL}, -- +
        {45, HUD_X_PIXEL, HUD_Y_PIXEL}, -- -
        {61, HUD_X_PIXEL, HUD_Y_PIXEL}, -- =
        {47, HUD_X_PIXEL, HUD_Y_PIXEL}, -- /
        {92, HUD_X_PIXEL, HUD_Y_PIXEL}, -- \
        {40, HUD_X_PIXEL, HUD_Y_PIXEL}, -- (
        {41, HUD_X_PIXEL, HUD_Y_PIXEL}, -- )
        {91, HUD_X_PIXEL, HUD_Y_PIXEL}, -- [
        {93, HUD_X_PIXEL, HUD_Y_PIXEL}, -- ]
        {123, HUD_X_PIXEL, HUD_Y_PIXEL}, -- {
        {125, HUD_X_PIXEL, HUD_Y_PIXEL}, -- }
        {60, HUD_X_PIXEL, HUD_Y_PIXEL}, -- <
        {62, HUD_X_PIXEL, HUD_Y_PIXEL}, -- >
        {63, HUD_X_PIXEL, HUD_Y_PIXEL}, -- ?
        {124, HUD_X_PIXEL, HUD_Y_PIXEL}, -- |
        {33, HUD_X_PIXEL, HUD_Y_PIXEL}, -- !
        {35, HUD_X_PIXEL, HUD_Y_PIXEL}, -- #
        {37, HUD_X_PIXEL, HUD_Y_PIXEL}, -- %
        {94, HUD_X_PIXEL, HUD_Y_PIXEL}, -- ^
        {38, HUD_X_PIXEL, HUD_Y_PIXEL}, -- &
        {96, HUD_X_PIXEL, HUD_Y_PIXEL}, -- o -- degree, change its ascii code to 96 ', original 248 (out of index)
        {46, HUD_X_PIXEL, HUD_Y_PIXEL}, -- .
        {58, HUD_X_PIXEL, HUD_Y_PIXEL}, -- :
        {44, HUD_X_PIXEL, HUD_Y_PIXEL}, -- ,
        {95, HUD_X_PIXEL, HUD_Y_PIXEL}, -- _

        {127, HUD_X_PIXEL, HUD_Y_PIXEL}, -- delta, use last ascii code
    }
}

-- MFCDs
MFCD_X_PIXEL =  88
MFCD_Y_PIXEL =  144

fontdescription["font_MFCD"] = {
    texture     = IND_TEX_PATH .. "font_MFCD.dds",
    size        = {10, 10},
    resolution  = {1440, 1440},
    default     = {MFCD_X_PIXEL, MFCD_Y_PIXEL},
    chars       = {
        {32, MFCD_X_PIXEL, MFCD_Y_PIXEL}, -- space
        {48, MFCD_X_PIXEL, MFCD_Y_PIXEL}, -- 0
        {49, MFCD_X_PIXEL, MFCD_Y_PIXEL}, -- 1
        {50, MFCD_X_PIXEL, MFCD_Y_PIXEL}, -- 2
        {51, MFCD_X_PIXEL, MFCD_Y_PIXEL}, -- 3
        {52, MFCD_X_PIXEL, MFCD_Y_PIXEL}, -- 4
        {53, MFCD_X_PIXEL, MFCD_Y_PIXEL}, -- 5
        {54, MFCD_X_PIXEL, MFCD_Y_PIXEL}, -- 6
        {55, MFCD_X_PIXEL, MFCD_Y_PIXEL}, -- 7
        {56, MFCD_X_PIXEL, MFCD_Y_PIXEL}, -- 8
        {57, MFCD_X_PIXEL, MFCD_Y_PIXEL}, -- 9

        {64, MFCD_X_PIXEL, MFCD_Y_PIXEL}, -- Alpha -> @

        {65, MFCD_X_PIXEL, MFCD_Y_PIXEL}, -- A
        {66, MFCD_X_PIXEL, MFCD_Y_PIXEL}, -- B
        {67, MFCD_X_PIXEL, MFCD_Y_PIXEL}, -- C
        {68, MFCD_X_PIXEL, MFCD_Y_PIXEL}, -- D
        {69, MFCD_X_PIXEL, MFCD_Y_PIXEL}, -- E
        {70, MFCD_X_PIXEL, MFCD_Y_PIXEL}, -- F
        {71, MFCD_X_PIXEL, MFCD_Y_PIXEL}, -- G
        {72, MFCD_X_PIXEL, MFCD_Y_PIXEL}, -- H
        {73, MFCD_X_PIXEL, MFCD_Y_PIXEL}, -- I
        {74, MFCD_X_PIXEL, MFCD_Y_PIXEL}, -- J
        {75, MFCD_X_PIXEL, MFCD_Y_PIXEL}, -- K
        {76, MFCD_X_PIXEL, MFCD_Y_PIXEL}, -- L
        {77, MFCD_X_PIXEL, MFCD_Y_PIXEL}, -- M
        {78, MFCD_X_PIXEL, MFCD_Y_PIXEL}, -- N
        {79, MFCD_X_PIXEL, MFCD_Y_PIXEL}, -- O
        {80, MFCD_X_PIXEL, MFCD_Y_PIXEL}, -- P
        {81, MFCD_X_PIXEL, MFCD_Y_PIXEL}, -- Q
        {82, MFCD_X_PIXEL, MFCD_Y_PIXEL}, -- R
        {83, MFCD_X_PIXEL, MFCD_Y_PIXEL}, -- S
        {84, MFCD_X_PIXEL, MFCD_Y_PIXEL}, -- T
        {85, MFCD_X_PIXEL, MFCD_Y_PIXEL}, -- U
        {86, MFCD_X_PIXEL, MFCD_Y_PIXEL}, -- V
        {87, MFCD_X_PIXEL, MFCD_Y_PIXEL}, -- W
        {88, MFCD_X_PIXEL, MFCD_Y_PIXEL}, -- X
        {89, MFCD_X_PIXEL, MFCD_Y_PIXEL}, -- Y
        {90, MFCD_X_PIXEL, MFCD_Y_PIXEL}, -- Z

        {42, MFCD_X_PIXEL, MFCD_Y_PIXEL}, -- *
        {43, MFCD_X_PIXEL, MFCD_Y_PIXEL}, -- +
        {45, MFCD_X_PIXEL, MFCD_Y_PIXEL}, -- -
        {47, MFCD_X_PIXEL, MFCD_Y_PIXEL}, -- /
        {92, MFCD_X_PIXEL, MFCD_Y_PIXEL}, -- \
        {40, MFCD_X_PIXEL, MFCD_Y_PIXEL}, -- (
        {41, MFCD_X_PIXEL, MFCD_Y_PIXEL}, -- )
        {91, MFCD_X_PIXEL, MFCD_Y_PIXEL}, -- [
        {93, MFCD_X_PIXEL, MFCD_Y_PIXEL}, -- ]
        {123, MFCD_X_PIXEL, MFCD_Y_PIXEL}, -- {
        {125, MFCD_X_PIXEL, MFCD_Y_PIXEL}, -- }
        {60, MFCD_X_PIXEL, MFCD_Y_PIXEL}, -- <
        {62, MFCD_X_PIXEL, MFCD_Y_PIXEL}, -- >
        {61, MFCD_X_PIXEL, MFCD_Y_PIXEL}, -- =
        {63, MFCD_X_PIXEL, MFCD_Y_PIXEL}, -- ?
        {124, MFCD_X_PIXEL, MFCD_Y_PIXEL}, -- |
        {33, MFCD_X_PIXEL, MFCD_Y_PIXEL}, -- !
        {35, MFCD_X_PIXEL, MFCD_Y_PIXEL}, -- #
        {37, MFCD_X_PIXEL, MFCD_Y_PIXEL}, -- %
        {94, MFCD_X_PIXEL, MFCD_Y_PIXEL}, -- ^
        {38, MFCD_X_PIXEL, MFCD_Y_PIXEL}, -- &
        {96, MFCD_X_PIXEL, MFCD_Y_PIXEL}, -- o -- degree, change its ascii code to 96 ', original 248 (out of index)
        {46, MFCD_X_PIXEL, MFCD_Y_PIXEL}, -- .
        {58, MFCD_X_PIXEL, MFCD_Y_PIXEL}, -- :
        {44, MFCD_X_PIXEL, MFCD_Y_PIXEL}, -- ,
        {126, MFCD_X_PIXEL, MFCD_Y_PIXEL}, -- cursor -> ~
        {95, MFCD_X_PIXEL, MFCD_Y_PIXEL}, -- _

        {39, MFCD_X_PIXEL, MFCD_Y_PIXEL}, -- '
        {34, MFCD_X_PIXEL, MFCD_Y_PIXEL}, -- "
        --{32, MFCD_X_PIXEL, MFCD_Y_PIXEL}, -- [space]

        {127, MFCD_X_PIXEL, MFCD_Y_PIXEL}, -- delta, use last ascii code
    }
}


fontdescription["font_MFCD_stroke"] = {
    texture     = IND_TEX_PATH .. "font_MFCD_BE.dds",
    size        = {10, 10},
    resolution  = {1440, 1440},
    default     = {MFCD_X_PIXEL, MFCD_Y_PIXEL},
    chars       = {
        {32, MFCD_X_PIXEL, MFCD_Y_PIXEL}, -- space
        {48, MFCD_X_PIXEL, MFCD_Y_PIXEL}, -- 0
        {49, MFCD_X_PIXEL, MFCD_Y_PIXEL}, -- 1
        {50, MFCD_X_PIXEL, MFCD_Y_PIXEL}, -- 2
        {51, MFCD_X_PIXEL, MFCD_Y_PIXEL}, -- 3
        {52, MFCD_X_PIXEL, MFCD_Y_PIXEL}, -- 4
        {53, MFCD_X_PIXEL, MFCD_Y_PIXEL}, -- 5
        {54, MFCD_X_PIXEL, MFCD_Y_PIXEL}, -- 6
        {55, MFCD_X_PIXEL, MFCD_Y_PIXEL}, -- 7
        {56, MFCD_X_PIXEL, MFCD_Y_PIXEL}, -- 8
        {57, MFCD_X_PIXEL, MFCD_Y_PIXEL}, -- 9

        {64, MFCD_X_PIXEL, MFCD_Y_PIXEL}, -- Alpha -> @

        {65, MFCD_X_PIXEL, MFCD_Y_PIXEL}, -- A
        {66, MFCD_X_PIXEL, MFCD_Y_PIXEL}, -- B
        {67, MFCD_X_PIXEL, MFCD_Y_PIXEL}, -- C
        {68, MFCD_X_PIXEL, MFCD_Y_PIXEL}, -- D
        {69, MFCD_X_PIXEL, MFCD_Y_PIXEL}, -- E
        {70, MFCD_X_PIXEL, MFCD_Y_PIXEL}, -- F
        {71, MFCD_X_PIXEL, MFCD_Y_PIXEL}, -- G
        {72, MFCD_X_PIXEL, MFCD_Y_PIXEL}, -- H
        {73, MFCD_X_PIXEL, MFCD_Y_PIXEL}, -- I
        {74, MFCD_X_PIXEL, MFCD_Y_PIXEL}, -- J
        {75, MFCD_X_PIXEL, MFCD_Y_PIXEL}, -- K
        {76, MFCD_X_PIXEL, MFCD_Y_PIXEL}, -- L
        {77, MFCD_X_PIXEL, MFCD_Y_PIXEL}, -- M
        {78, MFCD_X_PIXEL, MFCD_Y_PIXEL}, -- N
        {79, MFCD_X_PIXEL, MFCD_Y_PIXEL}, -- O
        {80, MFCD_X_PIXEL, MFCD_Y_PIXEL}, -- P
        {81, MFCD_X_PIXEL, MFCD_Y_PIXEL}, -- Q
        {82, MFCD_X_PIXEL, MFCD_Y_PIXEL}, -- R
        {83, MFCD_X_PIXEL, MFCD_Y_PIXEL}, -- S
        {84, MFCD_X_PIXEL, MFCD_Y_PIXEL}, -- T
        {85, MFCD_X_PIXEL, MFCD_Y_PIXEL}, -- U
        {86, MFCD_X_PIXEL, MFCD_Y_PIXEL}, -- V
        {87, MFCD_X_PIXEL, MFCD_Y_PIXEL}, -- W
        {88, MFCD_X_PIXEL, MFCD_Y_PIXEL}, -- X
        {89, MFCD_X_PIXEL, MFCD_Y_PIXEL}, -- Y
        {90, MFCD_X_PIXEL, MFCD_Y_PIXEL}, -- Z

        {42, MFCD_X_PIXEL, MFCD_Y_PIXEL}, -- *
        {43, MFCD_X_PIXEL, MFCD_Y_PIXEL}, -- +
        {45, MFCD_X_PIXEL, MFCD_Y_PIXEL}, -- -
        {47, MFCD_X_PIXEL, MFCD_Y_PIXEL}, -- /
        {92, MFCD_X_PIXEL, MFCD_Y_PIXEL}, -- \
        {40, MFCD_X_PIXEL, MFCD_Y_PIXEL}, -- (
        {41, MFCD_X_PIXEL, MFCD_Y_PIXEL}, -- )
        {91, MFCD_X_PIXEL, MFCD_Y_PIXEL}, -- [
        {93, MFCD_X_PIXEL, MFCD_Y_PIXEL}, -- ]
        {123, MFCD_X_PIXEL, MFCD_Y_PIXEL}, -- {
        {125, MFCD_X_PIXEL, MFCD_Y_PIXEL}, -- }
        {60, MFCD_X_PIXEL, MFCD_Y_PIXEL}, -- <
        {62, MFCD_X_PIXEL, MFCD_Y_PIXEL}, -- >
        {61, MFCD_X_PIXEL, MFCD_Y_PIXEL}, -- =
        {63, MFCD_X_PIXEL, MFCD_Y_PIXEL}, -- ?
        {124, MFCD_X_PIXEL, MFCD_Y_PIXEL}, -- |
        {33, MFCD_X_PIXEL, MFCD_Y_PIXEL}, -- !
        {35, MFCD_X_PIXEL, MFCD_Y_PIXEL}, -- #
        {37, MFCD_X_PIXEL, MFCD_Y_PIXEL}, -- %
        {94, MFCD_X_PIXEL, MFCD_Y_PIXEL}, -- ^
        {38, MFCD_X_PIXEL, MFCD_Y_PIXEL}, -- &
        {96, MFCD_X_PIXEL, MFCD_Y_PIXEL}, -- o -- degree, change its ascii code to 96 ', original 248 (out of index)
        {46, MFCD_X_PIXEL, MFCD_Y_PIXEL}, -- .
        {58, MFCD_X_PIXEL, MFCD_Y_PIXEL}, -- :
        {44, MFCD_X_PIXEL, MFCD_Y_PIXEL}, -- ,
        {126, MFCD_X_PIXEL, MFCD_Y_PIXEL}, -- cursor -> ~
        {95, MFCD_X_PIXEL, MFCD_Y_PIXEL}, -- _

        {39, MFCD_X_PIXEL, MFCD_Y_PIXEL}, -- '
        {34, MFCD_X_PIXEL, MFCD_Y_PIXEL}, -- "
        --{32, MFCD_X_PIXEL, MFCD_Y_PIXEL}, -- [space]

        {127, MFCD_X_PIXEL, MFCD_Y_PIXEL}, -- delta, use last ascii code
    }
}


MFCD_WPN_X_PIXEL =  52
MFCD_WPN_Y_PIXEL =  72

fontdescription["font_MFCD_wpn"] = {
    texture     = IND_TEX_PATH .. "font_MFCD_wpn.dds",
    size        = {8, 8},
    resolution  = {576, 576},
    default     = {MFCD_WPN_X_PIXEL, MFCD_WPN_Y_PIXEL},
    chars       = {
        {32, MFCD_WPN_X_PIXEL, MFCD_WPN_Y_PIXEL}, -- space
        {48, MFCD_WPN_X_PIXEL, MFCD_WPN_Y_PIXEL}, -- 0
        {49, MFCD_WPN_X_PIXEL, MFCD_WPN_Y_PIXEL}, -- 1
        {50, MFCD_WPN_X_PIXEL, MFCD_WPN_Y_PIXEL}, -- 2
        {51, MFCD_WPN_X_PIXEL, MFCD_WPN_Y_PIXEL}, -- 3
        {52, MFCD_WPN_X_PIXEL, MFCD_WPN_Y_PIXEL}, -- 4
        {53, MFCD_WPN_X_PIXEL, MFCD_WPN_Y_PIXEL}, -- 5
        {54, MFCD_WPN_X_PIXEL, MFCD_WPN_Y_PIXEL}, -- 6
        {55, MFCD_WPN_X_PIXEL, MFCD_WPN_Y_PIXEL}, -- 7
        {56, MFCD_WPN_X_PIXEL, MFCD_WPN_Y_PIXEL}, -- 8
        {57, MFCD_WPN_X_PIXEL, MFCD_WPN_Y_PIXEL}, -- 9

        {65, MFCD_WPN_X_PIXEL, MFCD_WPN_Y_PIXEL}, -- A
        {66, MFCD_WPN_X_PIXEL, MFCD_WPN_Y_PIXEL}, -- B
        {67, MFCD_WPN_X_PIXEL, MFCD_WPN_Y_PIXEL}, -- C
        {68, MFCD_WPN_X_PIXEL, MFCD_WPN_Y_PIXEL}, -- D
        {69, MFCD_WPN_X_PIXEL, MFCD_WPN_Y_PIXEL}, -- E
        {70, MFCD_WPN_X_PIXEL, MFCD_WPN_Y_PIXEL}, -- F
        {71, MFCD_WPN_X_PIXEL, MFCD_WPN_Y_PIXEL}, -- G
        {72, MFCD_WPN_X_PIXEL, MFCD_WPN_Y_PIXEL}, -- H
        {73, MFCD_WPN_X_PIXEL, MFCD_WPN_Y_PIXEL}, -- I
        {74, MFCD_WPN_X_PIXEL, MFCD_WPN_Y_PIXEL}, -- J
        {75, MFCD_WPN_X_PIXEL, MFCD_WPN_Y_PIXEL}, -- K
        {76, MFCD_WPN_X_PIXEL, MFCD_WPN_Y_PIXEL}, -- L
        {77, MFCD_WPN_X_PIXEL, MFCD_WPN_Y_PIXEL}, -- M
        {78, MFCD_WPN_X_PIXEL, MFCD_WPN_Y_PIXEL}, -- N
        {79, MFCD_WPN_X_PIXEL, MFCD_WPN_Y_PIXEL}, -- O
        {80, MFCD_WPN_X_PIXEL, MFCD_WPN_Y_PIXEL}, -- P
        {81, MFCD_WPN_X_PIXEL, MFCD_WPN_Y_PIXEL}, -- Q
        {82, MFCD_WPN_X_PIXEL, MFCD_WPN_Y_PIXEL}, -- R
        {83, MFCD_WPN_X_PIXEL, MFCD_WPN_Y_PIXEL}, -- S
        {84, MFCD_WPN_X_PIXEL, MFCD_WPN_Y_PIXEL}, -- T
        {85, MFCD_WPN_X_PIXEL, MFCD_WPN_Y_PIXEL}, -- U
        {86, MFCD_WPN_X_PIXEL, MFCD_WPN_Y_PIXEL}, -- V
        {87, MFCD_WPN_X_PIXEL, MFCD_WPN_Y_PIXEL}, -- W
        {88, MFCD_WPN_X_PIXEL, MFCD_WPN_Y_PIXEL}, -- X
        {89, MFCD_WPN_X_PIXEL, MFCD_WPN_Y_PIXEL}, -- Y
        {90, MFCD_WPN_X_PIXEL, MFCD_WPN_Y_PIXEL}, -- Z

        {46, MFCD_WPN_X_PIXEL, MFCD_WPN_Y_PIXEL}, -- .
    }
}


-- UFCP
UFCP_X_PIXEL = 80 -- pix
UFCP_Y_PIXEL = 144

fontdescription["font_UFCP"] = {
    texture     = IND_TEX_PATH .. "font_UFCP.dds",
    size        = {8, 8},
    resolution  = {1152, 1152},
    default     = {UFCP_X_PIXEL, UFCP_Y_PIXEL},
    chars       = {
        {32, UFCP_X_PIXEL, UFCP_Y_PIXEL}, -- [space]
        {48, UFCP_X_PIXEL, UFCP_Y_PIXEL}, -- 0
        {49, UFCP_X_PIXEL, UFCP_Y_PIXEL}, -- 1
        {50, UFCP_X_PIXEL, UFCP_Y_PIXEL}, -- 2
        {51, UFCP_X_PIXEL, UFCP_Y_PIXEL}, -- 3
        {52, UFCP_X_PIXEL, UFCP_Y_PIXEL}, -- 4
        {53, UFCP_X_PIXEL, UFCP_Y_PIXEL}, -- 5
        {54, UFCP_X_PIXEL, UFCP_Y_PIXEL}, -- 6
        {55, UFCP_X_PIXEL, UFCP_Y_PIXEL}, -- 7
        {56, UFCP_X_PIXEL, UFCP_Y_PIXEL}, -- 8
        {57, UFCP_X_PIXEL, UFCP_Y_PIXEL}, -- 9

        {65, UFCP_X_PIXEL, UFCP_Y_PIXEL}, -- A
        {66, UFCP_X_PIXEL, UFCP_Y_PIXEL}, -- B
        {67, UFCP_X_PIXEL, UFCP_Y_PIXEL}, -- C
        {68, UFCP_X_PIXEL, UFCP_Y_PIXEL}, -- D
        {69, UFCP_X_PIXEL, UFCP_Y_PIXEL}, -- E
        {70, UFCP_X_PIXEL, UFCP_Y_PIXEL}, -- F
        {71, UFCP_X_PIXEL, UFCP_Y_PIXEL}, -- G
        {72, UFCP_X_PIXEL, UFCP_Y_PIXEL}, -- H
        {73, UFCP_X_PIXEL, UFCP_Y_PIXEL}, -- I
        {74, UFCP_X_PIXEL, UFCP_Y_PIXEL}, -- J
        {75, UFCP_X_PIXEL, UFCP_Y_PIXEL}, -- K
        {76, UFCP_X_PIXEL, UFCP_Y_PIXEL}, -- L
        {77, UFCP_X_PIXEL, UFCP_Y_PIXEL}, -- M
        {78, UFCP_X_PIXEL, UFCP_Y_PIXEL}, -- N
        {79, UFCP_X_PIXEL, UFCP_Y_PIXEL}, -- O
        {80, UFCP_X_PIXEL, UFCP_Y_PIXEL}, -- P
        {81, UFCP_X_PIXEL, UFCP_Y_PIXEL}, -- Q
        {82, UFCP_X_PIXEL, UFCP_Y_PIXEL}, -- R
        {83, UFCP_X_PIXEL, UFCP_Y_PIXEL}, -- S
        {84, UFCP_X_PIXEL, UFCP_Y_PIXEL}, -- T
        {85, UFCP_X_PIXEL, UFCP_Y_PIXEL}, -- U
        {86, UFCP_X_PIXEL, UFCP_Y_PIXEL}, -- V
        {87, UFCP_X_PIXEL, UFCP_Y_PIXEL}, -- W
        {88, UFCP_X_PIXEL, UFCP_Y_PIXEL}, -- X
        {89, UFCP_X_PIXEL, UFCP_Y_PIXEL}, -- Y
        {90, UFCP_X_PIXEL, UFCP_Y_PIXEL}, -- Z

        {42, UFCP_X_PIXEL, UFCP_Y_PIXEL}, -- *
        {43, UFCP_X_PIXEL, UFCP_Y_PIXEL}, -- +
        {45, UFCP_X_PIXEL, UFCP_Y_PIXEL}, -- -
        {47, UFCP_X_PIXEL, UFCP_Y_PIXEL}, -- /
        {92, UFCP_X_PIXEL, UFCP_Y_PIXEL}, -- \
        {40, UFCP_X_PIXEL, UFCP_Y_PIXEL}, -- (
        {41, UFCP_X_PIXEL, UFCP_Y_PIXEL}, -- )
        {91, UFCP_X_PIXEL, UFCP_Y_PIXEL}, -- [
        {93, UFCP_X_PIXEL, UFCP_Y_PIXEL}, -- ]
        {123, UFCP_X_PIXEL, UFCP_Y_PIXEL}, -- {
        {125, UFCP_X_PIXEL, UFCP_Y_PIXEL}, -- }
        {60, UFCP_X_PIXEL, UFCP_Y_PIXEL}, -- <
        {62, UFCP_X_PIXEL, UFCP_Y_PIXEL}, -- >
        {61, UFCP_X_PIXEL, UFCP_Y_PIXEL}, -- =
        {63, UFCP_X_PIXEL, UFCP_Y_PIXEL}, -- ?
        {127, UFCP_X_PIXEL, UFCP_Y_PIXEL}, -- delta, use last ascii code
        {33, UFCP_X_PIXEL, UFCP_Y_PIXEL}, -- !
        {35, UFCP_X_PIXEL, UFCP_Y_PIXEL}, -- #
        {37, UFCP_X_PIXEL, UFCP_Y_PIXEL}, -- %
        {94, UFCP_X_PIXEL, UFCP_Y_PIXEL}, -- ^
        {38, UFCP_X_PIXEL, UFCP_Y_PIXEL}, -- &
        {96, UFCP_X_PIXEL, UFCP_Y_PIXEL}, -- o -- degree, change its ascii code to 96 ', original 248 (out of index)
        {46, UFCP_X_PIXEL, UFCP_Y_PIXEL}, -- .
        {58, UFCP_X_PIXEL, UFCP_Y_PIXEL}, -- :
        {44, UFCP_X_PIXEL, UFCP_Y_PIXEL}, -- ,
        {126, UFCP_X_PIXEL, UFCP_Y_PIXEL}, -- cursor -> ~
        {95, UFCP_X_PIXEL, UFCP_Y_PIXEL}, -- _
    }
}


-- RADIO
RADIO_X_PIXEL = 88 -- pi
RADIO_Y_PIXEL = 144

fontdescription["font_RADIO"] = {
    texture     = IND_TEX_PATH .. "font_RADIO.dds",
    size        = {10, 10},
    resolution  = {1440, 1440},
    default     = {RADIO_X_PIXEL, RADIO_Y_PIXEL},
    chars       = {
        {32, RADIO_X_PIXEL, RADIO_Y_PIXEL}, -- [space]
        {48, RADIO_X_PIXEL, RADIO_Y_PIXEL}, -- 0
        {49, RADIO_X_PIXEL, RADIO_Y_PIXEL}, -- 1
        {50, RADIO_X_PIXEL, RADIO_Y_PIXEL}, -- 2
        {51, RADIO_X_PIXEL, RADIO_Y_PIXEL}, -- 3
        {52, RADIO_X_PIXEL, RADIO_Y_PIXEL}, -- 4
        {53, RADIO_X_PIXEL, RADIO_Y_PIXEL}, -- 5
        {54, RADIO_X_PIXEL, RADIO_Y_PIXEL}, -- 6
        {55, RADIO_X_PIXEL, RADIO_Y_PIXEL}, -- 7
        {56, RADIO_X_PIXEL, RADIO_Y_PIXEL}, -- 8
        {57, RADIO_X_PIXEL, RADIO_Y_PIXEL}, -- 9

        -- upper
        {65, RADIO_X_PIXEL, RADIO_Y_PIXEL}, -- A bold
        {66, RADIO_X_PIXEL, RADIO_Y_PIXEL}, -- B bold
        {67, RADIO_X_PIXEL, RADIO_Y_PIXEL}, -- C bold
        {68, RADIO_X_PIXEL, RADIO_Y_PIXEL}, -- D bold
        {69, RADIO_X_PIXEL, RADIO_Y_PIXEL}, -- E bold
        {70, RADIO_X_PIXEL, RADIO_Y_PIXEL}, -- F bold
        {71, RADIO_X_PIXEL, RADIO_Y_PIXEL}, -- G bold
        {72, RADIO_X_PIXEL, RADIO_Y_PIXEL}, -- H bold
        {73, RADIO_X_PIXEL, RADIO_Y_PIXEL}, -- I bold
        {74, RADIO_X_PIXEL, RADIO_Y_PIXEL}, -- J bold
        {75, RADIO_X_PIXEL, RADIO_Y_PIXEL}, -- K bold
        {76, RADIO_X_PIXEL, RADIO_Y_PIXEL}, -- L bold
        {77, RADIO_X_PIXEL, RADIO_Y_PIXEL}, -- M bold
        {78, RADIO_X_PIXEL, RADIO_Y_PIXEL}, -- N bold
        {79, RADIO_X_PIXEL, RADIO_Y_PIXEL}, -- O bold
        {80, RADIO_X_PIXEL, RADIO_Y_PIXEL}, -- P bold
        {81, RADIO_X_PIXEL, RADIO_Y_PIXEL}, -- Q bold
        {82, RADIO_X_PIXEL, RADIO_Y_PIXEL}, -- R bold
        {83, RADIO_X_PIXEL, RADIO_Y_PIXEL}, -- S bold
        {84, RADIO_X_PIXEL, RADIO_Y_PIXEL}, -- T bold
        {85, RADIO_X_PIXEL, RADIO_Y_PIXEL}, -- U bold
        {86, RADIO_X_PIXEL, RADIO_Y_PIXEL}, -- V bold
        {87, RADIO_X_PIXEL, RADIO_Y_PIXEL}, -- W bold
        {88, RADIO_X_PIXEL, RADIO_Y_PIXEL}, -- X bold
        {89, RADIO_X_PIXEL, RADIO_Y_PIXEL}, -- Y bold
        {90, RADIO_X_PIXEL, RADIO_Y_PIXEL}, -- Z bold

        -- lower case
        {65+32, RADIO_X_PIXEL, RADIO_Y_PIXEL}, -- A -> a
        {66+32, RADIO_X_PIXEL, RADIO_Y_PIXEL}, -- B
        {67+32, RADIO_X_PIXEL, RADIO_Y_PIXEL}, -- C
        {68+32, RADIO_X_PIXEL, RADIO_Y_PIXEL}, -- D
        {69+32, RADIO_X_PIXEL, RADIO_Y_PIXEL}, -- E
        {70+32, RADIO_X_PIXEL, RADIO_Y_PIXEL}, -- F
        {71+32, RADIO_X_PIXEL, RADIO_Y_PIXEL}, -- G
        {72+32, RADIO_X_PIXEL, RADIO_Y_PIXEL}, -- H
        {73+32, RADIO_X_PIXEL, RADIO_Y_PIXEL}, -- I
        {74+32, RADIO_X_PIXEL, RADIO_Y_PIXEL}, -- J
        {75+32, RADIO_X_PIXEL, RADIO_Y_PIXEL}, -- K
        {76+32, RADIO_X_PIXEL, RADIO_Y_PIXEL}, -- L
        {77+32, RADIO_X_PIXEL, RADIO_Y_PIXEL}, -- M
        {78+32, RADIO_X_PIXEL, RADIO_Y_PIXEL}, -- N
        {79+32, RADIO_X_PIXEL, RADIO_Y_PIXEL}, -- O
        {80+32, RADIO_X_PIXEL, RADIO_Y_PIXEL}, -- P
        {81+32, RADIO_X_PIXEL, RADIO_Y_PIXEL}, -- Q
        {82+32, RADIO_X_PIXEL, RADIO_Y_PIXEL}, -- R
        {83+32, RADIO_X_PIXEL, RADIO_Y_PIXEL}, -- S
        {84+32, RADIO_X_PIXEL, RADIO_Y_PIXEL}, -- T
        {85+32, RADIO_X_PIXEL, RADIO_Y_PIXEL}, -- U
        {86+32, RADIO_X_PIXEL, RADIO_Y_PIXEL}, -- V
        {87+32, RADIO_X_PIXEL, RADIO_Y_PIXEL}, -- W
        {88+32, RADIO_X_PIXEL, RADIO_Y_PIXEL}, -- X
        {89+32, RADIO_X_PIXEL, RADIO_Y_PIXEL}, -- Y
        {90+32, RADIO_X_PIXEL, RADIO_Y_PIXEL}, -- Z -> z

        -- other
        {42, RADIO_X_PIXEL, RADIO_Y_PIXEL}, -- *
        {43, RADIO_X_PIXEL, RADIO_Y_PIXEL}, -- +
        {45, RADIO_X_PIXEL, RADIO_Y_PIXEL}, -- -
        {47, RADIO_X_PIXEL, RADIO_Y_PIXEL}, -- /
        {92, RADIO_X_PIXEL, RADIO_Y_PIXEL}, -- \
        {40, RADIO_X_PIXEL, RADIO_Y_PIXEL}, -- (
        {41, RADIO_X_PIXEL, RADIO_Y_PIXEL}, -- )
        {91, RADIO_X_PIXEL, RADIO_Y_PIXEL}, -- [
        {93, RADIO_X_PIXEL, RADIO_Y_PIXEL}, -- ]
        {123, RADIO_X_PIXEL, RADIO_Y_PIXEL}, -- {
        {125, RADIO_X_PIXEL, RADIO_Y_PIXEL}, -- }
        {60, RADIO_X_PIXEL, RADIO_Y_PIXEL}, -- <
        {62, RADIO_X_PIXEL, RADIO_Y_PIXEL}, -- >
        {61, RADIO_X_PIXEL, RADIO_Y_PIXEL}, -- =
        {63, RADIO_X_PIXEL, RADIO_Y_PIXEL}, -- ?
        {127, RADIO_X_PIXEL, RADIO_Y_PIXEL}, -- delta, use last ascii code
        {33, RADIO_X_PIXEL, RADIO_Y_PIXEL}, -- !
        {35, RADIO_X_PIXEL, RADIO_Y_PIXEL}, -- #
        {37, RADIO_X_PIXEL, RADIO_Y_PIXEL}, -- %
        {94, RADIO_X_PIXEL, RADIO_Y_PIXEL}, -- ^
        {38, RADIO_X_PIXEL, RADIO_Y_PIXEL}, -- &
        {96, RADIO_X_PIXEL, RADIO_Y_PIXEL}, -- o -- degree, change its ascii code to 96 ', original 248 (out of index)
        {46, RADIO_X_PIXEL, RADIO_Y_PIXEL}, -- .
        {58, RADIO_X_PIXEL, RADIO_Y_PIXEL}, -- :
        {44, RADIO_X_PIXEL, RADIO_Y_PIXEL}, -- ,
        {126, RADIO_X_PIXEL, RADIO_X_PIXEL}, -- cursor -> ~
        {95, RADIO_X_PIXEL, RADIO_Y_PIXEL}, -- _

        {31, RADIO_X_PIXEL, RADIO_Y_PIXEL}, -- ↑ large
        {30, RADIO_X_PIXEL, RADIO_Y_PIXEL}, -- ↑ med
        {29, RADIO_X_PIXEL, RADIO_Y_PIXEL}, -- ↑ small
        {28, RADIO_X_PIXEL, RADIO_Y_PIXEL}, -- ↓ large

    }
}


-- DIGITAL CLOCK
DC_X_PIXEL = 38
DC_Y_PIXEL = 65
fontdescription["font_CLOCK"] = {
    texture    = IND_TEX_PATH .. "font_Clock.tga",
    size       = {4, 4},
    resolution = {256, 256},
    default    = {DC_X_PIXEL, DC_Y_PIXEL},
    chars      = {
       {32, DC_X_PIXEL, DC_Y_PIXEL}, -- [space]
       {48, DC_X_PIXEL, DC_Y_PIXEL}, -- 0
       {49, DC_X_PIXEL, DC_Y_PIXEL}, -- 1
       {50, DC_X_PIXEL, DC_Y_PIXEL}, -- 2
       {51, DC_X_PIXEL, DC_Y_PIXEL}, -- 3
       {52, DC_X_PIXEL, DC_Y_PIXEL}, -- 4
       {53, DC_X_PIXEL, DC_Y_PIXEL}, -- 5
       {54, DC_X_PIXEL, DC_Y_PIXEL}, -- 6
       {55, DC_X_PIXEL, DC_Y_PIXEL}, -- 7
       {56, DC_X_PIXEL, DC_Y_PIXEL}, -- 8
       {57, DC_X_PIXEL, DC_Y_PIXEL}, -- 9
       {58,         12, DC_Y_PIXEL}, -- :
       {67, DC_X_PIXEL, DC_Y_PIXEL}, -- C
       {69, DC_X_PIXEL, DC_Y_PIXEL}, -- E
       {84, DC_X_PIXEL, DC_Y_PIXEL}, -- T
    }
}


-- Kneeboard
MFCD_X_PIXEL =  88
MFCD_Y_PIXEL =  144

fontdescription["font_Kneeboard"] = {
    texture     = IND_TEX_PATH .. "font_Kneeboard.dds",
    size        = {10, 10},
    resolution  = {1440, 1440},
    default     = {MFCD_X_PIXEL, MFCD_Y_PIXEL},
    chars       = {
        {32, MFCD_X_PIXEL, MFCD_Y_PIXEL}, -- space
        {48, MFCD_X_PIXEL, MFCD_Y_PIXEL}, -- 0
        {49, MFCD_X_PIXEL, MFCD_Y_PIXEL}, -- 1
        {50, MFCD_X_PIXEL, MFCD_Y_PIXEL}, -- 2
        {51, MFCD_X_PIXEL, MFCD_Y_PIXEL}, -- 3
        {52, MFCD_X_PIXEL, MFCD_Y_PIXEL}, -- 4
        {53, MFCD_X_PIXEL, MFCD_Y_PIXEL}, -- 5
        {54, MFCD_X_PIXEL, MFCD_Y_PIXEL}, -- 6
        {55, MFCD_X_PIXEL, MFCD_Y_PIXEL}, -- 7
        {56, MFCD_X_PIXEL, MFCD_Y_PIXEL}, -- 8
        {57, MFCD_X_PIXEL, MFCD_Y_PIXEL}, -- 9

        {64, MFCD_X_PIXEL, MFCD_Y_PIXEL}, -- Alpha -> @

        {65, MFCD_X_PIXEL, MFCD_Y_PIXEL}, -- A
        {66, MFCD_X_PIXEL, MFCD_Y_PIXEL}, -- B
        {67, MFCD_X_PIXEL, MFCD_Y_PIXEL}, -- C
        {68, MFCD_X_PIXEL, MFCD_Y_PIXEL}, -- D
        {69, MFCD_X_PIXEL, MFCD_Y_PIXEL}, -- E
        {70, MFCD_X_PIXEL, MFCD_Y_PIXEL}, -- F
        {71, MFCD_X_PIXEL, MFCD_Y_PIXEL}, -- G
        {72, MFCD_X_PIXEL, MFCD_Y_PIXEL}, -- H
        {73, MFCD_X_PIXEL, MFCD_Y_PIXEL}, -- I
        {74, MFCD_X_PIXEL, MFCD_Y_PIXEL}, -- J
        {75, MFCD_X_PIXEL, MFCD_Y_PIXEL}, -- K
        {76, MFCD_X_PIXEL, MFCD_Y_PIXEL}, -- L
        {77, MFCD_X_PIXEL, MFCD_Y_PIXEL}, -- M
        {78, MFCD_X_PIXEL, MFCD_Y_PIXEL}, -- N
        {79, MFCD_X_PIXEL, MFCD_Y_PIXEL}, -- O
        {80, MFCD_X_PIXEL, MFCD_Y_PIXEL}, -- P
        {81, MFCD_X_PIXEL, MFCD_Y_PIXEL}, -- Q
        {82, MFCD_X_PIXEL, MFCD_Y_PIXEL}, -- R
        {83, MFCD_X_PIXEL, MFCD_Y_PIXEL}, -- S
        {84, MFCD_X_PIXEL, MFCD_Y_PIXEL}, -- T
        {85, MFCD_X_PIXEL, MFCD_Y_PIXEL}, -- U
        {86, MFCD_X_PIXEL, MFCD_Y_PIXEL}, -- V
        {87, MFCD_X_PIXEL, MFCD_Y_PIXEL}, -- W
        {88, MFCD_X_PIXEL, MFCD_Y_PIXEL}, -- X
        {89, MFCD_X_PIXEL, MFCD_Y_PIXEL}, -- Y
        {90, MFCD_X_PIXEL, MFCD_Y_PIXEL}, -- Z

        {42, MFCD_X_PIXEL, MFCD_Y_PIXEL}, -- *
        {43, MFCD_X_PIXEL, MFCD_Y_PIXEL}, -- +
        {45, MFCD_X_PIXEL, MFCD_Y_PIXEL}, -- -
        {47, MFCD_X_PIXEL, MFCD_Y_PIXEL}, -- /
        {92, MFCD_X_PIXEL, MFCD_Y_PIXEL}, -- \
        {40, MFCD_X_PIXEL, MFCD_Y_PIXEL}, -- (
        {41, MFCD_X_PIXEL, MFCD_Y_PIXEL}, -- )
        {91, MFCD_X_PIXEL, MFCD_Y_PIXEL}, -- [
        {93, MFCD_X_PIXEL, MFCD_Y_PIXEL}, -- ]
        {123, MFCD_X_PIXEL, MFCD_Y_PIXEL}, -- {
        {125, MFCD_X_PIXEL, MFCD_Y_PIXEL}, -- }
        {60, MFCD_X_PIXEL, MFCD_Y_PIXEL}, -- <
        {62, MFCD_X_PIXEL, MFCD_Y_PIXEL}, -- >
        {61, MFCD_X_PIXEL, MFCD_Y_PIXEL}, -- =
        {63, MFCD_X_PIXEL, MFCD_Y_PIXEL}, -- ?
        {124, MFCD_X_PIXEL, MFCD_Y_PIXEL}, -- |
        {33, MFCD_X_PIXEL, MFCD_Y_PIXEL}, -- !
        {35, MFCD_X_PIXEL, MFCD_Y_PIXEL}, -- #
        {37, MFCD_X_PIXEL, MFCD_Y_PIXEL}, -- %
        {94, MFCD_X_PIXEL, MFCD_Y_PIXEL}, -- ^
        {38, MFCD_X_PIXEL, MFCD_Y_PIXEL}, -- &
        {96, MFCD_X_PIXEL, MFCD_Y_PIXEL}, -- o -- degree, change its ascii code to 96 ', original 248 (out of index)
        {46, MFCD_X_PIXEL, MFCD_Y_PIXEL}, -- .
        {58, MFCD_X_PIXEL, MFCD_Y_PIXEL}, -- :
        {44, MFCD_X_PIXEL, MFCD_Y_PIXEL}, -- ,
        {126, MFCD_X_PIXEL, MFCD_Y_PIXEL}, -- cursor -> ~
        {95, MFCD_X_PIXEL, MFCD_Y_PIXEL}, -- _

        {39, MFCD_X_PIXEL, MFCD_Y_PIXEL}, -- '
        {34, MFCD_X_PIXEL, MFCD_Y_PIXEL}, -- "
        --{32, MFCD_X_PIXEL, MFCD_Y_PIXEL}, -- [space]

        {127, MFCD_X_PIXEL, MFCD_Y_PIXEL}, -- delta, use last ascii code
    }
}
