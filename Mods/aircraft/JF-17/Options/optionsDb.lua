local DbOption  = require('Options.DbOption')
local i18n      = require('i18n')
local oms       = require('optionsModsScripts')
local Range     = DbOption.Range

local _ = i18n.ptranslate


-- find the relative location of optionsDb.lua
function script_path()
    -- remember to strip off the starting @
    local luafileloc = debug.getinfo(2, "S").source:sub(2)
    local ti, tj = string.find(luafileloc, "Options")
    local temploc = string.sub(luafileloc, 1, ti-1)
    return temploc
end

function icounter()
    idx = idx + 1
    return idx
end

-- find module path
local relativeloc = script_path()
modulelocation = lfs.currentdir().."\\"..relativeloc

local tblCPLocalList = oms.getTblCPLocalList(modulelocation)

local tblBVRAAMList = {
    DbOption.Item(_('PL-11A SARH')):Value(1),
    DbOption.Item(_('PL-12 ARH')):Value(2),
	DbOption.Item(_('PL-15 ARH')):Value(3),
}

local tblKbPitchList = {
    DbOption.Item(_('AUTO RE-CENTER')):Value(0),
    DbOption.Item(_('ACCUMULATIVE')):Value(1),
    DbOption.Item(_('BLENDED')):Value(2),
}

local tblVoiceList = {
    DbOption.Item(_('EN 1')):Value(0),
    DbOption.Item(_('EN 2')):Value(1),
    DbOption.Item(_('CN 1')):Value(2),
    DbOption.Item(_('CN 2')):Value(3),
    DbOption.Item(_('CUSTOMIZED')):Value(4),
}

local tblDMapList = {
    DbOption.Item(_('RASTER CHARTS')):Value(0),
    DbOption.Item(_('MAP ALT')):Value(1),
}

local tblGunSightList = {
    DbOption.Item(_('PL-8A IRH')):Value(1),
    DbOption.Item(_('PL-8B  IRH')):Value(2),
    DbOption.Item(_('PL-10E IRH')):Value(3),
}
local tblGunLimitList = {
    DbOption.Item(_('YJ-83K ASM')):Value(1),
    DbOption.Item(_('YJ-91A ASM')):Value(2),
    DbOption.Item(_('YJ-83KG ASM')):Value(3),
}

local tblMITLCTRLList = {
    DbOption.Item(_('Traction')):Value(0),
    DbOption.Item(_('Designated')):Value(1),
}

local tblOESPType = {
    DbOption.Item(_('CH_oesp')):Value(0),
    DbOption.Item(_('FL_oesp')):Value(1),
    DbOption.Item(_('CH+FL_oesp')):Value(2),
}

local tblChIntv = {
    DbOption.Item(_('0.2')):Value(0),
    DbOption.Item(_('0.5')):Value(1),
    DbOption.Item(_('1')):Value(2),
    DbOption.Item(_('2')):Value(3),
    DbOption.Item(_('3')):Value(4),
    DbOption.Item(_('4.5')):Value(5),
    DbOption.Item(_('5')):Value(6),
}
local tblChBurstIntv = {
    DbOption.Item(_('0.0')):Value(0),
    DbOption.Item(_('0.2')):Value(1),
    DbOption.Item(_('0.5')):Value(2),
    DbOption.Item(_('0.75')):Value(4),
    DbOption.Item(_('1.0')):Value(5),
}

local tblFlIntv = {
    DbOption.Item(_('0.2')):Value(0),
    DbOption.Item(_('0.5')):Value(1),
    DbOption.Item(_('1')):Value(2),
    DbOption.Item(_('2')):Value(3),
    DbOption.Item(_('3')):Value(4),
    DbOption.Item(_('4.5')):Value(5),
    DbOption.Item(_('5')):Value(6),
}
local tblFlBurstIntv = {
    DbOption.Item(_('0.0')):Value(0),
    DbOption.Item(_('0.2')):Value(1),
    DbOption.Item(_('0.5')):Value(2),
    DbOption.Item(_('0.75')):Value(3),
    DbOption.Item(_('1.0')):Value(4),
}

idx = -1

