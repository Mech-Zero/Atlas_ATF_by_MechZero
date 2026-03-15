-- prototypes/entities/turrets/plasma-turret.lua
-- Турель M25 (плазменная турель - ТЯЖЕЛАЯ АРТИЛЛЕРИЯ)
-- Версия: 1.2 (Rebalance by MechromancerZero)

local hit_effects = require("__base__.prototypes.entity.hit-effects")
local sounds = require("__base__.prototypes.entity.sounds")

-- АНИМАЦИИ
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

-- ПРОТОТИП ТУРЕЛИ
data:extend({
    {
        type = "electric-turret",
        name = "ATF-m25-turret",
        icon = "__ATFELPNRMZ__/graphics/icons/plasma-turret.png",
        icon_size = 64,
        icon_mipmaps = 4,
        flags = {"placeable-player", "placeable-enemy", "player-creation"},
        minable = {mining_time = 0.5, result = "ATF-m25-turret"},
        fast_replaceable_group = "turret",
        max_health = 3500,
        collision_box = {{-0.8, -0.8}, {0.8, 0.8}},
        selection_box = {{-1.1, -1.1}, {1.1, 1.1}},
        damaged_trigger_effect = hit_effects.entity(),
        rotation_speed = 0.015,
        preparing_speed = 0.03,
        preparing_sound = sounds.laser_turret_activate,
        folding_sound = sounds.laser_turret_deactivate,
        corpse = "laser-turret-remnants",
        dying_explosion = "laser-turret-explosion",
        folding_speed = 0.03,
        resistances = {
            {type = "fire", decrease = 20, percent = 100},
            {type = "physical", decrease = 25, percent = 60},
            {type = "impact", decrease = 60, percent = 60},
            {type = "explosion", decrease = 20, percent = 90},
            {type = "acid", decrease = 15, percent = 50}
        },
        energy_source = {
            type = "electric",
            buffer_capacity = "2500kJ",
            input_flow_limit = "20000kW",
            drain = "30kW",
            usage_priority = "primary-input"
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
                    intensity = 0.8,
                    size = 15,
                    color = {r = 1, g = 0.3, b = 0}
                }
            }
        },
        vehicle_impact_sound = sounds.generic_impact,
        attack_parameters = {
            type = "projectile",
            ammo_category = "plasma40watt",
            ammo_categories = {"plasma40watt", "plasma"},
            damage_modifier = 3.5,
            cooldown = 18,
            projectile_creation_distance = 1.5,
            projectile_center = {0, 0},
            range = 40,
            min_range = 5,
            sound = {
                {
                    filename = "__ATFELPNRMZ__/sound/m25-fire.ogg",
                    volume = 0.8
                }
            }
        },
        turret_base_has_direction = true,
        gun_barrel_length = 0.6,
        call_for_help_radius = 50,
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

log("[ATF-Rebalance] M25 plasma turret - HEAVY ARTILLERY loaded successfully")

if mods["bobwarfare"] then
    log("[ATF-Rebalance] Bob's Warfare detected - M25 turret compatible")
end