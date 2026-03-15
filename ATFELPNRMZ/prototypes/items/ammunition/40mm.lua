-- 40mm.lua
-- Патроны 40mm (гранатомёт) для ATF Rebalance
-- Версия: 1.1 (Rebalance by Mechromancer-Zero)
-- Интеграция: Bob's Warfare Compatibility

data:extend({
    -- =========================================================================
    -- 40mm-he: Фугасный гранатомётный выстрел
    -- =========================================================================
    {
        type = "ammo",
        name = "40mm-he",
        icon = "__Atlas_ATF__/graphics/ammo/40mm.png",
        icon_size = 128,
        icon_mipmaps = 4,
        flags = {"item"},
        ammo_category = "40mm",
        ammo_type = {
            category = "40mm",
            target_type = "position",
            clamp_position = false,
            action = {
                {
                    type = "direct",
                    action_delivery = {
                        type = "projectile",
                        projectile = "40mm-he",
                        starting_speed = 1,
                        starting_speed_deviation = 0.1,
                        direction_deviation = 0.3,
                        range_deviation = 0.3,
                        max_range = 80
                    }
                }
            }
        },
        magazine_size = 10,
        subgroup = "ATF-ammo",
        order = "e[grenade]-a[he]",
        stack_size = 200
    },

    -- =========================================================================
    -- 40mm-incendiary: Зажигательный гранатомётный выстрел
    -- =========================================================================
    {
        type = "ammo",
        name = "40mm-incendiary",
        icon = "__Atlas_ATF__/graphics/ammo/40mm-incendiary.png",
        icon_size = 128,
        icon_mipmaps = 4,
        flags = {"item"},
        ammo_category = "40mm",
        ammo_type = {
            category = "40mm",
            target_type = "position",
            clamp_position = false,
            action = {
                {
                    type = "direct",
                    action_delivery = {
                        type = "projectile",
                        projectile = "40mm-incendiary",
                        starting_speed = 1,
                        starting_speed_deviation = 0.1,
                        direction_deviation = 0.2,
                        range_deviation = 0.2,
                        max_range = 80
                    }
                }
            }
        },
        magazine_size = 10,
        subgroup = "ATF-ammo",
        order = "e[grenade]-b[inc]",
        stack_size = 200
    },

    -- =========================================================================
    -- 40mm-acid: Кислотный гранатомётный выстрел
    -- =========================================================================
    {
        type = "ammo",
        name = "40mm-acid",
        icon = "__Atlas_ATF__/graphics/ammo/40mm-acid.png",
        icon_size = 128,
        icon_mipmaps = 4,
        flags = {"item"},
        ammo_category = "40mm",
        ammo_type = {
            category = "40mm",
            target_type = "position",
            clamp_position = false,
            action = {
                {
                    type = "direct",
                    action_delivery = {
                        type = "projectile",
                        projectile = "40mm-acid",
                        starting_speed = 1,
                        starting_speed_deviation = 0.1,
                        direction_deviation = 0.2,
                        range_deviation = 0.2,
                        max_range = 80
                    }
                }
            }
        },
        magazine_size = 10,
        subgroup = "ATF-ammo",
        order = "e[grenade]-c[acid]",
        stack_size = 200
    },

    -- =========================================================================
    -- 40mm-plasma: Плазменный гранатомётный выстрел
    -- =========================================================================
    {
        type = "ammo",
        name = "40mm-plasma",
        icon = "__Atlas_ATF__/graphics/ammo/40mm-plasma.png",
        icon_size = 128,
        icon_mipmaps = 4,
        flags = {"item"},
        ammo_category = "40mm",
        ammo_type = {
            category = "40mm",
            target_type = "position",
            clamp_position = false,
            action = {
                {
                    type = "direct",
                    action_delivery = {
                        type = "projectile",
                        projectile = "40mm-plasma",
                        starting_speed = 1.2,
                        starting_speed_deviation = 0.1,
                        direction_deviation = 0.2,
                        range_deviation = 0.2,
                        max_range = 80
                    }
                }
            }
        },
        magazine_size = 10,
        subgroup = "ATF-ammo",
        order = "e[grenade]-d[plasma]",
        stack_size = 200
    }
})

-- ============================================================================
-- ЛОГИРОВАНИЕ ЗАГРУЗКИ
-- ============================================================================

log("[ATF-Rebalance] 40mm ammo loaded successfully (40mm-he, 40mm-incendiary, 40mm-acid, 40mm-plasma)")

-- ============================================================================
-- ИНТЕГРАЦИЯ С BOB'S WARFARE (опционально)
-- ============================================================================

if mods["bobwarfare"] then
    log("[ATF-Rebalance] Bob's Warfare detected - 40mm ammo compatible")
end