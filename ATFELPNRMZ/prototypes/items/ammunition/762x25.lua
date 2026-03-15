-- 762x25.lua
-- Патроны 7.62x25 (762x25, 762x25drum) для ATF Rebalance
-- Версия: 1.1 (Rebalance by Mechromancer-Zero)
-- Интеграция: Bob's Warfare Compatibility

data:data:extend({
    -- =========================================================================
    -- 762x25: Стандартный пистолетный патрон (ТТ, ППШ)
    -- =========================================================================
    {
        type ="ammo",
        name ="762x25",
        icon ="__Atlas_ATF__/graphics/ammo/762x25.png",
        icon_size = 64,
        icon_mipmaps = 4,
        flags = {"item"},
        ammo_category ="762x25",
        ammo_type = {
            category ="762x25",
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
                            damage = {amount = 9, type ="physical"}
                        }
                    }
                }
            }
        },
        magazine_size = 30,
        subgroup ="ATF-ammo",
        order ="a[762x25]",
        stack_size = 200
    },

    -- =========================================================================
    -- 762x25drum: Барабанный магазин (7.62x25)
    -- =========================================================================
    {
        type ="ammo",
        name ="762x25drum",
        icon ="__Atlas_ATF__/graphics/ammo/762x25drum.png",
        icon_size = 64,
        icon_mipmaps = 4,
        flags = {"item"},
        ammo_category ="762x25",
        ammo_type = {
            category ="762x25",
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
                            damage = {amount = 9, type ="physical"}
                        },
                        {
                            type ="damage",
                            damage = {amount = 4, type ="poison"}
                        }
                    }
                }
            }
        },
        magazine_size = 71,
        subgroup ="ATF-ammo",
        order ="a[762x25drum]",
        stack_size = 200
    }
})

-- ============================================================================
-- ЛОГИРОВАНИЕ ЗАГРУЗКИ
-- ============================================================================

log("[ATF-Rebalance] 762x25 ammo loaded successfully (762x25, 762x25drum)")

-- ============================================================================
-- ИНТЕГРАЦИЯ С BOB'S WARFARE (опционально)
-- ============================================================================

if mods["bobwarfare"] then
    log("[ATF-Rebalance] Bob's Warfare detected - 762x25 ammo compatible")
end