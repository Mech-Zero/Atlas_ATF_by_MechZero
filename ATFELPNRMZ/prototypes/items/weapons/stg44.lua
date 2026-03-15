-- stg44.lua
-- Штурмовая винтовка STG44 (7.92x33mm Kurz, WW2 эра)
-- Версия: 1.1 (Rebalance by Mechromancer-Zero)
-- Интеграция: Bob's Warfare Compatibility

data:extend({
    -- =========================================================================
    -- stg44: Sturmgewehr 44 (первая штурмовая винтовка в истории)
    -- =========================================================================
    {
        type ="gun",
        name ="stg44",
        icon ="__ATFELPNRMZ__/graphics/weapons/stg44.png",
        icon_size = 128,
        icon_mipmaps = 4,
        -- flags = {"item"},
        subgroup ="oldarms",
        order ="a[stg44]",
        attack_parameters = {
            type ="projectile",
            ammo_category ="792x33",
            damage_modifier = 1.9,
            cooldown = 10,
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
            range = 30,
            cyclic_sound = {
                begin_sound = {
                    {
                        filename ="__ATFELPNRMZ__/sound/empty.ogg",
                        volume = 0,
                        speed = 1000.0
                    }
                },
                middle_sound = {
                    {
                        filename ="__ATFELPNRMZ__/sound/stg44.ogg",
                        volume = 1.5
                    }
                },
                end_sound = {
                    {
                        filename ="__ATFELPNRMZ__/sound/empty.ogg",
                        volume = 0,
                        speed = 1000.0
                    }
                }
            }
        },
        stack_size = 100
    }
})

-- ============================================================================
-- ЛОГИРОВАНИЕ ЗАГРУЗКИ
-- ============================================================================

log("[ATF-Rebalance] STG44 weapon loaded successfully")

-- ============================================================================
-- ИНТЕГРАЦИЯ С BOB'S WARFARE (опционально)
-- ============================================================================

if mods["bobwarfare"] then
    log("[ATF-Rebalance] Bob's Warfare detected - STG44 compatible")
end