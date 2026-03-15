-- rcxd.lua
-- Снаряды дронов-камикадзе ATF (RCXD/RCND)
-- Версия: 1.1 (Rebalance by Mechromancer-Zero)
-- Интеграция: Bob's Warfare Compatibility

data:extend({
    -- =========================================================================
    -- RCXD-DETONATE: Стандартный взрыв дрона-камикадзе
    -- =========================================================================
    {
        type ="projectile",
        name ="rcxd-detonate",
        flags = {"not-on-map"},
        acceleration = 10,
        action = {
            type ="area",
            radius = 8,
            action_delivery = {
                type ="instant",
                target_effects = {
                    {
                        type ="damage",
                        damage = {amount = 500, type ="explosion"}
                    }
                }
            }
        }
    },

    -- =========================================================================
    -- RCXD-BLAST: Усиленный взрыв ядерного дрона (RCND)
    -- =========================================================================
    {
        type ="projectile",
        name ="rcxd-blast",
        flags = {"not-on-map"},
        acceleration = 0.02,
        action = {
            type ="area",
            radius = 8,
            action_delivery = {
                type ="instant",
                target_effects = {
                    {
                        type ="damage",
                        damage = {amount = 1000, type ="explosion"}
                    }
                }
            }
        }
    }
})

-- ============================================================================
-- ЛОГИРОВАНИЕ ЗАГРУЗКИ
-- ============================================================================

log("[ATF-Rebalance] rcxd.lua loaded successfully - 2 drone projectiles registered")

-- ============================================================================
-- ИНТЕГРАЦИЯ С BOB'S WARFARE (опционально)
-- ============================================================================

if mods["bobwarfare"] then
    log("[ATF-Rebalance] Bob's Warfare detected - drone projectiles compatible")
end