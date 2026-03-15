-- prototypes/entities/turrets/swatt-turret.lua
-- Турель SWATT (электрическая турель 556-swatt)
-- Версия: 1.1 (Rebalance by MechromancerZero)
-- Интеграция: Bob's Warfare Compatibility

local hit_effects = require("__base__.prototypes.entity.hit-effects")
local sounds = require("__base__.prototypes.entity.sounds")

-- ============================================================================
-- ОПРЕДЕЛЕНИЕ АНИМАЦИЙ (из base game laser-turret)
-- ============================================================================

local laser_turret_extension = {
    filename = "__base__/graphics/entity/laser-turret/laser-turret-extension.png",
    priority = "high",
    width = 96,
    height = 96,
    frame_count = 1,
    shift = util.by_pixel(0, 0),
    hr_version = {
        filename = "__base__/graphics/entity/laser-turret/hr-laser-turret-extension.png",
        priority = "high",
        width = 192,
        height = 192,
        frame_count = 1,
        shift = util.by_pixel(0, 0),
        scale = 0.5
    }
}

local laser_turret_extension_shadow = {
    filename = "__base__/graphics/entity/laser-turret/laser-turret-extension-shadow.png",
    priority = "high",
    width = 96,
    height = 96,
    frame_count = 1,
    shift = util.by_pixel(0, 0),
    draw_as_shadow = true,
    hr_version = {
        filename = "__base__/graphics/entity/laser-turret/hr-laser-turret-extension-shadow.png",
        priority = "high",
        width = 192,
        height = 192,
        frame_count = 1,
        shift = util.by_pixel(0, 0),
        scale = 0.5
    }
}

local laser_turret_extension_mask = {
    filename = "__base__/graphics/entity/laser-turret/laser-turret-extension-mask.png",
    flags = {"mask", "low-object"},
    priority = "high",
    width = 96,
    height = 96,
    frame_count = 1,
    shift = util.by_pixel(0, 0),
    apply_runtime_tint = true,
    hr_version = {
        filename = "__base__/graphics/entity/laser-turret/hr-laser-turret-extension-mask.png",
        flags = {"mask", "low-object"},
        priority = "high",
        width = 192,
        height = 192,
        frame_count = 1,
        shift = util.by_pixel(0, 0),
        scale = 0.5
    }
}

local laser_turret_shooting = {
    filename = "__base__/graphics/entity/laser-turret/laser-turret-shooting.png",
    priority = "high",
    width = 96,
    height = 96,
    frame_count = 8,
    animation_speed = 0.5,
    shift = util.by_pixel(0, 0),
    hr_version = {
        filename = "__base__/graphics/entity/laser-turret/hr-laser-turret-shooting.png",
        priority = "high",
        width = 192,
        height = 192,
        frame_count = 8,
        animation_speed = 0.5,
        shift = util.by_pixel(0, 0),
        scale = 0.5
    }
}

local laser_turret_shooting_shadow = {
    filename = "__base__/graphics/entity/laser-turret/laser-turret-shooting-shadow.png",
    priority = "high",
    width = 96,
    height = 96,
    frame_count = 8,
    animation_speed = 0.5,
    shift = util.by_pixel(0, 0),
    draw_as_shadow = true,
    hr_version = {
        filename = "__base__/graphics/entity/laser-turret/hr-laser-turret-shooting-shadow.png",
        priority = "high",
        width = 192,
        height = 192,
        frame_count = 8,
        animation_speed = 0.5,
        shift = util.by_pixel(0, 0),
        scale = 0.5
    }
}

local laser_turret_shooting_mask = {
    filename = "__base__/graphics/entity/laser-turret/laser-turret-shooting-mask.png",
    flags = {"mask", "low-object"},
    priority = "high",
    width = 96,
    height = 96,
    frame_count = 8,
    animation_speed = 0.5,
    shift = util.by_pixel(0, 0),
    apply_runtime_tint = true,
    hr_version = {
        filename = "__base__/graphics/entity/laser-turret/hr-laser-turret-shooting-mask.png",
        flags = {"mask", "low-object"},
        priority = "high",
        width = 192,
        height = 192,
        frame_count = 8,
        animation_speed = 0.5,
        shift = util.by_pixel(0, 0),
        scale = 0.5
    }
}

local laser_turret_shooting_glow = {
    filename = "__base__/graphics/entity/laser-turret/laser-turret-shooting-glow.png",
    priority = "high",
    width = 96,
    height = 96,
    frame_count = 8,
    animation_speed = 0.5,
    shift = util.by_pixel(0, 0),
    draw_as_glow = true,
    hr_version = {
        filename = "__base__/graphics/entity/laser-turret/hr-laser-turret-shooting-glow.png",
        priority = "high",
        width = 192,
        height = 192,
        frame_count = 8,
        animation_speed = 0.5,
        shift = util.by_pixel(0, 0),
        scale = 0.5
    }
}

-- ============================================================================
-- ПРОТОТИП ТУРЕЛИ
-- ============================================================================

