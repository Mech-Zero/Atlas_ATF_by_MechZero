-- k98.lua
-- Винтовка Karabiner 98k (7.92x57mm, болтовая)
-- Версия: 1.1 (Rebalance by Mechromancer-Zero)
-- Интеграция: Bob's Warfare Compatibility

data:extend({
    -- =========================================================================
    -- k98: Karabiner 98k (болтовая винтовка WW2 эры)
    -- =========================================================================
    {
        type ="gun",
        name ="k98",
        icon ="__Atlas_ATF__/graphics/weapons/k98.png",
        icon_size = 128,
        icon_mipmaps = 4,
        flags = {"item"},
        subgroup ="oldarms",
        order ="a[k98]",
        attack_parameters = {
            type ="projectile",
            ammo_category ="792x57",
            damage_modifier = 4.0,
            cooldown = 80,
            movement_slow_down_factor = 0.7,
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
            range = 35,
            sound = {
                {
                    filename ="__Atlas_ATF__/sound/k98.ogg",
                    volume = 0.9
                }
            }
        },
        stack_size = 100
    }
})

-- ============================================================================
-- ЛОГИРОВАНИЕ ЗАГРУЗКИ
-- ============================================================================

log("[ATF-Rebalance] Karabiner 98k weapon loaded successfully")

-- ============================================================================
-- ИНТЕГРАЦИЯ С BOB'S WARFARE (опционально)
-- ============================================================================

if mods["bobwarfare"] then
    log("[ATF-Rebalance] Bob's Warfare detected - K98 compatible")
end