-- 556belt.lua
-- Снаряд для ленточных патронов 5.56mm (M134 Minigun)
-- Версия: 1.1 (Rebalance by Mechromancer-Zero)
-- Интеграция: Bob's Warfare Compatibility

extend({
    -- =========================================================================
    -- 556belt: Ленточный снаряд 5.56mm (для ротативных пушек)
    -- =========================================================================
    {
        type = "projectile",
        name = "556belt",
        flags = {"not-on-map"},
        acceleration = 0.01,
        action = {
            type = "direct",
            action_delivery = {
                type = "instant",
                target_effects = {
                    {
                        type = "nested-result",
                        action = {
                            type = "area",
                            radius = 3,
                            action_delivery = {
                                type = "instant",
                                target_effects = {
                                    {
                                        type = "damage",
                                        damage = {amount = 25, type = "physical"}
                                    },
                                    {
                                        type = "damage",
                                        damage = {amount = 5, type = "fire"}
                                    }
                                }
                            }
                        }
                    },
                    {
                        type = "create-entity",
                        entity_name = "explosion-hit"
                    }
                }
            }
        },
        light = {intensity = 0.5, size = 2},
        animation = {
            filename = "__base__/graphics/entity/bullet/bullet.png",
            draw_as_glow = true,
            frame_count = 1,
            width = 3,
            height = 50,
            priority = "high"
        },
        hit_at_collision_position = true
    }
})

-- ============================================================================
-- ЛОГИРОВАНИЕ ЗАГРУЗКИ
-- ============================================================================

log("[ATF-Rebalance] 556belt projectile loaded successfully")

-- ============================================================================
-- ИНТЕГРАЦИЯ С BOB'S WARFARE (опционально)
-- ============================================================================

if mods["bobwarfare"] then
    log("[ATF-Rebalance] Bob's Warfare detected - 556belt projectile compatible")
end