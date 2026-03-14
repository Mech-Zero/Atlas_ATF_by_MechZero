local sounds = require("__base__.prototypes.entity.sounds")
local hit_effects = require("__base__.prototypes.entity.hit-effects")

data:extend(
    {
        {
            type = "recipe-category",
            name = "ATF-trade"
        },
        {
            type = "assembling-machine",
            name = "ATF-market",
            icon = "__Atlas_ATF__/graphics/entities/market.png",
            icon_size = 256,
            --icon_mipmaps = 4,
            flags = {"placeable-neutral", "placeable-player", "player-creation"},
            minable = {mining_time = 0.2, result = "ATF-market"},
            max_health = 1000,
			corpse = "radar-remnants",
			dying_explosion = "radar-explosion",
            alert_icon_shift = util.by_pixel(-3, -12),
            fluid_boxes_off_when_no_fluid_recipe = true,
            resistances = {
                {
                    type = "fire",
                    percent = 100
                }
            },
            fluid_boxes = {
                {
                    production_type = "input",
                    pipe_picture = assembler3pipepictures(),
                    pipe_covers = pipecoverspictures(),
                    base_area = 10,
                    base_level = -1,
					pipe_connections = {{ flow_direction="input", direction = defines.direction.south, position = {0, 1} }},
					volume = 1000,
                    secondary_draw_orders = {north = -1}
                },
                {
                    production_type = "output",
                    pipe_picture = assembler3pipepictures(),
                    pipe_covers = pipecoverspictures(),
                    base_area = 10,
                    base_level = 1,
					pipe_connections = {{ flow_direction="output", direction = defines.direction.north, position = {0, 1} }},
					volume = 1000,
                    secondary_draw_orders = {north = -1}
                },
            },
            open_sound = sounds.machine_open,
            close_sound = sounds.machine_close,
            vehicle_impact_sound = sounds.generic_impact,
            working_sound = {
                sound = {
                    {
                        filename = "__base__/sound/radar.ogg",
                        volume = 1.0
                    }
                },
                audible_distance_modifier = 0.5,
                fade_in_ticks = 4,
                fade_out_ticks = 20
            },
            collision_box = {{-1.2, -1.2}, {1.2, 1.2}},
            selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
            damaged_trigger_effect = hit_effects.entity(),
            drawing_box = {{-1.5, -1.7}, {1.5, 1.5}},
            --fast_replaceable_group = "assembling-machine",
            animation = {
                layers = {

                    {
                        filename = "__Atlas_ATF__/graphics/entities/market.png",
                        priority = "low",
                        width = 256,
                        height = 256,
						scale = 0.5,
                       -- frame_count = 32,
                        apply_projection = false,
                        --direction_count = 64,
                        --line_length = 8,
                        shift = util.by_pixel(1, -16),
                        -- hr_version = {
                            -- filename = "__base__/graphics/entity/radar/hr-radar.png",
                            -- priority = "low",
							-- --frame_count = 32,
                            -- width = 196,
                            -- height = 254,
                            -- apply_projection = false,
                            -- direction_count = 64,
                            -- line_length = 8,
                            -- shift = util.by_pixel(1, -16),
                            -- scale = 0.5
                        -- }
                    },
                    {
                        filename = "__base__/graphics/entity/radar/radar-shadow.png",
                        priority = "low",
                        width = 172,
                        height = 94,
                        apply_projection = false,
                        direction_count = 64,
                        line_length = 8,
                        shift = util.by_pixel(39, 3),
                        draw_as_shadow = true,
                           scale = 0.2,
                        hr_version = {
                            filename = "__base__/graphics/entity/radar/hr-radar-shadow.png",
                            priority = "low",
                            width = 343,
                            height = 186,
                            apply_projection = false,
                            direction_count = 64,
                            line_length = 8,
                            shift = util.by_pixel(39.25, 3),
                            draw_as_shadow = true,
                            scale = 0.3
                        }
                    }
                }
            },
			--rotation_speed = 0.01,
            crafting_categories = {"ATF-trade"},
            crafting_speed = 1.0,
            energy_source = {
                type = "electric",
                usage_priority = "secondary-input",
                --emissions_per_minute = 2
            },
            energy_usage = "375kW",
            module_specification = {
                module_slots = 4
            },
            allowed_effects = {"consumption", "speed", "productivity", "pollution"}
        }
    }
)
