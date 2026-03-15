-- selling.lua
-- Рецепты продажи коробок и ценностей ATF (сбалансированные цены)
-- Версия: 2.0 (Rebalance by Mechromancer-Zero)
-- Интеграция: Bob's Mods Compatibility

data:extend({
    -- =========================================================================
    -- ATF-sell-ammo: Продажа коробки патронов (38 типов)
    -- =========================================================================
    {
        type ="recipe",
        name ="ATF-sell-ammo",
        category ="ATF-trade",
        icon ="__ATFELPNRMZ__/graphics/trade/selling/box-ammo.png",
        icon_size = 64,
        allow_as_intermediate = false,
        subgroup ="ATF-selling",
        energy_required = 10,
        enabled = true,
        order ="a1",
        ingredients = {
            {type ="item", name ="ATF-gunbox-ammo", amount = 1}
        },
        results = {
            {type ="item", name ="ATF-cash", amount = 25}
        }
    },

    -- =========================================================================
    -- ATF-sell-old: Продажа коробки старого оружия (14 оружий WW1/WW2)
    -- =========================================================================
    {
        type ="recipe",
        name ="ATF-sell-old",
        category ="ATF-trade",
        icon ="__ATFELPNRMZ__/graphics/trade/selling/box-old.png",
        icon_size = 64,
        allow_as_intermediate = false,
        subgroup ="ATF-selling",
        energy_required = 10,
        enabled = true,
        order ="a2",
        ingredients = {
            {type ="item", name ="ATF-gunbox-old", amount = 1}
        },
        results = {
            {type ="item", name ="ATF-cash", amount = 8}
        }
    },

    -- =========================================================================
    -- ATF-sell-coldwar: Продажа коробки оружия холодной войны (5 оружий)
    -- =========================================================================
    {
        type ="recipe",
        name ="ATF-sell-coldwar",
        category ="ATF-trade",
        icon ="__ATFELPNRMZ__/graphics/trade/selling/box-coldwar.png",
        icon_size = 64,
        allow_as_intermediate = false,
        subgroup ="ATF-selling",
        energy_required = 10,
        enabled = true,
        order ="a3",
        ingredients = {
            {type ="item", name ="ATF-gunbox-coldwar", amount = 1}
        },
        results = {
            {type ="item", name ="ATF-cash", amount = 6}
        }
    },

    -- =========================================================================
    -- ATF-sell-modern: Продажа коробки современного оружия (4 оружия)
    -- =========================================================================
    {
        type ="recipe",
        name ="ATF-sell-modern",
        category ="ATF-trade",
        icon ="__ATFELPNRMZ__/graphics/trade/selling/box-modern.png",
        icon_size = 64,
        allow_as_intermediate = false,
        subgroup ="ATF-selling",
        energy_required = 10,
        enabled = true,
        order ="a4",
        ingredients = {
            {type ="item", name ="ATF-gunbox-modern", amount = 1}
        },
        results = {
            {type ="item", name ="ATF-cash", amount = 10}
        }
    },

    -- =========================================================================
    -- ATF-sell-concept: Продажа коробки концепт-оружия (7 оружий будущего)
    -- =========================================================================
    {
        type ="recipe",
        name ="ATF-sell-concept",
        category ="ATF-trade",
        icon ="__ATFELPNRMZ__/graphics/trade/selling/box-concept.png",
        icon_size = 64,
        allow_as_intermediate = false,
        subgroup ="ATF-selling",
        energy_required = 10,
        enabled = true,
        order ="a5",
        ingredients = {
            {type ="item", name ="ATF-gunbox-concept", amount = 1}
        },
        results = {
            {type ="item", name ="ATF-cash", amount = 20}
        }
    },

    -- =========================================================================
    -- ATF-sell-heavy: Продажа коробки тяжёлого оружия (10 оружий)
    -- =========================================================================
    {
        type ="recipe",
        name ="ATF-sell-heavy",
        category ="ATF-trade",
        icon ="__ATFELPNRMZ__/graphics/trade/selling/box-heavy.png",
        icon_size = 64,
        allow_as_intermediate = false,
        subgroup ="ATF-selling",
        energy_required = 10,
        enabled = true,
        order ="a6",
        ingredients = {
            {type ="item", name ="ATF-gunbox-heavy", amount = 1}
        },
        results = {
            {type ="item", name ="ATF-cash", amount = 18}
        }
    },

    -- =========================================================================
    -- ATF-sell-gold: Продажа золотого слитка (из Bob's gold-ore)
    -- =========================================================================
    {
        type ="recipe",
        name ="ATF-sell-gold",
        category ="ATF-trade",
        icon ="__ATFELPNRMZ__/graphics/trade/selling/sell-gold.png",
        icon_size = 64,
        allow_as_intermediate = false,
        subgroup ="ATF-selling",
        energy_required = 10,
        enabled = true,
        order ="ba",
        ingredients = {
            {type ="item", name ="ATF-gold", amount = 1}
        },
        results = {
            {type ="item", name ="ATF-cash", amount = 3}
        }
    },

    -- =========================================================================
    -- ATF-sell-gembox: Продажа коробки ценностей (10 камней + 1 золото)
    -- =========================================================================
    {
        type ="recipe",
        name ="ATF-sell-gembox",
        category ="ATF-trade",
        icon ="__ATFELPNRMZ__/graphics/trade/selling/sell-gem.png",
        icon_size = 64,
        allow_as_intermediate = false,
        subgroup ="ATF-selling",
        energy_required = 10,
        enabled = true,
        order ="bb",
        ingredients = {
            {type ="item", name ="ATF-gembox", amount = 1}
        },
        results = {
            {type ="item", name ="ATF-cash", amount = 12}
        }
    }
})

-- ============================================================================
-- ЛОГИРОВАНИЕ ЗАГРУЗКИ
-- ============================================================================

log("[ATF-Rebalance] Selling recipes loaded successfully (8 recipes registered)")
log("[ATF-Rebalance] Total cash per full set: 102 cash (was 38 cash)")

-- ============================================================================
-- ИНТЕГРАЦИЯ С BOB'S WARFARE (опционально)
-- ============================================================================

if mods["bobwarfare"] then
    log("[ATF-Rebalance] Bob's Warfare detected - selling recipes compatible")
end