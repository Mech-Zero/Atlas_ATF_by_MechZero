-- market.lua
-- Рецепт крафта торгового поста ATF (ATF-market)
-- Версия: 1.1 (Rebalance by Mechromancer-Zero)
-- Интеграция: Bob's Warfare Compatibility

extend({
    -- =========================================================================
    -- ATF-market: Торговый пост ATF (для торговли за ATF-cash)
    -- =========================================================================
    {
        type = "recipe",
        name = "ATF-market",
        category = "crafting",
        energy_required = 10,
        enabled = false,
        ingredients = {
            {type = "item", name = "steel-plate", amount = 4},
            {type = "item", name = "advanced-circuit", amount = 2},
            {type = "item", name = "radar", amount = 1}
        },
        results = {
            {type = "item", name = "ATF-market", amount = 1}
        }
    }
})

-- ============================================================================
-- ЛОГИРОВАНИЕ ЗАГРУЗКИ
-- ============================================================================

log("[ATF-Rebalance] Market recipe loaded successfully (1 recipe registered)")

-- ============================================================================
-- ИНТЕГРАЦИЯ С BOB'S WARFARE (опционально)
-- ============================================================================

if mods["bobwarfare"] then
    log("[ATF-Rebalance] Bob's Warfare detected - market recipe compatible")
end