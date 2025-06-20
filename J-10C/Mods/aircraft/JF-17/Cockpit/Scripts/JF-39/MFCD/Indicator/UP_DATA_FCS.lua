dofile(LockOn_Options.script_path .. "MFCD/MFCDs_defs.lua")

local page_root = create_page_root()


local MFCD_TEX_IND1 = "mfcd_tex_ind1"

local FCS_LEVEL = PAGE_LEVEL_DATA

local TEX_SIZE_X = 2048
local TEX_SIZE_Y = 2048


local fcs_bg_ac       = CreateElement "ceTexPoly"
fcs_bg_ac.material    = MFCD_TEX_IND1
fcs_bg_ac.tex_coords  = MFCD_tex_coord(830, 356, 816, 306, TEX_SIZE_X, TEX_SIZE_Y)
fcs_bg_ac.init_pos    = {0, 471.667/1000, 0}
fcs_bg_ac.vertices    = {{ 1360/2000,  510/2000},
                         { 1360/2000, -510/2000},
                         {-1360/2000, -510/2000},
                         {-1360/2000,  510/2000},}
fcs_bg_ac.indices     = DEF_BOX_INDICES
--fcs_bg_ac.h_clip_relation = h_clip_relations.COMPARE -- now compare with mask poly(set by .level)
fcs_bg_ac.level           = FCS_LEVEL
fcs_bg_ac.isdraw          = true
fcs_bg_ac.isvisible       = true
fcs_bg_ac.use_mipfilter   = true
fcs_bg_ac.additive_alpha  = true
AddToUpper(fcs_bg_ac)


local fcs_bg_tbl       = CreateElement "ceTexPoly"
fcs_bg_tbl.material    = MFCD_TEX_IND1
fcs_bg_tbl.tex_coords  = MFCD_tex_coord(598, 662, 882, 526, TEX_SIZE_X, TEX_SIZE_Y)
fcs_bg_tbl.init_pos    = {-1.667/1000, -341.667/1000, 0}
fcs_bg_tbl.vertices    = {{ 1470/2000,  876.667/2000},
                          { 1470/2000, -876.667/2000},
                          {-1470/2000, -876.667/2000},
                          {-1470/2000,  876.667/2000},}
fcs_bg_tbl.indices     = DEF_BOX_INDICES
--fcs_bg_tbl.h_clip_relation = h_clip_relations.COMPARE -- now compare with mask poly(set by .level)
fcs_bg_tbl.level           = FCS_LEVEL
fcs_bg_tbl.isdraw          = true
fcs_bg_tbl.isvisible       = true
fcs_bg_tbl.use_mipfilter   = true
fcs_bg_tbl.additive_alpha  = true
AddToUpper(fcs_bg_tbl)



local s_dl_fill       = CreateElement "ceTexPoly"
s_dl_fill.material    = MFCD_TEX_IND1
s_dl_fill.tex_coords  = MFCD_tex_coord(1912, 162, 64, 64, TEX_SIZE_X, TEX_SIZE_Y)
s_dl_fill.init_pos    = {76.667/1000, 666.667/1000, 0}
s_dl_fill.vertices    = {{ 106.667/2000,  106.667/2000},
                         { 106.667/2000, -106.667/2000},
                         {-106.667/2000, -106.667/2000},
                         {-106.667/2000,  106.667/2000},}
s_dl_fill.indices     = DEF_BOX_INDICES
--s_dl_fill.h_clip_relation = h_clip_relations.COMPARE -- now compare with mask poly(set by .level)
s_dl_fill.level           = FCS_LEVEL
s_dl_fill.isdraw          = true
s_dl_fill.isvisible       = true
s_dl_fill.use_mipfilter   = true
s_dl_fill.additive_alpha  = true
s_dl_fill.controllers     = {{"fcs_s_DL"}}
AddToUpper(s_dl_fill)

