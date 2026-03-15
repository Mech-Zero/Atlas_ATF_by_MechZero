-- hk416.lua
-- Винтовка Heckler & Koch 416 (5.56x45mm NATO)
-- Версия: 1.1 (Rebalance by Mechromancer-Zero)
-- Интеграция: Bob's Warfare Compatibility

extend({
    -- =========================================================================
    -- hk416: Heckler & Koch 416 (современная штурмовая винтовка)
    -- =========================================================================
    {
        type ="gun",
        name ="hk416",
        icon ="__Atlas_ATF__/graphics/weapons/416.png",
        icon_size = 128,
        icon_mipmaps = 4,
        flags = {"item"},
        subgroup ="modernarms",
        order ="a[hk416]",
        attack_parameters = {
            type ="projectile",
            ammo_category ="556x45",
            damage_modifier = 1.8,
            cooldown = 7,
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
            range = 28,
            sound = {
                {
                    filename ="__Atlas_ATF__/sound/hk416.ogg",
                    volume = 0.6
                }
            }
        },
        stack_size = 100
    }
})

-- ============================================================================
-- ЛОГИРОВАНИЕ ЗАГРУЗКИ
-- ============================================================================

log("[ATF-Rebalance] H&K 416 weapon loaded successfully")

-- ============================================================================
-- ИНТЕГРАЦИЯ С BOB'S WARFARE (опционально)
-- ============================================================================

if mods["bobwarfare"] then
    log("[ATF-Rebalance] Bob's Warfare detected - HK416 compatible")
end