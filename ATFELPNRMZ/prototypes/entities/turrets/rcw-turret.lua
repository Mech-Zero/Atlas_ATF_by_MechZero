-- prototypes/entities/turrets/rcw-turret.lua
-- Турель RCW (лазерная турель - СКОРОСТРЕЛЬНАЯ И ТОЧНАЯ)
-- Версия: 1.2 (Rebalance by MechromancerZero)
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

data:extend({
    {
        type = "electric-turret",
        name = "ATF-rcw-turret",
        icon = "__ATFELPNRMZ__/graphics/icons/rcw-turret.png",
        icon_size = 64,
        icon_mipmaps = 4,
        flags = {"placeable-player", "placeable-enemy", "player-creation"},
        minable = {mining_time = 0.5, result = "ATF-rcw-turret"},
        fast_replaceable_group = "turret",
        max_health = 2800,  -- Средняя прочность
        corpse = "laser-turret-remnants",
        dying_explosion = "laser-turret-explosion",
        collision_box = {{-0.7, -0.7}, {0.7, 0.7}},
        selection_box = {{-1, -1}, {1, 1}},
        damaged_trigger_effect = hit_effects.entity(),
        rotation_speed = 0.035,  -- ↑ БЫСТРЫЙ поворот
        preparing_speed = 0.08,
        preparing_sound = sounds.laser_turret_activate,
        folding_sound = sounds.laser_turret_deactivate,
        folding_speed = 0.08,
        resistances = {
            {type = "fire", decrease = 15, percent = 100},
            {type = "physical", decrease = 18, percent = 45},
            {type = "impact", decrease = 45, percent = 45},
            {type = "explosion", decrease = 12, percent = 75},
            {type = "acid", decrease = 8, percent = 35}
        },
        energy_source = {
            type = "electric",
            buffer_capacity = "1500kJ",
            input_flow_limit = "12000kW",
            drain = "12kW",  -- ↓ СРЕДНЕЕ потребление
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
        attacking_animation = {  -- ← ДОБАВЛЕНО!
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
            animation = {  -- ← ДОБАВЛЕНО!
                layers = {
                    laser_turret_shooting,
                    laser_turret_shooting_shadow,
                    laser_turret_shooting_mask
                }
            },
            glow = {  -- ← ИСПРАВЛЕНО!
                animation = laser_turret_shooting_glow,
                light = {
                    intensity = 0.6,
                    size = 10,
                    color = {r = 0, g = 1, b = 0.5}  -- ЗЕЛЁНОЕ свечение для лазера
                }
            }
        },
        
        vehicle_impact_sound = sounds.generic_impact,
        
        -- ПАРАМЕТРЫ АТАКИ (ИСПРАВЛЕНО - без ammo_type!)
        attack_parameters = {
            type = "beam",  ← ЛУЧЕВОЕ ОРУЖИЕ!
            ammo_category = "fusion-battery",
            ammo_categories = {"fusion-battery", "laser"},  -- ← ДОБАВЛЕНО!
            damage_modifier = 1.8,  -- Средний урон
            cooldown = 8,  -- ↑ БЫСТРАЯ скорострельность
            range = 35,  -- Средний радиус
            beam = "laser-beam",  ← Используем луч!
            sound = {
                {
                    filename = "__ATFELPNRMZ__/sound/rcw-fire.ogg",
                    volume = 0.6
                }
            }
        },
        
        turret_base_has_direction = true,
        gun_barrel_length = 0.3,
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

log("[ATF-Rebalance] RCW laser turret - RAPID FIRE loaded successfully")

-- ============================================================================
-- ИНТЕГРАЦИЯ С BOB'S WARFARE (опционально)
-- ============================================================================

if mods["bobwarfare"] then
    log("[ATF-Rebalance] Bob's Warfare detected - RCW turret compatible")
end