local s_p_fill       = CreateElement "ceTexPoly"
s_p_fill.material    = MFCD_TEX_IND1
s_p_fill.tex_coords  = MFCD_tex_coord(1912, 162, 64, 64, TEX_SIZE_X, TEX_SIZE_Y)
s_p_fill.init_pos    = {-76.667/1000, 666.667/1000, 0}
s_p_fill.vertices    = {{ 106.667/2000,  106.667/2000},
                        { 106.667/2000, -106.667/2000},
                        {-106.667/2000, -106.667/2000},
                        {-106.667/2000,  106.667/2000},}
s_p_fill.indices     = DEF_BOX_INDICES
--s_p_fill.h_clip_relation = h_clip_relations.COMPARE -- now compare with mask poly(set by .level)
s_p_fill.level           = FCS_LEVEL
s_p_fill.isdraw          = true
s_p_fill.isvisible       = true
s_p_fill.use_mipfilter   = true
s_p_fill.additive_alpha  = true
s_p_fill.controllers     = {{"fcs_s_P"}}
AddToUpper(s_p_fill)

local s_surf_lock_pos  = {
    {-580/1000, 526.667/1000},
    {-246.667/1000, 606.667/1000},
    {-480/1000, 580/1000},
    {-323.333/1000, 311.667/1000},
    
    { 580/1000, 526.667/1000},
    { 246.667/1000, 606.667/1000},
    { 480/1000, 580/1000},
    { 323.333/1000, 311.667/1000},
    
    { 0.00, 396.667/1000},
}
local s_surf_lock_ctrl = {
    {{"fcs_s_Ail_lock", 0}},
    {{"fcs_s_LEF_in_lock", 0}},
    {{"fcs_s_LEF_out_lock", 0}},
    {{"fcs_s_STAB_lock", 0}},
    {{"fcs_s_Ail_lock", 1}},
    {{"fcs_s_LEF_in_lock", 1}},
    {{"fcs_s_LEF_out_lock", 1}},
    {{"fcs_s_STAB_lock", 1}},
    {{"fcs_s_RUD_lock"}},
}
for k=1,9 do
    local s_surf_lock       = CreateElement "ceTexPoly"
    s_surf_lock.material    = MFCD_TEX_IND1
    s_surf_lock.tex_coords  = MFCD_tex_coord(1912, 86, 76, 76, TEX_SIZE_X, TEX_SIZE_Y)
    s_surf_lock.init_pos    = s_surf_lock_pos[k]
    s_surf_lock.vertices    = {{ 126.667/2000,  126.667/2000},
                               { 126.667/2000, -126.667/2000},
                               {-126.667/2000, -126.667/2000},
                               {-126.667/2000,  126.667/2000},}
    s_surf_lock.indices     = DEF_BOX_INDICES
    --s_surf_lock.h_clip_relation = h_clip_relations.COMPARE -- now compare with mask poly(set by .level)
    s_surf_lock.level           = FCS_LEVEL
    s_surf_lock.isdraw          = true
    s_surf_lock.isvisible       = true
    s_surf_lock.use_mipfilter   = true
    s_surf_lock.additive_alpha  = true
    s_surf_lock.controllers     = s_surf_lock_ctrl[k]
    AddToUpper(s_surf_lock)
    s_surf_lock = nil
end

local tbl_tr_cc_y = 33.333/1000 -- 表格顶部行y坐标 A B C D
local tbl_lc_rc_x = -435/1000   -- 表格左侧列x坐标

local tbl_ca_lc_x = -415/1000     -- a列左对齐x坐标
local tbl_cb_lc_x = -135/1000     -- b列左对齐x坐标
local tbl_cc_lc_x = 148.333/1000  -- c列左对齐x坐标
local tbl_cd_lc_x = 428.333/1000  -- d列左对齐x坐标

