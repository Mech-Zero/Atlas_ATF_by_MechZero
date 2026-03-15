-- tesla.lua
-- Электрический луч Tesla (для турелей и оружия)
-- Версия: 1.1 (Rebalance by Mechromancer-Zero)
-- Интеграция: Bob's Warfare Compatibility

extend({
    -- =========================================================================
    -- tesla-beam: Электрический луч Tesla (цепная молния)
    -- =========================================================================
    {
        type ="beam",
        name ="tesla-beam",
        flags = {"not-on-map"},
        width = 0.5,
        damage_interval = 10,
        random_target_offset = false,
        action = {
            type ="direct",
            action_delivery = {
                type ="instant",
                target_effects = {
                    {
                        type ="damage",
                        damage = {amount = 20, type ="electric"}
                    },
                    {
                        type ="create-sticker",
                        sticker ="slowdown-sticker"
                    }
                }
            }
        },
        light = {intensity = 1, size = 8},
        head = {
            filename ="__base__/graphics/entity/beam/tileable-beam-START.png",
            flags = {"not-on-map"},
            line_length = 4,
            width = 52,
            height = 40,
            frame_count = 16,
            direction_count = 1,
            shift = {-0.03125, 0},
            tint = {r = 1, g = 1, b = 1, a = 1},
            hr_version = {
                filename ="__base__/graphics/entity/beam/hr-tileable-beam-START.png",
                flags = {"not-on-map"},
                line_length = 4,
                width = 94,
                height = 66,
                frame_count = 16,
                direction_count = 1,
                shift = {0.53125, 0},
                tint = {r = 1, g = 1, b = 1, a = 1},
                scale = 0.5
            }
        },
        tail = {
            filename ="__base__/graphics/entity/beam/tileable-beam-END.png",
            flags = {"not-on-map"},
            line_length = 4,
            width = 49,
            height = 54,
            frame_count = 16,
            direction_count = 1,
            shift = {-0.046875, 0},
            tint = {r = 1, g = 1, b = 1, a = 1},
            hr_version = {
                filename ="__base__/graphics/entity/beam/hr-tileable-beam-END.png",
                flags = {"not-on-map"},
                line_length = 4,
                width = 91,
                height = 93,
                frame_count = 16,
                direction_count = 1,
                shift = {-0.078125, -0.046875},
                tint = {r = 1, g = 1, b = 1, a = 1},
                scale = 0.5
            }
        },
        body = {
            {
                filename ="__base__/graphics/entity/beam/beam-body-1.png",
                flags = {"not-on-map"},
                line_length = 16,
                width = 32,
                height = 39,
                frame_count = 16,
                tint = {r = 1, g = 1, b = 1, a = 1},
                blend_mode ="additive"
            },
            {
                filename ="__base__/graphics/entity/beam/beam-body-2.png",
                flags = {"not-on-map"},
                line_length = 16,
                width = 32,
                height = 39,
                frame_count = 16,
                blend_mode ="additive"
            },
            {
                filename ="__base__/graphics/entity/beam/beam-body-3.png",
                flags = {"not-on-map"},
                line_length = 16,
                width = 32,
                height = 39,
                frame_count = 16,
                blend_mode ="additive"
            },
            {
                filename ="__base__/graphics/entity/beam/beam-body-4.png",
                flags = {"not-on-map"},
                line_length = 16,
                width = 32,
                height = 39,
                frame_count = 16,
                blend_mode ="additive"
            },
            {
                filename ="__base__/graphics/entity/beam/beam-body-5.png",
                flags = {"not-on-map"},
                line_length = 16,
                width = 32,
                height = 39,
                frame_count = 16,
                blend_mode ="additive"
            },
            {
                filename ="__base__/graphics/entity/beam/beam-body-6.png",
                flags = {"not-on-map"},
                line_length = 16,
                width = 32,
                height = 39,
                frame_count = 16,
                blend_mode ="additive"
            }
        },
        working_sound = {
            {
                filename ="__base__/sound/fight/electric-beam.ogg",
                volume = 0.7
            }
        }
    }
})

-- ============================================================================
-- ЛОГИРОВАНИЕ ЗАГРУЗКИ
-- ============================================================================

log("[ATF-Rebalance] Tesla beam loaded successfully")

-- ============================================================================
-- ИНТЕГРАЦИЯ С BOB'S WARFARE (опционально)
-- ============================================================================

if mods["bobwarfare"] then
    log("[ATF-Rebalance] Bob's Warfare detected - tesla beam compatible")
end