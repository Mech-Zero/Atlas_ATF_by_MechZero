-- g43.lua
-- Винтовка Gewehr 43 (7.92x57mm, полуавтоматическая)
-- Версия: 1.1 (Rebalance by Mechromancer-Zero)
-- Интеграция: Bob's Warfare Compatibility

data:extend({
    -- =========================================================================
    -- g43: Gewehr 43 (полуавтоматическая винтовка WW2 эры)
    -- =========================================================================
    {
        type ="gun",
        name ="g43",
        icon ="__ATFELPNRMZ__/graphics/weapons/g43.png",
        icon_size = 128,
        icon_mipmaps = 4,
        -- flags = {"item"},
        subgroup ="oldarms",
        order ="a[g43]",
        attack_parameters = {
            type ="projectile",
            ammo_category ="792x57",
            damage_modifier = 3.0,
            cooldown = 20,
            movement_slow_down_factor = 0.4,
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
            range = 30,
            sound = {
                {
                    filename ="__ATFELPNRMZ__/sound/g43.ogg",
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

log("[ATF-Rebalance] Gewehr 43 weapon loaded successfully")

-- ============================================================================
-- ИНТЕГРАЦИЯ С BOB'S WARFARE (опционально)
-- ============================================================================

if mods["bobwarfare"] then
    log("[ATF-Rebalance] Bob's Warfare detected - G43 compatible")
end