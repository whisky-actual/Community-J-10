--http://cdn.ihs.com/Janes/Sample-content-IHS-Janes-Weapons-Air-Launched.pdf
local pl5eii_name = 'PL-5EII'
local pl5eii_mass = 83.0
local pylon_mass = 70.0

PL_5EII_AA = {
    category        = CAT_AIR_TO_AIR,
    name            = pl5eii_name,
    user_name       = _(pl5eii_name),
    wsTypeOfWeapon  = {4,4,7,WSTYPE_PLACEHOLDER},
    Escort          = 0,
    Head_Type       = 1,
    sigma           = {3, 3, 3},
    M               = pl5eii_mass,
    H_max           = 14000.0,
    H_min           = -1.0,
    Diam            = 127.0,
    Cx_pil          = 1.6,
    D_max           = 7500.0,
    D_min           = 300.0,
    Head_Form       = 0,
    Life_Time       = 60.0,
    Nr_max          = 35,
    v_min           = 140.0,
    v_mid           = 350.0,
    Mach_max        = 2.7,
    t_b             = 0.0,
    t_acc           = 6.0,
    t_marsh         = 0.0,
    Range_max       = 14000.0,
    H_min_t         = 1.0,
    Fi_start        = 0.3,
    Fi_rak          = 3.14152,
    Fi_excort       = 0.79,
    Fi_search       = 0.09,
    OmViz_max       = 0.61,
    warhead         = simple_aa_warhead(11.5, 127);
    exhaust         = tail_solid1;
    X_back          = -1.55,
    Y_back          = -0.071,
    Z_back          = 0.0,
    Reflection      = 0.0182,
    KillDistance    = 7.0,
    --seeker sensivity params
    SeekerSensivityDistance = 20000, -- The range of target with IR value = 1. In meters.
    ccm_k0        = 0.5,  -- Counter Countermeasures Probability Factor. Value = 0 - missile has absolutely resistance to countermeasures. Default = 1 (medium probability)
    SeekerCooled  = true, -- True is cooled seeker and false is not cooled seeker.

    supersonic_A_coef_skew = 0.25,
    nozzle_exit_area = 0.0068,

    shape_table_data = {
        {
            name     = pl5eii_name,
            file     = 'pl5eii',
            life     = 1,
            fire     = {0, 1},
            username = pl5eii_name,
            index    = WSTYPE_PLACEHOLDER,
        },
    },

    ModelData = {
        58 ,  -- model params count
        0.4 ,   -- characteristic square (характеристическая площадь)

        -- параметры зависимости Сx
        0.049 , -- Cx_k0 планка Сx0 на дозвуке ( M << 1)
        0.082 , -- Cx_k1 высота пика волнового кризиса
        0.010 , -- Cx_k2 крутизна фронта на подходе к волновому кризису
        0.001, -- Cx_k3 планка Cx0 на сверхзвуке ( M >> 1)
        0.550 , -- Cx_k4 крутизна спада за волновым кризисом
        0.8 , -- коэффициент отвала поляры (пропорционально sqrt (M^2-1))

        -- параметры зависимости Cy
        2.5 , -- Cy_k0 планка Сy0 на дозвуке ( M << 1)
        0.8     , -- Cy_k1 планка Cy0 на сверхзвуке ( M >> 1)
        1.2  , -- Cy_k2 крутизна спада(фронта) за волновым кризисом

        0.13 , -- 7 Alfa_max  максимальный балансировачный угол, радианы
        0.0, --угловая скорость создаваймая моментом газовых рулей

        -- Engine data. Time, fuel flow, thrust.
        -- t_statr    t_b     t_accel   t_march   t_inertial        t_break        t_end           -- Stage
        -1.0,        -1.0,          6,    0.0,        0.0,            0.0,        1.0e9,           -- time of stage, sec
         0.0,         0.0,        5.3,    0.0,        0.0,            0.0,          0.0,           -- fuel flow rate in second, kg/sec(секундный расход массы топлива кг/сек)
         0.0,         0.0,    11500.0,    0.0,        0.0,            0.0,          0.0,           -- thrust, newtons

        1.0e9, -- таймер самоликвидации, сек
        60.0, -- время работы энергосистемы, сек
        0, -- абсолютная высота самоликвидации, м
        0.3, -- время задержки включения управления (маневр отлета, безопасности), сек
        1.0e9, -- дальность до цели в момент пуска, при превышении которой ракета выполняется маневр "горка", м
        1.0e9, -- дальность до цели, при которой маневр "горка" завершается и ракета переходит на чистую пропорциональную навигацию (должен быть больше или равен предыдущему параметру), м
        0.0,  -- синус угла возвышения траектории набора горки
        30.0, -- продольное ускорения взведения взрывателя
        0.0, -- модуль скорости сообщаймый катапультным устройством, вышибным зарядом и тд
        1.19, -- характристика системы САУ-РАКЕТА,  коэф фильтра второго порядка K0
        1.0, -- характристика системы САУ-РАКЕТА,  коэф фильтра второго порядка K1
        2.0, -- характристика системы САУ-РАКЕТА,  полоса пропускания контура управления

        -- DLZ data. Use numbers below for your implemetation.
        9.0, -- производная дальности по скорости носителя на высоте 1км, ППС
        -13.0, -- производная дальности по скорости цели на высоте 1км, ЗПС
        -2.1, -- производная по высоте производной дальности по скорости цели, ЗПС
        15500.0, -- дальность ракурс 180 град(навстречу), Н=5000м, V=900км/ч, м
        5500.0, -- дальность ракурс 0(в догон) град, Н=5000м, V=900км/ч, м 
        27000.0, -- дальность ракурс 180(навстречу) град, Н=10000м, V=900км/ч, м
        10000.0,  -- дальность ракурс 0(в догон) град, Н=10000м, V=900км/ч, м
        10500.0, -- дальность ракурс 180(навстречу) град, Н=1000м,  V=900км/ч, м
        3500.0, -- дальность ракурс 0(в догон) град, Н=1000м, V=900км/ч, м
        2500.0, -- смещение назад отнсительно нуля задней точки зоны достижимости
        0.55, -- процент гарантированной дальности от дальности в ППС на высоте 1км
        -0.01, -- производная процента гарантированной дальности в ППС по высоте
        0.5, -- Изменение коэффициентов наклона кривой в верхнюю и нижнюю полусферы от высоты носителя.
    },
}

