-- prototypes/entities/turrets/rcw-turret.lua
-- Турель RCW (лазерная турель с ядерной батареей)
-- Версия: 1.1 (Rebalance by Mechromancer-Zero)
-- Интеграция: Bob's Warfare Compatibility

local hit_effects = require("__base__.prototypes.entity.hit-effects")
local sounds = require("__base__.prototypes.entity.sounds")

-- ============================================================================
-- ОПРЕДЕЛЕНИЕ АНИМАЦИЙ (из base game laser-turret)
-- ============================================================================

local laser_turret_extension = {
    filename ="__base__/graphics/entity/laser-turret/laser-turret-extension.png",
    priority ="high",
    width = 96,
    height = 96,
    frame_count = 1,
    shift = util.by_pixel(0, 0),
    hr_version = {
        filename ="__base__/graphics/entity/laser-turret/hr-laser-turret-extension.png",
        priority ="high",
        width = 192,
        height = 192,
        frame_count = 1,
        shift = util.by_pixel(0, 0),
        scale = 0.5
    }
}

local laser_turret_extension_shadow = {
    filename ="__base__/graphics/entity/laser-turret/laser-turret-extension-shadow.png",
    priority ="high",
    width = 96,
    height = 96,
    frame_count = 1,
    shift = util.by_pixel(0, 0),
    draw_as_shadow = true,
    hr_version = {
        filename ="__base__/graphics/entity/laser-turret/hr-laser-turret-extension-shadow.png",
        priority ="high",
        width = 192,
        height = 192,
        frame_count = 1,
        shift = util.by_pixel(0, 0),
        scale = 0.5
    }
}

local laser_turret_extension_mask = {
    filename ="__base__/graphics/entity/laser-turret/laser-turret-extension-mask.png",
    flags = {"mask","low-object"},
    priority ="high",
    width = 96,
    height = 96,
    frame_count = 1,
    shift = util.by_pixel(0, 0),
    apply_runtime_tint = true,
    hr_version = {
        filename ="__base__/graphics/entity/laser-turret/hr-laser-turret-extension-mask.png",
        flags = {"mask","low-object"},
        priority ="high",
        width = 192,
        height = 192,
        frame_count = 1,
        shift = util.by_pixel(0, 0),
        scale = 0.5
    }
}

local laser_turret_shooting = {
    filename ="__base__/graphics/entity/laser-turret/laser-turret-shooting.png",
    priority ="high",
    width = 96,
    height = 96,
    frame_count = 8,
    animation_speed = 0.5,
    shift = util.by_pixel(0, 0),
    hr_version = {
        filename ="__base__/graphics/entity/laser-turret/hr-laser-turret-shooting.png",
        priority ="high",
        width = 192,
        height = 192,
        frame_count = 8,
        animation_speed = 0.5,
        shift = util.by_pixel(0, 0),
        scale = 0.5
    }
}

local laser_turret_shooting_shadow = {
    filename ="__base__/graphics/entity/laser-turret/laser-turret-shooting-shadow.png",
    priority ="high",
    width = 96,
    height = 96,
    frame_count = 8,
    animation_speed = 0.5,
    shift = util.by_pixel(0, 0),
    draw_as_shadow = true,
    hr_version = {
        filename ="__base__/graphics/entity/laser-turret/hr-laser-turret-shooting-shadow.png",
        priority ="high",
        width = 192,
        height = 192,
        frame_count = 8,
        animation_speed = 0.5,
        shift = util.by_pixel(0, 0),
        scale = 0.5
    }
}

local laser_turret_shooting_mask = {
    filename ="__base__/graphics/entity/laser-turret/laser-turret-shooting-mask.png",
    flags = {"mask","low-object"},
    priority ="high",
    width = 96,
    height = 96,
    frame_count = 8,
    animation_speed = 0.5,
    shift = util.by_pixel(0, 0),
    apply_runtime_tint = true,
    hr_version = {
        filename ="__base__/graphics/entity/laser-turret/hr-laser-turret-shooting-mask.png",
        flags = {"mask","low-object"},
        priority ="high",
        width = 192,
        height = 192,
        frame_count = 8,
        animation_speed = 0.5,
        shift = util.by_pixel(0, 0),
        scale = 0.5
    }
}

