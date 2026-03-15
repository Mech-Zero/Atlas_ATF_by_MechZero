-- 762x51.lua
-- Патроны 7.62x51 (762x51, 762x51drum, 762belt) для ATF Rebalance
-- Версия: 1.1 (Rebalance by Mechromancer-Zero)
-- Интеграция: Bob's Warfare Compatibility

data:data:extend({
    -- =========================================================================
    -- 762x51: Стандартный винтовочный патрон (NATO)
    -- =========================================================================
    {
        type ="ammo",
        name ="762x51",
        icon ="__Atlas_ATF__/graphics/ammo/762x51.png",
        icon_size = 64,
        icon_mipmaps = 4,
        flags = {"item"},
        ammo_category ="762x51",
        ammo_type = {
            category ="762x51",
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
                            damage = {amount = 18, type ="physical"}
                        }
                    }
                }
            }
        },
        magazine_size = 20,
        subgroup ="ATF-ammo",
        order ="a[762x51]",
        stack_size = 200
    },

    -- =========================================================================
    -- 762x51drum: Барабанный магазин (7.62x51)
    -- =========================================================================
    {
        type ="ammo",
        name ="762x51drum",
        icon ="__Atlas_ATF__/graphics/ammo/762x51drum.png",
        icon_size = 64,
        icon_mipmaps = 4,
        flags = {"item"},
        ammo_category ="762x51",
        ammo_type = {
            category ="762x51",
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
                            damage = {amount = 25, type ="physical"}
                        }
                    }
                }
            }
        },
        magazine_size = 50,
        subgroup ="ATF-ammo",
        order ="a[762x51]-b[drum]",
        stack_size = 200
    },

    -- =========================================================================
    -- 762belt: Ленточный патрон (пулемёт)
    -- =========================================================================
    {
        type ="ammo",
        name ="762belt",
        icon ="__Atlas_ATF__/graphics/ammo/762belt.png",
        icon_size = 128,
        icon_mipmaps = 4,
        flags = {"item"},
        ammo_category ="762belt",
        ammo_type = {
            category ="762belt",
            target_type ="position",
            clamp_position = false,
            action = {
                type ="direct",
                action_delivery = {
                    type ="projectile",
                    projectile ="762belt",
                    starting_speed = 3,
                    starting_speed_deviation = 0,
                    direction_deviation = 0,
                    range_deviation = 0,
                    max_range = 35,
                    source_effects = {
                        type ="create-explosion",
                        entity_name ="explosion-gunshot"
                    }
                }
            }
        },
        magazine_size = 200,
        subgroup ="ATF-ammo",
        order ="a[762x51]-c[belt]",
        stack_size = 100
    }
})

-- ============================================================================
-- ЛОГИРОВАНИЕ ЗАГРУЗКИ
-- ============================================================================

log("[ATF-Rebalance] 762x51 ammo loaded successfully (762x51, 762x51drum, 762belt)")

-- ============================================================================
-- ИНТЕГРАЦИЯ С BOB'S WARFARE (опционально)
-- ============================================================================

if mods["bobwarfare"] then
    log("[ATF-Rebalance] Bob's Warfare detected - 762x51 ammo compatible")
end