-- arti.lua
-- Артиллерийские снаряды ATF
-- Версия: 1.1 (Rebalance by Mechromancer-Zero)
-- Интеграция: Bob's Warfare + Bob's Metals

data:extend({
    -- =========================================================================
    -- КИСЛОТНЫЙ СНАРЯД
    -- =========================================================================
    {
        type ="artillery-projectile",
        name ="ATF-artillery-projectile-acid",
        flags = {"not-on-map"},
        reveal_map = true,
        map_color = {r = 1, g = 1, b = 0},
        picture = {
            filename ="__base__/graphics/entity/artillery-projectile/shell.png",
            draw_as_glow = true,
            width = 64,
            height = 64,
            scale = 0.5
        },
        shadow = {
            filename ="__base__/graphics/entity/artillery-projectile/shell-shadow.png",
            width = 64,
            height = 64,
            scale = 0.5
        },
        chart_picture = {
            filename ="__base__/graphics/entity/artillery-projectile/artillery-shoot-map-visualization.png",
            flags = {"icon"},
            frame_count = 1,
            width = 64,
            height = 64,
            priority ="high",
            scale = 0.25
        },
        action = {
            type ="direct",
            action_delivery = {
                type ="instant",
                target_effects = {
                    {
                        type ="nested-result",
                        action = {
                            type ="area",
                            radius = 10.0,
                            action_delivery = {
                                type ="instant",
                                target_effects = {
                                    {
                                        type ="damage",
                                        damage = {amount = 750, type ="acid"}
                                    },
                                    {
                                        type ="damage",
                                        damage = {amount = 250, type ="poison"}
                                    }
                                }
                            }
                        }
                    },
                    {
                        type ="nested-result",
                        action = {
                            type ="area",
                            radius = 16.0,
                            action_delivery = {
                                type ="instant",
                                target_effects = {
                                    {
                                        type ="create-sticker",
                                        sticker ="slowdown-sticker"
                                    }
                                }
                            }
                        }
                    },
                    {
                        type ="create-trivial-smoke",
                        smoke_name ="artillery-smoke",
                        initial_height = 0,
                        speed_from_center = 0.05,
                        speed_from_center_deviation = 0.005,
                        offset_deviation = {{-4, -4}, {4, 4}},
                        max_radius = 3.5,
                        repeat_count = 4 * 4 * 15
                    },
                    {
                        type ="create-entity",
                        entity_name ="big-artillery-explosion"
                    },
                    {
                        type ="create-smoke",
                        max_radius = 16,
                        show_in_tooltip = true,
                        entity_name ="poison-cloud"
                    },
                    {
                        type ="show-explosion-on-chart",
                        scale = 8 / 32
                    }
                }
            }
        },
        final_action = {
            type ="direct",
            action_delivery = {
                type ="instant",
                target_effects = {
                    {
                        type ="create-entity",
                        entity_name ="medium-scorchmark-tintable",
                        check_buildability = true
                    },
                    {
                        type ="invoke-tile-trigger",
                        repeat_count = 1
                    },
                    {
                        type ="destroy-decoratives",
                        from_render_layer ="decorative",
                        to_render_layer ="object",
                        include_soft_decoratives = true,
                        include_decals = false,
                        invoke_decorative_trigger = true,
                        decoratives_with_trigger_only = false,  -- ✅ ИСПРАВЛЕНО: было"decoratives_wi th_trigger_only"
                        radius = 8
                    }
                }
            }
        },
        height_from_ground = 280 / 64
    },

    -- =========================================================================
    -- НАПАЛМОВЫЙ СНАРЯД
    -- =========================================================================
    {
        type ="artillery-projectile",
        name ="ATF-artillery-projectile-napalm",
        flags = {"not-on-map"},
        reveal_map = true,
        map_color = {r = 1, g = 1, b = 0},
        picture = {
            filename ="__base__/graphics/entity/artillery-projectile/shell.png",
            draw_as_glow = true,
            width = 64,
            height = 64,
            scale = 0.5
        },
        shadow = {
            filename ="__base__/graphics/entity/artillery-projectile/shell-shadow.png",
            width = 64,
            height = 64,
            scale = 0.5
        },
        chart_picture = {
            filename ="__base__/graphics/entity/artillery-projectile/artillery-shoot-map-visualization.png",
            flags = {"icon"},
            frame_count = 1,
            width = 64,
            height = 64,
            priority ="high",
            scale = 0.25
        },
        action = {
            type ="direct",
            action_delivery = {
                type ="instant",
                target_effects = {
                    {
                        type ="nested-result",
                        action = {
                            type ="area",
                            radius = 10.0,
                            action_delivery = {
                                type ="instant",
                                target_effects = {
                                    {
                                        type ="damage",
                                        damage = {amount = 750, type ="fire"}
                                    },
                                    {
                                        type ="damage",
                                        damage = {amount = 250, type ="explosion"}
                                    },
                                    {
                                        type ="create-sticker",
                                        sticker ="fire-sticker"
                                    },
                                    {
                                        type ="create-fire",
                                        entity_name ="fire-flame"
                                    }
                                }
                            }
                        }
                    },
                    {
                        type ="nested-result",
                        action = {
                            type ="area",
                            radius = 12.0,
                            action_delivery = {
                                type ="instant",
                                target_effects = {
                                    {
                                        type ="create-sticker",
                                        sticker ="fire-sticker"
                                    },
                                    {
                                        type ="create-fire",
                                        entity_name ="fire-flame"
                                    }
                                }
                            }
                        }
                    },
                    {
                        type ="create-trivial-smoke",
                        smoke_name ="artillery-smoke",
                        initial_height = 0,
                        speed_from_center = 0.05,
                        speed_from_center_deviation = 0.005,
                        offset_deviation = {{-4, -4}, {4, 4}},
                        max_radius = 3.5,
                        repeat_count = 4 * 4 * 15
                    },
                    {
                        type ="create-entity",
                        entity_name ="big-artillery-explosion"
                    },
                    {
                        type ="create-fire",
                        entity_name ="fire-flame"
                    },
                    {
                        type ="show-explosion-on-chart",
                        scale = 8 / 32
                    }
                }
            }
        },
        final_action = {
            type ="direct",
            action_delivery = {
                type ="instant",
                target_effects = {
                    {
                        type ="create-entity",
                        entity_name ="medium-scorchmark-tintable",
                        check_buildability = true
                    },
                    {
                        type ="invoke-tile-trigger",
                        repeat_count = 1
                    },
                    {
                        type ="destroy-decoratives",
                        from_render_layer ="decorative",
                        to_render_layer ="object",
                        include_soft_decoratives = true,
                        include_decals = false,
                        invoke_decorative_trigger = true,
                        decoratives_with_trigger_only = false,  -- ✅ ИСПРАВЛЕНО: было"decoratives_wi th_trigger_only"
                        radius = 4
                    }
                }
            }
        },
        height_from_ground = 280 / 64
    }
})