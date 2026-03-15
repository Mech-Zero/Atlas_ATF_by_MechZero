-- vector.lua
-- Пистолет-пулемёт KRISS Vector (.45 ACP, современный)
-- Версия: 1.1 (Rebalance by Mechromancer-Zero)
-- Интеграция: Bob's Warfare Compatibility

data:extend({
    -- =========================================================================
    -- vector: KRISS Vector (современный пистолет-пулемёт)
    -- =========================================================================
    {
        type ="gun",
        name ="vector",
        icon ="__ATFELPNRMZ__/graphics/weapons/vector.png",
        icon_size = 128,
        icon_mipmaps = 4,
        -- flags = {"item"},
        subgroup ="modernarms",
        order ="a[vector]",
        attack_parameters = {
            type ="projectile",
            ammo_category ="45acp",
            damage_modifier = 1.8,
            cooldown = 3,
            movement_slow_down_factor = 0.2,
            shell_particle = {
                name ="shell-particle",
                direction_deviation = 0.1,
                speed = 0.1,
                speed_deviation = 0.03,
                center = {0, 0.1},
                creation_distance = -0.5,
                starting_frame_speed = 0.4,
                starting_frame_speed_deviation = 0.1
            },
            projectile_creation_distance = 1.125,
            range = 20,
            cyclic_sound = {
                begin_sound = {
                    {
                        filename ="__ATFELPNRMZ__/sound/empty.ogg",
                        volume = 0,
                        speed = 1000.0
                    }
                },
                middle_sound = {
                    {
                        filename ="__ATFELPNRMZ__/sound/vector.ogg",
                        volume = 1.0
                    }
                },
                end_sound = {
                    {
                        filename ="__ATFELPNRMZ__/sound/empty.ogg",
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

log("[ATF-Rebalance] KRISS Vector weapon loaded successfully")

-- ============================================================================
-- ИНТЕГРАЦИЯ С BOB'S WARFARE (опционально)
-- ============================================================================

if mods["bobwarfare"] then
    log("[ATF-Rebalance] Bob's Warfare detected - Vector compatible")
end