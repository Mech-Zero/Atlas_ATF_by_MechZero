-- prototypes/entities/turrets/gau-turret.lua
-- Турель GAU (ротативная система 20mm)
-- Версия: 1.1 (Rebalance by Mechromancer-Zero)

local hit_effects = require("__base__.prototypes.entity.hit-effects")
local sounds = require("__base__.prototypes.entity.sounds")

data:extend({
    {
        type ="ammo-turret",
        name ="ATF-gau-turret",
        icon ="__Atlas_ATF__/graphics/items/gau-turret.png",
        icon_size = 64,
        icon_mipmaps = 4,
        flags = {"placeable-player","player-creation"},
        minable = {mining_time = 0.5, result ="ATF-gau-turret"},
        fast_replaceable_group ="turret",
        max_health = 3500,
        corpse ="gun-turret-remnants",
        dying_explosion ="gun-turret-explosion",
        collision_box = {{-0.7, -0.7}, {0.7, 0.7}},
        selection_box = {{-1, -1}, {1, 1}},
        damaged_trigger_effect = hit_effects.entity(),
        rotation_speed = 0.03,
        preparing_speed = 0.1,
        preparing_sound = sounds.gun_turret_activate,
        folding_sound = sounds.gun_turret_deactivate,
        folding_speed = 0.1,
        inventory_size = 1,
        automated_ammo_count = 20,
        attacking_speed = 0.1,  -- Быстрая скорострельность
        alert_when_attacking = true,
        open_sound = sounds.machine_open,
        close_sound = sounds.machine_close,
        resistances = {
            {type ="fire", decrease = 10, percent = 30},
            {type ="physical", decrease = 10, percent = 30},
            {type ="impact", decrease = 30, percent = 40},
            {type ="explosion", decrease = 10, percent = 30}
        },
        folded_animation = {
            layers = {
                gun_turret_extension{frame_count = 1, line_length = 1},
                gun_turret_extension_mask{frame_count = 1, line_length = 1},
                gun_turret_extension_shadow{frame_count = 1, line_length = 1}
            }
        },
        preparing_animation = {
            layers = {
                gun_turret_extension{},
                gun_turret_extension_mask{},
                gun_turret_extension_shadow{}
            }
        },
        prepared_animation = gun_turret_attack{frame_count = 1},
        attacking_animation = gun_turret_attack{},
        folding_animation = {
            layers = {
                gun_turret_extension{run_mode ="backward"},
                gun_turret_extension_mask{run_mode ="backward"},
                gun_turret_extension_shadow{run_mode ="backward"}
            }
        },
        graphics_set = {
            base_visualisation = {
                animation = {
                    layers = {
                        {
                            filename ="__base__/graphics/entity/gun-turret/gun-turret-base.png",
                            priority ="high",
                            width = 150,
                            height = 118,
                            shift = util.by_pixel(0.5, -1),
                            scale = 0.5
                        },
                        {
                            filename ="__base__/graphics/entity/gun-turret/gun-turret-base-mask.png",
                            flags = {"mask","low-object"},
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
                    filename ="__base__/graphics/entity/gun-turret/gun-turret-base.png",
                    priority ="high",
                    width = 76,
                    height = 60,
                    axially_symmetrical = false,
                    direction_count = 1,
                    frame_count = 1,
                    shift = util.by_pixel(1, -1),
                    hr_version = {
                        filename ="__base__/graphics/entity/gun-turret/hr-gun-turret-base.png",
                        priority ="high",
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
                    filename ="__base__/graphics/entity/gun-turret/gun-turret-base-mask.png",
                    flags = {"mask","low-object"},
                    line_length = 1,
                    width = 62,
                    height = 52,
                    axially_symmetrical = false,
                    direction_count = 1,
                    frame_count = 1,
                    shift = util.by_pixel(0, -4),
                    apply_runtime_tint = true,
                    hr_version = {
                        filename ="__base__/graphics/entity/gun-turret/hr-gun-turret-base-mask.png",
                        flags = {"mask","low-object"},
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
            type ="projectile",
            ammo_category ="20mm",  -- Калибр GAU
            damage_modifier = 2.0,
            cooldown = 5,  -- Очень быстрая скорострельность
            projectile_creation_distance = 1.2,
            projectile_center = {0, -0.0875},
            shell_particle = {
                name ="shell-particle",
                direction_deviation = 0.1,
                speed = 0.1,
                speed_deviation = 0.05,
                center = {-0.0625, 0},
                creation_distance = -1.925,
                starting_frame_speed = 0.4,
                starting_frame_speed_deviation = 0.1
            },
            range = 70,
            min_range = 10,
            turn_range = 1.0 / 3.0,
            sound = {
                {
                    filename ="__Atlas_ATF__/sound/gau-fire.ogg",
                    volume = 2
                }
            }
        },
        turret_base_has_direction = true,
        gun_barrel_length = 0.5,
        call_for_help_radius = 50,
        water_reflection = {
            pictures = {
                filename ="__base__/graphics/entity/gun-turret/gun-turret-reflection.png",
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

log("[ATF-Rebalance] GAU turret entity loaded successfully")