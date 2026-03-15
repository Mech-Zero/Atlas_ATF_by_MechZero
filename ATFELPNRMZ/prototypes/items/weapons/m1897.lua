-- m1897.lua
-- Дробовик Winchester Model 1897 (12 Gauge, помповый)
-- Версия: 1.1 (Rebalance by Mechromancer-Zero)
-- Интеграция: Bob's Warfare Compatibility

data:extend({
    -- =========================================================================
    -- m1897: Winchester Model 1897 (помповый дробовик WW1 эры)
    -- =========================================================================
    {
        type ="gun",
        name ="m1897",
        icon ="__ATFELPNRMZ__/graphics/weapons/m1897.png",
        icon_size = 128,
        icon_mipmaps = 4,
        -- flags = {"item"},
        subgroup ="oldarms",
        order ="a[m1897]",
        attack_parameters = {
            type ="projectile",
            ammo_category ="shotgun-shell",
            damage_modifier = 2.0,
            cooldown = 60,
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
            range = 22,
            sound = {
                {
                    filename ="__ATFELPNRMZ__/sound/m1897.ogg",
                    volume = 0.8
                }
            }
        },
        stack_size = 100
    }
})

-- ============================================================================
-- ЛОГИРОВАНИЕ ЗАГРУЗКИ
-- ============================================================================

log("[ATF-Rebalance] Winchester M1897 weapon loaded successfully")

-- ============================================================================
-- ИНТЕГРАЦИЯ С BOB'S WARFARE (опционально)
-- ============================================================================

if mods["bobwarfare"] then
    log("[ATF-Rebalance] Bob's Warfare detected - M1897 compatible")
end