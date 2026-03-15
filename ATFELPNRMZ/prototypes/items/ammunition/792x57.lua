-- 792x57.lua
-- Патроны 7.92x57 Mauser (792x57, 792x57drum) для ATF Rebalance
-- Версия: 1.1 (Rebalance by Mechromancer-Zero)
-- Интеграция: Bob's Warfare Compatibility

extend({
    -- =========================================================================
    -- 792x57: Стандартный винтовочный патрон (Mauser, Kar98k, MG42)
    -- =========================================================================
    {
        type ="ammo",
        name ="792x57",
        icon ="__Atlas_ATF__/graphics/ammo/792x57.png",
        icon_size = 64,
        icon_mipmaps = 4,
        flags = {"item"},
        ammo_category ="792x57",
        ammo_type = {
            category ="792x57",
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
                            damage = {amount = 28, type ="physical"}
                        }
                    }
                }
            }
        },
        magazine_size = 5,
        subgroup ="ATF-ammo",
        order ="a[792x57]",
        stack_size = 200
    },

    -- =========================================================================
    -- 792x57drum: Барабанный магазин (7.92x57)
    -- =========================================================================
    {
        type ="ammo",
        name ="792x57drum",
        icon ="__Atlas_ATF__/graphics/ammo/792x57drum.png",
        icon_size = 64,
        icon_mipmaps = 4,
        flags = {"item"},
        ammo_category ="792x57",
        ammo_type = {
            category ="792x57",
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
                            damage = {amount = 30, type ="physical"}
                        }
                    }
                }
            }
        },
        magazine_size = 100,
        subgroup ="ATF-ammo",
        order ="a[792x57drum]",
        stack_size = 200
    }
})

-- ============================================================================
-- ЛОГИРОВАНИЕ ЗАГРУЗКИ
-- ============================================================================

log("[ATF-Rebalance] 792x57 ammo loaded successfully (792x57, 792x57drum)")

-- ============================================================================
-- ИНТЕГРАЦИЯ С BOB'S WARFARE (опционально)
-- ============================================================================

if mods["bobwarfare"] then
    log("[ATF-Rebalance] Bob's Warfare detected - 792x57 ammo compatible")
end