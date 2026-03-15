-- 545x39.lua
-- Патроны 5.45x39 (545x39, 545long) для ATF Rebalance
-- Версия: 1.1 (Rebalance by Mechromancer-Zero)
-- Интеграция: Bob's Warfare Compatibility

data:extend({
    -- =========================================================================
    -- 545x39: Стандартный винтовочный патрон
    -- =========================================================================
    {
        type ="ammo",
        name ="545x39",
        icon ="__Atlas_ATF__/graphics/ammo/545x39.png",
        icon_size = 64,
        icon_mipmaps = 4,
        flags = {"item"},
        ammo_category ="545x39",
        ammo_type = {
            category ="545x39",
            action = {
                type ="direct",
                action_delivery = {
                    type ="instant",
                    source_effects = {
                        type ="create-explosion",
                        entity_name ="explosion-gunshot"
                    },
                    target_effects = {
                        {
                            type ="create-entity",
                            entity_name ="explosion-hit"
                        },
                        {
                            type ="damage",
                            damage = {amount = 15, type ="physical"}
                        }
                    }
                }
            }
        },
        magazine_size = 30,
        subgroup ="ATF-ammo",
        order ="a[545x39]",
        stack_size = 200
    },

    -- =========================================================================
    -- 545long: Удлинённый магазин (5.45x39)
    -- =========================================================================
    {
        type ="ammo",
        name ="545long",
        icon ="__Atlas_ATF__/graphics/ammo/545long.png",
        icon_size = 64,
        icon_mipmaps = 4,
        flags = {"item"},
        ammo_category ="545x39",
        ammo_type = {
            category ="545x39",
            action = {
                type ="direct",
                action_delivery = {
                    type ="instant",
                    source_effects = {
                        type ="create-explosion",
                        entity_name ="explosion-gunshot"
                    },
                    target_effects = {
                        {
                            type ="create-entity",
                            entity_name ="explosion-hit"
                        },
                        {
                            type ="damage",
                            damage = {amount = 15, type ="physical"}
                        },
                        {
                            type ="damage",
                            damage = {amount = 4, type ="fire"}
                        }
                    }
                }
            }
        },
        magazine_size = 45,
        subgroup ="ATF-ammo",
        order ="a[545long]",
        stack_size = 200
    }
})

-- ============================================================================
-- ЛОГИРОВАНИЕ ЗАГРУЗКИ
-- ============================================================================

log("[ATF-Rebalance] 545x39 ammo loaded successfully (545x39, 545long)")

-- ============================================================================
-- ИНТЕГРАЦИЯ С BOB'S WARFARE (опционально)
-- ============================================================================

if mods["bobwarfare"] then
    log("[ATF-Rebalance] Bob's Warfare detected - 545x39 ammo compatible")
end