-- turret-recipes.lua
-- Рецепты крафта турелей ATF (SWATT, M25, RCW, Grenade, GAU)
-- Версия: 1.1 (Rebalance by Mechromancer-Zero)
-- Интеграция: Bob's Warfare Compatibility

data:extend({
    -- =========================================================================
    -- ATF-swatt-turret: Электрическая турель SWATT (5.56mm electric)
    -- =========================================================================
    {
        type ="recipe",
        name ="ATF-swatt-turret",
        category ="crafting",
        energy_required = 10,
        enabled = false,
        ingredients = {
            {type ="item", name ="swatt", amount = 1},
            {type ="item", name ="556-swatt", amount = 2},
            {type ="item", name ="steel-plate", amount = 4},
            {type ="item", name ="advanced-circuit", amount = 2}
        },
        results = {
            {type ="item", name ="ATF-swatt-turret", amount = 1}
        }
    },

    -- =========================================================================
    -- ATF-m25-turret: Плазменная турель M25 (40 Watt plasma)
    -- =========================================================================
    {
        type ="recipe",
        name ="ATF-m25-turret",
        category ="crafting",
        energy_required = 10,
        enabled = false,
        ingredients = {
            {type ="item", name ="plasma40watt", amount = 1},
            {type ="item", name ="40wattmag", amount = 2},
            {type ="item", name ="steel-plate", amount = 6},
            {type ="item", name ="processing-unit", amount = 1}
        },
        results = {
            {type ="item", name ="ATF-m25-turret", amount = 1}
        }
    },

    -- =========================================================================
    -- ATF-rcw-turret: Лазерная турель RCW (Killer Watt laser)
    -- =========================================================================
    {
        type ="recipe",
        name ="ATF-rcw-turret",
        category ="crafting",
        energy_required = 10,
        enabled = false,
        ingredients = {
            {type ="item", name ="laserrcw", amount = 1},
            {type ="item", name ="ATF-fusion-battery", amount = 2},
            {type ="item", name ="steel-plate", amount = 6},
            {type ="item", name ="processing-unit", amount = 1}
        },
        results = {
            {type ="item", name ="ATF-rcw-turret", amount = 1}
        }
    },

    -- =========================================================================
    -- ATF-grenade-turret: Гранатомётная турель T1 (M32 grenade launcher)
    -- =========================================================================
    {
        type ="recipe",
        name ="ATF-grenade-turret",
        category ="crafting",
        energy_required = 10,
        enabled = false,
        ingredients = {
            {type ="item", name ="m32", amount = 1},
            {type ="item", name ="steel-plate", amount = 4},
            {type ="item", name ="advanced-circuit", amount = 2}
        },
        results = {
            {type ="item", name ="ATF-grenade-turret", amount = 1}
        }
    },

    -- =========================================================================
    -- ATF-grenade-turret-2: Гранатомётная турель T2 (улучшенная)
    -- =========================================================================
    {
        type ="recipe",
        name ="ATF-grenade-turret-2",
        category ="crafting",
        energy_required = 10,
        enabled = false,
        ingredients = {
            {type ="item", name ="ATF-future-barrel", amount = 1},
            {type ="item", name ="ATF-future-receiver", amount = 1},
            {type ="item", name ="ATF-grenade-turret", amount = 1}
        },
        results = {
            {type ="item", name ="ATF-grenade-turret-2", amount = 1}
        }
    },

    -- =========================================================================
    -- ATF-gau-turret: Ротативная турель GAU (20mm rotator)
    -- =========================================================================
    {
        type ="recipe",
        name ="ATF-gau-turret",
        category ="crafting",
        energy_required = 10,
        enabled = false,
        ingredients = {
            {type ="item", name ="gau", amount = 1},
            {type ="item", name ="steel-plate", amount = 4},
            {type ="item", name ="advanced-circuit", amount = 2}
        },
        results = {
            {type ="item", name ="ATF-gau-turret", amount = 1}
        }
    }
})

-- ============================================================================
-- ЛОГИРОВАНИЕ ЗАГРУЗКИ
-- ============================================================================

log("[ATF-Rebalance] Turret recipes loaded successfully (6 recipes registered)")

-- ============================================================================
-- ИНТЕГРАЦИЯ С BOB'S WARFARE (опционально)
-- ============================================================================

if mods["bobwarfare"] then
    log("[ATF-Rebalance] Bob's Warfare detected - turret recipes compatible")
end