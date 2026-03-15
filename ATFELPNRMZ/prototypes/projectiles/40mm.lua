-- 40mm.lua
-- Снаряды для 40mm гранатомётов (ATF grenade launchers)
-- Версия: 1.1 (Rebalance by Mechromancer-Zero)
-- Интеграция: Bob's Warfare Compatibility

extend({
    -- =========================================================================
    -- 40mm-he: Фугасный снаряд (High Explosive)
    -- =========================================================================
    {
        type = "projectile",
        name = "40mm-he",
        flags = {"not-on-map"},
        acceleration = -0.001,
        action = {
            type = "direct",
            action_delivery = {
                type = "instant",
                target_effects = {
                    {
                        type = "nested-result",
                        action = {
                            type = "area",
                            radius = 8.0,
                            action_delivery = {
                                type = "instant",
                                target_effects = {
                                    {
                                        type = "damage",
                                        damage = {amount = 120, type = "explosion"}
                                    },
                                    {
                                        type = "create-entity",
                                        entity_name = "grenade-explosion"
                                    }
                                }
                            }
                        }
                    },
                    {
                        type = "create-trivial-smoke",
                        smoke_name = "artillery-smoke",
                        initial_height = 0,
                        speed_from_center = 0.02,
                        speed_from_center_deviation = 0.002,
                        offset_deviation = {{-4, -4}, {4, 4}},
                        max_radius = 1.5,
                        repeat_count = 4 * 4 * 15
                    },
                    {
                        type = "create-entity",
                        entity_name = "big-artillery-explosion"
                    },
                    {
                        type = "create-entity",
                        entity_name = "small-scorchmark-tintable",
                        check_buildability = true
                    }
                }
            }
        },
        animation = {
            filename = "__base__/graphics/entity/bullet/bullet.png",
            draw_as_glow = true,
            frame_count = 1,
            width = 3,
            height = 50,
            priority = "high"
        },
        hit_at_collision_position = true
    },

    -- =========================================================================
    -- 40mm-incendiary: Зажигательный снаряд
    -- =========================================================================
    {
        type = "projectile",
        name = "40mm-incendiary",
        flags = {"not-on-map"},
        acceleration = -0.002,
        action = {
            type = "direct",
            action_delivery = {
                type = "instant",
                target_effects = {
                    {
                        type = "nested-result",
                        action = {
                            type = "area",
                            radius = 6.0,
                            action_delivery = {
                                type = "instant",
                                target_effects = {
                                    {
                                        type = "damage",
                                        damage = {amount = 120, type = "fire"}
                                    },
                                    {
                                        type = "damage",
                                        damage = {amount = 30, type = "explosion"}
                                    },
                                    {
                                        type = "create-entity",
                                        entity_name = "grenade-explosion"
                                    }
                                }
                            }
                        }
                    },
                    {
                        type = "nested-result",
                        action = {
                            type = "area",
                            radius = 7.0,
                            action_delivery = {
                                type = "instant",
                                target_effects = {
                                    {
                                        type = "create-fire",
                                        entity_name = "fire-flame"
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
                        type = "create-trivial-smoke",
                        smoke_name = "artillery-smoke",
                        initial_height = 0,
                        speed_from_center = 0.02,
                        speed_from_center_deviation = 0.002,
                        offset_deviation = {{-4, -4}, {4, 4}},
                        max_radius = 1.5,
                        repeat_count = 4 * 4 * 15
                    },
                    {
                        type = "create-entity",
                        entity_name = "big-artillery-explosion"
                    },
                    {
                        type = "create-entity",
                        entity_name = "small-scorchmark-tintable",
                        check_buildability = true
                    }
                }
            }
        },
        animation = {
            filename = "__base__/graphics/entity/bullet/bullet.png",
            draw_as_glow = true,
            frame_count = 1,
            width = 3,
            height = 50,
            priority = "high"
        },
        hit_at_collision_position = true
    },

    -- =========================================================================
    -- 40mm-acid: Кислотный снаряд
    -- =========================================================================
    {
        type = "projectile",
        name = "40mm-acid",
        flags = {"not-on-map"},
        acceleration = -0.002,
        action = {
            type = "direct",
            action_delivery = {
                type = "instant",
                target_effects = {
                    {
                        type = "nested-result",
                        action = {
                            type = "area",
                            radius = 8.0,
                            action_delivery = {
                                type = "instant",
                                target_effects = {
                                    {
                                        type = "damage",
                                        damage = {amount = 100, type = "poison"}
                                    },
                                    {
                                        type = "damage",
                                        damage = {amount = 100, type = "acid"}
                                    },
                                    {
                                        type = "create-sticker",
                                        sticker = "slowdown-sticker"
                                    }
                                }
                            }
                        }
                    },
                    {
                        type = "create-smoke",
                        show_in_tooltip = true,
                        entity_name = "poison-cloud",
                        initial_height = 0.2
                    }
                }
            }
        },
        animation = {
            filename = "__base__/graphics/entity/bullet/bullet.png",
            draw_as_glow = true,
            frame_count = 1,
            width = 3,
            height = 50,
            priority = "high"
        },
        hit_at_collision_position = true
    },

    -- =========================================================================
    -- 40mm-plasma: Плазменный снаряд
    -- =========================================================================
    {
        type = "projectile",
        name = "40mm-plasma",
        flags = {"not-on-map"},
        acceleration = -0.002,
        action = {
            type = "direct",
            action_delivery = {
                type = "instant",
                target_effects = {
                    {
                        type = "create-entity",
                        entity_name = "ATF-plasma-grenade"
                    },
                    {
                        type = "create-entity",
                        entity_name = "small-scorchmark",
                        check_buildability = true
                    }
                }
            }
        },
        secondary_action = {
            type = "area",
            radius = 8,
            action_delivery = {
                type = "instant",
                target_effects = {
                    {
                        type = "damage",
                        damage = {amount = 100, type = "explosion"}
                    },
                    {
                        type = "damage",
                        damage = {amount = 100, type = "laser"}
                    },
                    {
                        type = "damage",
                        damage = {amount = 50, type = "fire"}
                    },
                    {
                        type = "create-sticker",
                        sticker = "fire-sticker"
                    },
                    {
                        type = "create-entity",
                        entity_name = "explosion"
                    }
                }
            }
        },
        animation = {
            filename = "__base__/graphics/entity/bullet/bullet.png",
            draw_as_glow = true,
            frame_count = 1,
            width = 3,
            height = 50,
            priority = "high"
        },
        hit_at_collision_position = true
    }
})

-- ============================================================================
-- ЛОГИРОВАНИЕ ЗАГРУЗКИ
-- ============================================================================

log("[ATF-Rebalance] 40mm projectiles loaded successfully (40mm-he, 40mm-incendiary, 40mm-acid, 40mm-plasma)")

-- ============================================================================
-- ИНТЕГРАЦИЯ С BOB'S WARFARE (опционально)
-- ============================================================================

if mods["bobwarfare"] then
    log("[ATF-Rebalance] Bob's Warfare detected - 40mm projectiles compatible")
end