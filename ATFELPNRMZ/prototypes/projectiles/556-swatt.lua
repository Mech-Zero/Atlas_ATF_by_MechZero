-- 556-swatt.lua
-- Электрический снаряд 5.56mm SWATT (Special Weapons Advanced Tactical Technology)
-- Версия: 1.1 (Rebalance by Mechromancer-Zero)
-- Интеграция: Bob's Warfare Compatibility

data:extend({
    -- =========================================================================
    -- 556-swatt: Электрический снаряд (для SWATT оружия)
    -- =========================================================================
    {
        type ="projectile",
        name ="556-swatt",
        flags = {"not-on-map"},
        acceleration = 0.01,
        action = {
            type ="direct",
            action_delivery = {
                type ="instant",
                target_effects = {
                    {
                        type ="damage",
                        damage = {amount = 30, type ="electric"}
                    },
                    {
                        type ="damage",
                        damage = {amount = 15, type ="physical"}
                    },
                    {
                        type ="create-entity",
                        entity_name ="explosion-hit"
                    }
                }
            }
        },
        light = {intensity = 1, size = 5},
        animation = {
            filename ="__ATFELPNRMZ__/graphics/projectiles/beam/swatt.png",
            draw_as_glow = true,
            frame_count = 1,
            apply_runtime_tint = true,
            tint = {r = 244 / 255, g = 245 / 255, b = 1, a = 0.8},
            height = 128,
            width = 8,
            priority ="high"
        },
        hit_at_collision_position = true
    }
})

-- ============================================================================
-- ЛОГИРОВАНИЕ ЗАГРУЗКИ
-- ============================================================================

log("[ATF-Rebalance] 556-swatt projectile loaded successfully")

-- ============================================================================
-- ИНТЕГРАЦИЯ С BOB'S WARFARE (опционально)
-- ============================================================================

if mods["bobwarfare"] then
    log("[ATF-Rebalance] Bob's Warfare detected - 556-swatt projectile compatible")
end