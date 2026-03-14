data:extend(
    {
        {
            type = "projectile",
            name = "helios-plasma",
            flags = {"not-on-map"},
            acceleration = 0.01,
            -- collision_box = {{-0.5, -0.5}, {0.5, 0.5}},
            --direction_only = true,
            action = {
                {
                    type = "direct",
                    action_delivery = {
                        type = "instant",
                        target_effects = {
                            {
                                type = "nested-result",
                                action = {
                                    type = "direct",
                                    radius = 3.0,
                                    action_delivery = {
                                        type = "instant",
                                        target_effects = {
                                            {
                                                type = "damage",
                                                damage = {amount = 250, type = "fire"}
                                            },
                                            {
                                                type = "damage",
                                                damage = {amount = 20, type = "impact"}
                                            },
                                            {
                                                type = "create-sticker",
                                                sticker = "fire-sticker"
                                            }
                                        }
                                    }
                                }
                            },
                            {
                                type = "create-entity",
                                entity_name = "explosion-hit"
                            },
                            {
                                type = "create-fire",
                                entity_name = "fire-flame"
                            }
                        }
                    }
                }
            },
            graphics_set = {},
            light = {intensity = 4, size = 8},
            animation = {
                filename = "__Atlas_ATF__/graphics/projectiles/plasma/red-plasma.png",
                draw_as_glow = true,
                frame_count = 1,
                height = 32,
                width = 32,
                priority = "high"
            },
            --hit_collision_mask = {"player-layer", "ground-tile"},
            hit_at_collision_position = true
        },
        {
            type = "beam",
            name = "killerwatt-beam",
            flags = {"not-on-map"},
            width = 0.5,
            damage_interval = 1,
            random_target_offset = true,
            action = {
                type = "direct",
                action_delivery = {
                    type = "instant",
                    target_effects = {
                        {
                            type = "damage",
                            damage = {amount = 100, type = "electric"}
                        },
                        {
                            type = "create-sticker",
                            sticker = "stun-sticker"
                        },
                        --{
                        --    type = "push-back",
                        --    distance = 2
                        --}
                    }
                }
            },
            graphics_set = {},
            light = {intensity = 6, size = 10},
            working_sound = {
                {
                    filename = "__base__/sound/fight/electric-beam.ogg",
                    volume = 0.7
                }
            }
        }
    }
)
