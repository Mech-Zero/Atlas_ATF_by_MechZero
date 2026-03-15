-- kf2.lua
-- Патроны энергетического оружия (killerwattmag, heliosmag) для ATF Rebalance
-- Версия: 1.1 (Rebalance by Mechromancer-Zero)
-- Интеграция: Bob's Warfare Compatibility

extend({
    -- =========================================================================
    -- killerwattmag: Батарея Killer Watt (лучевое оружие)
    -- =========================================================================
    {
        type = "ammo",
        name = "killerwattmag",
        icon = "__Atlas_ATF__/graphics/ammo/killerwattmag.png",
        icon_size = 128,
        icon_mipmaps = 4,
        flags = {"item"},
        ammo_category = "killerwatt",
        ammo_type = {
            category = "killerwatt",
            target_type = "entity",
            clamp_position = false,
            action = {
                type = "direct",
                action_delivery = {
                    type = "beam",
                    beam = "killerwatt-beam",
                    max_length = 30,
                    duration = 20,
                    source_offset = {0.15, -0.5},
                    source_effects = {
                        type = "create-explosion",
                        entity_name = "explosion-gunshot"
                    }
                }
            }
        },
        magazine_size = 200,
        subgroup = "ATF-ammo",
        order = "g[laser]-a[watt]",
        stack_size = 100
    },

    -- =========================================================================
    -- heliosmag: Батарея Helios (плазменный снаряд)
    -- =========================================================================
    {
        type = "ammo",
        name = "heliosmag",
        icon = "__Atlas_ATF__/graphics/ammo/heliosmag.png",
        icon_size = 128,
        icon_mipmaps = 4,
        flags = {"item"},
        ammo_category = "helios",
        ammo_type = {
            category = "helios",
            target_type = "position",
            clamp_position = false,
            action = {
                type = "direct",
                action_delivery = {
                    type = "projectile",
                    projectile = "helios-plasma",
                    starting_speed = 2,
                    starting_speed_deviation = 0,
                    direction_deviation = 0,
                    range_deviation = 0,
                    max_range = 32,
                    source_effects = {
                        type = "create-explosion",
                        entity_name = "explosion-gunshot"
                    }
                }
            }
        },
        magazine_size = 50,
        subgroup = "ATF-ammo",
        order = "g[plasma]-a[helios]",
        stack_size = 100
    }
})

-- ============================================================================
-- ЛОГИРОВАНИЕ ЗАГРУЗКИ
-- ============================================================================

log("[ATF-Rebalance] kf2 ammo loaded successfully (killerwattmag, heliosmag)")

-- ============================================================================
-- ИНТЕГРАЦИЯ С BOB'S WARFARE (опционально)
-- ============================================================================

if mods["bobwarfare"] then
    log("[ATF-Rebalance] Bob's Warfare detected - kf2 ammo compatible")
end