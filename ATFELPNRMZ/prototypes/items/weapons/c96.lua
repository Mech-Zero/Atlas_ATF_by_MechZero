-- c96.lua
-- Пистолет Mauser C96"Broomhandle" (9mm)
-- Версия: 1.1 (Rebalance by Mechromancer-Zero)
-- Интеграция: Bob's Warfare Compatibility

data:extend({
    -- =========================================================================
    -- c96: Mauser C96"Broomhandle" (пистолет WW1 эры)
    -- =========================================================================
    {
        type ="gun",
        name ="c96",
        icon ="__ATFELPNRMZ__/graphics/weapons/c96.png",
        icon_size = 128,
        icon_mipmaps = 4,
        -- flags = {"item"},
        subgroup ="oldarms",
        order ="a[c96]",
        attack_parameters = {
            type ="projectile",
            ammo_category ="9mm",
            cooldown = 15,
            movement_slow_down_factor = 0,
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
            range = 15,
            sound = {
                {
                    filename ="__ATFELPNRMZ__/sound/c96.ogg",
                    volume = 0.5
                }
            }
        },
        stack_size = 100
    }
})

-- ============================================================================
-- ЛОГИРОВАНИЕ ЗАГРУЗКИ
-- ============================================================================

log("[ATF-Rebalance] Mauser C96 weapon loaded successfully")

-- ============================================================================
-- ИНТЕГРАЦИЯ С BOB'S WARFARE (опционально)
-- ============================================================================

if mods["bobwarfare"] then
    log("[ATF-Rebalance] Bob's Warfare detected - C96 compatible")
end