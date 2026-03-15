-- market.lua
-- Предмет торгового терминала ATF (ATF-market)
-- Версия: 1.1 (Rebalance by Mechromancer-Zero)
-- Интеграция: Bob's Warfare Compatibility

-- ============================================================================
-- ПРОВЕРКА СУЩЕСТВОВАНИЯ СУЩНОСТИ
-- ============================================================================

local function validate_place_result(entity_name)
    if data.raw["assembling-machine"][entity_name] or 
       data.raw["furnace"][entity_name] then
        return true
    end
    log("[ATF-Rebalance] Warning: place_result entity '" .. entity_name .."' not found!")
    return false
end

-- ============================================================================
-- ПРЕДМЕТ ТОРГОВОГО ТЕРМИНАЛА
-- ============================================================================

data:extend({
    -- =========================================================================
    -- ATF-market: Торговый терминал (открытие торговли за ATF-cash)
    -- =========================================================================
    {
        type ="item",
        name ="ATF-market",
        icon ="__Atlas_ATF__/graphics/entities/market.png",
        icon_size = 256,
        icon_mipmaps = 4,
        flags = {"item"},
        subgroup ="ATF-market",
        order ="a[ATF-market]",
        place_result ="ATF-market",
        stack_size = 50
    }
})

-- ============================================================================
-- ПРОВЕРКА СУЩЕСТВОВАНИЯ СУЩНОСТИ (после data:extend)
-- ============================================================================

validate_place_result("ATF-market")

-- ============================================================================
-- ЛОГИРОВАНИЕ ЗАГРУЗКИ
-- ============================================================================

log("[ATF-Rebalance] Market item loaded successfully (ATF-market)")

-- ============================================================================
-- ИНТЕГРАЦИЯ С BOB'S WARFARE (опционально)
-- ============================================================================

if mods["bobwarfare"] then
    log("[ATF-Rebalance] Bob's Warfare detected - market item compatible")
end