
local ft800_name = '800L Tank + Internal Tank'
local pylon_mass = 0.0
local internal_tank_amount = 4500-2325

declare_loadout(
    {
        category    = CAT_FUEL_TANKS,
        name        = ft800_name,
        displayName = _(ft800_name),
        Picture     = "tank800.png",        
        attribute   = {wsType_Air, wsType_Free_Fall, wsType_FuelTank, WSTYPE_PLACEHOLDER},
        CLSID       = "DIS_TANK800",
        
        Weight_Empty = 45 + pylon_mass,
        Weight = 730 + pylon_mass + internal_tank_amount,
        Capacity = 730 - 45 + internal_tank_amount,
        Cx_pil = 0.0014, --0.002197266,
        shape_table_data =
        {
            {
                name = ft800_name,
                file = "tank800",
                life = 1,
                fire = { 0, 1},
                username = ft800_name,
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

local ft800_empty_name = '800L Tank Empty + Internal Tank'
declare_loadout(
    {
        category    = CAT_FUEL_TANKS,
        name        = ft800_empty_name,
        displayName = _(ft800_empty_name),
        Picture     = "tank800.png",        
        attribute   = {wsType_Air, wsType_Free_Fall, wsType_FuelTank, WSTYPE_PLACEHOLDER},
        CLSID       = "DIS_TANK800_EMPTY",
        
        Weight_Empty = 45 + pylon_mass,
        Weight = 45 + pylon_mass + internal_tank_amount,
        Capacity = 730 - 45 + internal_tank_amount,
        Cx_pil = 0.0014, --0.002197266,
        shape_table_data =
        {
            {
                name = ft800_empty_name,
                file = "tank800",
                life = 1,
                fire = { 0, 1},
                username = ft800_empty_name,
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


local internal_tank_name = 'Internal Tank'
declare_loadout(
    {
        category    = CAT_FUEL_TANKS,
        name        = internal_tank_name,
        displayName = _(internal_tank_name),
        Picture     = "tank800.png",        
        attribute   = {wsType_Air, wsType_Free_Fall, wsType_FuelTank, WSTYPE_PLACEHOLDER},
        CLSID       = "DIS_INTERNAL_TANK",
        
        Weight_Empty = 0,
        Weight =  internal_tank_amount,
        Capacity = internal_tank_amount,
        Cx_pil = 0.00, --0.002197266,
        shape_table_data =
        {
            {
                name = ft800_empty_name,
                file = "",
                life = 1,
                fire = { 0, 1},
                username = ft800_empty_name,
                index = WSTYPE_PLACEHOLDER,
            },
        },
        Elements =
        {
            {
                Position = {0, 0, 0},
                ShapeName = "",
            },
        },
    }
)