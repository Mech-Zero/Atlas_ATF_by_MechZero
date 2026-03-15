-- fusion-battery.lua
-- Ядерные батареи ATF (ATF-fusion-battery) для энергетического оружия
-- Версия: 1.1 (Rebalance by Mechromancer-Zero)
-- Интеграция: Bob's Warfare Compatibility

extend({
    -- =========================================================================
    -- ATF-fusion-battery: Ядерная батарея (лазерное оружие поздней игры)
    -- =========================================================================
    {
        type = "ammo",
        name = "ATF-fusion-battery",
        icon = "__Atlas_ATF__/graphics/ammo/fusion-battery.png",
        icon_size = 128,
        icon_mipmaps = 4,
        flags = {"item"},
        ammo_category = "fusion-battery",
        ammo_type = {
            category = "fusion-battery",
            target_type = "entity",
            clamp_position = false,
            action = {
                type = "direct",
                action_delivery = {
                    type = "projectile",
                    projectile = "fusion-laser",
                    starting_speed = 4,
                    starting_speed_deviation = 0,
                    direction_deviation = 0,
                    range_deviation = 0,
                    max_range = 30,
                    source_effects = {
                        type = "create-explosion",
                        entity_name = "explosion-gunshot"
                    }
                }
            }
        },
        magazine_size = 50,
        subgroup = "ATF-ammo",
        order = "g[laser]-a[fusion]",
        stack_size = 100
    }
})

-- ============================================================================
-- ЛОГИРОВАНИЕ ЗАГРУЗКИ
-- ============================================================================

log("[ATF-Rebalance] ATF-fusion-battery loaded successfully")

-- ============================================================================
-- ИНТЕГРАЦИЯ С BOB'S WARFARE (опционально)
-- ============================================================================

if mods["bobwarfare"] then
    log("[ATF-Rebalance] Bob's Warfare detected - fusion-battery compatible")
end