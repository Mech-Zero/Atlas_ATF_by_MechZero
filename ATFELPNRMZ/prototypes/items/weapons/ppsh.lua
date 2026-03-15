-- ppsh.lua
-- Пистолет-пулемёт ППШ-41 (7.62x25mm Tokarev, WW2 эра)
-- Версия: 1.1 (Rebalance by Mechromancer-Zero)
-- Интеграция: Bob's Warfare Compatibility

data:extend({
    -- =========================================================================
    -- ppsh: ППШ-41 (Папаша, пистолет-пулемёт Шпагина)
    -- =========================================================================
    {
        type ="gun",
        name ="ppsh",
        icon ="__ATFELPNRMZ__/graphics/weapons/ppsh.png",
        icon_size = 128,
        icon_mipmaps = 4,
        -- flags = {"item"},
        subgroup ="oldarms",
        order ="a[ppsh]",
        attack_parameters = {
            type ="projectile",
            ammo_category ="762x25",
            damage_modifier = 1.4,
            cooldown = 5,
            movement_slow_down_factor = 0.35,
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
                    filename ="__ATFELPNRMZ__/sound/ppsh.ogg",
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

log("[ATF-Rebalance] PPSh-41 weapon loaded successfully")

-- ============================================================================
-- ИНТЕГРАЦИЯ С BOB'S WARFARE (опционально)
-- ============================================================================

if mods["bobwarfare"] then
    log("[ATF-Rebalance] Bob's Warfare detected - PPSh compatible")
end