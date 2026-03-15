-- 45acp.lua
-- Патроны .45 ACP (45acp, 45acpdrum) для ATF Rebalance
-- Версия: 1.1 (Rebalance by Mechromancer-Zero)
-- Интеграция: Bob's Warfare Compatibility

data:extend({
    -- =========================================================================
    -- 45acp: Стандартный пистолетный патрон
    -- =========================================================================
    {
        type = "ammo",
        name = "45acp",
        icon = "__Atlas_ATF__/graphics/ammo/45acp.png",
        icon_size = 64,
        icon_mipmaps = 4,
        flags = {"item"},
        ammo_category = "45acp",
        ammo_type = {
            category = "45acp",
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
                            damage = {amount = 10, type = "physical"}
                        }
                    }
                }
            }
        },
        magazine_size = 20,
        subgroup = "ATF-ammo",
        order = "a[45acp]",
        stack_size = 200
    },

    -- =========================================================================
    -- 45acpdrum: Барабанный магазин (.45 ACP)
    -- =========================================================================
    {
        type = "ammo",
        name = "45acpdrum",
        icon = "__Atlas_ATF__/graphics/ammo/45acpdrum.png",
        icon_size = 64,
        icon_mipmaps = 4,
        flags = {"item"},
        ammo_category = "45acp",
        ammo_type = {
            category = "45acp",
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
                            damage = {amount = 10, type = "physical"}
                        },
                        {
                            type = "damage",
                            damage = {amount = 5, type = "impact"}
                        }
                    }
                }
            }
        },
        magazine_size = 50,
        subgroup = "ATF-ammo",
        order = "a[45acpdrum]",
        stack_size = 200
    }
})

-- ============================================================================
-- ЛОГИРОВАНИЕ ЗАГРУЗКИ
-- ============================================================================

log("[ATF-Rebalance] 45acp ammo loaded successfully (45acp, 45acpdrum)")

-- ============================================================================
-- ИНТЕГРАЦИЯ С BOB'S WARFARE (опционально)
-- ============================================================================

if mods["bobwarfare"] then
    log("[ATF-Rebalance] Bob's Warfare detected - 45acp ammo compatible")
end