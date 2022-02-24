local diff = {
    ["axisDiffs"] = {
        ["a2001cdnil"] = {
            ["name"] = "Pitch",
            ["removed"] = {
                [1] = {
                    ["key"] = "JOY_Y",
                },
            },
        },
        ["a2002cdnil"] = {
            ["name"] = "Roll",
            ["removed"] = {
                [1] = {
                    ["key"] = "JOY_X",
                },
            },
        },
        ["a2003cdnil"] = {
            ["name"] = "Rudder",
            ["removed"] = {
                [1] = {
                    ["key"] = "JOY_RZ",
                },
            },
        },
        ["a2004cdnil"] = {
            ["changed"] = {
                [1] = {
                    ["filter"] = {
                        ["curvature"] = {
                            [1] = 0,
                        },
                        ["deadzone"] = 0,
                        ["invert"] = false,
                        ["saturationX"] = 1,
                        ["saturationY"] = 1,
                        ["slider"] = true,
                    },
                    ["key"] = "JOY_Z",
                },
            },
            ["name"] = "Thrust",
        },
        ["a2033cdnil"] = {
            ["added"] = {
                [1] = {
                    ["filter"] = {
                        ["curvature"] = {
                            [1] = 0.06,
                        },
                        ["deadzone"] = 0.02,
                        ["invert"] = false,
                        ["saturationX"] = 1,
                        ["saturationY"] = 1,
                        ["slider"] = false,
                    },
                    ["key"] = "JOY_X",
                },
            },
            ["name"] = "TDC Slew Horizontal",
        },
        ["a2034cdnil"] = {
            ["added"] = {
                [1] = {
                    ["filter"] = {
                        ["curvature"] = {
                            [1] = 0.06,
                        },
                        ["deadzone"] = 0.03,
                        ["invert"] = true,
                        ["saturationX"] = 1,
                        ["saturationY"] = 1,
                        ["slider"] = false,
                    },
                    ["key"] = "JOY_Y",
                },
            },
            ["name"] = "TDC Slew Vertical",
        },
    },
    ["keyDiffs"] = {
        ["d10053pnilu10053cdnilvd1vpnilvu0"] = {
            ["name"] = "S3: Weapon Launch",
            ["removed"] = {
                [1] = {
                    ["key"] = "JOY_BTN2",
                },
            },
        },
        ["d10054pnilu10054cdnilvd1vpnilvu0"] = {
            ["name"] = "S4: Fire Main Gun",
            ["removed"] = {
                [1] = {
                    ["key"] = "JOY_BTN1",
                },
            },
        },
        ["d10062pnilunilcdnilvdnilvpnilvunil"] = {
            ["added"] = {
                [1] = {
                    ["key"] = "JOY_BTN9",
                },
            },
            ["name"] = "T1_Forward: BVR - INTC Mode",
        },
        ["d10063pnilunilcdnilvdnilvpnilvunil"] = {
            ["added"] = {
                [1] = {
                    ["key"] = "JOY_BTN10",
                },
            },
            ["name"] = "T1_Center: NAV - Navigation Mode",
        },
        ["d10064pnilunilcdnilvdnilvpnilvunil"] = {
            ["added"] = {
                [1] = {
                    ["key"] = "JOY_BTN11",
                },
            },
            ["name"] = "T1_Backward: AG - Air-To-Ground Mode",
        },
        ["d10067pnilunilcdnilvdnilvpnilvunil"] = {
            ["added"] = {
                [1] = {
                    ["key"] = "JOY_BTN_POV1_U",
                },
            },
            ["name"] = "T2_Forward: SPJ Standby/Jam",
        },
        ["d10068pnilunilcdnilvdnilvpnilvunil"] = {
            ["added"] = {
                [1] = {
                    ["key"] = "JOY_BTN_POV1_D",
                },
            },
            ["name"] = "T2_Backward: Countermeasures Dispense",
        },
        ["d10070pnilunilcdnilvdnilvpnilvunil"] = {
            ["added"] = {
                [1] = {
                    ["key"] = "JOY_BTN_POV1_R",
                },
            },
            ["name"] = "T2_Press: AG Manual Mode/DGFT Missile Designator Control",
        },
        ["d10071pnilunilcdnilvdnilvpnilvunil"] = {
            ["added"] = {
                [1] = {
                    ["key"] = "JOY_BTN16",
                },
            },
            ["name"] = "T3_Forward: Speed Brake On",
        },
        ["d10072pnilunilcdnilvdnilvpnilvunil"] = {
            ["added"] = {
                [1] = {
                    ["key"] = "JOY_BTN14",
                },
            },
            ["name"] = "T3_Backward: Speed Brake Off",
        },
        ["d10073pnilunilcd24vdnilvpnilvunil"] = {
            ["added"] = {
                [1] = {
                    ["key"] = "JOY_BTN13",
                },
            },
            ["name"] = "T4_Forward: Radio Comm 1",
        },
        ["d10074pnilunilcd24vdnilvpnilvunil"] = {
            ["added"] = {
                [1] = {
                    ["key"] = "JOY_BTN15",
                },
            },
            ["name"] = "T4_Backward: Radio Comm 2",
        },
        ["d10076pnilu10076cdnilvd1vpnilvu0"] = {
            ["added"] = {
                [1] = {
                    ["key"] = "JOY_BTN4",
                },
            },
            ["name"] = "T4_Press: IFF Interrogation Start/Stop",
        },
        ["d10083pnilunilcdnilvdnilvpnilvunil"] = {
            ["added"] = {
                [1] = {
                    ["key"] = "JOY_BTN2",
                },
            },
            ["name"] = "T5_Press: Lock Target",
        },
        ["dnilp10092unilcdnilvdnilvpnilvunil"] = {
            ["added"] = {
                [1] = {
                    ["key"] = "JOY_BTN7",
                },
            },
            ["name"] = "Sensor (WMD7/TV) Up / T6: Radar Ant Elev Up",
        },
        ["dnilp10093unilcdnilvdnilvpnilvunil"] = {
            ["added"] = {
                [1] = {
                    ["key"] = "JOY_BTN5",
                },
            },
            ["name"] = "Sensor (WMD7/TV) Down / T6: Radar Ant Elev Down",
        },
        ["dnilp210u214cdnilvdnilvpnilvunil"] = {
            ["name"] = "View Up Right slow",
            ["removed"] = {
                [1] = {
                    ["key"] = "JOY_BTN_POV1_UR",
                },
            },
        },
        ["dnilp211u214cdnilvdnilvpnilvunil"] = {
            ["name"] = "View Down Right slow",
            ["removed"] = {
                [1] = {
                    ["key"] = "JOY_BTN_POV1_DR",
                },
            },
        },
        ["dnilp212u214cdnilvdnilvpnilvunil"] = {
            ["name"] = "View Down Left slow",
            ["removed"] = {
                [1] = {
                    ["key"] = "JOY_BTN_POV1_DL",
                },
            },
        },
        ["dnilp213u214cdnilvdnilvpnilvunil"] = {
            ["name"] = "View Up Left slow",
            ["removed"] = {
                [1] = {
                    ["key"] = "JOY_BTN_POV1_UL",
                },
            },
        },
        ["dnilp32u214cdnilvdnilvpnilvunil"] = {
            ["name"] = "View Left slow",
            ["removed"] = {
                [1] = {
                    ["key"] = "JOY_BTN_POV1_L",
                },
            },
        },
        ["dnilp33u214cdnilvdnilvpnilvunil"] = {
            ["name"] = "View Right slow",
            ["removed"] = {
                [1] = {
                    ["key"] = "JOY_BTN_POV1_R",
                },
            },
        },
        ["dnilp34u214cdnilvdnilvpnilvunil"] = {
            ["name"] = "View Up slow",
            ["removed"] = {
                [1] = {
                    ["key"] = "JOY_BTN_POV1_U",
                },
            },
        },
        ["dnilp35u214cdnilvdnilvpnilvunil"] = {
            ["name"] = "View Down slow",
            ["removed"] = {
                [1] = {
                    ["key"] = "JOY_BTN_POV1_D",
                },
            },
        },
    },
}
return diff