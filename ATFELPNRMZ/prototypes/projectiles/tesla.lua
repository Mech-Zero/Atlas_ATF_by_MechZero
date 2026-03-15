-- tesla.lua
-- Электрический луч Tesla (для турелей и оружия)
-- Версия: 1.1 (Rebalance by MechromancerZero)
-- Интеграция: Bob's Warfare Compatibility

data:extend({
    -- =========================================================================
    -- tesla-beam: Электрический луч Tesla (цепная молния)
    -- =========================================================================
    {
        type = "beam",
        name = "tesla-beam",
        flags = {"not-on-map"},
        width = 0.5,
        damage_interval = 10,
        random_target_offset = false,
        
        -- =====================================================================
        -- ГРАФИКА (Factorio 2.0 формат)
        -- =====================================================================
        graphics_set = {
            -- Основной луч
            line = {
                {
                    filename = "__base__/graphics/entity/beam/tileable-beam-START.png",
                    flags = {"not-on-map"},
                    line_length = 4,
                    width = 52,
                    height = 40,
                    frame_count = 16,
                    direction_count = 1,
                    shift = {-0.03125, 0},
                    tint = {r = 1, g = 1, b = 1, a = 1},
                    hr_version = {
                        filename = "__base__/graphics/entity/beam/hr-tileable-beam-START.png",
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
                }
            },
            -- Свечение (опционально)
            glow = {
                filename = "__base__/graphics/entity/beam/tileable-beam-END.png",
                flags = {"not-on-map"},
                line_length = 4,
                width = 49,
                height = 54,
                frame_count = 16,
                direction_count = 1,
                shift = {-0.046875, 0},
                tint = {r = 0.5, g = 0.8, b = 1, a = 0.5},  -- Голубое свечение для Tesla
                draw_as_glow = true,
                hr_version = {
                    filename = "__base__/graphics/entity/beam/hr-tileable-beam-END.png",
                    flags = {"not-on-map"},
                    line_length = 4,
                    width = 91,
                    height = 93,
                    frame_count = 16,
                    direction_count = 1,
                    shift = {-0.078125, -0.046875},
                    tint = {r = 0.5, g = 0.8, b = 1, a = 0.5},
                    scale = 0.5
                }
            }
        },
        
        -- =====================================================================
        -- ОСВЕЩЕНИЕ
        -- =====================================================================
        light = {
            intensity = 1,
            size = 8,
            color = {r = 0.5, g = 0.8, b = 1}  -- Голубой свет для Tesla
        },
        
        -- =====================================================================
        -- ЭФФЕКТЫ
        -- =====================================================================
        action = {
            type = "direct",
            action_delivery = {
                type = "instant",
                target_effects = {
                    {
                        type = "damage",
                        damage = {amount = 20, type = "electric"}
                    },
                    {
                        type = "create-sticker",
                        sticker = "slowdown-sticker"
                    }
                }
            }
        },
        
        -- =====================================================================
        -- ЗВУКИ
        -- =====================================================================
        working_sound = {
            sound = {
                {
                    filename = "__base__/sound/fight/electric-beam.ogg",
                    volume = 0.7
                }
            },
            audible_distance_modifier = 0.8
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