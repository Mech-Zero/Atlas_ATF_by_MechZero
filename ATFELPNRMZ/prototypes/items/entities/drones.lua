-- drones.lua
-- Предметы дронов-камикадзе ATF (RCXD/RCND)
-- Версия: 1.1 (Rebalance by Mechromancer-Zero)
-- Интеграция: Bob's Warfare Compatibility

-- ============================================================================
-- ПРОВЕРКА СУЩЕСТВОВАНИЯ СУЩНОСТЕЙ
-- ============================================================================

local function validate_place_result(entity_name)
    if data.raw["ammo-turret"][entity_name] or 
       data.raw["unit"][entity_name] or 
       data.raw["character"][entity_name] then
        return true
    end
    log("[ATF-Rebalance] Warning: place_result entity '" .. entity_name .."' not found!")
    return false
end

-- ============================================================================
-- ПРЕДМЕТЫ ДРОНОВ
-- ============================================================================

data:extend({
    -- =========================================================================
    -- ATF-rcxd: Дрон-камикадзе (взрывной)
    -- =========================================================================
    {
        type ="item",
        name ="ATF-rcxd",
        icon ="__Atlas_ATF__/graphics/tech/rcxd.png",
        icon_size = 256,
        icon_mipmaps = 4,
        flags = {"item"},
        subgroup ="ATF-drones",
        order ="a[drones]-a[rcxd]",
        place_result ="ATF-rcxd",
        stack_size = 50
    },

    -- =========================================================================
    -- ATF-rcnd: Дрон-камикадзе (ядерный)
    -- =========================================================================
    {
        type ="item",
        name ="ATF-rcnd",
        icon ="__Atlas_ATF__/graphics/tech/rcnd.png",
        icon_size = 256,
        icon_mipmaps = 4,
        flags = {"item"},
        subgroup ="ATF-drones",
        order ="a[drones]-b[rcnd]",
        place_result ="ATF-rcnd",
        stack_size = 50
    }
})

-- ============================================================================
-- ПРОВЕРКА СУЩЕСТВОВАНИЯ СУЩНОСТЕЙ (после data:data:extend)
-- ============================================================================

validate_place_result("ATF-rcxd")
validate_place_result("ATF-rcnd")

-- ============================================================================
-- ЛОГИРОВАНИЕ ЗАГРУЗКИ
-- ============================================================================

log("[ATF-Rebalance] Drone items loaded successfully (ATF-rcxd, ATF-rcnd)")

-- ============================================================================
-- ИНТЕГРАЦИЯ С BOB'S WARFARE (опционально)
-- ============================================================================

if mods["bobwarfare"] then
    log("[ATF-Rebalance] Bob's Warfare detected - drones compatible")
end