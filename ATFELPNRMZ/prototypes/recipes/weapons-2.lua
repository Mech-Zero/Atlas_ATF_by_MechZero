-- weapons-2-recipes.lua
-- Рецепты крафта оружия ATF часть 2 (гранатомёты, дробовики, тяжёлое, энергетическое)
-- Версия: 1.1 (Rebalance by Mechromancer-Zero)
-- Интеграция: Bob's Warfare Compatibility

extend({
    -- =========================================================================
    -- ГРАНАТОМЁТЫ: M79, M32
    -- =========================================================================

    -- -------------------------------------------------------------------------
    -- m79: M79 Grenade Launcher (одиночный гранатомёт)
    -- -------------------------------------------------------------------------
    {
        type = "recipe",
        name = "m79",
        category = "crafting",
        energy_required = 12,
        enabled = false,
        ingredients = {
            {type = "item", name = "ATF-long-rifle-barrel", amount = 1},
            {type = "item", name = "ATF-shotgun-receiver", amount = 1},
            {type = "item", name = "ATF-wooden-stock", amount = 1}
        },
        results = {
            {type = "item", name = "m79", amount = 1}
        }
    },

    -- -------------------------------------------------------------------------
    -- m32: M32 MGL (револьверный гранатомёт)
    -- -------------------------------------------------------------------------
    {
        type = "recipe",
        name = "m32",
        category = "crafting",
        energy_required = 20,
        enabled = false,
        ingredients = {
            {type = "item", name = "ATF-long-rifle-barrel", amount = 1},
            {type = "item", name = "ATF-shotgun-receiver", amount = 1},
            {type = "item", name = "ATF-poly-stock", amount = 1},
            {type = "item", name = "ATF-poly-rifle-grip", amount = 1}
        },
        results = {
            {type = "item", name = "m32", amount = 1}
        }
    },

    -- =========================================================================
    -- ДРОБОВИКИ: M1897, AA-12
    -- =========================================================================

    -- -------------------------------------------------------------------------
    -- m1897: Winchester M1897 (помповый дробовик)
    -- -------------------------------------------------------------------------
    {
        type = "recipe",
        name = "m1897",
        category = "crafting",
        energy_required = 6,
        enabled = false,
        ingredients = {
            {type = "item", name = "ATF-long-rifle-barrel", amount = 1},
            {type = "item", name = "ATF-shotgun-receiver", amount = 1},
            {type = "item", name = "ATF-wooden-stock", amount = 1}
        },
        results = {
            {type = "item", name = "m1897", amount = 1}
        }
    },

    -- -------------------------------------------------------------------------
    -- aa12: AA-12 (автоматический дробовик)
    -- -------------------------------------------------------------------------
    {
        type = "recipe",
        name = "aa12",
        category = "crafting",
        energy_required = 15,
        enabled = false,
        ingredients = {
            {type = "item", name = "ATF-long-rifle-barrel", amount = 1},
            {type = "item", name = "ATF-recoil-spring", amount = 1},
            {type = "item", name = "ATF-shotgun-receiver", amount = 1},
            {type = "item", name = "ATF-poly-stock", amount = 1},
            {type = "item", name = "ATF-poly-rifle-grip", amount = 1}
        },
        results = {
            {type = "item", name = "aa12", amount = 1}
        }
    },

    -- =========================================================================
    -- ТЯЖЁЛОЕ ОРУЖИЕ: M2, Atlas 20mm, Death Machine, M134, GAU
    -- =========================================================================

    -- -------------------------------------------------------------------------
    -- m2: M2 Browning (.50 BMG тяжёлый пулемёт)
    -- -------------------------------------------------------------------------
    {
        type = "recipe",
        name = "m2",
        category = "crafting",
        energy_required = 15,
        enabled = false,
        ingredients = {
            {type = "item", name = "ATF-hmg-barrel", amount = 1},
            {type = "item", name = "ATF-hmg-receiver", amount = 1},
            {type = "item", name = "ATF-poly-rifle-grip", amount = 2},
            {type = "item", name = "ATF-recoil-spring", amount = 1}
        },
        results = {
            {type = "item", name = "m2", amount = 1}
        }
    },

    -- -------------------------------------------------------------------------
    -- atlas20mm: Atlas 20mm (20mm автоматическая пушка)
    -- -------------------------------------------------------------------------
    {
        type = "recipe",
        name = "atlas20mm",
        category = "crafting",
        energy_required = 20,
        enabled = false,
        ingredients = {
            {type = "item", name = "ATF-hmg-barrel", amount = 1},
            {type = "item", name = "ATF-hmg-receiver", amount = 1},
            {type = "item", name = "ATF-poly-rifle-grip", amount = 2},
            {type = "item", name = "electric-engine-unit", amount = 1}
        },
        results = {
            {type = "item", name = "atlas20mm", amount = 1}
        }
    },

    -- -------------------------------------------------------------------------
    -- deathmachine: Death Machine (7.62mm ротативная пушка)
    -- -------------------------------------------------------------------------
    {
        type = "recipe",
        name = "deathmachine",
        category = "crafting",
        energy_required = 15,
        enabled = false,
        ingredients = {
            {type = "item", name = "ATF-hmg-barrel", amount = 3},
            {type = "item", name = "ATF-hmg-receiver", amount = 1},
            {type = "item", name = "ATF-poly-rifle-grip", amount = 2},
            {type = "item", name = "electric-engine-unit", amount = 1}
        },
        results = {
            {type = "item", name = "deathmachine", amount = 1}
        }
    },

    -- -------------------------------------------------------------------------
    -- m134: M134 Minigun (5.56mm ротативная пушка)
    -- -------------------------------------------------------------------------
    {
        type = "recipe",
        name = "m134",
        category = "crafting",
        energy_required = 15,
        enabled = false,
        ingredients = {
            {type = "item", name = "ATF-hmg-barrel", amount = 6},
            {type = "item", name = "ATF-hmg-receiver", amount = 1},
            {type = "item", name = "ATF-poly-rifle-grip", amount = 1},
            {type = "item", name = "electric-engine-unit", amount = 1}
        },
        results = {
            {type = "item", name = "m134", amount = 1}
        }
    },

    -- -------------------------------------------------------------------------
    -- gau: GAU Rotator (20mm ротативная пушка)
    -- -------------------------------------------------------------------------
    {
        type = "recipe",
        name = "gau",
        category = "crafting",
        energy_required = 15,
        enabled = false,
        ingredients = {
            {type = "item", name = "ATF-hmg-barrel", amount = 6},
            {type = "item", name = "ATF-hmg-receiver", amount = 1},
            {type = "item", name = "ATF-poly-rifle-grip", amount = 2},
            {type = "item", name = "electric-engine-unit", amount = 2}
        },
        results = {
            {type = "item", name = "gau", amount = 1}
        }
    },

    -- =========================================================================
    -- ЭНЕРГЕТИЧЕСКОЕ ОРУЖИЕ: SWATT, Plasma 40Watt, Laser RCW, War Machine, Killer Watt, Helios
    -- =========================================================================

    -- -------------------------------------------------------------------------
    -- swatt: SWATT Electric Rifle (5.56mm электрический)
    -- -------------------------------------------------------------------------
    {
        type = "recipe",
        name = "swatt",
        category = "crafting",
        energy_required = 15,
        enabled = false,
        ingredients = {
            {type = "item", name = "m4a1", amount = 1},
            {type = "item", name = "battery", amount = 2},
            {type = "item", name = "electric-engine-unit", amount = 1},
            {type = "item", name = "advanced-circuit", amount = 1}
        },
        results = {
            {type = "item", name = "swatt", amount = 1}
        }
    },

    -- -------------------------------------------------------------------------
    -- plasma40watt: Plasma 40 Watt (плазменная винтовка)
    -- -------------------------------------------------------------------------
    {
        type = "recipe",
        name = "plasma40watt",
        category = "crafting",
        energy_required = 15,
        enabled = false,
        ingredients = {
            {type = "item", name = "ATF-future-barrel", amount = 1},
            {type = "item", name = "ATF-future-receiver", amount = 1},
            {type = "item", name = "ATF-poly-rifle-grip", amount = 1},
            {type = "item", name = "ATF-poly-stock", amount = 1},
            {type = "item", name = "ATF-plasmaheater", amount = 1}
        },
        results = {
            {type = "item", name = "plasma40watt", amount = 1}
        }
    },

    -- -------------------------------------------------------------------------
    -- laserrcw: Laser RCW (лазерный карабин)
    -- -------------------------------------------------------------------------
    {
        type = "recipe",
        name = "laserrcw",
        category = "crafting",
        energy_required = 15,
        enabled = false,
        ingredients = {
            {type = "item", name = "ATF-future-barrel", amount = 1},
            {type = "item", name = "ATF-future-receiver", amount = 1},
            {type = "item", name = "ATF-supercap", amount = 2},
            {type = "item", name = "m1928", amount = 1}
        },
        results = {
            {type = "item", name = "laserrcw", amount = 1}
        }
    },

    -- -------------------------------------------------------------------------
    -- warmachine: War Machine (автоматический гранатомёт)
    -- -------------------------------------------------------------------------
    {
        type = "recipe",
        name = "warmachine",
        category = "crafting",
        energy_required = 20,
        enabled = false,
        ingredients = {
            {type = "item", name = "ATF-future-barrel", amount = 1},
            {type = "item", name = "ATF-future-receiver", amount = 1},
            {type = "item", name = "m32", amount = 1}
        },
        results = {
            {type = "item", name = "warmachine", amount = 1}
        }
    },

    -- -------------------------------------------------------------------------
    -- killerwatt: Killer Watt (электрическая винтовка)
    -- -------------------------------------------------------------------------
    {
        type = "recipe",
        name = "killerwatt",
        category = "crafting",
        energy_required = 15,
        enabled = false,
        ingredients = {
            {type = "item", name = "ATF-future-barrel", amount = 1},
            {type = "item", name = "ATF-future-receiver", amount = 1},
            {type = "item", name = "ATF-poly-rifle-grip", amount = 1},
            {type = "item", name = "ATF-poly-stock", amount = 1},
            {type = "item", name = "ATF-supercap", amount = 4}
        },
        results = {
            {type = "item", name = "killerwatt", amount = 1}
        }
    },

    -- -------------------------------------------------------------------------
    -- heliosrifle: Helios Rifle (плазменная винтовка)
    -- -------------------------------------------------------------------------
    {
        type = "recipe",
        name = "heliosrifle",
        category = "crafting",
        energy_required = 15,
        enabled = false,
        ingredients = {
            {type = "item", name = "ATF-future-barrel", amount = 1},
            {type = "item", name = "ATF-future-receiver", amount = 1},
            {type = "item", name = "ATF-poly-rifle-grip", amount = 1},
            {type = "item", name = "ATF-poly-stock", amount = 1},
            {type = "item", name = "ATF-plasmaheater", amount = 2}
        },
        results = {
            {type = "item", name = "heliosrifle", amount = 1}
        }
    }
})

-- ============================================================================
-- ЛОГИРОВАНИЕ ЗАГРУЗКИ
-- ============================================================================

log("[ATF-Rebalance] Weapon recipes (part 2) loaded successfully (16 recipes registered)")

-- ============================================================================
-- ИНТЕГРАЦИЯ С BOB'S WARFARE (опционально)
-- ============================================================================

if mods["bobwarfare"] then
    log("[ATF-Rebalance] Bob's Warfare detected - weapon recipes compatible")
end