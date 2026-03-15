-- 303.lua
-- Патроны .303 British (303ammo, 303mag) для ATF Rebalance
-- Версия: 1.1 (Rebalance by Mechromancer-Zero)
-- Интеграция: Bob's Warfare Compatibility

data:extend({
    -- =========================================================================
    -- 303ammo: Стандартный винтовочный патрон (.303 British)
    -- =========================================================================
    {
        type = "ammo",
        name = "303ammo",
        icon = "__Atlas_ATF__/graphics/ammo/303.png",
        icon_size = 64,
        icon_mipmaps = 4,
        flags = {"item"},
        ammo_category = "303ammo",
        ammo_type = {
            category = "303ammo",
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
                            damage = {amount = 26, type = "physical"}
                        }
                    }
                }
            }
        },
        magazine_size = 5,
        subgroup = "ATF-ammo",
        order = "a[303]",
        stack_size = 200
    },

    -- =========================================================================
    -- 303mag: Магазины .303 British (увеличенная ёмкость)
    -- =========================================================================
    {
        type = "ammo",
        name = "303mag",
        icon = "__Atlas_ATF__/graphics/ammo/303mag.png",
        icon_size = 128,
        icon_mipmaps = 4,
        flags = {"item"},
        ammo_category = "303ammo",
        ammo_type = {
            category = "303ammo",
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
                            damage = {amount = 26, type = "physical"}
                        },
                        {
                            type = "damage",
                            damage = {amount = 5, type = "poison"}
                        }
                    }
                }
            }
        },
        magazine_size = 30,
        subgroup = "ATF-ammo",
        order = "a[303mag]",
        stack_size = 200
    }
})

-- ============================================================================
-- ЛОГИРОВАНИЕ ЗАГРУЗКИ
-- ============================================================================

log("[ATF-Rebalance] 303ammo loaded successfully (303ammo, 303mag)")

-- ============================================================================
-- ИНТЕГРАЦИЯ С BOB'S WARFARE (опционально)
-- ============================================================================

if mods["bobwarfare"] then
    log("[ATF-Rebalance] Bob's Warfare detected - 303ammo compatible")
end