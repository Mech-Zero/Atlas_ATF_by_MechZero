-- plasma40watt.lua
-- Плазменные батареи 40 Watt (40wattmag) для ATF Rebalance
-- Версия: 1.1 (Rebalance by Mechromancer-Zero)
-- Интеграция: Bob's Warfare Compatibility

data:extend({
    -- =========================================================================
    -- 40wattmag: Плазменная батарея (плазменное оружие)
    -- =========================================================================
    {
        type ="ammo",
        name ="40wattmag",
        icon ="__ATFELPNRMZ__/graphics/ammo/40watt.png",
        icon_size = 128,
        icon_mipmaps = 4,
        -- flags = {"item"},
        ammo_category ="plasma40watt",
        ammo_type = {
            category ="plasma40watt",
            target_type ="position",
            clamp_position = false,
            action = {
                type ="direct",
                action_delivery = {
                    type ="projectile",
                    projectile ="40wattbolt",
                    starting_speed = 2,
                    starting_speed_deviation = 0,
                    direction_deviation = 0,
                    range_deviation = 0,
                    max_range = 40,
                    source_effects = {
                        type ="create-explosion",
                        entity_name ="explosion-gunshot"
                    }
                }
            }
        },
        magazine_size = 50,
        subgroup ="ATF-ammo",
        order ="g[plasma]-a[40wattmag]",
        stack_size = 100
    }
})

-- ============================================================================
-- ЛОГИРОВАНИЕ ЗАГРУЗКИ
-- ============================================================================

log("[ATF-Rebalance] 40wattmag loaded successfully")

-- ============================================================================
-- ИНТЕГРАЦИЯ С BOB'S WARFARE (опционально)
-- ============================================================================

if mods["bobwarfare"] then
    log("[ATF-Rebalance] Bob's Warfare detected - 40wattmag compatible")
end