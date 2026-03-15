-- 762x39.lua
-- Патроны 7.62x39 (762x39, 762x39drum) для ATF Rebalance
-- Версия: 1.1 (Rebalance by Mechromancer-Zero)
-- Интеграция: Bob's Warfare Compatibility

data:extend({
    -- =========================================================================
    -- 762x39: Стандартный винтовочный патрон (АК-47, АКМ)
    -- =========================================================================
    {
        type ="ammo",
        name ="762x39",
        icon ="__ATFELPNRMZ__/graphics/ammo/762x39.png",
        icon_size = 64,
        icon_mipmaps = 4,
        -- flags = {"item"},
        ammo_category ="762x39",
        ammo_type = {
            category ="762x39",
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
                            damage = {amount = 15, type ="physical"}
                        }
                    }
                }
            }
        },
        magazine_size = 30,
        subgroup ="ATF-ammo",
        order ="a[762x39]",
        stack_size = 200
    },

    -- =========================================================================
    -- 762x39drum: Барабанный магазин (7.62x39)
    -- =========================================================================
    {
        type ="ammo",
        name ="762x39drum",
        icon ="__ATFELPNRMZ__/graphics/ammo/762x39drum.png",
        icon_size = 64,
        icon_mipmaps = 4,
        -- flags = {"item"},
        ammo_category ="762x39",
        ammo_type = {
            category ="762x39",
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
                            damage = {amount = 15, type ="physical"}
                        },
                        {
                            type ="damage",
                            damage = {amount = 10, type ="impact"}
                        }
                    }
                }
            }
        },
        magazine_size = 100,
        subgroup ="ATF-ammo",
        order ="a[762x39drum]",
        stack_size = 200
    }
})

-- ============================================================================
-- ЛОГИРОВАНИЕ ЗАГРУЗКИ
-- ============================================================================

log("[ATF-Rebalance] 762x39 ammo loaded successfully (762x39, 762x39drum)")

-- ============================================================================
-- ИНТЕГРАЦИЯ С BOB'S WARFARE (опционально)
-- ============================================================================

if mods["bobwarfare"] then
    log("[ATF-Rebalance] Bob's Warfare detected - 762x39 ammo compatible")
end