-- 9mm.lua
-- Патроны 9mm (9mm, 9mmp, 9mmu) для ATF Rebalance
-- Версия: 1.1 (Rebalance by Mechromancer-Zero)
-- Интеграция: Bob's Warfare Compatibility

data:extend({
    -- =========================================================================
    -- 9mm: Стандартный пистолетный патрон
    -- =========================================================================
    {
        type ="ammo",
        name ="9mm",
        icon ="__ATFELPNRMZ__/graphics/ammo/9mm.png",
        icon_size = 64,
        icon_mipmaps = 4,
        -- flags = {"item"},
        ammo_category ="9mm",
        ammo_type = {
            category ="9mm",
            action = {
                type ="direct",
                action_delivery = {
                    type ="instant",
                    source_effects = {
                        type ="create-explosion",
                        entity_name ="explosion-gunshot"
                    },
                    target_effects = {
                        {
                            type ="create-entity",
                            entity_name ="explosion-hit"
                        },
                        {
                            type ="damage",
                            damage = {amount = 10, type ="physical"}
                        }
                    }
                }
            }
        },
        magazine_size = 30,
        subgroup ="ATF-ammo",
        order ="a[9mm]",
        stack_size = 200
    },

    -- =========================================================================
    -- 9mmp: Бронебойный пистолетный патрон
    -- =========================================================================
    {
        type ="ammo",
        name ="9mmp",
        icon ="__ATFELPNRMZ__/graphics/ammo/9mmp.png",
        icon_size = 64,
        icon_mipmaps = 4,
        -- flags = {"item"},
        ammo_category ="9mm",
        ammo_type = {
            category ="9mm",
            action = {
                type ="direct",
                action_delivery = {
                    type ="instant",
                    source_effects = {
                        type ="create-explosion",
                        entity_name ="explosion-gunshot"
                    },
                    target_effects = {
                        {
                            type ="create-entity",
                            entity_name ="explosion-hit"
                        },
                        {
                            type ="damage",
                            damage = {amount = 14, type ="physical"}
                        }
                    }
                }
            }
        },
        magazine_size = 30,
        subgroup ="ATF-ammo",
        order ="a[9mmp]",
        stack_size = 200
    },

    -- =========================================================================
    -- 9mmu: Урановый пистолетный патрон
    -- =========================================================================
    {
        type ="ammo",
        name ="9mmu",
        icon ="__ATFELPNRMZ__/graphics/ammo/9mmu.png",
        icon_size = 64,
        icon_mipmaps = 4,
        -- flags = {"item"},
        ammo_category ="9mm",
        ammo_type = {
            category ="9mm",
            action = {
                type ="direct",
                action_delivery = {
                    type ="instant",
                    source_effects = {
                        type ="create-explosion",
                        entity_name ="explosion-gunshot"
                    },
                    target_effects = {
                        {
                            type ="create-entity",
                            entity_name ="explosion-hit"
                        },
                        {
                            type ="damage",
                            damage = {amount = 25, type ="physical"}
                        }
                    }
                }
            }
        },
        magazine_size = 30,
        subgroup ="ATF-ammo",
        order ="a[uranium-rounds-magazine]",
        stack_size = 200
    }
})

-- ============================================================================
-- ЛОГИРОВАНИЕ ЗАГРУЗКИ
-- ============================================================================

log("[ATF-Rebalance] 9mm ammo loaded successfully (9mm, 9mmp, 9mmu)")

-- ============================================================================
-- ИНТЕГРАЦИЯ С BOB'S WARFARE (опционально)
-- ============================================================================

if mods["bobwarfare"] then
    log("[ATF-Rebalance] Bob's Warfare detected - 9mm ammo compatible")
end