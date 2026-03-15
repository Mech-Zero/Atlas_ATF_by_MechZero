-- armor.lua
-- Рецепты крафта энергетической брони ATF (Tesla, Hellfire, Eliminator)
-- Версия: 1.1 (Rebalance by Mechromancer-Zero)
-- Интеграция: Bob's Warfare Compatibility

data:extend({
    -- =========================================================================
    -- ATF-tesla-armor: Электрическая броня Tesla
    -- =========================================================================
    {
        type ="recipe",
        name ="ATF-tesla-armor",
        category ="crafting",
        energy_required = 10,
        enabled = false,
        ingredients = {
            {type ="item", name ="steel-plate", amount = 100},
            {type ="item", name ="processing-unit", amount = 50},
            {type ="item", name ="ATF-supercap", amount = 20},
            {type ="item", name ="ATF-fusion-battery", amount = 10},
            {type ="item", name ="electric-engine-unit", amount = 10}
        },
        results = {
            {type ="item", name ="ATF-tesla-armor", amount = 1}
        }
    },

    -- =========================================================================
    -- ATF-hellfire-armor: Огненная броня Hellfire
    -- =========================================================================
    {
        type ="recipe",
        name ="ATF-hellfire-armor",
        category ="crafting",
        energy_required = 10,
        enabled = false,
        ingredients = {
            {type ="item", name ="steel-plate", amount = 100},
            {type ="item", name ="processing-unit", amount = 50},
            {type ="item", name ="ATF-plasmaheater", amount = 20},
            {type ="item", name ="ATF-fusion-battery", amount = 10},
            {type ="item", name ="electric-engine-unit", amount = 10}
        },
        results = {
            {type ="item", name ="ATF-hellfire-armor", amount = 1}
        }
    },

    -- =========================================================================
    -- ATF-eliminator-armor: Уничтожитель броня Eliminator
    -- =========================================================================
    {
        type ="recipe",
        name ="ATF-eliminator-armor",
        category ="crafting",
        energy_required = 10,
        enabled = false,
        ingredients = {
            {type ="item", name ="steel-plate", amount = 200},
            {type ="item", name ="processing-unit", amount = 200},
            {type ="item", name ="electric-engine-unit", amount = 20},
            {type ="item", name ="ATF-fusion-battery", amount = 20},
            {type ="item", name ="ATF-plasma-cell", amount = 20},
            {type ="item", name ="ATF-supercap", amount = 20}
        },
        results = {
            {type ="item", name ="ATF-eliminator-armor", amount = 1}
        }
    }
})

-- ============================================================================
-- ЛОГИРОВАНИЕ ЗАГРУЗКИ
-- ============================================================================

log("[ATF-Rebalance] Armor recipes loaded successfully (3 recipes registered)")

-- ============================================================================
-- ИНТЕГРАЦИЯ С BOB'S WARFARE (опционально)
-- ============================================================================

if mods["bobwarfare"] then
    log("[ATF-Rebalance] Bob's Warfare detected - armor recipes compatible")
end