declare_weapon(PL_5EII_AA)
PL_5EII_AA.shape_table_data.index = PL_5EII_AA.wsTypeOfWeapon[4]

declare_loadout({
    category     = CAT_AIR_TO_AIR,
    CLSID        = 'DIS_PL-5EII',
    Picture      = 'pl5eii.png',
    attribute    = PL_5EII_AA.wsTypeOfWeapon,
    displayName  = _(pl5eii_name),
    Cx_pil       = 0.00077,
    Count        = 1,
    Weight       = pl5eii_mass + pylon_mass,
    Elements     = {
        [1] =
        {
            DrawArgs =
            {
                [1] = {1, 1},
                [2] = {2, 1},
            }, -- end of DrawArgs
            Position  = {0, 0, 0},
            ShapeName = 'pl5eii',
        },
    }, -- end of Elements
})


---------------------------
----- smoke generators PL5
local smokes =
{
    ['RED']     = {r = 245  , g = 40 ,  b = 40  , a = 180 , disp = _('red_smk')},
    ['GREEN']   = {r = 50   , g = 160,  b = 100 , a = 180 , disp = _('green')},
    ['BLUE']    = {r = 50   , g = 100,  b = 210 , a = 180 , disp = _('blue_smk')},
    ['YELLOW']  = {r = 255  , g = 230,  b = 50  , a = 180 , disp = _('yellow')},
    ['ORANGE']  = {r = 255  , g = 150,  b = 35  , a = 180 , disp = _('orange')},
    ['WHITE']   = {r = 255  , g = 255,  b = 255 , a = 180 , disp = _('white')},
}

local function smoke_generator_PL5(clsid, att, smoke, BlendColor, have_mass)
    local mass_ = 0
    local cx_ = 0
    if have_mass then
        mass_ = pl5eii_mass + pylon_mass
        cx_   = 0.00058828125
    end

    return {
        category          = CAT_PODS,
        CLSID             = clsid,
        attribute         = att,
        Picture           ='smoke.png',
        PictureBlendColor = BlendColor,
        displayName       = _('Smoke Generator') .. ' - ' .. smoke.disp,
        Weight            = mass_,
        Cx_pil            = cx_,
        Smoke  = {
            alpha = smoke.a,
            r     = smoke.r,
            g     = smoke.g,
            b     = smoke.b,
            dx    = -2.0,
            dy    = -0.09,
        },
        Elements = {{ShapeName = 'pl5eii'}},
    }
end

declare_loadout(smoke_generator_PL5('DIS_SMOKE_GENERATOR_R', {4, 15, 50, 67}, smokes['RED'],    '0xf52828b4', false))
declare_loadout(smoke_generator_PL5('DIS_SMOKE_GENERATOR_G', {4, 15, 50, 87}, smokes['GREEN'],  '0x32a064b4', false))
declare_loadout(smoke_generator_PL5('DIS_SMOKE_GENERATOR_B', {4, 15, 50, 88}, smokes['BLUE'],   '0x3264d2b4', false))
declare_loadout(smoke_generator_PL5('DIS_SMOKE_GENERATOR_W', {4, 15, 50, 89}, smokes['WHITE'],  '0xffffffb4', false))
declare_loadout(smoke_generator_PL5('DIS_SMOKE_GENERATOR_Y', {4, 15, 50, 90}, smokes['YELLOW'], '0xffe632b4', false))
declare_loadout(smoke_generator_PL5('DIS_SMOKE_GENERATOR_O', {4, 15, 50, 91}, smokes['ORANGE'], '0xff9623b4', false))
