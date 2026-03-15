-- prototypes/entities/turrets/gau-turret.lua
-- Турель GAU (ротативная система 20mm)
-- Версия: 1.1 (Rebalance by Mechromancer-Zero)
-- Интеграция: Bob's Warfare Compatibility

local hit_effects = require("__base__.prototypes.entity.hit-effects")
local sounds = require("__base__.prototypes.entity.sounds")

-- ============================================================================
-- ПРОВЕРКА СУЩЕСТВОВАНИЯ АНИМАЦИЙ
-- ============================================================================

-- Анимации из base game (gun-turret)
local gun_turret_extension = {
    filename = "__base__/graphics/entity/gun-turret/gun-turret-extension.png",
    priority = "high",
    width = 96,
    height = 96,
    frame_count = 1,
    shift = util.by_pixel(0, 0),
    hr_version = {
        filename = "__base__/graphics/entity/gun-turret/hr-gun-turret-extension.png",
        priority = "high",
        width = 192,
        height = 192,
        frame_count = 1,
        shift = util.by_pixel(0, 0),
        scale = 0.5
    }
}

local gun_turret_extension_mask = {
    filename = "__base__/graphics/entity/gun-turret/gun-turret-extension-mask.png",
    flags = {"mask", "low-object"},
    priority = "high",
    width = 96,
    height = 96,
    frame_count = 1,
    shift = util.by_pixel(0, 0),
    apply_runtime_tint = true,
    hr_version = {
        filename = "__base__/graphics/entity/gun-turret/hr-gun-turret-extension-mask.png",
        flags = {"mask", "low-object"},
        priority = "high",
        width = 192,
        height = 192,
        frame_count = 1,
        shift = util.by_pixel(0, 0),
        scale = 0.5
    }
}

local gun_turret_extension_shadow = {
    filename = "__base__/graphics/entity/gun-turret/gun-turret-extension-shadow.png",
    priority = "high",
    width = 96,
    height = 96,
    frame_count = 1,
    shift = util.by_pixel(0, 0),
    draw_as_shadow = true,
    hr_version = {
        filename = "__base__/graphics/entity/gun-turret/hr-gun-turret-extension-shadow.png",
        priority = "high",
        width = 192,
        height = 192,
        frame_count = 1,
        shift = util.by_pixel(0, 0),
        scale = 0.5
    }
}

