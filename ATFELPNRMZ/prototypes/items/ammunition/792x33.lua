-- 792x33.lua
-- Патроны 7.92x33 Kurz для ATF Rebalance
-- Версия: 1.1 (Rebalance by Mechromancer-Zero)
-- Интеграция: Bob's Warfare Compatibility

data:extend({
    -- =========================================================================
    -- 792x33: Промежуточный патрон (STG-44)
    -- =========================================================================
    {
        type ="ammo",
        name ="792x33",
        icon ="__ATFELPNRMZ__/graphics/ammo/792x33.png",
        icon_size = 64,
        icon_mipmaps = 4,
        -- flags = {"item"},
        ammo_category ="792x33",
        ammo_type = {
            category ="792x33",
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
        order ="a[792x33]",
        stack_size = 200
    }
})

-- ============================================================================
-- ЛОГИРОВАНИЕ ЗАГРУЗКИ
-- ============================================================================

log("[ATF-Rebalance] 792x33 ammo loaded successfully")

-- ============================================================================
-- ИНТЕГРАЦИЯ С BOB'S WARFARE (опционально)
-- ============================================================================

if mods["bobwarfare"] then
    log("[ATF-Rebalance] Bob's Warfare detected - 792x33 ammo compatible")
end