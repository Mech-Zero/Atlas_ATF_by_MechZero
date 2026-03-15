-- m1928.lua
-- Пистолет-пулемёт Thompson M1928 (.45 ACP) и Laser RCW
-- Версия: 1.1 (Rebalance by Mechromancer-Zero)
-- Интеграция: Bob's Warfare Compatibility

extend({
    -- =========================================================================
    -- m1928: Thompson M1928 (пистолет-пулемёт WW2 эры)
    -- =========================================================================
    {
        type = "gun",
        name = "m1928",
        icon = "__Atlas_ATF__/graphics/weapons/m1928.png",
        icon_size = 128,
        icon_mipmaps = 4,
        flags = {"item"},
        subgroup = "oldarms",
        order = "a[m1928]",
        attack_parameters = {
            type = "projectile",
            ammo_category = "45acp",
            damage_modifier = 1.5,
            cooldown = 6,
            movement_slow_down_factor = 0.15,
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
            range = 18,
            sound = {
                {
                    filename = "__Atlas_ATF__/sound/m1928.ogg",
                    volume = 0.5
                }
            }
        },
        stack_size = 100
    },

    -- =========================================================================
    -- laserrcw: Laser RCW (лазерное концепт-оружие)
    -- =========================================================================
    {
        type = "gun",
        name = "laserrcw",
        icon = "__Atlas_ATF__/graphics/weapons/rcw.png",
        icon_size = 128,
        icon_mipmaps = 4,
        flags = {"item"},
        subgroup = "conceptarms",
        order = "g[laser]-a[rcw]",
        attack_parameters = {
            type = "projectile",
            ammo_category = "fusion-battery",
            damage_modifier = 1.5,
            cooldown = 6,
            movement_slow_down_factor = 0.1,
            projectile_creation_distance = 1.2,
            range = 35,
            sound = {
                {
                    filename = "__Atlas_ATF__/sound/rcw.ogg",
                    volume = 0.5
                }
            }
        },
        stack_size = 50
    }
})

-- ============================================================================
-- ЛОГИРОВАНИЕ ЗАГРУЗКИ
-- ============================================================================

log("[ATF-Rebalance] Weapons loaded successfully (Thompson M1928, Laser RCW)")

-- ============================================================================
-- ИНТЕГРАЦИЯ С BOB'S WARFARE (опционально)
-- ============================================================================

if mods["bobwarfare"] then
    log("[ATF-Rebalance] Bob's Warfare detected - weapons compatible")
end