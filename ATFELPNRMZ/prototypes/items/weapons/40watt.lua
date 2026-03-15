-- 40watt.lua
-- Плазменное оружие 40 Watt (Phased Plasma Rifle)
-- Версия: 1.1 (Rebalance by Mechromancer-Zero)
-- Интеграция: Bob's Warfare Compatibility

extend({
    -- =========================================================================
    -- plasma40watt: Фазовая плазменная винтовка (40 Watt)
    -- =========================================================================
    {
        type = "gun",
        name = "plasma40watt",
        icon = "__Atlas_ATF__/graphics/weapons/40watt.png",
        icon_size = 128,
        icon_mipmaps = 4,
        flags = {"item"},
        subgroup = "conceptarms",
        order = "g[plasma]-a[40watt]",
        attack_parameters = {
            type = "projectile",
            ammo_category = "plasma40watt",
            ammo_type = {
                category = "plasma40watt",
                action = {
                    type = "direct",
                    action_delivery = {
                        type = "projectile",
                        projectile = "40wattbolt",
                        starting_speed = 2,
                        starting_speed_deviation = 0,
                        direction_deviation = 0,
                        range_deviation = 0,
                        max_range = 40,
                        source_effects = {
                            type = "create-explosion",
                            entity_name = "explosion-gunshot"
                        }
                    }
                }
            },
            damage_modifier = 1.6,
            cooldown = 8,
            movement_slow_down_factor = 0.15,
            projectile_creation_distance = 1.5,
            range = 40,
            cyclic_sound = {
                begin_sound = {
                    {
                        filename = "__Atlas_ATF__/sound/empty.ogg",
                        volume = 0,
                        speed = 1000.0
                    }
                },
                middle_sound = {
                    {
                        filename = "__Atlas_ATF__/sound/m25.ogg",
                        volume = 1.0
                    }
                },
                end_sound = {
                    {
                        filename = "__Atlas_ATF__/sound/empty.ogg",
                        volume = 0,
                        speed = 1000.0
                    }
                }
            }
        },
        stack_size = 50
    }
})

-- ============================================================================
-- ЛОГИРОВАНИЕ ЗАГРУЗКИ
-- ============================================================================

log("[ATF-Rebalance] Plasma 40watt weapon loaded successfully")

-- ============================================================================
-- ИНТЕГРАЦИЯ С BOB'S WARFARE (опционально)
-- ============================================================================

if mods["bobwarfare"] then
    log("[ATF-Rebalance] Bob's Warfare detected - plasma weapons compatible")
end