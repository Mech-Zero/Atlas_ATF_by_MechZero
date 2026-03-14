data:extend(
    {
        -- killerwatt
        {
            type = "gun",
            name = "killerwatt",
            icon_size = 128,
            icon = "__Atlas_ATF__/graphics/weapons/killerwatt.png",
            subgroup = "conceptarms",
            order = "g[laser]-a[killerwatt]",
            attack_parameters = {
                type = "beam",
                ammo_categories = {"killerwatt"},
                damage_modifier = 1.4,
                cooldown = 4,
                movement_slow_down_factor = 0.1,
                projectile_creation_distance = 1,
                range = 30,
                cyclic_sound = {
                    begin_sound = {
                        {
                            filename = "__Atlas_ATF__/sound/empty.ogg",
                            volume = 0,
                            speed = 1000.0
                        }
                    },
                    middle_sound = {
                        {
                            filename = "__Atlas_ATF__/sound/killerwatt.ogg",
                            volume = 0.9
                        }
                    },
                    end_sound = {
                        {
                            filename = "__Atlas_ATF__/sound/empty.ogg",
                            volume = 0,
                            speed = 1000.0
                        }
                    }
                }
            },
            stack_size = 50
        },
        -- helios
        {
            type = "gun",
            name = "heliosrifle",
            icon_size = 128,
            icon = "__Atlas_ATF__/graphics/weapons/helios.png",
            subgroup = "conceptarms",
            order = "g[plasma]-a[helios]",
            attack_parameters = {
                type = "projectile",
                source_effects = {
                    type = "create-explosion",
                    entity_name = "explosion-gunshot"
                },
                ammo_categories = {"helios"},
                damage_modifier = 1.2,
                cooldown = 6,
                movement_slow_down_factor = 0.1,
                projectile_creation_distance = 1.5,
                range = 35,
                cyclic_sound = {
                    begin_sound = {
                        {
                            filename = "__Atlas_ATF__/sound/empty.ogg",
                            volume = 0,
                            speed = 1000.0
                        }
                    },
                    middle_sound = {
                        {
                            filename = "__Atlas_ATF__/sound/helios.ogg",
                            volume = 0.9
                        }
                    },
                    end_sound = {
                        {
                            filename = "__Atlas_ATF__/sound/empty.ogg",
                            volume = 0,
                            speed = 1000.0
                        }
                    }
                },
                {
                    type = "beam",
                    beam = "electric-beam-no-sound",
                    max_length = 35,
                    duration = 15,
                    source_offset = {0, -0.5},
                    add_to_shooter = false
                }
            },
            stack_size = 50
        }
    }
)
