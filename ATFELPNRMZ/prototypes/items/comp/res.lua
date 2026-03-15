-- res.lua
-- Ресурсы ATF (ртуть, киноварь, нитраты)
-- Версия: 1.1 (Rebalance by Mechromancer-Zero)
-- Интеграция: Bob's Warfare + Bob's Metals Compatibility

data:data:extend({
    -- =========================================================================
    -- MERCURY: Ртуть (из киновари)
    -- =========================================================================
    {
        type ="item",
        name ="mercury",
        icon ="__Atlas_ATF__/graphics/items/mercury.png",
        icon_size = 128,
        icon_mipmaps = 4,
        flags = {"item"},
        subgroup ="ATF-res",
        order ="a[mercury]",
        stack_size = 200
    },

    -- =========================================================================
    -- CINNABAR-ORE: Киноварная руда
    -- =========================================================================
    {
        type ="item",
        name ="cinnabar-ore",
        icon ="__Atlas_ATF__/graphics/items/cinnabar.png",
        icon_size = 64,
        icon_mipmaps = 4,
        flags = {"item"},
        subgroup ="ATF-res",
        order ="b[cinnabar-ore]",
        stack_size = 200
    },

    -- =========================================================================
    -- ATF-NITRATE: Нитраты (из нитры)
    -- =========================================================================
    {
        type ="item",
        name ="ATF-nitrate",
        icon ="__Atlas_ATF__/graphics/items/nitrate.png",
        icon_size = 128,
        icon_mipmaps = 4,
        flags = {"item"},
        subgroup ="ATF-res",
        order ="c[ATF-nitrate]",
        stack_size = 1000
    }
})

-- ============================================================================
-- ЛОГИРОВАНИЕ ЗАГРУЗКИ
-- ============================================================================

log("[ATF-Rebalance] Resources loaded successfully (mercury, cinnabar-ore, ATF-nitrate)")

-- ============================================================================
-- ИНТЕГРАЦИЯ С BOB'S WARFARE (опционально)
-- ============================================================================

if mods["bobwarfare"] then
    log("[ATF-Rebalance] Bob's Warfare detected - resources compatible")
end

if mods["bobores"] then
    log("[ATF-Rebalance] Bob's Ores detected - cinnabar may be duplicated")
end