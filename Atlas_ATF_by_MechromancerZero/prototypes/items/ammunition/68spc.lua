-- 68spc.lua
-- Патроны 6.8 SPC (68spc, 68spcdrum) для ATF Rebalance
-- Версия: 1.1 (Rebalance by Mechromancer-Zero)
-- Интеграция: Bob's Warfare Compatibility

data:extend({
    -- =========================================================================
    -- 68spc: Стандартный винтовочный патрон
    -- =========================================================================
    {
        type = "ammo",
        name = "68spc",
        icon = "__Atlas_ATF__/graphics/ammo/68spc.png",
        icon_size = 64,
        icon_mipmaps = 4,
        flags = {"item"},
        ammo_category = "68spc",
        ammo_type = {
            category = "68spc",
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
                            damage = {amount = 16, type = "physical"}
                        }
                    }
                }
            }
        },
        magazine_size = 30,
        subgroup = "ATF-ammo",
        order = "a[68spc]",
        stack_size = 200
    },

    -- =========================================================================
    -- 68spcdrum: Барабанный магазин (6.8 SPC)
    -- =========================================================================
    {
        type = "ammo",
        name = "68spcdrum",
        icon = "__Atlas_ATF__/graphics/ammo/68spcdrum.png",
        icon_size = 64,
        icon_mipmaps = 4,
        flags = {"item"},
        ammo_category = "68spc",
        ammo_type = {
            category = "68spc",
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
                            damage = {amount = 16, type = "physical"}
                        },
                        {
                            type = "damage",
                            damage = {amount = 10, type = "impact"}
                        }
                    }
                }
            }
        },
        magazine_size = 100,
        subgroup = "ATF-ammo",
        order = "a[68spcdrum]",
        stack_size = 200
    }
})

-- ============================================================================
-- ЛОГИРОВАНИЕ ЗАГРУЗКИ
-- ============================================================================

log("[ATF-Rebalance] 68spc ammo loaded successfully (68spc, 68spcdrum)")

-- ============================================================================
-- ИНТЕГРАЦИЯ С BOB'S WARFARE (опционально)
-- ============================================================================

if mods["bobwarfare"] then
    log("[ATF-Rebalance] Bob's Warfare detected - 68spc ammo compatible")
end