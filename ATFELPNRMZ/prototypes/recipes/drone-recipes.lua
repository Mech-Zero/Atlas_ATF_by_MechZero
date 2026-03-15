-- drone-recipes.lua
-- Рецепты крафта дронов-камикадзе ATF (RCXD, RCND)
-- Версия: 1.1 (Rebalance by Mechromancer-Zero)
-- Интеграция: Bob's Warfare Compatibility

extend({
    -- =========================================================================
    -- ATF-rcxd: Дрон-камикадзе RCXD (стандартный взрыв)
    -- =========================================================================
    {
        type = "recipe",
        name = "ATF-rcxd",
        category = "crafting",
        energy_required = 10,
        enabled = false,
        ingredients = {
            {type = "item", name = "explosives", amount = 8},
            {type = "item", name = "electronic-circuit", amount = 1},
            {type = "item", name = "steel-plate", amount = 4}
        },
        results = {
            {type = "item", name = "ATF-rcxd", amount = 1}
        }
    },

    -- =========================================================================
    -- ATF-rcnd: Дрон-камикадзе RCND (ядерный/усиленный взрыв)
    -- =========================================================================
    {
        type = "recipe",
        name = "ATF-rcnd",
        category = "crafting",
        energy_required = 10,
        enabled = false,
        ingredients = {
            {type = "item", name = "ATF-rcxd", amount = 1},
            {type = "item", name = "atomic-bomb", amount = 1}
        },
        results = {
            {type = "item", name = "ATF-rcnd", amount = 1}
        }
    }
})

-- ============================================================================
-- ЛОГИРОВАНИЕ ЗАГРУЗКИ
-- ============================================================================

log("[ATF-Rebalance] Drone recipes loaded successfully (2 recipes registered)")

-- ============================================================================
-- ИНТЕГРАЦИЯ С BOB'S WARFARE (опционально)
-- ============================================================================

if mods["bobwarfare"] then
    log("[ATF-Rebalance] Bob's Warfare detected - drone recipes compatible")
end