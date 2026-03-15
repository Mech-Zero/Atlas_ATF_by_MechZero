-- 40watt.lua
-- Снаряд для плазменной винтовки 40 Watt (40wattbolt)
-- Версия: 1.1 (Rebalance by Mechromancer-Zero)
-- Интеграция: Bob's Warfare Compatibility

extend({
    -- =========================================================================
    -- 40wattbolt: Плазменный болт (40 Watt Phased Plasma)
    -- =========================================================================
    {
        type = "projectile",
        name = "40wattbolt",
        flags = {"not-on-map"},
        acceleration = 0.01,
        action = {
            type = "direct",
            action_delivery = {
                type = "instant",
                target_effects = {
                    {
                        type = "damage",
                        damage = {amount = 100, type = "laser"}
                    },
                    {
                        type = "damage",
                        damage = {amount = 50, type = "fire"}
                    },
                    {
                        type = "damage",
                        damage = {amount = 100, type = "physical"}
                    },
                    {
                        type = "create-entity",
                        entity_name = "explosion-hit"
                    }
                }
            }
        },
        light = {intensity = 2, size = 8},
        animation = {
            filename = "__Atlas_ATF__/graphics/projectiles/beam/plasma40.png",
            draw_as_glow = true,
            frame_count = 1,
            height = 50,
            width = 7,
            priority = "high"
        },
        hit_at_collision_position = true
    }
})

-- ============================================================================
-- ЛОГИРОВАНИЕ ЗАГРУЗКИ
-- ============================================================================

log("[ATF-Rebalance] 40wattbolt projectile loaded successfully")

-- ============================================================================
-- ИНТЕГРАЦИЯ С BOB'S WARFARE (опционально)
-- ============================================================================

if mods["bobwarfare"] then
    log("[ATF-Rebalance] Bob's Warfare detected - 40watt projectile compatible")
end