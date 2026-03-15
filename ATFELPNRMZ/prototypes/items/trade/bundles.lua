-- bundles.lua
-- Торговые наборы оружия ATF (Gun Boxes)
-- Версия: 1.1 (Rebalance by Mechromancer-Zero)
-- Интеграция: Bob's Warfare Compatibility

-- ============================================================================
-- ПРЕДМЕТЫ ТОРГОВЫХ НАБОРОВ
-- ============================================================================

data:extend({
    -- =========================================================================
    -- ATF-gunbox-old: Набор оружия старой эры (WW1/WW2)
    -- =========================================================================
    {
        type ="item",
        name ="ATF-gunbox-old",
        icon ="__ATFELPNRMZ__/graphics/trade/box-old.png",
        icon_size = 128,
        icon_mipmaps = 4,
        -- flags = {"item"},
        subgroup ="ATF-bundles",
        order ="a[gunbox]-a[old]",
        stack_size = 10
    },

    -- =========================================================================
    -- ATF-gunbox-coldwar: Набор оружия холодной войны
    -- =========================================================================
    {
        type ="item",
        name ="ATF-gunbox-coldwar",
        icon ="__ATFELPNRMZ__/graphics/trade/box-coldwar.png",
        icon_size = 128,
        icon_mipmaps = 4,
        -- flags = {"item"},
        subgroup ="ATF-bundles",
        order ="a[gunbox]-b[coldwar]",
        stack_size = 10
    },

    -- =========================================================================
    -- ATF-gunbox-modern: Набор современного оружия
    -- =========================================================================
    {
        type ="item",
        name ="ATF-gunbox-modern",
        icon ="__ATFELPNRMZ__/graphics/trade/box-modern.png",
        icon_size = 128,
        icon_mipmaps = 4,
        -- flags = {"item"},
        subgroup ="ATF-bundles",
        order ="a[gunbox]-c[modern]",
        stack_size = 10
    },

    -- =========================================================================
    -- ATF-gunbox-concept: Набор концепт-оружия
    -- =========================================================================
    {
        type ="item",
        name ="ATF-gunbox-concept",
        icon ="__ATFELPNRMZ__/graphics/trade/box-concept.png",
        icon_size = 128,
        icon_mipmaps = 4,
        -- flags = {"item"},
        subgroup ="ATF-bundles",
        order ="a[gunbox]-d[concept]",
        stack_size = 10
    },

    -- =========================================================================
    -- ATF-gunbox-heavy: Набор тяжёлого оружия
    -- =========================================================================
    {
        type ="item",
        name ="ATF-gunbox-heavy",
        icon ="__ATFELPNRMZ__/graphics/trade/box-heavy.png",
        icon_size = 128,
        icon_mipmaps = 4,
        -- flags = {"item"},
        subgroup ="ATF-bundles",
        order ="a[gunbox]-e[heavy]",
        stack_size = 10
    },

    -- =========================================================================
    -- ATF-gunbox-ammo: Набор боеприпасов
    -- =========================================================================
    {
        type ="item",
        name ="ATF-gunbox-ammo",
        icon ="__ATFELPNRMZ__/graphics/trade/box-ammo.png",
        icon_size = 128,
        icon_mipmaps = 4,
        -- flags = {"item"},
        subgroup ="ATF-bundles",
        order ="a[gunbox]-f[ammo]",
        stack_size = 10
    }
})

-- ============================================================================
-- ЛОГИРОВАНИЕ ЗАГРУЗКИ
-- ============================================================================

log("[ATF-Rebalance] Trade bundles loaded successfully (6 gun boxes registered)")

-- ============================================================================
-- ИНТЕГРАЦИЯ С BOB'S WARFARE (опционально)
-- ============================================================================

if mods["bobwarfare"] then
    log("[ATF-Rebalance] Bob's Warfare detected - trade bundles compatible")
end