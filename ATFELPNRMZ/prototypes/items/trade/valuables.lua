-- valuables.lua
-- Ценные предметы для торговли ATF (валюта)
-- Версия: 1.1 (Rebalance by Mechromancer-Zero)
-- Интеграция: Bob's Warfare Compatibility

-- ============================================================================
-- ПРЕДМЕТЫ ВАЛЮТЫ
-- ============================================================================

extend({
    -- =========================================================================
    -- ATF-cash: Наличные деньги (основная валюта)
    -- =========================================================================
    {
        type = "item",
        name = "ATF-cash",
        icon = "__Atlas_ATF__/graphics/items/cash.png",
        icon_size = 128,
        icon_mipmaps = 4,
        flags = {"item"},
        subgroup = "ATF-cash",
        order = "a[ATF-cash]",
        stack_size = 1000
    },

    -- =========================================================================
    -- ATF-gold: Золото (ценный ресурс для торговли)
    -- =========================================================================
    {
        type = "item",
        name = "ATF-gold",
        icon = "__Atlas_ATF__/graphics/items/gold.png",
        icon_size = 256,
        icon_mipmaps = 4,
        flags = {"item"},
        subgroup = "ATF-cash",
        order = "b[ATF-gold]",
        stack_size = 50
    },

    -- =========================================================================
    -- ATF-gems: Драгоценные камни (ценный ресурс для торговли)
    -- =========================================================================
    {
        type = "item",
        name = "ATF-gems",
        icon = "__Atlas_ATF__/graphics/items/gems.png",
        icon_size = 256,
        icon_mipmaps = 4,
        flags = {"item"},
        subgroup = "ATF-cash",
        order = "c[ATF-gems]",
        stack_size = 50
    },

    -- =========================================================================
    -- ATF-gembox: Коробка драгоценных камней (оптовая торговля)
    -- =========================================================================
    {
        type = "item",
        name = "ATF-gembox",
        icon = "__Atlas_ATF__/graphics/items/gem.png",
        icon_size = 256,
        icon_mipmaps = 4,
        flags = {"item"},
        subgroup = "ATF-cash",
        order = "d[ATF-gembox]",
        stack_size = 10
    }
})

-- ============================================================================
-- ЛОГИРОВАНИЕ ЗАГРУЗКИ
-- ============================================================================

log("[ATF-Rebalance] Trade valuables loaded successfully (ATF-cash, ATF-gold, ATF-gems, ATF-gembox)")

-- ============================================================================
-- ИНТЕГРАЦИЯ С BOB'S WARFARE (опционально)
-- ============================================================================

if mods["bobwarfare"] then
    log("[ATF-Rebalance] Bob's Warfare detected - trade valuables compatible")
end