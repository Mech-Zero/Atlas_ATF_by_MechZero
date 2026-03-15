-- 1911.lua
-- Пистолет M1911 (.45 ACP, полуавтоматический)
-- Версия: 1.1 (Rebalance by Mechromancer-Zero)
-- Интеграция: Bob's Warfare Compatibility

data:extend({
    -- =========================================================================
    -- 1911: Colt M1911 (пистолет WW1/WW2 эры)
    -- =========================================================================
    {
        type ="gun",
        name ="1911",
        icon ="__Atlas_ATF__/graphics/weapons/1911.png",
        icon_size = 128,
        icon_mipmaps = 4,
        flags = {"item"},
        subgroup ="oldarms",
        order ="a[1911]",
        attack_parameters = {
            type ="projectile",
            ammo_category ="45acp",
            cooldown = 13,
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
                    filename ="__Atlas_ATF__/sound/c96.ogg",
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

log("[ATF-Rebalance] M1911 weapon loaded successfully")

-- ============================================================================
-- ИНТЕГРАЦИЯ С BOB'S WARFARE (опционально)
-- ============================================================================

if mods["bobwarfare"] then
    log("[ATF-Rebalance] Bob's Warfare detected - 1911 compatible")
end