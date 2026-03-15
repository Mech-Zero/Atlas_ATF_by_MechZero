-- weapons-1-recipes.lua
-- Рецепты крафта оружия ATF часть 1 (пистолеты, ПП, автоматы, винтовки, пулемёты)
-- Версия: 1.1 (Rebalance by Mechromancer-Zero)
-- Интеграция: Bob's Warfare Compatibility

extend({
    -- =========================================================================
    -- ПИСТОЛЕТЫ: C96, P60, Glock, 1911
    -- =========================================================================

    -- -------------------------------------------------------------------------
    -- c96: Mauser C96 (пистолет WW1 эры)
    -- -------------------------------------------------------------------------
    {
        type ="recipe",
        name ="c96",
        category ="crafting",
        energy_required = 5,
        enabled = true,
        ingredients = {
            {type ="item", name ="ATF-pistol-grip", amount = 1},
            {type ="item", name ="ATF-pistol-frame-metal", amount = 1},
            {type ="item", name ="ATF-pistol-barrel", amount = 1},
            {type ="item", name ="ATF-recoil-spring", amount = 1}
        },
        results = {
            {type ="item", name ="c96", amount = 1}
        }
    },

    -- -------------------------------------------------------------------------
    -- p60: P60 Concept Pistol (концепт-пистолет)
    -- -------------------------------------------------------------------------
    {
        type ="recipe",
        name ="p60",
        category ="crafting",
        energy_required = 10,
        enabled = false,
        ingredients = {
            {type ="item", name ="ATF-pistol-grip", amount = 1},
            {type ="item", name ="ATF-pistol-frame-modern", amount = 1},
            {type ="item", name ="ATF-recoil-spring", amount = 1},
            {type ="item", name ="ATF-pistol-barrel", amount = 1}
        },
        results = {
            {type ="item", name ="p60", amount = 1}
        }
    },

    -- -------------------------------------------------------------------------
    -- glock: Glock 17/19 (современный пистолет)
    -- -------------------------------------------------------------------------
    {
        type ="recipe",
        name ="glock",
        category ="crafting",
        energy_required = 8,
        enabled = false,
        ingredients = {
            {type ="item", name ="ATF-pistol-grip", amount = 1},
            {type ="item", name ="ATF-pistol-frame-modern", amount = 1},
            {type ="item", name ="ATF-pistol-slide", amount = 1},
            {type ="item", name ="ATF-recoil-spring", amount = 1},
            {type ="item", name ="ATF-pistol-barrel", amount = 1}
        },
        results = {
            {type ="item", name ="glock", amount = 1}
        }
    },

    -- -------------------------------------------------------------------------
    -- 1911: Colt 1911 (классический пистолет)
    -- -------------------------------------------------------------------------
    {
        type ="recipe",
        name ="1911",
        category ="crafting",
        energy_required = 8,
        enabled = true,
        ingredients = {
            {type ="item", name ="ATF-pistol-grip", amount = 1},
            {type ="item", name ="ATF-pistol-slide", amount = 1},
            {type ="item", name ="ATF-pistol-frame-metal", amount = 1},
            {type ="item", name ="ATF-recoil-spring", amount = 1},
            {type ="item", name ="ATF-pistol-barrel", amount = 1}
        },
        results = {
            {type ="item", name ="1911", amount = 1}
        }
    },

    -- =========================================================================
    -- АВТОМАТЫ: AKM, AK74M, M4A1, HK416, ACR
    -- =========================================================================

    -- -------------------------------------------------------------------------
    -- akm: AKM (советский автомат)
    -- -------------------------------------------------------------------------
    {
        type ="recipe",
        name ="akm",
        category ="crafting",
        energy_required = 10,
        enabled = false,
        ingredients = {
            {type ="item", name ="ATF-wooden-stock", amount = 1},
            {type ="item", name ="ATF-rifle-grip", amount = 1},
            {type ="item", name ="ATF-short-rifle-barrel", amount = 1},
            {type ="item", name ="ATF-recoil-spring", amount = 1},
            {type ="item", name ="ATF-auto-receiver", amount = 1}
        },
        results = {
            {type ="item", name ="akm", amount = 1}
        }
    },

    -- -------------------------------------------------------------------------
    -- ak74m: AK-74M (модернизированный советский автомат)
    -- -------------------------------------------------------------------------
    {
        type ="recipe",
        name ="ak74m",
        category ="crafting",
        energy_required = 10,
        enabled = false,
        ingredients = {
            {type ="item", name ="ATF-poly-stock", amount = 1},
            {type ="item", name ="ATF-poly-rifle-grip", amount = 1},
            {type ="item", name ="ATF-short-rifle-barrel", amount = 1},
            {type ="item", name ="ATF-recoil-spring", amount = 1},
            {type ="item", name ="ATF-auto-receiver", amount = 1}
        },
        results = {
            {type ="item", name ="ak74m", amount = 1}
        }
    },

    -- -------------------------------------------------------------------------
    -- m4a1: M4A1 (американский карабин)
    -- -------------------------------------------------------------------------
    {
        type ="recipe",
        name ="m4a1",
        category ="crafting",
        energy_required = 15,
        enabled = false,
        ingredients = {
            {type ="item", name ="ATF-poly-stock", amount = 1},
            {type ="item", name ="ATF-poly-rifle-grip", amount = 1},
            {type ="item", name ="ATF-short-rifle-barrel", amount = 1},
            {type ="item", name ="ATF-recoil-spring", amount = 1},
            {type ="item", name ="ATF-powerful-receiver", amount = 1}
        },
        results = {
            {type ="item", name ="m4a1", amount = 1}
        }
    },

    -- -------------------------------------------------------------------------
    -- hk416: H&K 416 (немецкий автомат)
    -- -------------------------------------------------------------------------
    {
        type ="recipe",
        name ="hk416",
        category ="crafting",
        energy_required = 14,
        enabled = false,
        ingredients = {
            {type ="item", name ="ATF-poly-stock", amount = 1},
            {type ="item", name ="ATF-poly-rifle-grip", amount = 1},
            {type ="item", name ="ATF-short-rifle-barrel", amount = 1},
            {type ="item", name ="ATF-recoil-spring", amount = 1},
            {type ="item", name ="ATF-powerful-receiver", amount = 1}
        },
        results = {
            {type ="item", name ="hk416", amount = 1}
        }
    },

    -- -------------------------------------------------------------------------
    -- acr: ACR (американский автомат)
    -- -------------------------------------------------------------------------
    {
        type ="recipe",
        name ="acr",
        category ="crafting",
        energy_required = 15,
        enabled = false,
        ingredients = {
            {type ="item", name ="ATF-poly-stock", amount = 1},
            {type ="item", name ="ATF-poly-rifle-grip", amount = 1},
            {type ="item", name ="ATF-short-rifle-barrel", amount = 1},
            {type ="item", name ="ATF-recoil-spring", amount = 1},
            {type ="item", name ="ATF-powerful-receiver", amount = 1}
        },
        results = {
            {type ="item", name ="acr", amount = 1}
        }
    },

    -- =========================================================================
    -- ПП: MP5, Vector, M1928, PPSh, MP40, MP18
    -- =========================================================================

    -- -------------------------------------------------------------------------
    -- mp5: H&K MP5 (немецкий ПП)
    -- -------------------------------------------------------------------------
    {
        type ="recipe",
        name ="mp5",
        category ="crafting",
        energy_required = 10,
        enabled = false,
        ingredients = {
            {type ="item", name ="ATF-smg-receiver-modern", amount = 1},
            {type ="item", name ="ATF-smg-barrel", amount = 1},
            {type ="item", name ="ATF-poly-stock", amount = 1},
            {type ="item", name ="ATF-poly-rifle-grip", amount = 1},
            {type ="item", name ="ATF-recoil-spring", amount = 1}
        },
        results = {
            {type ="item", name ="mp5", amount = 1}
        }
    },

    -- -------------------------------------------------------------------------
    -- vector: KRISS Vector (американский ПП)
    -- -------------------------------------------------------------------------
    {
        type ="recipe",
        name ="vector",
        category ="crafting",
        energy_required = 20,
        enabled = false,
        ingredients = {
            {type ="item", name ="ATF-smg-receiver-modern", amount = 1},
            {type ="item", name ="ATF-smg-barrel", amount = 1},
            {type ="item", name ="ATF-poly-stock", amount = 1},
            {type ="item", name ="ATF-recoil-spring", amount = 1},
            {type ="item", name ="ATF-poly-rifle-grip", amount = 1}
        },
        results = {
            {type ="item", name ="vector", amount = 1}
        }
    },

    -- -------------------------------------------------------------------------
    -- m1928: Thompson M1928 (американский ПП)
    -- -------------------------------------------------------------------------
    {
        type ="recipe",
        name ="m1928",
        category ="crafting",
        energy_required = 10,
        enabled = false,
        ingredients = {
            {type ="item", name ="ATF-smg-receiver-milled", amount = 1},
            {type ="item", name ="ATF-smg-barrel", amount = 1},
            {type ="item", name ="ATF-wooden-stock", amount = 1},
            {type ="item", name ="ATF-recoil-spring", amount = 1},
            {type ="item", name ="ATF-pistol-grip", amount = 1}
        },
        results = {
            {type ="item", name ="m1928", amount = 1}
        }
    },

    -- -------------------------------------------------------------------------
    -- ppsh: ППШ-41 (советский ПП)
    -- -------------------------------------------------------------------------
    {
        type ="recipe",
        name ="ppsh",
        category ="crafting",
        energy_required = 10,
        enabled = false,
        ingredients = {
            {type ="item", name ="ATF-smg-receiver-stamped", amount = 1},
            {type ="item", name ="ATF-smg-barrel", amount = 1},
            {type ="item", name ="ATF-recoil-spring", amount = 1},
            {type ="item", name ="ATF-wooden-stock", amount = 1}
        },
        results = {
            {type ="item", name ="ppsh", amount = 1}
        }
    },

    -- -------------------------------------------------------------------------
    -- mp40: MP40 (немецкий ПП)
    -- -------------------------------------------------------------------------
    {
        type ="recipe",
        name ="mp40",
        category ="crafting",
        energy_required = 10,
        enabled = false,
        ingredients = {
            {type ="item", name ="ATF-smg-receiver-stamped", amount = 1},
            {type ="item", name ="ATF-smg-barrel", amount = 1},
            {type ="item", name ="ATF-metal-stock", amount = 1},
            {type ="item", name ="ATF-recoil-spring", amount = 1},
            {type ="item", name ="ATF-pistol-grip", amount = 1}
        },
        results = {
            {type ="item", name ="mp40", amount = 1}
        }
    },

    -- -------------------------------------------------------------------------
    -- mp18: MP18 Bergmann (немецкий ПП WW1)
    -- -------------------------------------------------------------------------
    {
        type ="recipe",
        name ="mp18",
        category ="crafting",
        energy_required = 10,
        enabled = false,
        ingredients = {
            {type ="item", name ="ATF-smg-receiver-milled", amount = 1},
            {type ="item", name ="ATF-smg-barrel", amount = 1},
            {type ="item", name ="ATF-recoil-spring", amount = 1},
            {type ="item", name ="ATF-wooden-stock", amount = 1}
        },
        results = {
            {type ="item", name ="mp18", amount = 1}
        }
    },

    -- =========================================================================
    -- ВИНТОВКИ: STG44, G3, STG60, K98, Lee, G43, 1903, M14
    -- =========================================================================

    -- -------------------------------------------------------------------------
    -- stg44: STG44 (немецкий автомат WW2)
    -- -------------------------------------------------------------------------
    {
        type ="recipe",
        name ="stg44",
        category ="crafting",
        energy_required = 10,
        enabled = false,
        ingredients = {
            {type ="item", name ="ATF-wooden-stock", amount = 1},
            {type ="item", name ="ATF-rifle-grip", amount = 1},
            {type ="item", name ="ATF-short-rifle-barrel", amount = 1},
            {type ="item", name ="ATF-recoil-spring", amount = 1},
            {type ="item", name ="ATF-auto-receiver", amount = 1}
        },
        results = {
            {type ="item", name ="stg44", amount = 1}
        }
    },

    -- -------------------------------------------------------------------------
    -- g3: H&K G3 (немецкая винтовка холодной войны)
    -- -------------------------------------------------------------------------
    {
        type ="recipe",
        name ="g3",
        category ="crafting",
        energy_required = 15,
        enabled = false,
        ingredients = {
            {type ="item", name ="ATF-poly-stock", amount = 1},
            {type ="item", name ="ATF-rifle-grip", amount = 1},
            {type ="item", name ="ATF-short-rifle-barrel", amount = 1},
            {type ="item", name ="ATF-recoil-spring", amount = 1},
            {type ="item", name ="ATF-auto-receiver", amount = 1}
        },
        results = {
            {type ="item", name ="g3", amount = 1}
        }
    },

    -- -------------------------------------------------------------------------
    -- stg60: STG60 (концепт-винтовка)
    -- -------------------------------------------------------------------------
    {
        type ="recipe",
        name ="stg60",
        category ="crafting",
        energy_required = 15,
        enabled = false,
        ingredients = {
            {type ="item", name ="ATF-poly-stock", amount = 1},
            {type ="item", name ="ATF-powerful-receiver", amount = 1},
            {type ="item", name ="ATF-rifle-grip", amount = 1},
            {type ="item", name ="ATF-recoil-spring", amount = 1},
            {type ="item", name ="ATF-short-rifle-barrel", amount = 1}
        },
        results = {
            {type ="item", name ="stg60", amount = 1}
        }
    },

    -- -------------------------------------------------------------------------
    -- k98: Karabiner 98k (немецкая болтовая винтовка)
    -- -------------------------------------------------------------------------
    {
        type ="recipe",
        name ="k98",
        category ="crafting",
        energy_required = 10,
        enabled = false,
        ingredients = {
            {type ="item", name ="ATF-wooden-stock", amount = 1},
            {type ="item", name ="ATF-bolt-receiver", amount = 1},
            {type ="item", name ="ATF-long-rifle-barrel", amount = 1}
        },
        results = {
            {type ="item", name ="k98", amount = 1}
        }
    },

    -- -------------------------------------------------------------------------
    -- lee: Lee-Enfield (британская болтовая винтовка)
    -- -------------------------------------------------------------------------
    {
        type ="recipe",
        name ="lee",
        category ="crafting",
        energy_required = 10,
        enabled = false,
        ingredients = {
            {type ="item", name ="ATF-wooden-stock", amount = 1},
            {type ="item", name ="ATF-bolt-receiver", amount = 1},
            {type ="item", name ="ATF-long-rifle-barrel", amount = 1}
        },
        results = {
            {type ="item", name ="lee", amount = 1}
        }
    },

    -- -------------------------------------------------------------------------
    -- g43: Gewehr 43 (немецкая полуавтоматическая винтовка)
    -- -------------------------------------------------------------------------
    {
        type ="recipe",
        name ="g43",
        category ="crafting",
        energy_required = 10,
        enabled = false,
        ingredients = {
            {type ="item", name ="ATF-wooden-stock", amount = 1},
            {type ="item", name ="ATF-semi-receiver", amount = 1},
            {type ="item", name ="ATF-long-rifle-barrel", amount = 1}
        },
        results = {
            {type ="item", name ="g43", amount = 1}
        }
    },

    -- -------------------------------------------------------------------------
    -- 1903: Springfield 1903 (американская болтовая винтовка)
    -- -------------------------------------------------------------------------
    {
        type ="recipe",
        name ="1903",
        category ="crafting",
        energy_required = 10,
        enabled = false,
        ingredients = {
            {type ="item", name ="ATF-wooden-stock", amount = 1},
            {type ="item", name ="ATF-long-rifle-barrel", amount = 1},
            {type ="item", name ="ATF-bolt-receiver", amount = 1}
        },
        results = {
            {type ="item", name ="1903", amount = 1}
        }
    },

    -- -------------------------------------------------------------------------
    -- m14: M14 (американская винтовка)
    -- -------------------------------------------------------------------------
    {
        type ="recipe",
        name ="m14",
        category ="crafting",
        energy_required = 15,
        enabled = false,
        ingredients = {
            {type ="item", name ="ATF-wooden-stock", amount = 1},
            {type ="item", name ="ATF-long-rifle-barrel", amount = 1},
            {type ="item", name ="ATF-recoil-spring", amount = 1},
            {type ="item", name ="ATF-auto-receiver", amount = 1}
        },
        results = {
            {type ="item", name ="m14", amount = 1}
        }
    },

    -- =========================================================================
    -- ПУЛЕМЁТЫ: Bren, BAR, MG42, M1919
    -- =========================================================================

    -- -------------------------------------------------------------------------
    -- bren: Bren Gun (британский пулемёт)
    -- -------------------------------------------------------------------------
    {
        type ="recipe",
        name ="bren",
        category ="crafting",
        energy_required = 20,
        enabled = false,
        ingredients = {
            {type ="item", name ="ATF-wooden-stock", amount = 1},
            {type ="item", name ="ATF-mg-barrel", amount = 1},
            {type ="item", name ="ATF-recoil-spring", amount = 1},
            {type ="item", name ="ATF-mg-receiver", amount = 1}
        },
        results = {
            {type ="item", name ="bren", amount = 1}
        }
    },

    -- -------------------------------------------------------------------------
    -- bar: BAR M1918 (американский автоматический карабин)
    -- -------------------------------------------------------------------------
    {
        type ="recipe",
        name ="bar",
        category ="crafting",
        energy_required = 20,
        enabled = false,
        ingredients = {
            {type ="item", name ="ATF-wooden-stock", amount = 1},
            {type ="item", name ="ATF-mg-barrel", amount = 1},
            {type ="item", name ="ATF-recoil-spring", amount = 1},
            {type ="item", name ="ATF-mg-receiver", amount = 1}
        },
        results = {
            {type ="item", name ="bar", amount = 1}
        }
    },

    -- -------------------------------------------------------------------------
    -- mg42: MG42 (немецкий пулемёт)
    -- -------------------------------------------------------------------------
    {
        type ="recipe",
        name ="mg42",
        category ="crafting",
        energy_required = 30,
        enabled = false,
        ingredients = {
            {type ="item", name ="ATF-wooden-stock", amount = 1},
            {type ="item", name ="ATF-mg-barrel", amount = 1},
            {type ="item", name ="ATF-recoil-spring", amount = 1},
            {type ="item", name ="ATF-mg-receiver", amount = 1}
        },
        results = {
            {type ="item", name ="mg42", amount = 1}
        }
    },

    -- -------------------------------------------------------------------------
    -- m1919: M1919 Browning (американский пулемёт)
    -- -------------------------------------------------------------------------
    {
        type ="recipe",
        name ="m1919",
        category ="crafting",
        energy_required = 30,
        enabled = false,
        ingredients = {
            {type ="item", name ="ATF-wooden-stock", amount = 1},
            {type ="item", name ="ATF-mg-barrel", amount = 1},
            {type ="item", name ="ATF-recoil-spring", amount = 1},
            {type ="item", name ="ATF-mg-receiver", amount = 1}
        },
        results = {
            {type ="item", name ="m1919", amount = 1}
        }
    }
})

-- ============================================================================
-- ЛОГИРОВАНИЕ ЗАГРУЗКИ
-- ============================================================================

log("[ATF-Rebalance] Weapon recipes (part 1) loaded successfully (27 recipes registered)")

-- ============================================================================
-- ИНТЕГРАЦИЯ С BOB'S WARFARE (опционально)
-- ============================================================================

if mods["bobwarfare"] then
    log("[ATF-Rebalance] Bob's Warfare detected - weapon recipes compatible")
end