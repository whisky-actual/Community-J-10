--Livery credit: Cactus
name = "PLAAF 131st Air Brigade High Visibility"
name_cn = "中国空军 第131航空旅 高能见度"
countries = {}

livery = {
--	Boards
	{"J-10-16"			,DIFFUSE	,	"empty", true};
	{"J-10-16-y"		,DIFFUSE	,	"J10_PLAAF131H_16", true};
	{"J-10-16-y"		,SPECULAR	,	"J10_PLAAF131_16_RM", true};

--	Fuselage
	{"J-10-01-A"		,DIFFUSE	,	"J10_PLAAF131H_01", true};
	{"J-10-01-A"		,SPECULAR	,	"J10_PLAAF131H_01_RM", true};

--	Wings	
	{"J-10-02-A"		,DIFFUSE	,	"J10_PLAAF131H_02", true};
	{"J-10-02-A"		,SPECULAR	,	"J10_PLAAF131H_02_RM", true};
	{"J-10-pylons"		,DIFFUSE	,	"J10_PLAAF131_PY", true};
	{"J-10-pylons"		,SPECULAR	,	"J10_PLAAF131_PY_RM", true};

--	Gears and Doors
	{"J-10-09"			,DIFFUSE	,	"J10_PLAAF131_09", true};
	{"J-10-09"			,SPECULAR	,	"j-10-09_spc", true};
	{"J-10-06"			,DIFFUSE	,	"J10_PLAAF131_06", true};

--	Cockpit
	{"J-10-03"			,DIFFUSE	,	"j-10-03", true};
	{"J-10-04"			,DIFFUSE	,	"j-10-04", true};
	{"J-10-05"			,DIFFUSE	,	"j-10-05", true};
	{"J-10-07"			,DIFFUSE	,	"j-10-07", true};
	{"J-10-08"			,DIFFUSE	,	"j-10-08", true};
	{"J-10-10"			,DIFFUSE	,	"j-10-10", true};
	{"J-10-11"			,DIFFUSE	,	"j-10-11", true};
	{"J-10-11"			,NORMAL_MAP	,	"j-10-11", true};
	{"J-10-11"			,11			,	"j-10-glass_blu", true};
	{"J-10-14"			,DIFFUSE	,	"j-10-14", true};
	{"J-10-14"			,SPECULAR	,	"j-10-14_spc", true};

--	Engines
	{"01 - Default2"	,DIFFUSE	,	"j11a_detail", true};
	{"J-10 AFTERBURN"	,DIFFUSE	,	"j-10__detail", true};
	{"J11a_afterburn.tga",DIFFUSE	,	"j11a_afterburn", true};
	{"mig29 nuzzles"	,DIFFUSE	,	"mig-29_smtmetal", true};
	{"J-10 AFTERBURN"	,NORMAL_MAP	,	"j-10__detail_nrm", true};
	{"J-10 AFTERBURN"	,SPECULAR	,	"j-10__detail_spc", true};
	{"mig29 nuzzles"	,SPECULAR	,	"mig-29_smtmetal_roughmet", true};
	{"mig29 nuzzles"	,12			,	"reflection", true};
	{"J-10 AFTERBURN"	,12			,	"reflection", true};

--	Parachute
	{"J-10-12"			,DIFFUSE	,	"J10_PLAAF131_12", true};

--	Pilot
	{"J-10-13"			,DIFFUSE	,	"j-10-13", true};
	{"J-10-13"			,SPECULAR	,	"j-10-13_spc", true};

--	Helmet
	{"J-10_PILOT"		,DIFFUSE	,	"j-10_pilot", true};
	{"J-10_PILOT"		,SPECULAR	,	"j-10_pilot_spc", true};
	{"J-10_PILOT_MARK"	,DIFFUSE	,	"j-10_pilot_mark", true};
	{"J-10_PILOT_MARK"	,SPECULAR	,	"j-10_pilot_mark_spc", true};
}