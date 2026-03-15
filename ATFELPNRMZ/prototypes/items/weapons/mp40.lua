-- mp40.lua
-- Пистолет-пулемёт MP40 (9mm Parabellum, WW2 эра)
-- Версия: 1.1 (Rebalance by Mechromancer-Zero)
-- Интеграция: Bob's Warfare Compatibility

data:extend({
    -- =========================================================================
    -- mp40: Maschinenpistole 40 (пистолет-пулемёт WW2 эры)
    -- =========================================================================
    {
        type ="gun",
        name ="mp40",
        icon ="__ATFELPNRMZ__/graphics/weapons/mp40.png",
        icon_size = 128,
        icon_mipmaps = 4,
        -- flags = {"item"},
        subgroup ="oldarms",
        order ="a[mp40]",
        attack_parameters = {
            type ="projectile",
            ammo_category ="9mm",
            damage_modifier = 1.4,
            cooldown = 8,
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
            range = 18,
            sound = {
                {
                    filename ="__ATFELPNRMZ__/sound/mp40.ogg",
                    volume = 1.0
                }
            }
        },
        stack_size = 100
    }
})

-- ============================================================================
-- ЛОГИРОВАНИЕ ЗАГРУЗКИ
-- ============================================================================

log("[ATF-Rebalance] MP40 weapon loaded successfully")

-- ============================================================================
-- ИНТЕГРАЦИЯ С BOB'S WARFARE (опционально)
-- ============================================================================

if mods["bobwarfare"] then
    log("[ATF-Rebalance] Bob's Warfare detected - MP40 compatible")
end