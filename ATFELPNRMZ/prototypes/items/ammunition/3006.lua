-- 3006.lua
-- Патроны .30-06 Springfield (3006ammo, 3006belt) для ATF Rebalance
-- Версия: 1.1 (Rebalance by Mechromancer-Zero)
-- Интеграция: Bob's Warfare Compatibility

data:extend({
    -- =========================================================================
    -- 3006ammo: Стандартный винтовочный патрон (.30-06)
    -- =========================================================================
    {
        type ="ammo",
        name ="3006ammo",
        icon ="__Atlas_ATF__/graphics/ammo/3006.png",
        icon_size = 64,
        icon_mipmaps = 4,
        flags = {"item"},
        ammo_category ="3006ammo",
        ammo_type = {
            category ="3006ammo",
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
        magazine_size = 5,
        subgroup ="ATF-ammo",
        order ="a[3006]",
        stack_size = 200
    },

    -- =========================================================================
    -- 3006belt: Ленточный патрон (.30-06)
    -- =========================================================================
    {
        type ="ammo",
        name ="3006belt",
        icon ="__Atlas_ATF__/graphics/ammo/3006belt.png",
        icon_size = 128,
        icon_mipmaps = 4,
        flags = {"item"},
        ammo_category ="3006ammo",
        ammo_type = {
            category ="3006ammo",
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
                        },
                        {
                            type ="damage",
                            damage = {amount = 5, type ="fire"}
                        }
                    }
                }
            }
        },
        magazine_size = 150,
        subgroup ="ATF-ammo",
        order ="a[3006]-b[belt]",
        stack_size = 200
    }
})

-- ============================================================================
-- ЛОГИРОВАНИЕ ЗАГРУЗКИ
-- ============================================================================

log("[ATF-Rebalance] 3006ammo loaded successfully (3006ammo, 3006belt)")

-- ============================================================================
-- ИНТЕГРАЦИЯ С BOB'S WARFARE (опционально)
-- ============================================================================

if mods["bobwarfare"] then
    log("[ATF-Rebalance] Bob's Warfare detected - 3006ammo compatible")
end