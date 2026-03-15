-- atlas20mm.lua
-- Тяжёлая пушка Atlas 20mm (портативная гаубица)
-- Версия: 1.1 (Rebalance by Mechromancer-Zero)
-- Интеграция: Bob's Warfare Compatibility

extend({
    -- =========================================================================
    -- atlas20mm: Atlas 20mm Heavy Cannon (тяжёлое оружие поддержки)
    -- =========================================================================
    {
        type ="gun",
        name ="atlas20mm",
        icon ="__Atlas_ATF__/graphics/weapons/atlas20mm.png",
        icon_size = 128,
        icon_mipmaps = 4,
        flags = {"item"},
        subgroup ="conceptarms",
        order ="b[atlas20mm]",
        attack_parameters = {
            type ="projectile",
            ammo_category ="20mm",
            damage_modifier = 5.0,
            cooldown = 60,
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
            range = 100,
            sound = {
                {
                    filename ="__Atlas_ATF__/sound/20mm.ogg",
                    volume = 0.9
                }
            }
        },
        stack_size = 50
    }
})

-- ============================================================================
-- ЛОГИРОВАНИЕ ЗАГРУЗКИ
-- ============================================================================

log("[ATF-Rebalance] Atlas 20mm weapon loaded successfully")

-- ============================================================================
-- ИНТЕГРАЦИЯ С BOB'S WARFARE (опционально)
-- ============================================================================

if mods["bobwarfare"] then
    log("[ATF-Rebalance] Bob's Warfare detected - Atlas 20mm compatible")
end