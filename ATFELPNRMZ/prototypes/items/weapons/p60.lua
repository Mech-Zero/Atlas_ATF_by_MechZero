-- p60.lua
-- Концепт-пистолет P60 (9mm Parabellum, футуристический)
-- Версия: 1.1 (Rebalance by Mechromancer-Zero)
-- Интеграция: Bob's Warfare Compatibility

data:extend({
    -- =========================================================================
    -- p60: P60 Concept Pistol (футуристический пистолет)
    -- =========================================================================
    {
        type ="gun",
        name ="p60",
        icon ="__ATFELPNRMZ__/graphics/weapons/luger60.png",
        icon_size = 128,
        icon_mipmaps = 4,
        -- flags = {"item"},
        subgroup ="conceptarms",
        order ="a[p60]",
        attack_parameters = {
            type ="projectile",
            ammo_category ="9mm",
            damage_modifier = 2.5,
            cooldown = 12,
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
            range = 18,
            sound = {
                {
                    filename ="__ATFELPNRMZ__/sound/p08.ogg",
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

log("[ATF-Rebalance] P60 Concept weapon loaded successfully")

-- ============================================================================
-- ИНТЕГРАЦИЯ С BOB'S WARFARE (опционально)
-- ============================================================================

if mods["bobwarfare"] then
    log("[ATF-Rebalance] Bob's Warfare detected - P60 compatible")
end