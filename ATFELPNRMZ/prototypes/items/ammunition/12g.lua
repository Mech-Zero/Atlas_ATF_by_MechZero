-- 12g.lua
-- Патроны 12 Gauge (12g) для ATF Rebalance
-- Версия: 1.1 (Rebalance by Mechromancer-Zero)
-- Интеграция: Bob's Warfare Compatibility

data:extend({
    -- =========================================================================
    -- 12g-buckshot: Дробь (стандартный дробовой патрон)
    -- =========================================================================
    {
        type ="ammo",
        name ="12g-buckshot",
        icon ="__Atlas_ATF__/graphics/ammo/buckshot.png",
        icon_size = 128,
        icon_mipmaps = 4,
        flags = {"item"},
        ammo_category ="shotgun-shell",
        ammo_type = {
            category ="shotgun-shell",
            target_type ="direction",
            clamp_position = true,
            action = {
                {
                    type ="direct",
                    action_delivery = {
                        type ="instant",
                        source_effects = {
                            {
                                type ="create-explosion",
                                entity_name ="explosion-gunshot"
                            }
                        }
                    }
                },
                {
                    type ="direct",
                    repeat_count = 16,
                    action_delivery = {
                        type ="projectile",
                        projectile ="12g-buck",
                        starting_speed = 1,
                        starting_speed_deviation = 0.1,
                        direction_deviation = 0.3,
                        range_deviation = 0.3,
                        max_range = 25
                    }
                }
            }
        },
        magazine_size = 20,
        subgroup ="ATF-ammo",
        order ="b[shotgun]-b[buckshot]",
        stack_size = 200
    },

    -- =========================================================================
    -- 12g-slug: Пуля (бронебойный дробовой патрон)
    -- =========================================================================
    {
        type ="ammo",
        name ="12g-slug",
        icon ="__Atlas_ATF__/graphics/ammo/slug.png",
        icon_size = 128,
        icon_mipmaps = 4,
        flags = {"item"},
        ammo_category ="shotgun-shell",
        ammo_type = {
            category ="shotgun-shell",
            target_type ="direction",
            clamp_position = true,
            action = {
                {
                    type ="direct",
                    action_delivery = {
                        type ="instant",
                        source_effects = {
                            {
                                type ="create-explosion",
                                entity_name ="explosion-gunshot"
                            }
                        }
                    }
                },
                {
                    type ="direct",
                    action_delivery = {
                        type ="projectile",
                        projectile ="12g-slug",
                        starting_speed = 1,
                        starting_speed_deviation = 0.1,
                        direction_deviation = 0.3,
                        range_deviation = 0.3,
                        max_range = 35
                    }
                }
            }
        },
        magazine_size = 20,
        subgroup ="ATF-ammo",
        order ="b[shotgun]-b[slug]",
        stack_size = 200
    },

    -- =========================================================================
    -- 12g-frag: Осколочный (взрывной дробовой патрон)
    -- =========================================================================
    {
        type ="ammo",
        name ="12g-frag",
        icon ="__Atlas_ATF__/graphics/ammo/fragshot.png",
        icon_size = 128,
        icon_mipmaps = 4,
        flags = {"item"},
        ammo_category ="shotgun-shell",
        ammo_type = {
            category ="shotgun-shell",
            target_type ="direction",
            clamp_position = true,
            action = {
                {
                    type ="direct",
                    action_delivery = {
                        type ="instant",
                        source_effects = {
                            {
                                type ="create-explosion",
                                entity_name ="explosion-gunshot"
                            }
                        }
                    }
                },
                {
                    type ="direct",
                    repeat_count = 10,
                    action_delivery = {
                        type ="projectile",
                        projectile ="12g-frag",
                        starting_speed = 1,
                        starting_speed_deviation = 0.1,
                        direction_deviation = 0.3,
                        range_deviation = 0.3,
                        max_range = 25
                    }
                }
            }
        },
        magazine_size = 20,
        subgroup ="ATF-ammo",
        order ="b[shotgun]-b[frag]",
        stack_size = 200
    },

    -- =========================================================================
    -- 12g-dragon: Зажигательный (драконье дыхание)
    -- =========================================================================
    {
        type ="ammo",
        name ="12g-dragon",
        icon ="__Atlas_ATF__/graphics/ammo/dragonsbreath.png",
        icon_size = 128,
        icon_mipmaps = 4,
        flags = {"item"},
        ammo_category ="shotgun-shell",
        ammo_type = {
            category ="shotgun-shell",
            target_type ="direction",
            clamp_position = true,
            action = {
                {
                    type ="direct",
                    action_delivery = {
                        type ="instant",
                        source_effects = {
                            {
                                type ="create-explosion",
                                entity_name ="explosion-gunshot"
                            }
                        }
                    }
                },
                {
                    type ="direct",
                    repeat_count = 8,
                    action_delivery = {
                        type ="projectile",
                        projectile ="12g-inc",
                        starting_speed = 1,
                        starting_speed_deviation = 0.1,
                        direction_deviation = 0.3,
                        range_deviation = 0.3,
                        max_range = 25
                    }
                }
            }
        },
        magazine_size = 20,
        subgroup ="ATF-ammo",
        order ="b[shotgun]-b[dragon]",
        stack_size = 200
    }
})

-- ============================================================================
-- ЛОГИРОВАНИЕ ЗАГРУЗКИ
-- ============================================================================

log("[ATF-Rebalance] 12g ammo loaded successfully (12g-buckshot, 12g-slug, 12g-frag, 12g-dragon)")

-- ============================================================================
-- ИНТЕГРАЦИЯ С BOB'S WARFARE (опционально)
-- ============================================================================

if mods["bobwarfare"] then
    log("[ATF-Rebalance] Bob's Warfare detected - 12g ammo compatible")
end