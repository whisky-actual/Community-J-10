dofile('Scripts/Database/Weapons/warheads.lua')

mount_vfs_texture_path (current_mod_path .. '/Textures/Weapons J-10')

pl10_name  = 'PL-10E'
pl10_model = 'Su30_PL10E'
pl10_mass  = 105.0

PL_10_AA = {
    category        = CAT_AIR_TO_AIR,
    name            = pl10_name,
    model           = pl10_model,
    user_name       = _(pl10_name),
    wsTypeOfWeapon  = {4,4,7,WSTYPE_PLACEHOLDER},
    mass            = pl10_mass,
    Escort          = 0,
    Head_Type       = 1,
    sigma           = {3, 3, 3},
    M               = pl10_mass,
    H_max           = 20000.0,
    H_min           = -1.0,
    Diam            = 160.0,
    Cx_pil          = 2.5,
    D_max           = 20000.0, --20km
    D_min           = -500.0,
    Head_Form       = 0,
    Life_Time       = 240.0,
    Nr_max          = 60,
    v_min           = 140.0,
    v_mid           = 400.0,
    Mach_max        = 3.5,
    t_b             = 0.0,
    t_acc           = 3.0,
    t_marsh         = 3.0,
    Range_max       = 20000.0,
    H_min_t         = 1.0,
    Fi_start        = 3.14152,
    Fi_rak          = 3.14152,
    Fi_excort       = 3.14152,
    Fi_search       = 0.09, --0.09
    OmViz_max       = 3.14152,
    warhead         = enhanced_a2a_warhead(11.0, 160);
    warhead_air     = enhanced_a2a_warhead(11.0, 160);
    exhaust         = { 0.7, 0.7, 0.7, 0.08 };
    X_back          = -1.61,
    Y_back          = -0.089,
    Z_back          = 0.0,
    Reflection      = 0.0329,
    KillDistance    = 7.0,
    --seeker sensivity params
    SeekerSensivityDistance = 25000, -- The range of target with IR value = 1. In meters. --25km
    ccm_k0          = 0.10, -- Counter Countermeasures Probability Factor. Value = 0 - missile has absolutely resistance to countermeasures. Default = 1 (medium probability)
    SeekerCooled    = true, -- True is cooled seeker and false is not cooled seeker.

    shape_table_data = {
        {
            name     = pl10_name,
            file     = pl10_model,
            life     = 1,
            fire     = {0, 1},
            username = pl10_name,
            index    = WSTYPE_PLACEHOLDER,
        },
    },

    PN_coeffs = { 3,                 -- Number of Entries
                  15000.0, 1.00,
                 -- 18000.0, 0.75,
                  25000.0, 0.50,     -- Less 5 km to target Pn = 1
                  40000.0, 0.25,     -- Between 15 and 5 km  to target, Pn smoothly changes from 0.4 to 1.0. Longer then 15 km Pn = 0.4.
                },
    ModelData = {
        58 ,  -- model params count
        0.45 ,   -- characteristic square (характеристическая площадь)
        
        -- параметры зависимости Сx
        0.029 , -- Cx_k0 планка Сx0 на дозвуке ( M << 1)
        0.06 , -- Cx_k1 высота пика волнового кризиса
        0.01 , -- Cx_k2 крутизна фронта на подходе к волновому кризису
        -0.245, -- Cx_k3 планка Cx0 на сверхзвуке ( M >> 1)
        0.08 , -- Cx_k4 крутизна спада за волновым кризисом 
        0.7 , -- коэффициент отвала поляры (пропорционально sqrt (M^2-1))
        
        -- параметры зависимости Cy
        1.5 , -- Cy_k0 планка Сy0 на дозвуке ( M << 1)
        0.8     , -- Cy_k1 планка Cy0 на сверхзвуке ( M >> 1)
        1.2  , -- Cy_k2 крутизна спада(фронта) за волновым кризисом  
        
        0.78 , -- 7 Alfa_max  максимальный балансировачный угол, радианы
        10, --угловая скорость создаваймая моментом газовых рулей
        
        -- Engine data. Time, fuel flow, thrust.    
        --    t_statr        t_b        t_accel        t_march        t_inertial        t_break        t_end            -- Stage
        -1.0,       -1.0,    8.5,          0.0,        0.0,            0.0,        1.0e9,         -- time of stage, sec
        0.0,         0.0,    5.32,       0.0,        0.0,            0.0,        0.0,           -- fuel flow rate in second, kg/sec(секундный расход массы топлива кг/сек)
        0.0,        0.0,    14000.0,    0.0,    0.0,            0.0,        0.0,           -- thrust, newtons
    
        1.0e9, -- таймер самоликвидации, сек
        60.0, -- время работы энергосистемы, сек
        0, -- абсолютная высота самоликвидации, м
        0.05, -- время задержки включения управления (маневр отлета, безопасности), сек
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
        14000.0, -- дальность ракурс 180 град(навстречу), Н=5000м, V=900км/ч, м
        5000.0, -- дальность ракурс 0(в догон) град, Н=5000м, V=900км/ч, м 
        19000.0, -- дальность ракурс 180(навстречу) град, Н=10000м, V=900км/ч, м
        6000.0,  -- дальность ракурс 0(в догон) град, Н=10000м, V=900км/ч, м
        10000.0, -- дальность ракурс 180(навстречу) град, Н=1000м,  V=900км/ч, м
        3000.0, -- дальность ракурс 0(в догон) град, Н=1000м, V=900км/ч, м
        2500.0, -- смещение назад отнсительно нуля задней точки зоны достижимости
        0.55, -- процент гарантированной дальности от дальности в ППС на высоте 1км
        -0.01, -- производная процента гарантированной дальности в ППС по высоте
        0.5, -- Изменение коэффициентов наклона кривой в верхнюю и нижнюю полусферы от высоты носителя.
    },
}

declare_weapon(PL_10_AA)

declare_loadout({
    category     = CAT_AIR_TO_AIR,
    CLSID        = 'DIS_PL-10',
    Picture      = 'pl8b.png',
    attribute    = PL_10_AA.wsTypeOfWeapon,
    displayName  = _(pl10_name),
    Cx_pil       = 0.001959765625,
    Count        = 1,
    Weight       = pl10_mass,
    Elements     = {
        [1] =
        {
            DrawArgs =
            {
                [1] = {1, 1},
                [2] = {2, 1},
            }, -- end of DrawArgs
            Position  = {0, 0, 0},
            ShapeName = pl10_model,
        },
    }, -- end of Elements
})

