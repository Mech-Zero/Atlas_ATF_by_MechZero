-- components-2.lua
-- Компоненты оружия ATF (часть 2) - Тяжёлые и энергетические
-- Версия: 1.1 (Rebalance by Mechromancer-Zero)
-- Интеграция: Bob's Warfare Compatibility

data:extend({
    -- =========================================================================
    -- ТЯЖЁЛЫЕ КОМПОНЕНТЫ (HMG, Heavy Weapons)
    -- =========================================================================
    {
        type ="item",
        name ="ATF-hmg-receiver",
        icon ="__ATFELPNRMZ__/graphics/items/hmg-receiver.png",
        icon_size = 128,
        icon_mipmaps = 4,
        -- flags = {"item"},
        subgroup ="ATF-comp",
        order ="a[ATF-hmg-receiver]",
        stack_size = 100
    },
    {
        type ="item",
        name ="ATF-hmg-barrel",
        icon ="__ATFELPNRMZ__/graphics/items/hmg-barrel.png",
        icon_size = 128,
        icon_mipmaps = 4,
        -- flags = {"item"},
        subgroup ="ATF-comp",
        order ="a[ATF-hmg-barrel]",
        stack_size = 100
    },
    {
        type ="item",
        name ="ATF-heavy-bullets",
        icon ="__ATFELPNRMZ__/graphics/items/heavy-bullets.png",
        icon_size = 128,
        icon_mipmaps = 4,
        -- flags = {"item"},
        subgroup ="ATF-comp",
        order ="a[ATF-heavy-bullets]",
        stack_size = 200
    },
    {
        type ="item",
        name ="ATF-heavy-casings",
        icon ="__ATFELPNRMZ__/graphics/items/heavy-casings.png",
        icon_size = 128,
        icon_mipmaps = 4,
        -- flags = {"item"},
        subgroup ="ATF-comp",
        order ="a[ATF-heavy-casings]",
        stack_size = 200
    },

    -- =========================================================================
    -- ДРОБОВИКИ (Shotgun Components)
    -- =========================================================================
    {
        type ="item",
        name ="ATF-shotgun-receiver",
        icon ="__ATFELPNRMZ__/graphics/items/shotgun-receiver.png",
        icon_size = 128,
        icon_mipmaps = 4,
        -- flags = {"item"},
        subgroup ="ATF-comp",
        order ="b[ATF-shotgun-receiver]",
        stack_size = 200
    },
    {
        type ="item",
        name ="ATF-buckshot",
        icon ="__ATFELPNRMZ__/graphics/items/buckshot.png",
        icon_size = 128,
        icon_mipmaps = 4,
        -- flags = {"item"},
        subgroup ="ATF-comp",
        order ="b[ATF-buckshot]",
        stack_size = 200
    },
    {
        type ="item",
        name ="ATF-empty-shell",
        icon ="__ATFELPNRMZ__/graphics/items/empty-shell.png",
        icon_size = 128,
        icon_mipmaps = 4,
        -- flags = {"item"},
        subgroup ="ATF-comp",
        order ="b[ATF-empty-shell]",
        stack_size = 200
    },

    -- =========================================================================
    -- ЭНЕРГЕТИЧЕСКИЕ КОМПОНЕНТЫ (Future/Energy Weapons)
    -- =========================================================================
    {
        type ="item",
        name ="ATF-future-receiver",
        icon ="__ATFELPNRMZ__/graphics/items/receiver-future.png",
        icon_size = 128,
        icon_mipmaps = 4,
        -- flags = {"item"},
        subgroup ="ATF-comp",
        order ="c[ATF-future-receiver]",
        stack_size = 100
    },
    {
        type ="item",
        name ="ATF-future-barrel",
        icon ="__ATFELPNRMZ__/graphics/items/barrel-future.png",
        icon_size = 128,
        icon_mipmaps = 4,
        -- flags = {"item"},
        subgroup ="ATF-comp",
        order ="c[ATF-future-barrel]",
        stack_size = 100
    },
    {
        type ="item",
        name ="ATF-plasma-cell",
        icon ="__ATFELPNRMZ__/graphics/items/plasma-cell.png",
        icon_size = 128,
        icon_mipmaps = 4,
        -- flags = {"item"},
        subgroup ="ATF-comp",
        order ="c[ATF-plasma-cell]",
        stack_size = 100
    },
    {
        type ="item",
        name ="ATF-plasmaheater",
        icon ="__ATFELPNRMZ__/graphics/items/heater.png",
        icon_size = 128,
        icon_mipmaps = 4,
        -- flags = {"item"},
        subgroup ="ATF-comp",
        order ="c[ATF-plasmaheater]",
        stack_size = 100
    },
    {
        type ="item",
        name ="ATF-supercap",
        icon ="__ATFELPNRMZ__/graphics/items/supercap.png",
        icon_size = 128,
        icon_mipmaps = 4,
        -- flags = {"item"},
        subgroup ="ATF-comp",
        order ="c[ATF-supercap]",
        stack_size = 100
    }
})

-- ============================================================================
-- ЛОГИРОВАНИЕ ЗАГРУЗКИ
-- ============================================================================

log("[ATF-Rebalance] Components (part 2) loaded successfully - 12 items registered")

-- ============================================================================
-- ИНТЕГРАЦИЯ С BOB'S WARFARE (опционально)
-- ============================================================================

if mods["bobwarfare"] then
    log("[ATF-Rebalance] Bob's Warfare detected - components compatible")
end