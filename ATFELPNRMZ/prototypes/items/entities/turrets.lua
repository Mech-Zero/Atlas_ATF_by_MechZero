-- turrets.lua
-- Предметы турелей ATF для размещения
-- Версия: 1.1 (Rebalance by Mechromancer-Zero)
-- Интеграция: Bob's Warfare Compatibility

-- ============================================================================
-- ПРОВЕРКА СУЩЕСТВОВАНИЯ СУЩНОСТЕЙ
-- ============================================================================

local function validate_place_result(entity_name)
    if data.raw["ammo-turret"][entity_name] or 
       data.raw["electric-turret"][entity_name] or 
       data.raw["land-mine"][entity_name] then
        return true
    end
    log("[ATF-Rebalance] Warning: place_result entity '" .. entity_name .."' not found!")
    return false
end

-- ============================================================================
-- ПРЕДМЕТЫ ТУРЕЛЕЙ
-- ============================================================================

extend({
    -- =========================================================================
    -- ATF-swatt-turret: Электрическая турель (SWATT)
    -- =========================================================================
    {
        type ="item",
        name ="ATF-swatt-turret",
        icon ="__base__/graphics/icons/laser-turret.png",
        icon_size = 64,
        icon_mipmaps = 4,
        flags = {"item"},
        subgroup ="ATF-turrets",
        order ="b[turret]-a[swatt-turret]",
        place_result ="ATF-swatt-turret",
        stack_size = 50
    },

    -- =========================================================================
    -- ATF-m25-turret: Плазменная турель (M25)
    -- =========================================================================
    {
        type ="item",
        name ="ATF-m25-turret",
        icon ="__base__/graphics/icons/laser-turret.png",
        icon_size = 64,
        icon_mipmaps = 4,
        flags = {"item"},
        subgroup ="ATF-turrets",
        order ="b[turret]-b[m25-turret]",
        place_result ="ATF-m25-turret",
        stack_size = 50
    },

    -- =========================================================================
    -- ATF-grenade-turret: Гранатомётная турель (40mm HE)
    -- =========================================================================
    {
        type ="item",
        name ="ATF-grenade-turret",
        icon ="__Atlas_ATF__/graphics/items/grenade-turret.png",
        icon_size = 128,
        icon_mipmaps = 4,
        flags = {"item"},
        subgroup ="ATF-turrets",
        order ="b[turret]-c[grenade-turret]",
        place_result ="ATF-grenade-turret",
        stack_size = 50
    },

    -- =========================================================================
    -- ATF-grenade-turret-2: Улучшенная гранатомётная турель
    -- =========================================================================
    {
        type ="item",
        name ="ATF-grenade-turret-2",
        icon ="__Atlas_ATF__/graphics/items/grenade-turret.png",
        icon_size = 128,
        icon_mipmaps = 4,
        flags = {"item"},
        subgroup ="ATF-turrets",
        order ="b[turret]-d[grenade-turret-2]",
        place_result ="ATF-grenade-turret-2",
        stack_size = 50
    },

    -- =========================================================================
    -- ATF-gau-turret: Ротативная пушка (GAU 20mm)
    -- =========================================================================
    {
        type ="item",
        name ="ATF-gau-turret",
        icon ="__base__/graphics/icons/gun-turret.png",
        icon_size = 64,
        icon_mipmaps = 4,
        flags = {"item"},
        subgroup ="ATF-turrets",
        order ="b[turret]-e[gau-turret]",
        place_result ="ATF-gau-turret",
        stack_size = 50
    },

    -- =========================================================================
    -- ATF-rcw-turret: Лазерная турель (RCW)
    -- =========================================================================
    {
        type ="item",
        name ="ATF-rcw-turret",
        icon ="__base__/graphics/icons/laser-turret.png",
        icon_size = 64,
        icon_mipmaps = 4,
        flags = {"item"},
        subgroup ="ATF-turrets",
        order ="b[turret]-f[rcw-turret]",
        place_result ="ATF-rcw-turret",
        stack_size = 50
    }
})

-- ============================================================================
-- ПРОВЕРКА СУЩЕСТВОВАНИЯ СУЩНОСТЕЙ (после data:extend)
-- ============================================================================

validate_place_result("ATF-swatt-turret")
validate_place_result("ATF-m25-turret")
validate_place_result("ATF-grenade-turret")
validate_place_result("ATF-grenade-turret-2")
validate_place_result("ATF-gau-turret")
validate_place_result("ATF-rcw-turret")

-- ============================================================================
-- ЛОГИРОВАНИЕ ЗАГРУЗКИ
-- ============================================================================

log("[ATF-Rebalance] Turret items loaded successfully (6 turrets registered)")

-- ============================================================================
-- ИНТЕГРАЦИЯ С BOB'S WARFARE (опционально)
-- ============================================================================

if mods["bobwarfare"] then
    log("[ATF-Rebalance] Bob's Warfare detected - turret items compatible")
end