extend({
    {
        type = "electric-turret",
        name = "ATF-swatt-turret",
        icon = "__ATFELPNRMZ__/graphics/icons/swatt-turret.png",
        icon_size = 64,
        icon_mipmaps = 4,
        flags = {"placeable-player", "placeable-enemy", "player-creation"},
        minable = {mining_time = 0.5, result = "ATF-swatt-turret"},
        fast_replaceable_group = "turret",
        max_health = 2500,
        collision_box = {{-0.7, -0.7}, {0.7, 0.7}},
        selection_box = {{-1, -1}, {1, 1}},
        damaged_trigger_effect = hit_effects.entity(),
        rotation_speed = 0.02,
        preparing_speed = 0.05,
        preparing_sound = sounds.laser_turret_activate,
        folding_sound = sounds.laser_turret_deactivate,
        corpse = "laser-turret-remnants",
        dying_explosion = "laser-turret-explosion",
        folding_speed = 0.05,
        resistances = {
            {type = "fire", decrease = 15, percent = 100},
            {type = "physical", decrease = 20, percent = 50},
            {type = "impact", decrease = 50, percent = 50},
            {type = "explosion", decrease = 15, percent = 80},
            {type = "acid", decrease = 10, percent = 40}
        },
        energy_source = {
            type = "electric",
            buffer_capacity = "1800kJ",
            input_flow_limit = "15000kW",
            drain = "20kW",
            usage_priority = "primary-input"
        },
        
        -- АНИМАЦИИ
        folded_animation = {
            layers = {
                laser_turret_extension,
                laser_turret_extension_shadow,
                laser_turret_extension_mask
            }
        },
        preparing_animation = {
            layers = {
                laser_turret_extension,
                laser_turret_extension_shadow,
                laser_turret_extension_mask
            }
        },
        prepared_animation = {
            layers = {
                laser_turret_shooting,
                laser_turret_shooting_shadow,
                laser_turret_shooting_mask
            }
        },
        attacking_animation = {
            layers = {
                laser_turret_shooting,
                laser_turret_shooting_shadow,
                laser_turret_shooting_mask
            }
        },
        folding_animation = {
            layers = {
                laser_turret_extension,
                laser_turret_extension_shadow,
                laser_turret_extension_mask
            }
        },
        
        -- ГРАФИКА (Factorio 2.0 формат)
        graphics_set = {
            base_visualisation = {
                animation = {
                    layers = {
                        {
                            filename = "__base__/graphics/entity/laser-turret/laser-turret-base.png",
                            priority = "high",
                            width = 138,
                            height = 104,
                            shift = util.by_pixel(-0.5, 2),
                            scale = 0.5
                        },
                        {
                            filename = "__base__/graphics/entity/laser-turret/laser-turret-base-shadow.png",
                            line_length = 1,
                            width = 132,
                            height = 82,
                            draw_as_shadow = true,
                            shift = util.by_pixel(6, 3),
                            scale = 0.5
                        }
                    }
                }
            },
            animation = {
                layers = {
                    laser_turret_shooting,
                    laser_turret_shooting_shadow,
                    laser_turret_shooting_mask
                }
            },
            glow = {
                animation = laser_turret_shooting_glow,
                light = {
                    intensity = 0.5,
                    size = 10,
                    color = {r = 0.5, g = 0.8, b = 1}  -- Голубое свечение для SWATT
                }
            }
        },
        
        vehicle_impact_sound = sounds.generic_impact,
        
        -- ПАРАМЕТРЫ АТАКИ
        attack_parameters = {
            type = "projectile",
            ammo_category = "556-swatt",
            ammo_categories = {"556-swatt", "bullet"},  -- ← ДОБАВЛЕНО!
            damage_modifier = 1.8,
            cooldown = 10,
            projectile_creation_distance = 1.2,
            projectile_center = {0, 0},
            range = 35,
            min_range = 3,
            cyclic_sound = {
                begin_sound = {
                    {
                        filename = "__ATFELPNRMZ__/sound/empty.ogg",
                        volume = 0,
                        speed = 1000.0
                    }
                },
                middle_sound = {
                    {
                        filename = "__ATFELPNRMZ__/sound/m4a1.ogg",
                        volume = 0.5
                    }
                },
                end_sound = {
                    {
                        filename = "__ATFELPNRMZ__/sound/empty.ogg",
                        volume = 0,
                        speed = 1000.0
                    }
                }
            }
        },
        
        turret_base_has_direction = true,
        gun_barrel_length = 0.4,
        call_for_help_radius = 40,
        water_reflection = {
            pictures = {
                filename = "__base__/graphics/entity/laser-turret/laser-turret-reflection.png",
                priority = "extra-high",
                width = 20,
                height = 32,
                shift = util.by_pixel(0, 40),
                variation_count = 1,
                scale = 5
            },
            rotate = false,
            orientation_to_variation = false
        }
    }
})

-- ============================================================================
-- ЛОГИРОВАНИЕ ЗАГРУЗКИ
-- ============================================================================

log("[ATF-Rebalance] SWATT turret entity loaded successfully")

-- ============================================================================
-- ИНТЕГРАЦИЯ С BOB'S WARFARE (опционально)
-- ============================================================================

if mods["bobwarfare"] then
    log("[ATF-Rebalance] Bob's Warfare detected - SWATT turret compatible")
end