return {
    CPLocalList = tblCPLocalList["1"],
    BVRAAM    = DbOption.new():setValue("1"):combo(tblBVRAAMList),

    -- keyboard pitch control
    KYBDPITCH = DbOption.new():setValue(0):combo(tblKbPitchList),

    -- voice
    VOICELOCALE = DbOption.new():setValue(0):combo(tblVoiceList),

    -- dmap
    DMAPTYPE = DbOption.new():setValue(0):combo(tblDMapList),

    -- chaff/flare bingo
    CHAFFBINGO = DbOption.new():setValue(10):slider(Range(0, 24)),
    FLAREBINGO = DbOption.new():setValue(8):slider(Range(0, 24)),

    -- gun
    GUNSIGHT = DbOption.new():setValue(0):combo(tblGunSightList),
    GUNLIMIT = DbOption.new():setValue(2):combo(tblGunLimitList),

    --
    MITLCTRL = DbOption.new():setValue(0):combo(tblMITLCTRLList),

    -- type
    PROG01TYPE = DbOption.new():setValue(0):combo(tblOESPType),
    PROG02TYPE = DbOption.new():setValue(0):combo(tblOESPType),
    PROG03TYPE = DbOption.new():setValue(1):combo(tblOESPType),
    PROG04TYPE = DbOption.new():setValue(1):combo(tblOESPType),
    PROG05TYPE = DbOption.new():setValue(2):combo(tblOESPType),

    -- chaff repeat
    PROG01CHR = DbOption.new():setValue(3):slider(Range(1, 4)),
    PROG02CHR = DbOption.new():setValue(3):slider(Range(1, 4)),
    PROG03CHR = DbOption.new():setValue(1):slider(Range(1, 4)),
    PROG04CHR = DbOption.new():setValue(1):slider(Range(1, 4)),
    PROG05CHR = DbOption.new():setValue(3):slider(Range(1, 4)),

    -- chaff interval
    PROG01CHI = DbOption.new():setValue(3):combo(tblChIntv),
    PROG02CHI = DbOption.new():setValue(2):combo(tblChIntv),
    PROG03CHI = DbOption.new():setValue(2):combo(tblChIntv),
    PROG04CHI = DbOption.new():setValue(2):combo(tblChIntv),
    PROG05CHI = DbOption.new():setValue(1):combo(tblChIntv),

    -- chaff number
    PROG01CHN = DbOption.new():setValue(4):slider(Range(1, 6)),
    PROG02CHN = DbOption.new():setValue(3):slider(Range(1, 6)),
    PROG03CHN = DbOption.new():setValue(1):slider(Range(1, 6)),
    PROG04CHN = DbOption.new():setValue(1):slider(Range(1, 6)),
    PROG05CHN = DbOption.new():setValue(4):slider(Range(1, 6)),

    -- chaff burst interval
    PROG01CHBI = DbOption.new():setValue(0):combo(tblChBurstIntv),
    PROG02CHBI = DbOption.new():setValue(3):combo(tblChBurstIntv),
    PROG03CHBI = DbOption.new():setValue(3):combo(tblChBurstIntv),
    PROG04CHBI = DbOption.new():setValue(3):combo(tblChBurstIntv),
    PROG05CHBI = DbOption.new():setValue(0):combo(tblChBurstIntv),


    -- flare repeat
    PROG01FLR = DbOption.new():setValue(1):slider(Range(1, 4)),
    PROG02FLR = DbOption.new():setValue(1):slider(Range(1, 4)),
    PROG03FLR = DbOption.new():setValue(2):slider(Range(1, 4)),
    PROG04FLR = DbOption.new():setValue(3):slider(Range(1, 4)),
    PROG05FLR = DbOption.new():setValue(3):slider(Range(1, 4)),

    -- flare interval
    PROG01FLI = DbOption.new():setValue(2):combo(tblFlIntv),
    PROG02FLI = DbOption.new():setValue(2):combo(tblFlIntv),
    PROG03FLI = DbOption.new():setValue(3):combo(tblFlIntv),
    PROG04FLI = DbOption.new():setValue(2):combo(tblFlIntv),
    PROG05FLI = DbOption.new():setValue(1):combo(tblFlIntv),

    -- flare number
    PROG01FLN = DbOption.new():setValue(1):slider(Range(1, 6)),
    PROG02FLN = DbOption.new():setValue(1):slider(Range(1, 6)),
    PROG03FLN = DbOption.new():setValue(4):slider(Range(1, 6)),
    PROG04FLN = DbOption.new():setValue(4):slider(Range(1, 6)),
    PROG05FLN = DbOption.new():setValue(4):slider(Range(1, 6)),

    -- flare burst interval
    PROG01FLBI = DbOption.new():setValue(3):combo(tblFlBurstIntv),
    PROG02FLBI = DbOption.new():setValue(3):combo(tblFlBurstIntv),
    PROG03FLBI = DbOption.new():setValue(0):combo(tblFlBurstIntv),
    PROG04FLBI = DbOption.new():setValue(3):combo(tblFlBurstIntv),
    PROG05FLBI = DbOption.new():setValue(0):combo(tblFlBurstIntv),

    -- TDC slew rate
    TDC_DEADZONE  = DbOption.new():setValue(0.01):slider(Range(0.0, 0.1)),
    HUD_TDC       = DbOption.new():setValue(1.0):slider(Range(0.2, 2.0)),
    WMD_TDC       = DbOption.new():setValue(1.0):slider(Range(0.2, 2.0)),
    TVIR_TDC      = DbOption.new():setValue(1.0):slider(Range(0.2, 2.0)),
    DLPOD_TDC     = DbOption.new():setValue(1.0):slider(Range(0.2, 2.0)),
    RDR_TDC       = DbOption.new():setValue(1.0):slider(Range(0.2, 2.0)),
    RDR_ELEV      = DbOption.new():setValue(1.0):slider(Range(0.2, 2.0)),

    -- Misc
    HiddenStick  = DbOption.new():setValue(false):checkbox(),
    IcingOnCake  = DbOption.new():setValue(true):checkbox(),
    TestingChg   = DbOption.new():setValue(true):checkbox(),
    AntZoomInv   = DbOption.new():setValue(false):checkbox(),
    RemoveProbe  = DbOption.new():setValue(false):checkbox(),

    MUSICNUM_SLIDER = DbOption.new():setValue(0):slider(Range(0, 30)),
}
