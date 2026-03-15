-- buying.lua
-- Рецепты покупки предметов за ATF-cash (сбалансированные цены)
-- Версия: 2.0 (Rebalance by Mechromancer-Zero)
-- Интеграция: Bob's Mods Compatibility

data:extend({
    -- =========================================================================
    -- НАУКА: Покупка научных пакетов
    -- =========================================================================

    -- -------------------------------------------------------------------------
    -- ATF-buy-science-1: Automation Science Pack (красный)
    -- -------------------------------------------------------------------------
    {
        type ="recipe",
        name ="ATF-buy-science-1",
        category ="ATF-trade",
        subgroup ="ATF-buying-science",
        order ="a1",
        energy_required = 10,
        enabled = true,
        ingredients = {
            {type ="item", name ="ATF-cash", amount = 2}
        },
        results = {
            {type ="item", name ="automation-science-pack", amount = 20}
        }
    },

    -- -------------------------------------------------------------------------
    -- ATF-buy-science-2: Logistic Science Pack (зелёный)
    -- -------------------------------------------------------------------------
    {
        type ="recipe",
        name ="ATF-buy-science-2",
        category ="ATF-trade",
        subgroup ="ATF-buying-science",
        order ="a2",
        energy_required = 10,
        enabled = true,
        ingredients = {
            {type ="item", name ="ATF-cash", amount = 3}
        },
        results = {
            {type ="item", name ="logistic-science-pack", amount = 20}
        }
    },

    -- -------------------------------------------------------------------------
    -- ATF-buy-science-3: Military Science Pack (чёрный)
    -- -------------------------------------------------------------------------
    {
        type ="recipe",
        name ="ATF-buy-science-3",
        category ="ATF-trade",
        subgroup ="ATF-buying-science",
        order ="a3",
        energy_required = 10,
        enabled = true,
        ingredients = {
            {type ="item", name ="ATF-cash", amount = 3}
        },
        results = {
            {type ="item", name ="military-science-pack", amount = 20}
        }
    },

    -- -------------------------------------------------------------------------
    -- ATF-buy-science-4: Chemical Science Pack (синий)
    -- -------------------------------------------------------------------------
    {
        type ="recipe",
        name ="ATF-buy-science-4",
        category ="ATF-trade",
        subgroup ="ATF-buying-science",
        order ="a4",
        energy_required = 10,
        enabled = true,
        ingredients = {
            {type ="item", name ="ATF-cash", amount = 5}
        },
        results = {
            {type ="item", name ="chemical-science-pack", amount = 20}
        }
    },

    -- -------------------------------------------------------------------------
    -- ATF-buy-science-5: Production Science Pack (жёлтый)
    -- -------------------------------------------------------------------------
    {
        type ="recipe",
        name ="ATF-buy-science-5",
        category ="ATF-trade",
        subgroup ="ATF-buying-science",
        order ="a5",
        energy_required = 10,
        enabled = true,
        ingredients = {
            {type ="item", name ="ATF-cash", amount = 10}
        },
        results = {
            {type ="item", name ="production-science-pack", amount = 20}
        }
    },

    -- -------------------------------------------------------------------------
    -- ATF-buy-science-6: Utility Science Pack (фиолетовый)
    -- -------------------------------------------------------------------------
    {
        type ="recipe",
        name ="ATF-buy-science-6",
        category ="ATF-trade",
        subgroup ="ATF-buying-science",
        order ="a6",
        energy_required = 10,
        enabled = true,
        ingredients = {
            {type ="item", name ="ATF-cash", amount = 15}
        },
        results = {
            {type ="item", name ="utility-science-pack", amount = 20}
        }
    },

    -- -------------------------------------------------------------------------
    -- ATF-buy-science-7: Space Science Pack (белый)
    -- -------------------------------------------------------------------------
    {
        type ="recipe",
        name ="ATF-buy-science-7",
        category ="ATF-trade",
        subgroup ="ATF-buying-science",
        order ="a7",
        energy_required = 10,
        enabled = true,
        ingredients = {
            {type ="item", name ="ATF-cash", amount = 25}
        },
        results = {
            {type ="item", name ="space-science-pack", amount = 20}
        }
    },

    -- =========================================================================
    -- РЕСУРСЫ: Покупка базовых ресурсов
    -- =========================================================================

    -- -------------------------------------------------------------------------
    -- ATF-buy-solid: Твёрдое топливо
    -- -------------------------------------------------------------------------
    {
        type ="recipe",
        name ="ATF-buy-solid",
        category ="ATF-trade",
        subgroup ="ATF-buying",
        order ="b1",
        energy_required = 5,
        enabled = true,
        ingredients = {
            {type ="item", name ="ATF-cash", amount = 2}
        },
        results = {
            {type ="item", name ="solid-fuel", amount = 20}
        }
    },

    -- -------------------------------------------------------------------------
    -- ATF-buy-wood: Древесина
    -- -------------------------------------------------------------------------
    {
        type ="recipe",
        name ="ATF-buy-wood",
        category ="ATF-trade",
        subgroup ="ATF-buying",
        order ="b2",
        energy_required = 5,
        enabled = true,
        ingredients = {
            {type ="item", name ="ATF-cash", amount = 2}
        },
        results = {
            {type ="item", name ="wood", amount = 50}
        }
    },

    -- -------------------------------------------------------------------------
    -- ATF-buy-explosives: Взрывчатка
    -- -------------------------------------------------------------------------
    {
        type ="recipe",
        name ="ATF-buy-explosives",
        category ="ATF-trade",
        subgroup ="ATF-buying",
        order ="b3",
        energy_required = 5,
        enabled = true,
        ingredients = {
            {type ="item", name ="ATF-cash", amount = 2}
        },
        results = {
            {type ="item", name ="explosives", amount = 10}
        }
    },

    -- =========================================================================
    -- КОМПОНЕНТЫ: Покупка электронных компонентов
    -- =========================================================================

    -- -------------------------------------------------------------------------
    -- ATF-buy-circuit-1: Electronic Circuit (зелёный)
    -- -------------------------------------------------------------------------
    {
        type ="recipe",
        name ="ATF-buy-circuit-1",
        category ="ATF-trade",
        subgroup ="ATF-buying",
        order ="c1",
        energy_required = 5,
        enabled = true,
        ingredients = {
            {type ="item", name ="ATF-cash", amount = 2}
        },
        results = {
            {type ="item", name ="electronic-circuit", amount = 20}
        }
    },

    -- -------------------------------------------------------------------------
    -- ATF-buy-circuit-2: Advanced Circuit (красный)
    -- -------------------------------------------------------------------------
    {
        type ="recipe",
        name ="ATF-buy-circuit-2",
        category ="ATF-trade",
        subgroup ="ATF-buying",
        order ="c2",
        energy_required = 5,
        enabled = true,
        ingredients = {
            {type ="item", name ="ATF-cash", amount = 3}
        },
        results = {
            {type ="item", name ="advanced-circuit", amount = 10}
        }
    },

    -- -------------------------------------------------------------------------
    -- ATF-buy-circuit-3: Processing Unit (синий)
    -- -------------------------------------------------------------------------
    {
        type ="recipe",
        name ="ATF-buy-circuit-3",
        category ="ATF-trade",
        subgroup ="ATF-buying",
        order ="c3",
        energy_required = 5,
        enabled = true,
        ingredients = {
            {type ="item", name ="ATF-cash", amount = 10}
        },
        results = {
            {type ="item", name ="processing-unit", amount = 5}
        }
    },

    -- =========================================================================
    -- ОРУЖИЕ: Покупка ядерного оружия
    -- =========================================================================

    -- -------------------------------------------------------------------------
    -- ATF-buy-nuke: Atomic Bomb (ядерная бомба)
    -- -------------------------------------------------------------------------
    {
        type ="recipe",
        name ="ATF-buy-nuke",
        category ="ATF-trade",
        subgroup ="ATF-buying",
        order ="d1",
        energy_required = 5,
        enabled = true,
        ingredients = {
            {type ="item", name ="ATF-cash", amount = 50}
        },
        results = {
            {type ="item", name ="atomic-bomb", amount = 1}
        }
    }
})

-- ============================================================================
-- ЛОГИРОВАНИЕ ЗАГРУЗКИ
-- ============================================================================

log("[ATF-Rebalance] Buying recipes loaded successfully (14 recipes registered)")
log("[ATF-Rebalance] Total cash for full science set: 63 cash (was 39 cash)")

-- ============================================================================
-- ИНТЕГРАЦИЯ С BOB'S WARFARE (опционально)
-- ============================================================================

if mods["bobwarfare"] then
    log("[ATF-Rebalance] Bob's Warfare detected - buying recipes compatible")
end

-- ============================================================================
-- ИНТЕГРАЦИЯ С BOB'S SCIENCE (опционально)
-- ============================================================================

if mods["bobscience"] then
    log("[ATF-Rebalance] Bob's Science detected - additional science packs may be needed")
end