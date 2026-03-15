-- rotators.lua
-- Ротативные пушки ATF (Death Machine, M134, GAU)
-- Версия: 1.1 (Rebalance by Mechromancer-Zero)
-- Интеграция: Bob's Warfare Compatibility

extend({
    -- =========================================================================
    -- deathmachine: Death Machine (ротативная пушка 7.62mm)
    -- =========================================================================
    {
        type ="gun",
        name ="deathmachine",
        icon ="__Atlas_ATF__/graphics/weapons/deathmachine.png",
        icon_size = 128,
        icon_mipmaps = 4,
        flags = {"item"},
        subgroup ="conceptarms",
        order ="c[rot]-c[deathmachine]",
        attack_parameters = {
            type ="projectile",
            ammo_category ="762belt",
            damage_modifier = 2.6,
            cooldown = 6,
            movement_slow_down_factor = 0.6,
            shell_particle = {
                name ="shell-particle",
                direction_deviation = 0.3,
                speed = 0.5,
                speed_deviation = 0.3,
                center = {0, 0.1},
                creation_distance = -0.5,
                starting_frame_speed = 0.4,
                starting_frame_speed_deviation = 0.1
            },
            projectile_creation_distance = 1.125,
            range = 45,
            cyclic_sound = {
                begin_sound = {
                    {
                        filename ="__Atlas_ATF__/sound/minigun-begin.ogg",
                        volume = 0.5,
                        speed = 1
                    }
                },
                middle_sound = {
                    {
                        filename ="__Atlas_ATF__/sound/deathmachine.ogg",
                        volume = 1.0
                    }
                },
                end_sound = {
                    {
                        filename ="__Atlas_ATF__/sound/minigun-stop.ogg",
                        volume = 0.5,
                        speed = 1
                    }
                }
            }
        },
        stack_size = 50
    },

    -- =========================================================================
    -- m134: M134 Minigun (ротативная пушка 5.56mm)
    -- =========================================================================
    {
        type ="gun",
        name ="m134",
        icon ="__Atlas_ATF__/graphics/weapons/m134.png",
        icon_size = 128,
        icon_mipmaps = 4,
        flags = {"item"},
        subgroup ="conceptarms",
        order ="c[rot]-b[m134]",
        attack_parameters = {
            type ="projectile",
            ammo_category ="556belt",
            damage_modifier = 2.5,
            cooldown = 5,
            movement_slow_down_factor = 0.6,
            shell_particle = {
                name ="shell-particle",
                direction_deviation = 0.3,
                speed = 0.6,
                speed_deviation = 0.3,
                center = {0, 0.1},
                creation_distance = -0.5,
                starting_frame_speed = 0.4,
                starting_frame_speed_deviation = 0.1
            },
            projectile_creation_distance = 1.125,
            range = 40,
            cyclic_sound = {
                begin_sound = {
                    {
                        filename ="__Atlas_ATF__/sound/minigun-begin.ogg",
                        volume = 0.5,
                        speed = 1
                    }
                },
                middle_sound = {
                    {
                        filename ="__Atlas_ATF__/sound/minigun-middle.ogg",
                        volume = 1.0
                    }
                },
                end_sound = {
                    {
                        filename ="__Atlas_ATF__/sound/minigun-stop.ogg",
                        volume = 0.5,
                        speed = 1
                    }
                }
            }
        },
        stack_size = 50
    },

    -- =========================================================================
    -- gau: GAU Rotator (ротативная пушка 20mm)
    -- =========================================================================
    {
        type ="gun",
        name ="gau",
        icon ="__Atlas_ATF__/graphics/weapons/gau.png",
        icon_size = 128,
        icon_mipmaps = 4,
        flags = {"item"},
        subgroup ="conceptarms",
        order ="c[rot]-d[gau]",
        attack_parameters = {
            type ="projectile",
            ammo_category ="20mm",
            damage_modifier = 3.0,
            cooldown = 8,
            movement_slow_down_factor = 0.65,
            shell_particle = {
                name ="shell-particle",
                direction_deviation = 0.3,
                speed = 0.4,
                speed_deviation = 0.3,
                center = {0, 0.1},
                creation_distance = -0.5,
                starting_frame_speed = 0.4,
                starting_frame_speed_deviation = 0.1
            },
            projectile_creation_distance = 1.125,
            range = 50,
            cyclic_sound = {
                begin_sound = {
                    {
                        filename ="__Atlas_ATF__/sound/minigun-begin.ogg",
                        volume = 0.5,
                        speed = 1
                    }
                },
                middle_sound = {
                    {
                        filename ="__Atlas_ATF__/sound/gau.ogg",
                        volume = 1.5
                    }
                },
                end_sound = {
                    {
                        filename ="__Atlas_ATF__/sound/minigun-stop.ogg",
                        volume = 0.5,
                        speed = 1
                    }
                }
            }
        },
        stack_size = 50
    }
})

-- ============================================================================
-- ЛОГИРОВАНИЕ ЗАГРУЗКИ
-- ============================================================================

log("[ATF-Rebalance] Rotator weapons loaded successfully (Death Machine, M134, GAU)")

-- ============================================================================
-- ИНТЕГРАЦИЯ С BOB'S WARFARE (опционально)
-- ============================================================================

if mods["bobwarfare"] then
    log("[ATF-Rebalance] Bob's Warfare detected - rotator weapons compatible")
end