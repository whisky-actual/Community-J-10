------ MFCD ID
MFCD = {
    LMFCD = 1,
    CMFCD = 2,
    RMFCD = 3
}

local count = 0
local function counter()
    count = count + 1
    return count
end

------ 子页面
count = 0

-- 子页面ID定义
SUB_PAGE_ID = {
    ELEMENTSET_BASE         = 0,
    ELEMENTSET_OFF          = counter(), -- no power
    ELEMENTSET_NOAUX        = counter(), -- no signal from device
    ELEMENTSET_MAIN_MENU    = counter(),
    
    ELEMENTSET_HSD          = counter(),
    ELEMENTSET_EFIS         = counter(),
    ELEMENTSET_INS          = counter(),
    ELEMENTSET_TACAN        = counter(),
    ELEMENTSET_TACAN_LIST   = counter(),
    ELEMENTSET_APR          = counter(),
    
    ELEMENTSET_POD          = counter(),
    ELEMENTSET_POD_WMD7     = counter(),
    ELEMENTSET_POD_SPJ      = counter(),
    ELEMENTSET_POD_IRST     = counter(),
    ELEMENTSET_POD_TVIR     = counter(),
    ELEMENTSET_POD_ARM      = counter(),
    ELEMENTSET_POD_MIL      = counter(),
    
    ELEMENTSET_SMS_AA           = counter(),
    ELEMENTSET_SMS_AA_WPN       = counter(),
    ELEMENTSET_SMS_AA_LIM       = counter(),
    ELEMENTSET_SMS_AA_GS        = counter(),
    
    ELEMENTSET_SMS_AG           = counter(),
    ELEMENTSET_SMS_AG_MODE      = counter(),
    ELEMENTSET_SMS_AG_WPN       = counter(),
    ELEMENTSET_SMS_AG_FUZE      = counter(),
    ELEMENTSET_SMS_AG_QTY       = counter(),
    ELEMENTSET_SMS_AG_INTV      = counter(),
    ELEMENTSET_SMS_AG_CFG       = counter(),
    
    ELEMENTSET_SMS_PROG         = counter(),
    
    ELEMENTSET_SMS_LOAD         = counter(),
    ELEMENTSET_SMS_LOAD_TYPE    = counter(),
    ELEMENTSET_SMS_LOAD_WPN     = counter(),
    
    ELEMENTSET_SMS_JET          = counter(),
    
    ELEMENTSET_RDR_AA          = counter(),
    ELEMENTSET_RDR_AA_CNTL     = counter(),
    ELEMENTSET_RDR_AG          = counter(),
    ELEMENTSET_RDR_AG_CNTL     = counter(),
    ELEMENTSET_RDR_MODE        = counter(),
    
    ELEMENTSET_CMBT         = counter(),
    
    ELEMENTSET_BIT          = counter(),
    ELEMENTSET_CHKLS        = counter(),
    ELEMENTSET_PFL          = counter(),
    
    ELEMENTSET_DOWN_OFF         = counter(),
    ELEMENTSET_DOWN_BLANK       = counter(),
    ELEMENTSET_DOWN_MAIN_MENU   = counter(),
    ELEMENTSET_DOWN_EPI1        = counter(),
    ELEMENTSET_DOWN_EPI2        = counter(),
    ELEMENTSET_DOWN_SMS         = counter(),
    ELEMENTSET_DOWN_AFD         = counter(),
    ELEMENTSET_DOWN_CLINK       = counter(),
    ELEMENTSET_DOWN_AG_PARAM    = counter(),
    
    ELEMENTSET_DATA        = counter(),
    ELEMENTSET_DATA_AS     = counter(),
    ELEMENTSET_DATA_DST    = counter(),
    ELEMENTSET_DATA_DTC    = counter(),
    ELEMENTSET_DATA_ENG    = counter(),
    ELEMENTSET_DATA_FCS    = counter(),
    ELEMENTSET_DATA_SPCHK  = counter(),
    ELEMENTSET_DATA_NAV    = counter(),
    ELEMENTSET_DATA_RLS    = counter(),
    ELEMENTSET_DATA_FUEL   = counter(),
    ELEMENTSET_DATA_DEDIT  = counter(),
    
    ELEMENTSET_CLINK       = counter(),
    ELEMENTSET_CLINK_LIST  = counter(),
    
    --
    ELEMENTSET_EDIT  = counter(), -- 虚拟的
    
}

------ 页面ID定义
-- base
count = 0

-- 页面ID定义
PAGE_ID = {
    PAGE_ID_OFF          = 0,
    PAGE_ID_NOAUX        = counter(), -- on, but no signal
    PAGE_ID_MAIN_MENU    = counter(),
    PAGE_ID_RDR_AA       = counter(),
    PAGE_ID_RDR_AG       = counter(),
    PAGE_ID_INS          = counter(),
    PAGE_ID_TACAN        = counter(),
    PAGE_ID_APR          = counter(),
    PAGE_ID_POD          = counter(),
    PAGE_ID_SMS          = counter(),
    PAGE_ID_CMBT         = counter(),
    PAGE_ID_BIT          = counter(),
    PAGE_ID_CHKLS        = counter(),
    PAGE_ID_PFL          = counter(),
    PAGE_ID_HSD          = counter(),
    PAGE_ID_EFIS         = counter(),
    PAGE_ID_CLNK         = counter(),
    PAGE_ID_DATA         = counter(),
}
