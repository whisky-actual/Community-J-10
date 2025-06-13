
local ft1500_name = '1100L Wing Tank + 800L Center Tank'
local pylon_mass = 0.0

declare_loadout(
    {
        category    = CAT_FUEL_TANKS,
        name        = ft1500_name,
        displayName = _(ft1500_name),
        Picture     = "tank1100.png",
        attribute   = {wsType_Air, wsType_Free_Fall, wsType_FuelTank, WSTYPE_PLACEHOLDER},
        CLSID       = "DIS_TANK1500",
        
        Weight_Empty = 75 + pylon_mass,
        Weight = 1064 + pylon_mass + 342.5, -- Added half of the fuel from the center tank
        Capacity = 1064 + 342.5 - 75,
        Cx_pil = 0.00148,--0.002197266, -- Ragnar: I've calculated it to be exactly this much // changed to F-5 tank Cx -- Teo// testing
        shape_table_data =
        {
            {
                name = ft1500_name,
                file = "tank1100",
                life = 1,
                fire = { 0, 1},
                username = ft1500_name,
                index = WSTYPE_PLACEHOLDER,
            },
        },
        Elements =
        {
            {
                Position = {0, 0, 0},
                ShapeName = "tank1100",
            },
        },
    }
)

local ft800_center_name = '800L Center Tank'
local pylon_mass = 0.0

declare_loadout(
    {
        category    = CAT_FUEL_TANKS,
        name        = ft800_center_name,
        displayName = _(ft800_center_name),
        Picture     = "tank800.png",        
        attribute   = {wsType_Air, wsType_Free_Fall, wsType_FuelTank, WSTYPE_PLACEHOLDER},
        CLSID       = "DIS_CENTERTANK800",
        
        Weight_Empty = 45 + pylon_mass,
        Weight = 45 + pylon_mass,
        Capacity = 0,
        Cx_pil = 0.0014, --0.002197266,
        shape_table_data =
        {
            {
                name = ft800_center_name,
                file = "tank800",
                life = 1,
                fire = { 0, 1},
                username = ft800_center_name,
                index = WSTYPE_PLACEHOLDER,
            },
        },
        Elements =
        {
            {
                Position = {0, 0, 0},
                ShapeName = "tank800",
            },
        },
    }
)
