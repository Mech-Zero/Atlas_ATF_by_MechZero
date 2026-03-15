-- stg60.lua
-- Штурмовая винтовка STG60 (7.92x33mm Kurz, концепт-эра)
-- Версия: 1.1 (Rebalance by Mechromancer-Zero)
-- Интеграция: Bob's Warfare Compatibility

extend({
    -- =========================================================================
    -- stg60: Sturmgewehr 60 (футуристическая версия STG44)
    -- =========================================================================
    {
        type = "gun",
        name = "stg60",
        icon = "__Atlas_ATF__/graphics/weapons/stg60.png",
        icon_size = 128,
        icon_mipmaps = 4,
        flags = {"item"},
        subgroup = "conceptarms",
        order = "a[stg60]",
        attack_parameters = {
            type = "projectile",
            ammo_category = "792x33",
            damage_modifier = 2.5,
            cooldown = 4,
            movement_slow_down_factor = 0.3,
            shell_particle = {
                name = "shell-particle",
                direction_deviation = 0.1,
                speed = 0.1,
                speed_deviation = 0.03,
                center = {0, 0.1},
                creation_distance = -0.5,
                starting_frame_speed = 0.4,
                starting_frame_speed_deviation = 0.1
            },
            projectile_creation_distance = 1.125,
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
                        filename = "__Atlas_ATF__/sound/stg60.ogg",
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
        stack_size = 100
    }
})

-- ============================================================================
-- ЛОГИРОВАНИЕ ЗАГРУЗКИ
-- ============================================================================

log("[ATF-Rebalance] STG60 weapon loaded successfully")

-- ============================================================================
-- ИНТЕГРАЦИЯ С BOB'S WARFARE (опционально)
-- ============================================================================

if mods["bobwarfare"] then
    log("[ATF-Rebalance] Bob's Warfare detected - STG60 compatible")
end