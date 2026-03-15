-- fusion-laser.lua
-- Лазерный снаряд Fusion (для энергетического оружия)
-- Версия: 1.1 (Rebalance by Mechromancer-Zero)
-- Интеграция: Bob's Warfare Compatibility

extend({
    -- =========================================================================
    -- fusion-laser: Лазерный луч Fusion (высокоэнергетический)
    -- =========================================================================
    {
        type = "projectile",
        name = "fusion-laser",
        flags = {"not-on-map"},
        acceleration = 0.02,
        action = {
            type = "direct",
            action_delivery = {
                type = "instant",
                target_effects = {
                    {
                        type = "damage",
                        damage = {amount = 150, type = "laser"}
                    },
                    {
                        type = "damage",
                        damage = {amount = 50, type = "physical"}
                    },
                    {
                        type = "create-entity",
                        entity_name = "explosion-hit"
                    }
                }
            }
        },
        light = {intensity = 1, size = 8},
        animation = {
            filename = "__Atlas_ATF__/graphics/projectiles/beam/fusion-laser.png",
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

log("[ATF-Rebalance] Fusion-laser projectile loaded successfully")

-- ============================================================================
-- ИНТЕГРАЦИЯ С BOB'S WARFARE (опционально)
-- ============================================================================

if mods["bobwarfare"] then
    log("[ATF-Rebalance] Bob's Warfare detected - fusion-laser projectile compatible")
end