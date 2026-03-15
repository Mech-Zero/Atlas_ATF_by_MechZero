-- rcxd.lua
-- Снаряды для дронов-камикадзе RCXD/RCND (взрыв)
-- Версия: 1.1 (Rebalance by Mechromancer-Zero)
-- Интеграция: Bob's Warfare Compatibility

extend({
    -- =========================================================================
    -- rcxd-detonate: Взрыв дрона RCXD (стандартный)
    -- =========================================================================
    {
        type = "projectile",
        name = "rcxd-detonate",
        flags = {"not-on-map"},
        acceleration = 10,
        action = {
            type = "area",
            radius = 8,
            action_delivery = {
                type = "instant",
                target_effects = {
                    {
                        type = "damage",
                        damage = {amount = 500, type = "explosion"}
                    }
                }
            }
        },
        hit_at_collision_position = true
    },

    -- =========================================================================
    -- rcxd-blast: Взрыв дрона RCND (ядерный/усиленный)
    -- =========================================================================
    {
        type = "projectile",
        name = "rcxd-blast",
        flags = {"not-on-map"},
        acceleration = 0.02,
        action = {
            type = "area",
            radius = 8,
            action_delivery = {
                type = "instant",
                target_effects = {
                    {
                        type = "damage",
                        damage = {amount = 1000, type = "explosion"}
                    }
                }
            }
        },
        hit_at_collision_position = true
    }
})

-- ============================================================================
-- ЛОГИРОВАНИЕ ЗАГРУЗКИ
-- ============================================================================

log("[ATF-Rebalance] RCXD projectiles loaded successfully (rcxd-detonate, rcxd-blast)")

-- ============================================================================
-- ИНТЕГРАЦИЯ С BOB'S WARFARE (опционально)
-- ============================================================================

if mods["bobwarfare"] then
    log("[ATF-Rebalance] Bob's Warfare detected - RCXD projectiles compatible")
end