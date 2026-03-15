-- components.lua
-- Компоненты оружия ATF (часть 1)
-- Версия: 1.1 (Rebalance by Mechromancer-Zero)
-- Интеграция: Bob's Warfare Compatibility

data:extend({
    -- =========================================================================
    -- ПРИЁМНИКИ (RECEIVERS)
    -- =========================================================================
    {
        type ="item",
        name ="ATF-smg-receiver-milled",
        icon ="__ATFELPNRMZ__/graphics/items/smg-receiver-milled.png",
        icon_size = 128,
        icon_mipmaps = 4,
        -- flags = {"item"},
        subgroup ="ATF-comp",
        order ="a[ATF-smg-receiver-milled]",
        stack_size = 200
    },
    {
        type ="item",
        name ="ATF-smg-receiver-stamped",
        icon ="__ATFELPNRMZ__/graphics/items/smg-receiver-stamped.png",
        icon_size = 128,
        icon_mipmaps = 4,
        -- flags = {"item"},
        subgroup ="ATF-comp",
        order ="a[ATF-smg-receiver-stamped]",
        stack_size = 200
    },
    {
        type ="item",
        name ="ATF-smg-receiver-modern",
        icon ="__ATFELPNRMZ__/graphics/items/smg-receiver-modern.png",
        icon_size = 128,
        icon_mipmaps = 4,
        -- flags = {"item"},
        subgroup ="ATF-comp",
        order ="a[ATF-smg-receiver-modern]",
        stack_size = 200
    },
    {
        type ="item",
        name ="ATF-mg-receiver",
        icon ="__ATFELPNRMZ__/graphics/items/mg-receiver.png",
        icon_size = 128,
        icon_mipmaps = 4,
        -- flags = {"item"},
        subgroup ="ATF-comp",
        order ="a[ATF-mg-receiver]",
        stack_size = 200
    },
    {
        type ="item",
        name ="ATF-auto-receiver",
        icon ="__ATFELPNRMZ__/graphics/items/auto-receiver.png",
        icon_size = 128,
        icon_mipmaps = 4,
        -- flags = {"item"},
        subgroup ="ATF-comp",
        order ="a[ATF-auto-receiver]",
        stack_size = 200
    },
    {
        type ="item",
        name ="ATF-powerful-receiver",
        icon ="__ATFELPNRMZ__/graphics/items/power-receiver.png",
        icon_size = 128,
        icon_mipmaps = 4,
        -- flags = {"item"},
        subgroup ="ATF-comp",
        order ="a[ATF-power-receiver]",
        stack_size = 200
    },
    {
        type ="item",
        name ="ATF-semi-receiver",
        icon ="__ATFELPNRMZ__/graphics/items/semi-receiver.png",
        icon_size = 128,
        icon_mipmaps = 4,
        -- flags = {"item"},
        subgroup ="ATF-comp",
        order ="a[ATF-semi-receiver]",
        stack_size = 200
    },
    {
        type ="item",
        name ="ATF-bolt-receiver",
        icon ="__ATFELPNRMZ__/graphics/items/bolt-receiver.png",
        icon_size = 128,
        icon_mipmaps = 4,
        -- flags = {"item"},
        subgroup ="ATF-comp",
        order ="a[ATF-bolt-receiver]",
        stack_size = 200
    },

    -- =========================================================================
    -- СТВОЛЫ (BARRELS)
    -- =========================================================================
    {
        type ="item",
        name ="ATF-long-rifle-barrel",
        icon ="__ATFELPNRMZ__/graphics/items/long-rifle-barrel.png",
        icon_size = 128,
        icon_mipmaps = 4,
        -- flags = {"item"},
        subgroup ="ATF-comp",
        order ="b[ATF-long-rifle-barrel]",
        stack_size = 200
    },
    {
        type ="item",
        name ="ATF-mg-barrel",
        icon ="__ATFELPNRMZ__/graphics/items/mg-barrel.png",
        icon_size = 128,
        icon_mipmaps = 4,
        -- flags = {"item"},
        subgroup ="ATF-comp",
        order ="b[ATF-mg-barrel]",
        stack_size = 200
    },
    {
        type ="item",
        name ="ATF-short-rifle-barrel",
        icon ="__ATFELPNRMZ__/graphics/items/short-rifle-barrel.png",
        icon_size = 128,
        icon_mipmaps = 4,
        -- flags = {"item"},
        subgroup ="ATF-comp",
        order ="b[ATF-short-rifle-barrel]",
        stack_size = 200
    },
    {
        type ="item",
        name ="ATF-smg-barrel",
        icon ="__ATFELPNRMZ__/graphics/items/smg-barrel.png",
        icon_size = 128,
        icon_mipmaps = 4,
        -- flags = {"item"},
        subgroup ="ATF-comp",
        order ="b[ATF-smg-barrel]",
        stack_size = 200
    },
    {
        type ="item",
        name ="ATF-pistol-barrel",
        icon ="__ATFELPNRMZ__/graphics/items/pistol-barrel.png",
        icon_size = 128,
        icon_mipmaps = 4,
        -- flags = {"item"},
        subgroup ="ATF-comp",
        order ="b[ATF-pistol-barrel]",
        stack_size = 200
    },

    -- =========================================================================
    -- ПРИКЛАДЫ (STOCKS)
    -- =========================================================================
    {
        type ="item",
        name ="ATF-metal-stock",
        icon ="__ATFELPNRMZ__/graphics/items/metal-stock.png",
        icon_size = 128,
        icon_mipmaps = 4,
        -- flags = {"item"},
        subgroup ="ATF-comp",
        order ="c[ATF-metal-stock]",
        stack_size = 200
    },
    {
        type ="item",
        name ="ATF-poly-stock",
        icon ="__ATFELPNRMZ__/graphics/items/poly-stock.png",
        icon_size = 128,
        icon_mipmaps = 4,
        -- flags = {"item"},
        subgroup ="ATF-comp",
        order ="c[ATF-poly-stock]",
        stack_size = 200
    },
    {
        type ="item",
        name ="ATF-wooden-stock",
        icon ="__ATFELPNRMZ__/graphics/items/wooden-stock.png",
        icon_size = 128,
        icon_mipmaps = 4,
        -- flags = {"item"},
        subgroup ="ATF-comp",
        order ="c[ATF-wooden-stock]",
        stack_size = 200
    },

    -- =========================================================================
    -- РУКОЯТКИ (GRIPS)
    -- =========================================================================
    {
        type ="item",
        name ="ATF-rifle-grip",
        icon ="__ATFELPNRMZ__/graphics/items/rifle-grip.png",
        icon_size = 128,
        icon_mipmaps = 4,
        -- flags = {"item"},
        subgroup ="ATF-comp",
        order ="d[ATF-rifle-grip]",
        stack_size = 200
    },
    {
        type ="item",
        name ="ATF-poly-rifle-grip",
        icon ="__ATFELPNRMZ__/graphics/items/poly-rifle-grip.png",
        icon_size = 128,
        icon_mipmaps = 4,
        -- flags = {"item"},
        subgroup ="ATF-comp",
        order ="d[ATF-poly-rifle-grip]",
        stack_size = 200
    },
    {
        type ="item",
        name ="ATF-pistol-grip",
        icon ="__ATFELPNRMZ__/graphics/items/pistol-grip.png",
        icon_size = 128,
        icon_mipmaps = 4,
        -- flags = {"item"},
        subgroup ="ATF-comp",
        order ="d[ATF-pistol-grip]",
        stack_size = 200
    },

    -- =========================================================================
    -- РАМЫ ПИСТОЛЕТОВ (PISTOL FRAMES)
    -- =========================================================================
    {
        type ="item",
        name ="ATF-pistol-frame-metal",
        icon ="__ATFELPNRMZ__/graphics/items/pistol-frame-metal.png",
        icon_size = 128,
        icon_mipmaps = 4,
        -- flags = {"item"},
        subgroup ="ATF-comp",
        order ="e[ATF-pistol-frame-metal]",
        stack_size = 200
    },
    {
        type ="item",
        name ="ATF-pistol-frame-modern",
        icon ="__ATFELPNRMZ__/graphics/items/pistol-frame-modern.png",
        icon_size = 128,
        icon_mipmaps = 4,
        -- flags = {"item"},
        subgroup ="ATF-comp",
        order ="e[ATF-pistol-frame-modern]",
        stack_size = 200
    },
    {
        type ="item",
        name ="ATF-pistol-slide",
        icon ="__ATFELPNRMZ__/graphics/items/pistol-slide.png",
        icon_size = 128,
        icon_mipmaps = 4,
        -- flags = {"item"},
        subgroup ="ATF-comp",
        order ="e[ATF-pistol-slide]",
        stack_size = 200
    },

    -- =========================================================================
    -- БОЕПРИПАСЫ И ПОРОХ (AMMO COMPONENTS)
    -- =========================================================================
    {
        type ="item",
        name ="ATF-powder",
        icon ="__ATFELPNRMZ__/graphics/items/powder.png",
        icon_size = 128,
        icon_mipmaps = 4,
        -- flags = {"item"},
        subgroup ="ATF-comp",
        order ="f[ATF-powder]",
        stack_size = 500
    },
    {
        type ="item",
        name ="ATF-rifle-bullets",
        icon ="__ATFELPNRMZ__/graphics/items/rifle-tips.png",
        icon_size = 128,
        icon_mipmaps = 4,
        -- flags = {"item"},
        subgroup ="ATF-comp",
        order ="f[ATF-rifle-bullets]",
        stack_size = 200
    },
    {
        type ="item",
        name ="ATF-pistol-tips",
        icon ="__ATFELPNRMZ__/graphics/items/pistol-tips.png",
        icon_size = 128,
        icon_mipmaps = 4,
        -- flags = {"item"},
        subgroup ="ATF-comp",
        order ="f[ATF-pistol-tips]",
        stack_size = 200
    },
    {
        type ="item",
        name ="ATF-recoil-spring",
        icon ="__ATFELPNRMZ__/graphics/items/recoil-spring.png",
        icon_size = 128,
        icon_mipmaps = 4,
        -- flags = {"item"},
        subgroup ="ATF-comp",
        order ="f[ATF-recoil-spring]",
        stack_size = 200
    },
    {
        type ="item",
        name ="ATF-rifle-casing",
        icon ="__ATFELPNRMZ__/graphics/items/rifle-casing.png",
        icon_size = 128,
        icon_mipmaps = 4,
        -- flags = {"item"},
        subgroup ="ATF-comp",
        order ="f[ATF-rifle-casing]",
        stack_size = 200
    },
    {
        type ="item",
        name ="ATF-pistol-casing",
        icon ="__ATFELPNRMZ__/graphics/items/pistol-casing.png",
        icon_size = 128,
        icon_mipmaps = 4,
        -- flags = {"item"},
        subgroup ="ATF-comp",
        order ="f[ATF-pistol-casing]",
        stack_size = 200
    },
    {
        type ="item",
        name ="ATF-primer",
        icon ="__ATFELPNRMZ__/graphics/items/primer.png",
        icon_size = 128,
        icon_mipmaps = 4,
        -- flags = {"item"},
        subgroup ="ATF-comp",
        order ="f[ATF-primer]",
        stack_size = 200
    },
    {
        type ="item",
        name ="ATF-bolts-nuts",
        icon ="__ATFELPNRMZ__/graphics/items/bolts-nuts.png",
        icon_size = 128,
        icon_mipmaps = 4,
        -- flags = {"item"},
        subgroup ="ATF-comp",
        order ="f[ATF-bolts-nuts]",
        stack_size = 200
    }
})

-- ============================================================================
-- ЛОГИРОВАНИЕ ЗАГРУЗКИ
-- ============================================================================

log("[ATF-Rebalance] Components (part 1) loaded successfully - 32 items registered")

-- ============================================================================
-- ИНТЕГРАЦИЯ С BOB'S WARFARE (опционально)
-- ============================================================================

if mods["bobwarfare"] then
    log("[ATF-Rebalance] Bob's Warfare detected - components compatible")
end