local gun_turret_attack = {
    filename = "__base__/graphics/entity/gun-turret/gun-turret-attack.png",
    priority = "high",
    width = 96,
    height = 96,
    frame_count = 8,
    animation_speed = 0.5,
    shift = util.by_pixel(0, 0),
    hr_version = {
        filename = "__base__/graphics/entity/gun-turret/hr-gun-turret-attack.png",
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
        type = "ammo-turret",
        name = "ATF-gau-turret",
        icon = "__base__/graphics/icons/gun-turret.png",
        icon_size = 64,
        icon_mipmaps = 4,
        flags = {"placeable-player", "player-creation"},
        minable = {mining_time = 0.5, result = "ATF-gau-turret"},
        fast_replaceable_group = "turret",
        max_health = 2500,
        corpse = "gun-turret-remnants",
        dying_explosion = "gun-turret-explosion",
        collision_box = {{-0.7, -0.7}, {0.7, 0.7}},
        selection_box = {{-1, -1}, {1, 1}},
        damaged_trigger_effect = hit_effects.entity(),
        rotation_speed = 0.02,
        preparing_speed = 0.08,
        preparing_sound = sounds.gun_turret_activate,
        folding_sound = sounds.gun_turret_deactivate,
        folding_speed = 0.08,
        inventory_size = 3,
        automated_ammo_count = 10,
        attacking_speed = 0.5,
        alert_when_attacking = true,
        open_sound = sounds.machine_open,
        close_sound = sounds.machine_close,
        resistances = {
            {type = "fire", decrease = 15, percent = 100},
            {type = "physical", decrease = 20, percent = 50},
            {type = "impact", decrease = 50, percent = 50},
            {type = "explosion", decrease = 15, percent = 80},
            {type = "acid", decrease = 10, percent = 40}
        },
        folded_animation = {
            layers = {
                gun_turret_extension,
                gun_turret_extension_mask,
                gun_turret_extension_shadow
            }
        },
        preparing_animation = {
            layers = {
                gun_turret_extension,
                gun_turret_extension_mask,
                gun_turret_extension_shadow
            }
        },
        prepared_animation = gun_turret_attack,
        attacking_animation = gun_turret_attack,
        folding_animation = {
            layers = {
                gun_turret_extension,
                gun_turret_extension_mask,
                gun_turret_extension_shadow
            }
        },
        graphics_set = {
            base_visualisation = {
                animation = {
                    layers = {
                        {
                            filename = "__base__/graphics/entity/gun-turret/gun-turret-base.png",
                            priority = "high",
                            width = 150,
                            height = 118,
                            shift = util.by_pixel(0.5, -1),
                            scale = 0.5
                        },
                        {
                            filename = "__base__/graphics/entity/gun-turret/gun-turret-base-mask.png",
                            flags = {"mask", "low-object"},
                            line_length = 1,
                            width = 122,
                            height = 102,
                            shift = util.by_pixel(0, -4.5),
                            apply_runtime_tint = true,
                            scale = 0.5
                        }
                    }
                }
            }
        },
        base_picture = {
            layers = {
                {
                    filename = "__base__/graphics/entity/gun-turret/gun-turret-base.png",
                    priority = "high",
                    width = 76,
                    height = 60,
                    axially_symmetrical = false,
                    direction_count = 1,
                    frame_count = 1,
                    shift = util.by_pixel(1, -1),
                    hr_version = {
                        filename = "__base__/graphics/entity/gun-turret/hr-gun-turret-base.png",
                        priority = "high",
                        width = 150,
                        height = 118,
                        axially_symmetrical = false,
                        direction_count = 1,
                        frame_count = 1,
                        shift = util.by_pixel(0.5, -1),
                        scale = 0.5
                    }
                },
                {
                    filename = "__base__/graphics/entity/gun-turret/gun-turret-base-mask.png",
                    flags = {"mask", "low-object"},
                    line_length = 1,
                    width = 62,
                    height = 52,
                    axially_symmetrical = false,
                    direction_count = 1,
                    frame_count = 1,
                    shift = util.by_pixel(0, -4),
                    apply_runtime_tint = true,
                    hr_version = {
                        filename = "__base__/graphics/entity/gun-turret/hr-gun-turret-base-mask.png",
                        flags = {"mask", "low-object"},
                        line_length = 1,
                        width = 122,
                        height = 102,
                        axially_symmetrical = false,
                        direction_count = 1,
                        frame_count = 1,
                        shift = util.by_pixel(0, -4.5),
                        apply_runtime_tint = true,
                        scale = 0.5
                    }
                }
            }
        },
        vehicle_impact_sound = sounds.generic_impact,
        attack_parameters = {
            type = "projectile",
            ammo_category = "20mm",
            cooldown = 6,
            damage_modifier = 3.0,
            projectile_creation_distance = 1.2,
            projectile_center = {0, -0.0875},
            shell_particle = {
                name = "shell-particle",
                direction_deviation = 0.1,
                speed = 0.05,
                speed_deviation = 0.03,
                center = {-0.0625, 0},
                creation_distance = -1.925,
                starting_frame_speed = 0.2,
                starting_frame_speed_deviation = 0.1
            },
            range = 50,
            sound = {
                {
                    filename = "__Atlas_ATF__/sound/a10.ogg",
                    volume = 0.1,
                    speed = 1
                }
            }
        },
        turret_base_has_direction = true,
        gun_barrel_length = 0.4,
        call_for_help_radius = 40,
        water_reflection = {
            pictures = {
                filename = "__base__/graphics/entity/gun-turret/gun-turret-reflection.png",
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

log("[ATF-Rebalance] GAU turret entity loaded successfully")

-- ============================================================================
-- ИНТЕГРАЦИЯ С BOB'S WARFARE (опционально)
-- ============================================================================

if mods["bobwarfare"] then
    log("[ATF-Rebalance] Bob's Warfare detected - GAU turret compatible")
end