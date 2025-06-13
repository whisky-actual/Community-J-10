--SENSOR TYPE
local SENSOR_OPTICAL = 0
local SENSOR_RADAR = 1
local SENSOR_IRST = 2
local SENSOR_RWR = 3

--RADAR
local RADAR_AS = 0
local RADAR_SS = 1
local RADAR_MULTIROLE = 2

--
local ASPECT_HEAD_ON = 0
local ASPECT_TAIL_ON = 1

--
local HEMISPHERE_UPPER = 0
local HEMISPHERE_LOWER = 1

--IRST
local ENGINE_MODE_FORSAGE = 0
local ENGINE_MODE_MAXIMAL = 1
local ENGINE_MODE_MINIMAL = 2

--OPTIC
local OPTIC_SENSOR_TV = 0
local OPTIC_SENSOR_LLTV = 1
local OPTIC_SENSOR_IR = 2


DIS_Sensors = 
{
    [SENSOR_OPTICAL] =
    {
    -- Aircrafts
        ["Winglong-1 CAM"] =
        {
            type = OPTIC_SENSOR_TV,
            scan_volume =
            {
                azimuth = {-120.0, 120.0},
                elevation = {-60.0, 30.0}
            },
            view_volume_max = 
            {
                azimuth_sector = 4.0,
                elevation_sector = 4.0
            },
            magnifications = {17.5, 127},
            resolution = 0.2,
            laserRanger = true,
        },
        ["Winglong-1 FLIR"] =
        {
            type = OPTIC_SENSOR_IR,
            scan_volume =
            {
                azimuth = {-120.0, 120.0},
                elevation = {-60.0, 30.0}
            },
            view_volume_max = 
            {
                azimuth_sector = 50.0,
                elevation_sector = 50.0
            },
            magnifications = {1.4, 7, 22.5, 43.75},
            resolution = 0.08,
        },
        ["H-6J TV"] =
        {
            type = OPTIC_SENSOR_TV,
            scan_volume =
            {
                azimuth = {-150.0, 150.0},
                elevation = {-155.0, 35.0}
            },
            view_volume_max = 
            {
                azimuth_sector = 4.0,
                elevation_sector = 4.0
            },
            magnifications = {17.5, 70.0},
            resolution = 0.1,
        },
        ["H-6J FLIR"] =
        {
            type = OPTIC_SENSOR_IR,
            scan_volume =
            {
                azimuth = {-150.0, 150.0},
                elevation = {-155.0, 35.0}
            },
            view_volume_max = 
            {
                azimuth_sector = 4.0,
                elevation_sector = 4.0
            },
            magnifications = {17.5, 70.0},
            resolution = 0.07, 
            laserRanger = true,
        },
        
    -- Navy
        ["long-range naval optics A"] =
        {
            type = OPTIC_SENSOR_TV,
            scan_volume =
            {
                azimuth = {-120.0, 120.0},
                elevation = {-60.0, 30.0}
            },
            view_volume_max = 
            {
                azimuth_sector = 4.0,
                elevation_sector = 4.0
            },
            magnifications = {17.5, 127},
            resolution = 0.1,
        },
        ["long-range naval LLTV A"] =
        {
            type = OPTIC_SENSOR_LLTV,
            scan_volume =
            {
                azimuth = {-120.0, 120.0},
                elevation = {-60.0, 30.0}
            },
            view_volume_max = 
            {
                azimuth_sector = 18.0,
                elevation_sector = 18.0
            },
            lightness_limit = 0.027,
            magnifications = {4, 16},
            resolution = 0.08,
        },
        ["long-range naval FLIR A"] =
        {
            type = OPTIC_SENSOR_IR,
            scan_volume =
            {
                azimuth = {-120.0, 120.0},
                elevation = {-60.0, 30.0}
            },
            view_volume_max = 
            {
                azimuth_sector = 50.0,
                elevation_sector = 50.0
            },
            magnifications = {1.4, 7, 22.5, 43.75},
            resolution = 0.02,
        },
    },
    [SENSOR_RADAR] =
    {
    -- Aircrafts
        ["KLJ-7"] = {
            type = RADAR_MULTIROLE,
            scan_volume =
            {
                azimuth = {-60.0, 60.0},
                elevation = {-30.0, 10.0}
            },
            max_measuring_distance = 125000.0,
            scan_period = 5.0,
            air_search = {          
                centered_scan_volume =
                {
                    azimuth_sector = 30.0,
                    elevation_sector = 30.0
                },          
                detection_distance =
                {
                    [HEMISPHERE_UPPER] =
                    {
                        [ASPECT_HEAD_ON] = 89000.0,
                        [ASPECT_TAIL_ON] = 46000.0
                    },
                    [HEMISPHERE_LOWER] =
                    {
                        [ASPECT_HEAD_ON] = 76000.0,
                        [ASPECT_TAIL_ON] = 35000.0
                    }
                },
                lock_on_distance_coeff = 0.85,
                velocity_limits =
                {
                    radial_velocity_min = 100.0 / 3.6,
                    relative_radial_velocity_min = 100.0 / 3.6,
                },
			TWS_max_targets = 2,
            },
            surface_search = {
                vehicles_detection = true,
                RCS = 100,
                RBM_detection_distance  = 150000.0,
                GMTI_detection_distance = 140000.0,
                HRM_detection_distance  = 20000.0
            }
        },
        ["AESA_KJ2000"] = {
            type = RADAR_MULTIROLE,
            scan_volume =
            {
                azimuth = {-180.0, 180.0},
                elevation = {-50.0, 50.0}
            },
            max_measuring_distance = 500000.0,
            scan_period = 0.1,
            air_search = {
                RCS = 6,
                detection_distance =
                {
                    [HEMISPHERE_UPPER] =
                    {
                        [ASPECT_HEAD_ON] = 420000.0,
                        [ASPECT_TAIL_ON] = 420000.0
                    },
                    [HEMISPHERE_LOWER] =
                    {
                        [ASPECT_HEAD_ON] = 420000.0,
                        [ASPECT_TAIL_ON] = 420000.0
                    }
                },
                velocity_limits =
                {
                    radial_velocity_min = 100.0 / 3.6 / 1.5,
                    relative_radial_velocity_min = 100.0 / 3.6 / 1.5,
                },
            },
            surface_search = {          
                vehicles_detection = true,
                RCS = 100,
                RBM_detection_distance = 350000.0,
                GMTI_detection_distance = 400000.0,                
            }           
        },  
        ["Winglong-1 SAR"] =
        {
			type = RADAR_SS,
            vehicles_detection = true,
			RCS = 5,
			RBM_detection_distance = 40000.0,
			HRM_detection_distance = 28000.0,
            scan_volume =
            {
                azimuth = {-180.0, 180.0},
                elevation = {-90.0, 20.0}
            },
            max_measuring_distance = 100000.0,
            scan_period = 8.0,
        },
        ["H-6J RADAR"] = 
        {
            type = RADAR_SS,
            scan_volume =
            {
                azimuth   = {-60.0, 60.0},
                elevation = {-40.0, 10.0},
            },
            RCS = 100.0,
            max_measuring_distance = 400000.0,
            RBM_detection_distance = 300000.0,
            scan_period = 6.0,
        },
        
    -- SAM
        ["HQ-7 TR"] =
        {
            type = RADAR_AS,
            scan_volume =
            {
                azimuth = {-180.0, 180.0},
                elevation = {-15.0, 60.0}
            },
            max_measuring_distance = 10000.0,
            detection_distance =
            {
                [HEMISPHERE_UPPER] =
                {
                    [ASPECT_HEAD_ON] = 10000.0,
                    [ASPECT_TAIL_ON] =  8000.0
                },
                [HEMISPHERE_LOWER] =
                {
                    [ASPECT_HEAD_ON] = 12000.0,
                    [ASPECT_TAIL_ON] =  8000.0
                }
            },
            lock_on_distance_coeff = 0.80,
            velocity_limits =
            {
                radial_velocity_min = 10,
            },
            RCS = 2.0,
            scan_period = 5.0,
        },
        ["HQ-7 STR"] =
        {
            type = RADAR_AS,
            scan_volume =
            {
                azimuth = {-180.0, 180.0},
                elevation = {-15.0, 60.0}
            },
            max_measuring_distance = 30000.0,
            detection_distance =
            {
                [HEMISPHERE_UPPER] =
                {
                    [ASPECT_HEAD_ON] = 30000.0,
                    [ASPECT_TAIL_ON] = 20000.0
                },
                [HEMISPHERE_LOWER] =
                {
                    [ASPECT_HEAD_ON] = 30000.0,
                    [ASPECT_TAIL_ON] = 20000.0
                }
            },
            lock_on_distance_coeff = 0.90,
            velocity_limits =
            {
                radial_velocity_min = 10,
            },
            RCS = 2.0,
            scan_period = 1.0,
        },
    
    -- Navy
        ["PLAN Search Radar A"] =
        {
            type = RADAR_SS,
            vehicles_detection = true;
            airborne_radar = false;
            scan_volume = 
            {
                azimuth = {-180, 180},
                elevation = {-3, 10}
            },
            max_measuring_distance = 40000,
            detection_distance = 
            {
                [HEMISPHERE_UPPER] =
                {
                    [ASPECT_HEAD_ON] = 40000.0,
                    [ASPECT_TAIL_ON] = 40000.0
                },
                [HEMISPHERE_LOWER] =
                {
                    [ASPECT_HEAD_ON] = 40000.0,
                    [ASPECT_TAIL_ON] = 40000.0
                }
            },
            lock_on_distance_coeff = 1.0,
            velocity_limits = 
            {
                radial_velocity_min = 15,
            },
            scan_period = 12.0,
            RCS = 100.0,
            RBM_detection_distance = 40000.0
        },
        ["PLAN Search Radar B"] =
        {
            type = RADAR_SS,
            vehicles_detection = true;
            airborne_radar = false;
            scan_volume = 
            {
                azimuth = {-180, 180},
                elevation = {-3, 10}
            },
            max_measuring_distance = 35000,
            detection_distance = 
            {
                [HEMISPHERE_UPPER] =
                {
                    [ASPECT_HEAD_ON] = 34000.0,
                    [ASPECT_TAIL_ON] = 34000.0
                },
                [HEMISPHERE_LOWER] =
                {
                    [ASPECT_HEAD_ON] = 34000.0,
                    [ASPECT_TAIL_ON] = 34000.0
                }
            },
            lock_on_distance_coeff = 1.0,
            velocity_limits = 
            {
                radial_velocity_min = 15,
            },
            scan_period = 12.0,
            RCS = 100.0,
            RBM_detection_distance = 34000.0
        },
        ["052C SAM STR"] =
        {
            type = RADAR_AS,
            scan_volume =
            {
                azimuth = {-180.0, 180.0},
                elevation = {-15.0, 60.0}
            },
            max_measuring_distance = 260000.0,
            detection_distance =
            {
                [HEMISPHERE_UPPER] =
                {
                    [ASPECT_HEAD_ON] = 260000.0,
                    [ASPECT_TAIL_ON] = 260000.0
                },
                [HEMISPHERE_LOWER] =
                {
                    [ASPECT_HEAD_ON] = 260000.0,
                    [ASPECT_TAIL_ON] = 260000.0
                }
            },
            lock_on_distance_coeff = 0.85,
            velocity_limits =
            {
                radial_velocity_min = 15,
            },
            scan_period = 1.0,
        },
        ["052B SAM SR"] =
        {
            type = RADAR_AS,
            scan_volume =
            {
                azimuth = {-180.0, 180.0},
                elevation = {-15.0, 60.0}
            },
            max_measuring_distance = 100000.0,
            detection_distance =
            {
                [HEMISPHERE_UPPER] =
                {
                    [ASPECT_HEAD_ON] = 100000.0,
                    [ASPECT_TAIL_ON] = 100000.0
                },
                [HEMISPHERE_LOWER] =
                {
                    [ASPECT_HEAD_ON] = 100000.0,
                    [ASPECT_TAIL_ON] = 100000.0
                }
            },
            lock_on_distance_coeff = 0.85,
            velocity_limits =
            {
                radial_velocity_min = 15,
            },
            scan_period = 1.0,
        },
        ["052B SAM TR"] =
        {
            type = RADAR_AS,
            scan_volume =
            {
                azimuth = {-180.0, 180.0},
                elevation = {-15.0, 60.0}
            },
            max_measuring_distance = 60000.0,
            detection_distance =
            {
                [HEMISPHERE_UPPER] =
                {
                    [ASPECT_HEAD_ON] = 60000.0,
                    [ASPECT_TAIL_ON] = 60000.0
                },
                [HEMISPHERE_LOWER] =
                {
                    [ASPECT_HEAD_ON] = 60000.0,
                    [ASPECT_TAIL_ON] = 60000.0
                }
            },
            lock_on_distance_coeff = 0.6,
            velocity_limits =
            {
                radial_velocity_min = 10,
            },
            scan_period = 1.0,
        },
        ["054A SAM TR"] =
        {
            type = RADAR_AS,
            scan_volume =
            {
                azimuth = {-180.0, 180.0},
                elevation = {-15.0, 60.0}
            },
            max_measuring_distance = 260000.0,
            detection_distance =
            {
                [HEMISPHERE_UPPER] =
                {
                    [ASPECT_HEAD_ON] = 160000.0,
                    [ASPECT_TAIL_ON] = 160000.0
                },
                [HEMISPHERE_LOWER] =
                {
                    [ASPECT_HEAD_ON] = 160000.0,
                    [ASPECT_TAIL_ON] = 160000.0
                }
            },
            lock_on_distance_coeff = 0.85,
            velocity_limits =
            {
                radial_velocity_min = 10.0,
            },
            scan_period = 1.0,
        },
    },
    [SENSOR_RWR] = 
    {
        ["Deka RWR A"] =
        {
            detection_dist_to_radar_detection_dist_max_ratio = 0.80,
            lock_on_detection = true
        },
        ["Deka RWR B"] =
        {
            detection_dist_to_radar_detection_dist_max_ratio = 0.85,
            lock_on_detection = true
        },
        ["Deka RWR C"] =
        {
            detection_dist_to_radar_detection_dist_max_ratio = 0.90,
            lock_on_detection = true
        }
    },
}

for category, sensors in pairs(DIS_Sensors) do
    for name, sensor in pairs(sensors) do
        sensor.Name = name
        sensor.category = category
        declare_sensor(sensor)
    end
end
