-- ak74m.lua
-- Автомат АК-74М (5.45x39mm)
-- Версия: 1.1 (Rebalance by Mechromancer-Zero)
-- Интеграция: Bob's Warfare Compatibility

data:extend({
    -- =========================================================================
    -- ak74m: Kalashnikov AK-74M (автомат холодной войны)
    -- =========================================================================
    {
        type ="gun",
        name ="ak74m",
        icon ="__ATFELPNRMZ__/graphics/weapons/ak74m.png",
        icon_size = 128,
        icon_mipmaps = 4,
        -- flags = {"item"},
        subgroup ="coldwararms",
        order ="a[ak74m]",
        attack_parameters = {
            type ="projectile",
            ammo_category ="545x39",
            damage_modifier = 2.0,
            cooldown = 7.5,
            movement_slow_down_factor = 0.3,
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
            range = 24,
            sound = {
                {
                    filename ="__ATFELPNRMZ__/sound/ak74m.ogg",
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

log("[ATF-Rebalance] AK-74M weapon loaded successfully")

-- ============================================================================
-- ИНТЕГРАЦИЯ С BOB'S WARFARE (опционально)
-- ============================================================================

if mods["bobwarfare"] then
    log("[ATF-Rebalance] Bob's Warfare detected - AK-74M compatible")
end