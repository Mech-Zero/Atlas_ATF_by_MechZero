-- 20mm.lua
-- Патроны 20mm (20mm, 20mm-he) для ATF Rebalance
-- Версия: 1.1 (Rebalance by Mechromancer-Zero)
-- Интеграция: Bob's Warfare Compatibility

data:extend({
    -- =========================================================================
    -- 20mm: Стандартный бронебойный патрон (пушка GAU)
    -- =========================================================================
    {
        type ="ammo",
        name ="20mm",
        icon ="__Atlas_ATF__/graphics/ammo/20mm.png",
        icon_size = 128,
        icon_mipmaps = 4,
        flags = {"item"},
        ammo_category ="20mm",
        ammo_type = {
            category ="20mm",
            target_type ="position",
            clamp_position = false,
            action = {
                type ="direct",
                action_delivery = {
                    type ="projectile",
                    projectile ="20mm",
                    starting_speed = 3,
                    starting_speed_deviation = 0,
                    direction_deviation = 0,
                    range_deviation = 0,
                    max_range = 100,
                    source_effects = {
                        type ="create-explosion",
                        entity_name ="explosion-gunshot"
                    }
                }
            }
        },
        magazine_size = 200,
        subgroup ="ATF-ammo",
        order ="a[20mm]",
        stack_size = 200
    },

    -- =========================================================================
    -- 20mm-he: Фугасный патрон (пушка GAU)
    -- =========================================================================
    {
        type ="ammo",
        name ="20mm-he",
        icon ="__Atlas_ATF__/graphics/ammo/20mm-he.png",
        icon_size = 128,
        icon_mipmaps = 4,
        flags = {"item"},
        ammo_category ="20mm",
        ammo_type = {
            category ="20mm",
            target_type ="position",
            clamp_position = false,
            action = {
                type ="direct",
                action_delivery = {
                    type ="projectile",
                    projectile ="20mm-he",
                    starting_speed = 3,
                    starting_speed_deviation = 0,
                    direction_deviation = 0,
                    range_deviation = 0,
                    max_range = 100,
                    source_effects = {
                        type ="create-explosion",
                        entity_name ="explosion-gunshot"
                    }
                }
            }
        },
        magazine_size = 200,
        subgroup ="ATF-ammo",
        order ="a[20mm-he]",
        stack_size = 100
    }
})

-- ============================================================================
-- ЛОГИРОВАНИЕ ЗАГРУЗКИ
-- ============================================================================

log("[ATF-Rebalance] 20mm ammo loaded successfully (20mm, 20mm-he)")

-- ============================================================================
-- ИНТЕГРАЦИЯ С BOB'S WARFARE (опционально)
-- ============================================================================

if mods["bobwarfare"] then
    log("[ATF-Rebalance] Bob's Warfare detected - 20mm ammo compatible")
end