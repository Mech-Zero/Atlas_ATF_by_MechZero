-- 50bmg.lua
-- Патроны .50 BMG для ATF Rebalance
-- Версия: 1.1 (Rebalance by Mechromancer-Zero)
-- Интеграция: Bob's Warfare Compatibility

data:extend({
    -- =========================================================================
    -- 50bmg: Крупнокалиберный патрон (пулемёт M2, снайперские винтовки)
    -- =========================================================================
    {
        type = "ammo",
        name = "50bmg",
        icon = "__Atlas_ATF__/graphics/ammo/50bmg.png",
        icon_size = 128,
        icon_mipmaps = 4,
        flags = {"item"},
        ammo_category = "50bmg",
        ammo_type = {
            category = "50bmg",
            action = {
                type = "direct",
                action_delivery = {
                    type = "instant",
                    source_effects = {
                        type = "create-explosion",
                        entity_name = "explosion-gunshot"
                    },
                    target_effects = {
                        {
                            type = "create-entity",
                            entity_name = "explosion-hit"
                        },
                        {
                            type = "damage",
                            damage = {amount = 35, type = "physical"}
                        },
                        {
                            type = "damage",
                            damage = {amount = 15, type = "impact"}
                        }
                    }
                }
            }
        },
        magazine_size = 100,
        subgroup = "ATF-ammo",
        order = "a[50bmg]",
        stack_size = 200
    }
})

-- ============================================================================
-- ЛОГИРОВАНИЕ ЗАГРУЗКИ
-- ============================================================================

log("[ATF-Rebalance] 50bmg ammo loaded successfully")

-- ============================================================================
-- ИНТЕГРАЦИЯ С BOB'S WARFARE (опционально)
-- ============================================================================

if mods["bobwarfare"] then
    log("[ATF-Rebalance] Bob's Warfare detected - 50bmg ammo compatible")
end