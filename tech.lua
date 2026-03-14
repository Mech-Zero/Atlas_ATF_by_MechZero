data:extend(
    {
        {
            type = "technology",
            name = "assault-rifle-tech",
            icon = "__Atlas_ATF__/graphics/tech/assault-rifle.png",
            icon_size = 256,
            effects = {
                {
                    type = "unlock-recipe",
                    recipe = "ATF-short-rifle-barrel"
                },
                {
                    type = "unlock-recipe",
                    recipe = "ATF-auto-receiver"
                },
                {
                    type = "unlock-recipe",
                    recipe = "ATF-rifle-grip"
                },
                {
                    type = "unlock-recipe",
                    recipe = "792x33"
                },
                {
                    type = "unlock-recipe",
                    recipe = "stg44"
                }
            },
            prerequisites = {"military", "semi-tech"},
            unit = {
                count = 50,
                ingredients = {
                    {"automation-science-pack", 1},
                    {"logistic-science-pack", 1},
                    {"military-science-pack", 1}
                },
                time = 25
            }
        },
        {
            type = "technology",
            name = "poly-acc-tech",
            icon = "__Atlas_ATF__/graphics/tech/poly.png",
            icon_size = 256,
            effects = {
                {
                    type = "unlock-recipe",
                    recipe = "ATF-poly-stock"
                },
                {
                    type = "unlock-recipe",
                    recipe = "ATF-poly-rifle-grip"
                },
                {
                    type = "unlock-recipe",
                    recipe = "ATF-smg-receiver-modern"
                },
                {
                    type = "unlock-recipe",
                    recipe = "ATF-pistol-frame-modern"
                }
            },
            prerequisites = {"assault-rifle-tech", "plastics"},
            unit = {
                count = 200,
                ingredients = {
                    {"automation-science-pack", 1},
                    {"logistic-science-pack", 1},
                    {"military-science-pack", 1}
                },
                time = 10
            }
        },
        {
            type = "technology",
            name = "bolt-tech",
            icon = "__Atlas_ATF__/graphics/tech/bolt.png",
            icon_size = 256,
            effects = {
                {
                    type = "unlock-recipe",
                    recipe = "ATF-rifle-bullets"
                },
                {
                    type = "unlock-recipe",
                    recipe = "ATF-rifle-casing"
                },
                {
                    type = "unlock-recipe",
                    recipe = "ATF-bolt-receiver"
                },
                {
                    type = "unlock-recipe",
                    recipe = "ATF-long-rifle-barrel"
                },
                {
                    type = "unlock-recipe",
                    recipe = "ATF-wooden-stock"
                },
                {
                    type = "unlock-recipe",
                    recipe = "1903"
                },
                {
                    type = "unlock-recipe",
                    recipe = "k98"
                },
                {
                    type = "unlock-recipe",
                    recipe = "lee"
                },
                {
                    type = "unlock-recipe",
                    recipe = "303ammo"
                },
                {
                    type = "unlock-recipe",
                    recipe = "3006ammo"
                },
                {
                    type = "unlock-recipe",
                    recipe = "792x57"
                }
            },
            -- prerequisites = {},
            unit = {
                count = 20,
                ingredients = {
                    {"automation-science-pack", 1}
                },
                time = 5
            }
        },
        {
            type = "technology",
            name = "shotgun-tech",
            icon = "__Atlas_ATF__/graphics/tech/shotgun.png",
            icon_size = 256,
            effects = {
                {
                    type = "unlock-recipe",
                    recipe = "m1897"
                },
                {
                    type = "unlock-recipe",
                    recipe = "12g-buckshot"
                },
                {
                    type = "unlock-recipe",
                    recipe = "12g-slug"
                },
                {
                    type = "unlock-recipe",
                    recipe = "ATF-buckshot"
                },
                {
                    type = "unlock-recipe",
                    recipe = "ATF-empty-shell"
                },
                {
                    type = "unlock-recipe",
                    recipe = "ATF-shotgun-receiver"
                }
            },
            prerequisites = {"bolt-tech"},
            unit = {
                count = 100,
                ingredients = {
                    {"automation-science-pack", 1}
                },
                time = 10
            }
        },
        {
            type = "technology",
            name = "smg-tech",
            icon = "__Atlas_ATF__/graphics/tech/smg.png",
            icon_size = 256,
            effects = {
                {
                    type = "unlock-recipe",
                    recipe = "ATF-smg-receiver-milled"
                },
                {
                    type = "unlock-recipe",
                    recipe = "ATF-smg-receiver-stamped"
                },
                {
                    type = "unlock-recipe",
                    recipe = "ATF-smg-barrel"
                },
                {
                    type = "unlock-recipe",
                    recipe = "ATF-metal-stock"
                },
                {
                    type = "unlock-recipe",
                    recipe = "m1928"
                },
                {
                    type = "unlock-recipe",
                    recipe = "mp18"
                },
                {
                    type = "unlock-recipe",
                    recipe = "ppsh"
                },
                {
                    type = "unlock-recipe",
                    recipe = "mp40"
                },
                {
                    type = "unlock-recipe",
                    recipe = "762x25"
                },
                {
                    type = "unlock-recipe",
                    recipe = "9mm"
                },
                {
                    type = "unlock-recipe",
                    recipe = "45acp"
                }
            },
            prerequisites = {"military"},
            unit = {
                count = 200,
                ingredients = {
                    {"automation-science-pack", 1},
                    {"military-science-pack", 1}
                },
                time = 10
            }
        },
        {
            type = "technology",
            icon_size = 256,
            name = "drum-tech",
            icon = "__Atlas_ATF__/graphics/tech/drum_1.png",
            effects = {
                {
                    type = "unlock-recipe",
                    recipe = "45acpdrum"
                },
                {
                    type = "unlock-recipe",
                    recipe = "762x25drum"
                }
            },
            prerequisites = {"military", "smg-tech"},
            unit = {
                count = 250,
                ingredients = {
                    {"automation-science-pack", 1},
                    {"logistic-science-pack", 1},
                    {"military-science-pack", 1}
                },
                time = 10
            }
        },
        {
            type = "technology",
            icon_size = 256,
            name = "hmg-tech",
            icon = "__Atlas_ATF__/graphics/tech/hmg.png",
            effects = {
                {
                    type = "unlock-recipe",
                    recipe = "ATF-hmg-receiver"
                },
                {
                    type = "unlock-recipe",
                    recipe = "ATF-hmg-barrel"
                },
                {
                    type = "unlock-recipe",
                    recipe = "ATF-heavy-bullets"
                },
                {
                    type = "unlock-recipe",
                    recipe = "ATF-heavy-casings"
                },
                {
                    type = "unlock-recipe",
                    recipe = "m2"
                },
                {
                    type = "unlock-recipe",
                    recipe = "50bmg"
                }
            },
            prerequisites = {"mg-tech"},
            unit = {
                count = 350,
                ingredients = {
                    {"automation-science-pack", 1},
                    {"logistic-science-pack", 1},
                    {"chemical-science-pack", 1},
                    {"military-science-pack", 1}
                },
                time = 20
            }
        },
        {
            type = "technology",
            icon_size = 256,
            name = "mg-tech",
            icon = "__Atlas_ATF__/graphics/tech/mg.png",
            effects = {
                {
                    type = "unlock-recipe",
                    recipe = "ATF-mg-receiver"
                },
                {
                    type = "unlock-recipe",
                    recipe = "ATF-mg-barrel"
                },
                {
                    type = "unlock-recipe",
                    recipe = "mg42"
                },
                {
                    type = "unlock-recipe",
                    recipe = "m1919"
                },
                {
                    type = "unlock-recipe",
                    recipe = "bar"
                },
                {
                    type = "unlock-recipe",
                    recipe = "bren"
                },
                {
                    type = "unlock-recipe",
                    recipe = "792x57drum"
                },
                {
                    type = "unlock-recipe",
                    recipe = "3006belt"
                },
                {
                    type = "unlock-recipe",
                    recipe = "303mag"
                }
            },
            prerequisites = {"military", "bolt-tech", "drum-tech"},
            unit = {
                count = 250,
                ingredients = {
                    {"automation-science-pack", 1},
                    {"logistic-science-pack", 1},
                    {"military-science-pack", 1}
                },
                time = 10
            }
        },
        {
            type = "technology",
            icon_size = 256,
            name = "semi-tech",
            icon = "__Atlas_ATF__/graphics/tech/semi.png",
            effects = {
                {
                    type = "unlock-recipe",
                    recipe = "g43"
                },
                {
                    type = "unlock-recipe",
                    recipe = "ATF-semi-receiver"
                }
            },
            prerequisites = {"bolt-tech"},
            unit = {
                count = 50,
                ingredients = {
                    {"automation-science-pack", 1},
                    {"military-science-pack", 1}
                },
                time = 10
            }
        },
        {
            type = "technology",
            name = "coldwar-tech",
            icon = "__Atlas_ATF__/graphics/tech/coldwar-arms.png",
            icon_size = 256,
            effects = {
                {
                    type = "unlock-recipe",
                    recipe = "g3"
                },
                {
                    type = "unlock-recipe",
                    recipe = "akm"
                },
                {
                    type = "unlock-recipe",
                    recipe = "ak74m"
                },
                {
                    type = "unlock-recipe",
                    recipe = "mp5"
                },
                {
                    type = "unlock-recipe",
                    recipe = "m14"
                },
                {
                    type = "unlock-recipe",
                    recipe = "9mmp"
                },
                {
                    type = "unlock-recipe",
                    recipe = "556x45"
                },
                {
                    type = "unlock-recipe",
                    recipe = "762x39"
                },
                {
                    type = "unlock-recipe",
                    recipe = "762x51"
                },
                {
                    type = "unlock-recipe",
                    recipe = "545x39"
                }
            },
            prerequisites = {"smg-tech", "assault-rifle-tech", "poly-acc-tech"},
            unit = {
                count = 250,
                ingredients = {
                    {"automation-science-pack", 1},
                    {"logistic-science-pack", 1},
                    {"military-science-pack", 1}
                },
                time = 25
            }
        },
        {
            type = "technology",
            name = "gl-tech",
            icon = "__Atlas_ATF__/graphics/tech/gl.png",
            icon_size = 256,
            effects = {
                {
                    type = "unlock-recipe",
                    recipe = "m79"
                },
                {
                    type = "unlock-recipe",
                    recipe = "40mm-he"
                },
                {
                    type = "unlock-recipe",
                    recipe = "40mm-incendiary"
                },
                {
                    type = "unlock-recipe",
                    recipe = "ATF-heavy-casings"
                }
            },
            prerequisites = {"coldwar-tech", "explosives"},
            unit = {
                count = 400,
                ingredients = {
                    {"automation-science-pack", 1},
                    {"logistic-science-pack", 1},
                    {"military-science-pack", 1}
                },
                time = 25
            }
        },
        {
            type = "technology",
            name = "rcxd-tech",
            icon = "__Atlas_ATF__/graphics/tech/rcxd.png",
            icon_size = 256,
            effects = {
                {
                    type = "unlock-recipe",
                    recipe = "ATF-rcxd"
                }
            },
            prerequisites = {"coldwar-tech", "explosives"},
            unit = {
                count = 300,
                ingredients = {
                    {"automation-science-pack", 1},
                    {"logistic-science-pack", 1},
                    {"military-science-pack", 1}
                },
                time = 25
            }
        },
        {
            type = "technology",
            name = "rcxd-tech2",
            icon = "__Atlas_ATF__/graphics/tech/rcnd.png",
            icon_size = 256,
            effects = {
                {
                    type = "unlock-recipe",
                    recipe = "ATF-rcnd"
                }
            },
            prerequisites = {"rcxd-tech", "atomic-bomb"},
            unit = {
                count = 800,
                ingredients = {
                    {"automation-science-pack", 1},
                    {"logistic-science-pack", 1},
                    {"chemical-science-pack", 1},
                    {"production-science-pack", 1},
                    {"military-science-pack", 1},
                    {"utility-science-pack", 1}
                },
                time = 30
            }
        },
        {
            type = "technology",
            name = "modern-tech",
            icon = "__Atlas_ATF__/graphics/tech/modern-arms.png",
            icon_size = 256,
            effects = {
                {
                    type = "unlock-recipe",
                    recipe = "hk416"
                },
                {
                    type = "unlock-recipe",
                    recipe = "m4a1"
                },
                {
                    type = "unlock-recipe",
                    recipe = "acr"
                },
                {
                    type = "unlock-recipe",
                    recipe = "vector"
                },
                {
                    type = "unlock-recipe",
                    recipe = "glock"
                },
                {
                    type = "unlock-recipe",
                    recipe = "68spc"
                },
                {
                    type = "unlock-recipe",
                    recipe = "9mmu"
                },
                {
                    type = "unlock-recipe",
                    recipe = "ATF-powerful-receiver"
                }
            },
            prerequisites = {"coldwar-tech", "poly-acc-tech"},
            unit = {
                count = 500,
                ingredients = {
                    {"automation-science-pack", 1},
                    {"logistic-science-pack", 1},
                    {"chemical-science-pack", 1},
                    {"military-science-pack", 1}
                },
                time = 25
            }
        },
        {
            type = "technology",
            name = "shotgun-tech2",
            icon = "__Atlas_ATF__/graphics/tech/auto-shotgun.png",
            icon_size = 256,
            effects = {
                {
                    type = "unlock-recipe",
                    recipe = "aa12"
                },
                {
                    type = "unlock-recipe",
                    recipe = "12g-frag"
                },
                {
                    type = "unlock-recipe",
                    recipe = "12g-dragon"
                }
            },
            prerequisites = {"modern-tech", "shotgun-tech"},
            unit = {
                count = 600,
                ingredients = {
                    {"automation-science-pack", 1},
                    {"logistic-science-pack", 1},
                    {"chemical-science-pack", 1},
                    {"military-science-pack", 1}
                },
                time = 30
            }
        },
        {
            type = "technology",
            name = "gl-tech2",
            icon = "__Atlas_ATF__/graphics/tech/mgl.png",
            icon_size = 256,
            effects = {
                {
                    type = "unlock-recipe",
                    recipe = "m32"
                },
                {
                    type = "unlock-recipe",
                    recipe = "ATF-grenade-turret"
                }
            },
            prerequisites = {"modern-tech", "gl-tech"},
            unit = {
                count = 600,
                ingredients = {
                    {"automation-science-pack", 1},
                    {"logistic-science-pack", 1},
                    {"chemical-science-pack", 1},
                    {"military-science-pack", 1}
                },
                time = 30
            }
        },
        {
            type = "technology",
            name = "gl-tech3",
            icon = "__Atlas_ATF__/graphics/tech/gl-tech-3.png",
            icon_size = 256,
            effects = {
                {
                    type = "unlock-recipe",
                    recipe = "warmachine"
                },
                {
                    type = "unlock-recipe",
                    recipe = "40mm-plasma"
                },
                {
                    type = "unlock-recipe",
                    recipe = "ATF-grenade-turret-2"
                }
            },
            prerequisites = {"future-tech", "gl-tech2"},
            unit = {
                count = 600,
                ingredients = {
                    {"automation-science-pack", 1},
                    {"logistic-science-pack", 1},
                    {"chemical-science-pack", 1},
                    {"production-science-pack", 1},
                    {"military-science-pack", 1},
                    {"utility-science-pack", 1}
                },
                time = 30
            }
        },
        {
            type = "technology",
            name = "chemwar-tech",
            icon = "__Atlas_ATF__/graphics/tech/chem.png",
            icon_size = 256,
            effects = {
                {
                    type = "unlock-recipe",
                    recipe = "40mm-acid"
                },
                {
                    type = "unlock-recipe",
                    recipe = "ATF-arti-shell-acid"
                },
                {
                    type = "unlock-recipe",
                    recipe = "ATF-arti-shell-napalm"
                }
            },
            prerequisites = {"modern-tech", "gl-tech"},
            unit = {
                count = 500,
                ingredients = {
                    {"automation-science-pack", 1},
                    {"logistic-science-pack", 1},
                    {"chemical-science-pack", 1},
                    {"military-science-pack", 1}
                },
                time = 30
            }
        },
        {
            type = "technology",
            name = "drum-tech2",
            icon = "__Atlas_ATF__/graphics/tech/drum-2.png",
            icon_size = 256,
            effects = {
                {
                    type = "unlock-recipe",
                    recipe = "545long"
                },
                {
                    type = "unlock-recipe",
                    recipe = "762x51drum"
                },
                {
                    type = "unlock-recipe",
                    recipe = "68spcdrum"
                },
                {
                    type = "unlock-recipe",
                    recipe = "762x39drum"
                },
                {
                    type = "unlock-recipe",
                    recipe = "556x45drum"
                }
            },
            prerequisites = {"modern-tech", "drum-tech"},
            unit = {
                count = 300,
                ingredients = {
                    {"automation-science-pack", 1},
                    {"logistic-science-pack", 1},
                    {"chemical-science-pack", 1},
                    {"military-science-pack", 1}
                },
                time = 25
            }
        },
        {
            type = "technology",
            name = "concept-tech",
            icon = "__Atlas_ATF__/graphics/tech/concept-arms.png",
            icon_size = 256,
            effects = {
                {
                    type = "unlock-recipe",
                    recipe = "p60"
                },
                {
                    type = "unlock-recipe",
                    recipe = "stg60"
                },
                {
                    type = "unlock-recipe",
                    recipe = "atlas20mm"
                },
                {
                    type = "unlock-recipe",
                    recipe = "20mm"
                },
                {
                    type = "unlock-recipe",
                    recipe = "ATF-heavy-bullets"
                },
                {
                    type = "unlock-recipe",
                    recipe = "ATF-heavy-casings"
                }
            },
            prerequisites = {"modern-tech"},
            unit = {
                count = 400,
                ingredients = {
                    {"automation-science-pack", 1},
                    {"logistic-science-pack", 1},
                    {"chemical-science-pack", 1},
                    {"military-science-pack", 1}
                },
                time = 25
            }
        },
        {
            type = "technology",
            name = "concept-tech2",
            icon = "__Atlas_ATF__/graphics/tech/concept-arms-2.png",
            icon_size = 256,
            effects = {
                {
                    type = "unlock-recipe",
                    recipe = "swatt"
                },
                {
                    type = "unlock-recipe",
                    recipe = "556-swatt"
                },
                {
                    type = "unlock-recipe",
                    recipe = "ATF-swatt-turret"
                }
            },
            prerequisites = {"concept-tech"},
            unit = {
                count = 400,
                ingredients = {
                    {"automation-science-pack", 1},
                    {"logistic-science-pack", 1},
                    {"chemical-science-pack", 1},
                    {"military-science-pack", 1},
                    {"utility-science-pack", 1}
                },
                time = 25
            }
        },
        {
            type = "technology",
            name = "rotator-tech",
            icon = "__Atlas_ATF__/graphics/tech/minigun.png",
            icon_size = 256,
            effects = {
                {
                    type = "unlock-recipe",
                    recipe = "m134"
                },
                {
                    type = "unlock-recipe",
                    recipe = "deathmachine"
                },
                {
                    type = "unlock-recipe",
                    recipe = "556belt"
                },
                {
                    type = "unlock-recipe",
                    recipe = "762belt"
                }
            },
            prerequisites = {"hmg-tech", "concept-tech"},
            unit = {
                count = 500,
                ingredients = {
                    {"automation-science-pack", 1},
                    {"logistic-science-pack", 1},
                    {"chemical-science-pack", 1},
                    {"production-science-pack", 1},
                    {"military-science-pack", 1}
                },
                time = 30
            }
        },
        {
            type = "technology",
            name = "rotator-tech2",
            icon = "__Atlas_ATF__/graphics/tech/gau.png",
            icon_size = 256,
            effects = {
                {
                    type = "unlock-recipe",
                    recipe = "gau"
                },
                {
                    type = "unlock-recipe",
                    recipe = "20mm-he"
                },
                {
                    type = "unlock-recipe",
                    recipe = "ATF-gau-turret"
                }
            },
            prerequisites = {"rotator-tech"},
            unit = {
                count = 600,
                ingredients = {
                    {"automation-science-pack", 1},
                    {"logistic-science-pack", 1},
                    {"chemical-science-pack", 1},
                    {"production-science-pack", 1},
                    {"military-science-pack", 1}
                },
                time = 10
            }
        },
        {
            type = "technology",
            name = "future-tech",
            icon = "__Atlas_ATF__/graphics/tech/future.png",
            icon_size = 256,
            effects = {
                {
                    type = "unlock-recipe",
                    recipe = "ATF-plasma-cell"
                },
                {
                    type = "unlock-recipe",
                    recipe = "ATF-future-receiver"
                },
                {
                    type = "unlock-recipe",
                    recipe = "ATF-future-barrel"
                },
                {
                    type = "unlock-recipe",
                    recipe = "ATF-supercap"
                },
                {
                    type = "unlock-recipe",
                    recipe = "ATF-plasmaheater"
                },
                {
                    type = "unlock-recipe",
                    recipe = "plasma40watt"
                },
                {
                    type = "unlock-recipe",
                    recipe = "killerwatt"
                },
                {
                    type = "unlock-recipe",
                    recipe = "heliosrifle"
                },
                {
                    type = "unlock-recipe",
                    recipe = "laserrcw"
                },
                {
                    type = "unlock-recipe",
                    recipe = "40wattmag"
                },
                {
                    type = "unlock-recipe",
                    recipe = "killerwattmag"
                },
                {
                    type = "unlock-recipe",
                    recipe = "heliosmag"
                },
                {
                    type = "unlock-recipe",
                    recipe = "ATF-fusion-battery"
                },
                {
                    type = "unlock-recipe",
                    recipe = "ATF-m25-turret"
                },
                {
                    type = "unlock-recipe",
                    recipe = "ATF-rcw-turret"
                }
            },
            prerequisites = {"concept-tech2","low-density-structure","uranium-processing","laser"},
            unit = {
                count = 600,
                ingredients = {
                    {"automation-science-pack", 1},
                    {"logistic-science-pack", 1},
                    {"chemical-science-pack", 1},
                    {"production-science-pack", 1},
                    {"military-science-pack", 1},
                    {"utility-science-pack", 1}
                },
                time = 30
            }
        },
        {
            type = "technology",
            name = "advanced-pa-tech",
            icon = "__Atlas_ATF__/graphics/armor/tesla.png",
            icon_size = 256,
            effects = {
                {
                    type = "unlock-recipe",
                    recipe = "ATF-tesla-armor"
                },
                {
                    type = "unlock-recipe",
                    recipe = "ATF-hellfire-armor"
                }
            },
            prerequisites = {"future-tech", "power-armor-mk2"},
            unit = {
                count = 500,
                ingredients = {
                    {"automation-science-pack", 1},
                    {"logistic-science-pack", 1},
                    {"chemical-science-pack", 1},
                    {"production-science-pack", 1},
                    {"military-science-pack", 1},
                    {"utility-science-pack", 1}
                },
                time = 30
            }
        },
        {
            type = "technology",
            name = "advanced-pa-tech-2",
            icon = "__Atlas_ATF__/graphics/armor/eliminator.png",
            icon_size = 256,
            effects = {
                {
                    type = "unlock-recipe",
                    recipe = "ATF-eliminator-armor"
                }
            },
            prerequisites = {"advanced-pa-tech"},
            unit = {
                count = 600,
                ingredients = {
                    {"automation-science-pack", 1},
                    {"logistic-science-pack", 1},
                    {"chemical-science-pack", 1},
                    {"production-science-pack", 1},
                    {"military-science-pack", 1},
                    {"utility-science-pack", 1},
                    {"space-science-pack", 1}
                },
                time = 30
            }
        },
        {
            type = "technology",
            name = "ATF-trade",
            icon = "__Atlas_ATF__/graphics/items/gold.png",
            icon_size = 256,
            effects = {
                {
                    type = "unlock-recipe",
                    recipe = "ATF-market"
                }
            },
            prerequisites = {"advanced-circuit"},
            unit = {
                count = 300,
                ingredients = {
                    {"automation-science-pack", 1},
                    {"logistic-science-pack", 1},
                    {"chemical-science-pack", 1}
                },
                time = 30
            }
        }
    }
)