local laser_turret_shooting_glow = {
    filename ="__base__/graphics/entity/laser-turret/laser-turret-shooting-glow.png",
    priority ="high",
    width = 96,
    height = 96,
    frame_count = 8,
    animation_speed = 0.5,
    shift = util.by_pixel(0, 0),
    draw_as_glow = true,
    hr_version = {
        filename ="__base__/graphics/entity/laser-turret/hr-laser-turret-shooting-glow.png",
        priority ="high",
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
        type ="electric-turret",
        name ="ATF-rcw-turret",
        icon ="__base__/graphics/icons/laser-turret.png",
        icon_size = 64,
        icon_mipmaps = 4,
        flags = {"placeable-player","placeable-enemy","player-creation"},
        minable = {mining_time = 0.5, result ="ATF-rcw-turret"},
        fast_replaceable_group ="turret",
        max_health = 3000,
        collision_box = {{-0.7, -0.7}, {0.7, 0.7}},
        selection_box = {{-1, -1}, {1, 1}},
        damaged_trigger_effect = hit_effects.entity(),
        rotation_speed = 0.02,
        preparing_speed = 0.05,
        preparing_sound = sounds.laser_turret_activate,
        folding_sound = sounds.laser_turret_deactivate,
        corpse ="laser-turret-remnants",
        dying_explosion ="laser-turret-explosion",
        folding_speed = 0.05,
        resistances = {
            {type ="fire", decrease = 15, percent = 100},
            {type ="physical", decrease = 20, percent = 50},
            {type ="impact", decrease = 50, percent = 50},
            {type ="explosion", decrease = 15, percent = 80},
            {type ="acid", decrease = 10, percent = 40}
        },
        energy_source = {
            type ="electric",
            buffer_capacity ="1800kJ",
            input_flow_limit ="15000kW",
            drain ="20kW",
            usage_priority ="primary-input"
        },
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
        graphics_set = {
            base_visualisation = {
                animation = {
                    layers = {
                        {
                            filename ="__base__/graphics/entity/laser-turret/laser-turret-base.png",
                            priority ="high",
                            width = 138,
                            height = 104,
                            shift = util.by_pixel(-0.5, 2),
                            scale = 0.5
                        },
                        {
                            filename ="__base__/graphics/entity/laser-turret/laser-turret-base-shadow.png",
                            line_length = 1,
                            width = 132,
                            height = 82,
                            draw_as_shadow = true,
                            shift = util.by_pixel(6, 3),
                            scale = 0.5
                        }
                    }
                }
            }
        },
        energy_glow_animation = laser_turret_shooting_glow,
        glow_light_intensity = 0.5,
        folding_animation = {
            layers = {
                laser_turret_extension,
                laser_turret_extension_shadow,
                laser_turret_extension_mask
            }
        },
        base_picture = {
            layers = {
                {
                    filename ="__base__/graphics/entity/laser-turret/laser-turret-base.png",
                    priority ="high",
                    width = 70,
                    height = 52,
                    direction_count = 1,
                    frame_count = 1,
                    shift = util.by_pixel(0, 2),
                    hr_version = {
                        filename ="__base__/graphics/entity/laser-turret/hr-laser-turret-base.png",
                        priority ="high",
                        width = 138,
                        height = 104,
                        direction_count = 1,
                        frame_count = 1,
                        shift = util.by_pixel(-0.5, 2),
                        scale = 0.5
                    }
                },
                {
                    filename ="__base__/graphics/entity/laser-turret/laser-turret-base-shadow.png",
                    line_length = 1,
                    width = 66,
                    height = 42,
                    draw_as_shadow = true,
                    direction_count = 1,
                    frame_count = 1,
                    shift = util.by_pixel(6, 3),
                    hr_version = {
                        filename ="__base__/graphics/entity/laser-turret/hr-laser-turret-base-shadow.png",
                        line_length = 1,
                        width = 132,
                        height = 82,
                        draw_as_shadow = true,
                        direction_count = 1,
                        frame_count = 1,
                        shift = util.by_pixel(6, 3),
                        scale = 0.5
                    }
                }
            }
        },
        vehicle_impact_sound = sounds.generic_impact,
        attack_parameters = {
            type ="projectile",
            ammo_category ="fusion-battery",
            ammo_type = {
                category ="fusion-battery",
                target_type ="entity",
                energy_consumption ="900kJ",
                action = {
                    type ="direct",
                    action_delivery = {
                        type ="projectile",
                        projectile ="fusion-laser",
                        starting_speed = 2,
                        starting_speed_deviation = 0,
                        direction_deviation = 0,
                        range_deviation = 0,
                        max_range = 30
                    }
                }
            },
            cooldown = 6,
            projectile_creation_distance = 1.2,
            projectile_center = {0, 0},
            range = 30,
            min_range = 2,
            sound = {
                {
                    filename ="__Atlas_ATF__/sound/rcw.ogg",
                    volume = 1
                }
            }
        },
        turret_base_has_direction = true,
        gun_barrel_length = 0.2,
        call_for_help_radius = 40,
        water_reflection = {
            pictures = {
                filename ="__base__/graphics/entity/laser-turret/laser-turret-reflection.png",
                priority ="extra-high",
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

log("[ATF-Rebalance] RCW turret entity loaded successfully")

-- ============================================================================
-- ИНТЕГРАЦИЯ С BOB'S WARFARE (опционально)
-- ============================================================================

if mods["bobwarfare"] then
    log("[ATF-Rebalance] Bob's Warfare detected - RCW turret compatible")
end