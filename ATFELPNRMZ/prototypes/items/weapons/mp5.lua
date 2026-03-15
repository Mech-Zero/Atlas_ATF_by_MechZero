-- mp5.lua
-- Пистолет-пулемёт Heckler & Koch MP5 (9mm Parabellum)
-- Версия: 1.1 (Rebalance by Mechromancer-Zero)
-- Интеграция: Bob's Warfare Compatibility

extend({
    -- =========================================================================
    -- mp5: Heckler & Koch MP5 (пистолет-пулемёт холодной войны)
    -- =========================================================================
    {
        type ="gun",
        name ="mp5",
        icon ="__Atlas_ATF__/graphics/weapons/mp5.png",
        icon_size = 128,
        icon_mipmaps = 4,
        flags = {"item"},
        subgroup ="coldwararms",
        order ="a[mp5]",
        attack_parameters = {
            type ="projectile",
            ammo_category ="9mm",
            damage_modifier = 1.8,
            cooldown = 5,
            movement_slow_down_factor = 0.1,
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
            range = 20,
            sound = {
                {
                    filename ="__Atlas_ATF__/sound/mp5.ogg",
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

log("[ATF-Rebalance] H&K MP5 weapon loaded successfully")

-- ============================================================================
-- ИНТЕГРАЦИЯ С BOB'S WARFARE (опционально)
-- ============================================================================

if mods["bobwarfare"] then
    log("[ATF-Rebalance] Bob's Warfare detected - MP5 compatible")
end