-- g3.lua
-- Винтовка Heckler & Koch G3 (7.62x51mm NATO)
-- Версия: 1.1 (Rebalance by Mechromancer-Zero)
-- Интеграция: Bob's Warfare Compatibility

data:extend({
    -- =========================================================================
    -- g3: Heckler & Koch G3 (боевая винтовка холодной войны)
    -- =========================================================================
    {
        type ="gun",
        name ="g3",
        icon ="__ATFELPNRMZ__/graphics/weapons/g3.png",
        icon_size = 128,
        icon_mipmaps = 4,
        -- flags = {"item"},
        subgroup ="coldwararms",
        order ="a[g3]",
        attack_parameters = {
            type ="projectile",
            ammo_category ="762x51",
            damage_modifier = 2.0,
            cooldown = 10,
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
            range = 35,
            sound = {
                {
                    filename ="__ATFELPNRMZ__/sound/g3.ogg",
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

log("[ATF-Rebalance] H&K G3 weapon loaded successfully")

-- ============================================================================
-- ИНТЕГРАЦИЯ С BOB'S WARFARE (опционально)
-- ============================================================================

if mods["bobwarfare"] then
    log("[ATF-Rebalance] Bob's Warfare detected - G3 compatible")
end