-- 同理记录下table每一行的y坐标
local tbl_r1_y  = -33.333/1000
local tbl_r2_y  = -103.333/1000
local tbl_r3_y  = -170/1000
local tbl_r4_y  = -236.667/1000
local tbl_r5_y  = -306.667/1000
local tbl_r6_y  = -373.333/1000
local tbl_r7_y  = -440/1000
local tbl_r8_y  = -510/1000
local tbl_r9_y  = -580/1000
local tbl_r10_y = -646.667/1000
local tbl_r11_y = -716.667/1000


local text_strpoly

--- 文字部分
local textsDown = {
    ---- OSB
    {-- FCS
        init_pos = {MFCD_FONT_UD1_X, MFCD_FONT_U_Y},  value = "FCS", alignment = "CenterCenter", stringdefs = MFCD_STRINGDEFS_DEF_X08,
    },
    {-- SPCHK
        init_pos = {MFCD_FONT_UD5_X, MFCD_FONT_U_Y},  value = "SPCHK", alignment = "CenterCenter", stringdefs = MFCD_STRINGDEFS_DEF_X08,
    },
    
    ---- FCS state
    -- middle
    {-- P
        init_pos = {-86.667/1000, 736.667/1000},  value = "P", alignment = "CenterCenter", stringdefs = MFCD_STRINGDEFS_DEF_X08,
    },
    
    {-- DL
        init_pos = {86.667/1000, 736.667/1000},  value = "DL", alignment = "CenterCenter", stringdefs = MFCD_STRINGDEFS_DEF_X08,
    },
    
    
    {-- 5R
        init_pos = {0, 396.667/1000},  value = "5R", alignment = "CenterCenter", stringdefs = MFCD_STRINGDEFS_DEF_X08, ctrls = {{"fcs_s_RUD_deg"}}
    },
    {-- E-AC
        init_pos = {11.667/1000, 223.333/1000},  value = "E-AC", alignment = "CenterCenter", stringdefs = MFCD_STRINGDEFS_DEF_X08, ctrls = {{"fcs_s_RUDDER"}}
    },
    
    -- left wing
    {-- A
        init_pos = {-0.34, 0.72},  value = "E-BD", alignment = "CenterCenter", stringdefs = MFCD_STRINGDEFS_DEF_X08, ctrls = {{"fcs_s_LEF_in", 0}}
    },
    {-- A
        init_pos = {-0.60, 0.67},  value = "E-BD", alignment = "CenterCenter", stringdefs = MFCD_STRINGDEFS_DEF_X08, ctrls = {{"fcs_s_LEF_out", 0}}
    },
    {-- A
        init_pos = {-580/1000, 526.667/1000},  value = "+4", alignment = "CenterCenter", stringdefs = MFCD_STRINGDEFS_DEF_X08, ctrls = {{"fcs_s_Ail_deg", 0}}
    },
    {-- A
        init_pos = {-331.667/1000, 526.667/1000},  value = "UP", alignment = "CenterCenter", stringdefs = MFCD_STRINGDEFS_DEF_X08, ctrls = {{"fcs_s_TEF", 0}}
    },
    {-- A
        init_pos = {-561.667/1000, 446.667/1000},  value = "E-AC", alignment = "CenterCenter", stringdefs = MFCD_STRINGDEFS_DEF_X08, ctrls = {{"fcs_s_AILERON", 0}}
    },
    
    {-- A
        init_pos = {-246.667/1000, 606.667/1000},  value = "+4", alignment = "CenterCenter", stringdefs = MFCD_STRINGDEFS_DEF_X08, ctrls = {{"fcs_s_LEF_in_deg", 0}}
    },
    {-- A
        init_pos = {-480/1000, 580/1000},  value = "+4", alignment = "CenterCenter", stringdefs = MFCD_STRINGDEFS_DEF_X08, ctrls = {{"fcs_s_LEF_out_deg", 0}}
    },
    
    
    -- right wing
    {-- A
        init_pos = {0.34, 0.72},  value = "E-BD", alignment = "CenterCenter", stringdefs = MFCD_STRINGDEFS_DEF_X08, ctrls = {{"fcs_s_LEF_in", 1}}
    },
    {-- A
        init_pos = {0.60, 0.67},  value = "E-BD", alignment = "CenterCenter", stringdefs = MFCD_STRINGDEFS_DEF_X08, ctrls = {{"fcs_s_LEF_out", 1}}
    },
    {-- A
        init_pos = {580/1000, 526.667/1000},  value = "+4", alignment = "CenterCenter", stringdefs = MFCD_STRINGDEFS_DEF_X08, ctrls = {{"fcs_s_Ail_deg", 1}}
    },
    {-- A
        init_pos = {331.667/1000, 526.667/1000},  value = "UP", alignment = "CenterCenter", stringdefs = MFCD_STRINGDEFS_DEF_X08, ctrls = {{"fcs_s_TEF", 1}}
    },
    {-- A
        init_pos = {561.667/1000, 446.667/1000},  value = "E-AC", alignment = "CenterCenter", stringdefs = MFCD_STRINGDEFS_DEF_X08, ctrls = {{"fcs_s_AILERON", 1}}
    },
    
    {-- A
        init_pos = {246.667/1000, 606.667/1000},  value = "+4", alignment = "CenterCenter", stringdefs = MFCD_STRINGDEFS_DEF_X08, ctrls = {{"fcs_s_LEF_in_deg", 1}}
    },
    {-- A
        init_pos = {480/1000, 580/1000},  value = "+4", alignment = "CenterCenter", stringdefs = MFCD_STRINGDEFS_DEF_X08, ctrls = {{"fcs_s_LEF_out_deg", 1}}
    },
    
    
    -- left stab
    {-- A
        init_pos = {-323.333/1000, 310/1000},  value = "+4", alignment = "CenterCenter", stringdefs = MFCD_STRINGDEFS_DEF_X08, ctrls = {{"fcs_s_STAB_deg", 0}}
    },
    {-- A
        init_pos = {-311.667/1000, 206.667/1000},  value = "E-ABCD", alignment = "CenterCenter", stringdefs = MFCD_STRINGDEFS_DEF_X08, ctrls = {{"fcs_s_STAB", 0}}
    },
    
    -- right stab
    {-- A
        init_pos = {323.333/1000, 310/1000},  value = "+4", alignment = "CenterCenter", stringdefs = MFCD_STRINGDEFS_DEF_X08, ctrls = {{"fcs_s_STAB_deg", 1}}
    },
    {-- A
        init_pos = {305/1000, 206.667/1000},  value = "E-ABCD", alignment = "CenterCenter", stringdefs = MFCD_STRINGDEFS_DEF_X08, ctrls = {{"fcs_s_STAB", 1}}
    },
    
    -- hyd left/right
    {-- A
        init_pos = {-311.667/1000, 146.667/1000}, value = "HYD 12", alignment = "CenterCenter", stringdefs = MFCD_STRINGDEFS_DEF_X08, ctrls = {{"fcs_s_HYD", 0}}
    },
    {-- A
        init_pos = {305/1000, 146.667/1000},  value = "HYD 12", alignment = "CenterCenter", stringdefs = MFCD_STRINGDEFS_DEF_X08, ctrls = {{"fcs_s_HYD", 1}}
    },
    
    
    -- table row (CenterCenter)
    {-- A
        init_pos = {-286.667/1000, tbl_tr_cc_y},  value = "A", alignment = "CenterCenter", stringdefs = MFCD_STRINGDEFS_DEF_X08,
    },
    {-- B
        init_pos = {-6.667/1000, tbl_tr_cc_y},  value = "B", alignment = "CenterCenter", stringdefs = MFCD_STRINGDEFS_DEF_X08,
    },
    {-- C
        init_pos = {276.667/1000, tbl_tr_cc_y},  value = "C", alignment = "CenterCenter", stringdefs = MFCD_STRINGDEFS_DEF_X08,
    },
    {-- D
        init_pos = {556.667/1000, tbl_tr_cc_y},  value = "D", alignment = "CenterCenter", stringdefs = MFCD_STRINGDEFS_DEF_X08,
    },
    
    -- table col (RightCenter)
    {-- COMP
        init_pos = {tbl_lc_rc_x, tbl_r1_y},  value = "COMP", alignment = "RightCenter", stringdefs = MFCD_STRINGDEFS_DEF_X08,
    },
    {-- RATE
        init_pos = {tbl_lc_rc_x, tbl_r2_y},  value = "RATE", alignment = "RightCenter", stringdefs = MFCD_STRINGDEFS_DEF_X08,
    },
    {-- LVDT
        init_pos = {tbl_lc_rc_x, tbl_r3_y},  value = "LVDT", alignment = "RightCenter", stringdefs = MFCD_STRINGDEFS_DEF_X08,
    },
    {-- G
        init_pos = {tbl_lc_rc_x, tbl_r4_y},  value = "G", alignment = "RightCenter", stringdefs = MFCD_STRINGDEFS_DEF_X08,
    },
    {-- PITO
        init_pos = {tbl_lc_rc_x, tbl_r5_y},  value = "PITO", alignment = "RightCenter", stringdefs = MFCD_STRINGDEFS_DEF_X08,
    },
    {-- AOA/C
        init_pos = {tbl_lc_rc_x, tbl_r6_y},  value = "AOA/C", alignment = "RightCenter", stringdefs = MFCD_STRINGDEFS_DEF_X08,
    },
    {-- EFCS
        init_pos = {tbl_lc_rc_x, tbl_r7_y},  value = "EFCS", alignment = "RightCenter", stringdefs = MFCD_STRINGDEFS_DEF_X08,
    },
    {-- LGH
        init_pos = {tbl_lc_rc_x, tbl_r8_y},  value = "LGH", alignment = "RightCenter", stringdefs = MFCD_STRINGDEFS_DEF_X08,
    },
    {-- WOW
        init_pos = {tbl_lc_rc_x, tbl_r9_y},  value = "WOW", alignment = "RightCenter", stringdefs = MFCD_STRINGDEFS_DEF_X08,
    },
    {-- AUGD
        init_pos = {tbl_lc_rc_x, tbl_r10_y},  value = "AUGD", alignment = "RightCenter", stringdefs = MFCD_STRINGDEFS_DEF_X08,
    },
    {-- OTHR
        init_pos = {tbl_lc_rc_x, tbl_r11_y},  value = "OTHR", alignment = "RightCenter", stringdefs = MFCD_STRINGDEFS_DEF_X08,
    },
    
    -- table content (LeftCenter)
    -- row 1
    {-- X
        init_pos = {tbl_ca_lc_x, tbl_r1_y},  value = "X", alignment = "LeftCenter", stringdefs = MFCD_STRINGDEFS_DEF_X08, ctrls = {{"fcs_s_COMP", 0}}
    },
    {-- X
        init_pos = {tbl_cb_lc_x, tbl_r1_y},  value = "X", alignment = "LeftCenter", stringdefs = MFCD_STRINGDEFS_DEF_X08, ctrls = {{"fcs_s_COMP", 1}}
    },
    {-- X
        init_pos = {tbl_cc_lc_x, tbl_r1_y},  value = "X", alignment = "LeftCenter", stringdefs = MFCD_STRINGDEFS_DEF_X08, ctrls = {{"fcs_s_COMP", 2}}
    },
    {-- X
        init_pos = {tbl_cd_lc_x, tbl_r1_y},  value = "X", alignment = "LeftCenter", stringdefs = MFCD_STRINGDEFS_DEF_X08, ctrls = {{"fcs_s_COMP", 3}}
    },
    
    -- row 2
    {-- X
        init_pos = {tbl_ca_lc_x, tbl_r2_y},  value = "P/R/Y", alignment = "LeftCenter", stringdefs = MFCD_STRINGDEFS_DEF_X08, ctrls = {{"fcs_s_RATE", 0}}
    },
    {-- X
        init_pos = {tbl_cb_lc_x, tbl_r2_y},  value = "P/-/-", alignment = "LeftCenter", stringdefs = MFCD_STRINGDEFS_DEF_X08, ctrls = {{"fcs_s_RATE", 1}}
    },
    {-- X
        init_pos = {tbl_cc_lc_x, tbl_r2_y},  value = "P/R/Y", alignment = "LeftCenter", stringdefs = MFCD_STRINGDEFS_DEF_X08, ctrls = {{"fcs_s_RATE", 2}}
    },
    {-- X
        init_pos = {tbl_cd_lc_x, tbl_r2_y},  value = "P/-/-", alignment = "LeftCenter", stringdefs = MFCD_STRINGDEFS_DEF_X08, ctrls = {{"fcs_s_RATE", 3}}
    },    
    
    -- row 3
    {-- X
        init_pos = {tbl_ca_lc_x, tbl_r3_y},  value = "P/R/Y", alignment = "LeftCenter", stringdefs = MFCD_STRINGDEFS_DEF_X08, ctrls = {{"fcs_s_LVDT", 0}}
    },
    {-- X
        init_pos = {tbl_cb_lc_x, tbl_r3_y},  value = "P/-/-", alignment = "LeftCenter", stringdefs = MFCD_STRINGDEFS_DEF_X08, ctrls = {{"fcs_s_LVDT", 1}}
    },
    {-- X
        init_pos = {tbl_cc_lc_x, tbl_r3_y},  value = "P/R/Y", alignment = "LeftCenter", stringdefs = MFCD_STRINGDEFS_DEF_X08, ctrls = {{"fcs_s_LVDT", 2}}
    },
    {-- X
        init_pos = {tbl_cd_lc_x, tbl_r3_y},  value = "P/-/-", alignment = "LeftCenter", stringdefs = MFCD_STRINGDEFS_DEF_X08, ctrls = {{"fcs_s_LVDT", 3}}
    },    
    
    -- row 4
    {-- X
        init_pos = {tbl_ca_lc_x, tbl_r4_y},  value = "Z/Y", alignment = "LeftCenter", stringdefs = MFCD_STRINGDEFS_DEF_X08, ctrls = {{"fcs_s_G", 0}}
    },
    {-- X
        init_pos = {tbl_cb_lc_x, tbl_r4_y},  value = "Z/-", alignment = "LeftCenter", stringdefs = MFCD_STRINGDEFS_DEF_X08, ctrls = {{"fcs_s_G", 1}}
    },
    {-- X
        init_pos = {tbl_cc_lc_x, tbl_r4_y},  value = "Z/Y", alignment = "LeftCenter", stringdefs = MFCD_STRINGDEFS_DEF_X08, ctrls = {{"fcs_s_G", 2}}
    },
    {-- X
        init_pos = {tbl_cd_lc_x, tbl_r4_y},  value = "Z/-", alignment = "LeftCenter", stringdefs = MFCD_STRINGDEFS_DEF_X08, ctrls = {{"fcs_s_G", 3}}
    },
    
    -- row 5
    {-- X
        init_pos = {tbl_ca_lc_x, tbl_r5_y},  value = "H/V", alignment = "LeftCenter", stringdefs = MFCD_STRINGDEFS_DEF_X08, ctrls = {{"fcs_s_PITO", 0}}
    },
    {-- X
        init_pos = {tbl_cb_lc_x, tbl_r5_y},  value = "H/V", alignment = "LeftCenter", stringdefs = MFCD_STRINGDEFS_DEF_X08, ctrls = {{"fcs_s_PITO", 1}}
    },
    {-- X
        init_pos = {tbl_cc_lc_x, tbl_r5_y},  value = "H/V", alignment = "LeftCenter", stringdefs = MFCD_STRINGDEFS_DEF_X08, ctrls = {{"fcs_s_PITO", 2}}
    },
    {-- X
        init_pos = {tbl_cd_lc_x, tbl_r5_y},  value = "H/V", alignment = "LeftCenter", stringdefs = MFCD_STRINGDEFS_DEF_X08, ctrls = {{"fcs_s_PITO", 3}}
    },
    
    -- row 6
    {-- X
        init_pos = {tbl_ca_lc_x, tbl_r6_y},  value = "X12", alignment = "LeftCenter", stringdefs = MFCD_STRINGDEFS_DEF_X08, ctrls = {{"fcs_s_AOA_C", 0}}
    },
    {-- X
        init_pos = {tbl_cb_lc_x, tbl_r6_y},  value = "X12", alignment = "LeftCenter", stringdefs = MFCD_STRINGDEFS_DEF_X08, ctrls = {{"fcs_s_AOA_C", 1}}
    },
    {-- X
        init_pos = {tbl_cc_lc_x, tbl_r6_y},  value = "X12", alignment = "LeftCenter", stringdefs = MFCD_STRINGDEFS_DEF_X08, ctrls = {{"fcs_s_AOA_C", 2}}
    },
    {-- X
        init_pos = {tbl_cd_lc_x, tbl_r6_y},  value = "-12", alignment = "LeftCenter", stringdefs = MFCD_STRINGDEFS_DEF_X08, ctrls = {{"fcs_s_AOA_C", 3}}
    },
    
    -- row 7
    {-- X
        init_pos = {tbl_ca_lc_x, tbl_r7_y},  value = "X", alignment = "LeftCenter", stringdefs = MFCD_STRINGDEFS_DEF_X08, ctrls = {{"fcs_s_EFCS", 0}}
    },
    {-- X
        init_pos = {tbl_cb_lc_x, tbl_r7_y},  value = "-", alignment = "LeftCenter", stringdefs = MFCD_STRINGDEFS_DEF_X08, ctrls = {{"fcs_s_EFCS", 1}}
    },
    {-- X
        init_pos = {tbl_cc_lc_x, tbl_r7_y},  value = "X", alignment = "LeftCenter", stringdefs = MFCD_STRINGDEFS_DEF_X08, ctrls = {{"fcs_s_EFCS", 2}}
    },
    {-- X
        init_pos = {tbl_cd_lc_x, tbl_r7_y},  value = "-", alignment = "LeftCenter", stringdefs = MFCD_STRINGDEFS_DEF_X08, ctrls = {{"fcs_s_EFCS", 3}}
    },
    
    -- row 8
    {-- X
        init_pos = {tbl_ca_lc_x, tbl_r8_y},  value = "X", alignment = "LeftCenter", stringdefs = MFCD_STRINGDEFS_DEF_X08, ctrls = {{"fcs_s_LGH", 0}}
    },
    {-- X
        init_pos = {tbl_cb_lc_x, tbl_r8_y},  value = "X", alignment = "LeftCenter", stringdefs = MFCD_STRINGDEFS_DEF_X08, ctrls = {{"fcs_s_LGH", 1}}
    },
    {-- X
        init_pos = {tbl_cc_lc_x, tbl_r8_y},  value = "X", alignment = "LeftCenter", stringdefs = MFCD_STRINGDEFS_DEF_X08, ctrls = {{"fcs_s_LGH", 2}}
    },
    {-- X
        init_pos = {tbl_cd_lc_x, tbl_r8_y},  value = "X", alignment = "LeftCenter", stringdefs = MFCD_STRINGDEFS_DEF_X08, ctrls = {{"fcs_s_LGH", 3}}
    },
    
    -- row 9
    {-- X
        init_pos = {tbl_ca_lc_x, tbl_r9_y},  value = "FX", alignment = "LeftCenter", stringdefs = MFCD_STRINGDEFS_DEF_X08, ctrls = {{"fcs_s_WOW", 0}}
    },
    {-- X
        init_pos = {tbl_cb_lc_x, tbl_r9_y},  value = "FX", alignment = "LeftCenter", stringdefs = MFCD_STRINGDEFS_DEF_X08, ctrls = {{"fcs_s_WOW", 1}}
    },
    {-- X
        init_pos = {tbl_cc_lc_x, tbl_r9_y},  value = "FX", alignment = "LeftCenter", stringdefs = MFCD_STRINGDEFS_DEF_X08, ctrls = {{"fcs_s_WOW", 2}}
    },
    {-- X
        init_pos = {tbl_cd_lc_x, tbl_r9_y},  value = "FX", alignment = "LeftCenter", stringdefs = MFCD_STRINGDEFS_DEF_X08, ctrls = {{"fcs_s_WOW", 3}}
    },
    
    -- row 10
    {-- X
        init_pos = {tbl_ca_lc_x, tbl_r10_y},  value = "R/Y", alignment = "LeftCenter", stringdefs = MFCD_STRINGDEFS_DEF_X08, ctrls = {{"fcs_s_AUGD", 0}}
    },
    {-- X
        init_pos = {tbl_cb_lc_x, tbl_r10_y},  value = "-", alignment = "LeftCenter", stringdefs = MFCD_STRINGDEFS_DEF_X08, ctrls = {{"fcs_s_AUGD", 1}}
    },
    {-- X
        init_pos = {tbl_cc_lc_x, tbl_r10_y},  value = "R/Y", alignment = "LeftCenter", stringdefs = MFCD_STRINGDEFS_DEF_X08, ctrls = {{"fcs_s_AUGD", 2}}
    },
    {-- X
        init_pos = {tbl_cd_lc_x, tbl_r10_y},  value = "-", alignment = "LeftCenter", stringdefs = MFCD_STRINGDEFS_DEF_X08, ctrls = {{"fcs_s_AUGD", 3}}
    },
    
    -- row 11
    {-- X
        init_pos = {tbl_ca_lc_x, tbl_r11_y},  value = "A/S", alignment = "LeftCenter", stringdefs = MFCD_STRINGDEFS_DEF_X08, ctrls = {{"fcs_s_OTHR", 0}}
    },
    {-- X
        init_pos = {tbl_cb_lc_x, tbl_r11_y},  value = "A/S", alignment = "LeftCenter", stringdefs = MFCD_STRINGDEFS_DEF_X08, ctrls = {{"fcs_s_OTHR", 1}}
    },
    {-- X
        init_pos = {tbl_cc_lc_x, tbl_r11_y},  value = "A/S", alignment = "LeftCenter", stringdefs = MFCD_STRINGDEFS_DEF_X08, ctrls = {{"fcs_s_OTHR", 2}}
    },
    {-- X
        init_pos = {tbl_cd_lc_x, tbl_r11_y},  value = "A/S", alignment = "LeftCenter", stringdefs = MFCD_STRINGDEFS_DEF_X08, ctrls = {{"fcs_s_OTHR", 3}}
    },
}


for i=1, #(textsDown) do
    text_strpoly                 = CreateElement "ceStringPoly"
    text_strpoly.material        = MFCD_FONT_DEF
    text_strpoly.stringdefs      = MFCD_STRINGDEFS_DEF_X075
    text_strpoly.init_pos        = textsDown[i].init_pos or {0.0, 0.0, 0.0}
    text_strpoly.alignment       = "CenterCenter"
    
    if textsDown[i].stringdefs then
        text_strpoly.stringdefs  = textsDown[i].stringdefs
    end   
    if textsDown[i].alignment then
        text_strpoly.alignment   = textsDown[i].alignment
    end    
    if textsDown[i].formats then
        text_strpoly.formats     = textsDown[i].formats
    end
    if textsDown[i].params then
        text_strpoly.element_params = textsDown[i].params
    end
    if textsDown[i].ctrls then
        text_strpoly.controllers = textsDown[i].ctrls
    end
    if textsDown[i].value then
        text_strpoly.value = textsDown[i].value
    end
    AddToUpper(text_strpoly)
    --AddElementObject(text_strpoly)
    text_strpoly = nil
end



