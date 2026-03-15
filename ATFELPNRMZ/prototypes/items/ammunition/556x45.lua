-- 556x45.lua
-- Патроны 5.56x45 (556x45, 556x45drum, 556-swatt, 556belt) для ATF Rebalance
-- Версия: 1.1 (Rebalance by Mechromancer-Zero)
-- Интеграция: Bob's Warfare Compatibility

data:data:extend({
    -- =========================================================================
    -- 556x45: Стандартный винтовочный патрон (NATO)
    -- =========================================================================
    {
        type ="ammo",
        name ="556x45",
        icon ="__Atlas_ATF__/graphics/ammo/556x45.png",
        icon_size = 64,
        icon_mipmaps = 4,
        flags = {"item"},
        ammo_category ="556x45",
        ammo_type = {
            category ="556x45",
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
        order ="a[556x45]",
        stack_size = 200
    },

    -- =========================================================================
    -- 556x45drum: Барабанный магазин (5.56x45)
    -- =========================================================================
    {
        type ="ammo",
        name ="556x45drum",
        icon ="__Atlas_ATF__/graphics/ammo/556drum.png",
        icon_size = 64,
        icon_mipmaps = 4,
        flags = {"item"},
        ammo_category ="556x45",
        ammo_type = {
            category ="556x45",
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
        magazine_size = 100,
        subgroup ="ATF-ammo",
        order ="a[556x45]-b[drum]",
        stack_size = 200
    },

    -- =========================================================================
    -- 556-swatt: Электрический патрон (SWATT)
    -- =========================================================================
    {
        type ="ammo",
        name ="556-swatt",
        icon ="__Atlas_ATF__/graphics/ammo/swatt-mag.png",
        icon_size = 128,
        icon_mipmaps = 4,
        flags = {"item"},
        ammo_category ="556-swatt",
        ammo_type = {
            category ="556-swatt",
            target_type ="position",
            clamp_position = false,
            action = {
                {
                    type ="direct",
                    action_delivery = {
                        type ="projectile",
                        projectile ="556-swatt",
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
            }
        },
        magazine_size = 50,
        subgroup ="ATF-ammo",
        order ="a[556x45]-c[swatt]",
        stack_size = 200
    },

    -- =========================================================================
    -- 556belt: Ленточный патрон (ротативная система)
    -- =========================================================================
    {
        type ="ammo",
        name ="556belt",
        icon ="__Atlas_ATF__/graphics/ammo/556belt.png",
        icon_size = 128,
        icon_mipmaps = 4,
        flags = {"item"},
        ammo_category ="556belt",
        ammo_type = {
            category ="556belt",
            target_type ="position",
            clamp_position = false,
            action = {
                type ="direct",
                action_delivery = {
                    type ="projectile",
                    projectile ="556belt",
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
        order ="a[556x45]-d[belt]",
        stack_size = 100
    }
})

-- ============================================================================
-- ЛОГИРОВАНИЕ ЗАГРУЗКИ
-- ============================================================================

log("[ATF-Rebalance] 556x45 ammo loaded successfully (556x45, 556x45drum, 556-swatt, 556belt)")

-- ============================================================================
-- ИНТЕГРАЦИЯ С BOB'S WARFARE (опционально)
-- ============================================================================

if mods["bobwarfare"] then
    log("[ATF-Rebalance] Bob's Warfare detected - 556x45 ammo compatible")
end