-- data.lua
-- ATFELPN Main Data Loading Script
-- Версия: 1.0.7 (Rebalance by Mechromancer-Zero)
-- Интеграция: Bob's Warfare Compatibility
-- Factorio Version: 2.0+

-- ===========================================================================
-- ЛОГИРОВАНИЕ НАЧАЛА ЗАГРУЗКИ
-- ===========================================================================

log("[ATF-Data] ================================================")
log("[ATF-Data] ATFELPN Mod Data Loading Started")
log("[ATF-Data] Version: 1.0.7")
log("[ATF-Data] Factorio Version: 2.0+")
log("[ATF-Data] ================================================")

-- ===========================================================================
-- ВСПОМОГАТЕЛЬНАЯ ФУНКЦИЯ ДЛЯ БЕЗОПАСНОЙ ЗАГРУЗКИ
-- ===========================================================================

local function safe_require(path, description)
    local success, err = pcall(function()
        require(path)
    end)
    
    if success then
        log("[ATF-Data] ✓ Loaded:" .. description .." (" .. path ..")")
    else
        log("[ATF-Data] ✗ Failed:" .. description .." (" .. path ..")")
        log("[ATF-Data] Error:" .. tostring(err))
    end
    
    return success
end

-- ===========================================================================
-- ОСНОВНЫЕ ПРОТОТИПЫ (Обязательные)
-- ===========================================================================

log("[ATF-Data] Loading core prototypes...")
require("prototypes.grps")
require("prototypes.functions")
require("prototypes.items")
require("prototypes.custom-ammo")
require("prototypes.turrets")
require("prototypes.entities.effects")
require("prototypes.recipes.ammo")
require("prototypes.recipes.ammo-2")
require("prototypes.recipes.armor")
require("prototypes.recipes.weapons-1")
require("prototypes.recipes.weapons-2")
require("prototypes.recipes.components")
require("prototypes.recipes.components-2")
require("prototypes.recipes.drone-recipes")
require("prototypes.recipes.turret-recipes")
require("prototypes.recipes.bundles")
require("prototypes.recipes.selling")
require("prototypes.recipes.buying")
require("prototypes.recipes.market")
require("prototypes.drones")
require("prototypes.autoplace-controls")
require("prototypes.tech")
-- safe_require("prototypes.damage-types","Damage Types") -- Отключено автором
safe_require("prototypes.grps","Item Groups")
safe_require("prototypes.functions","Helper Functions")
safe_require("prototypes.items","Items")
safe_require("prototypes.custom-ammo","Custom Ammo Categories")
safe_require("prototypes.turrets","Turrets")
safe_require("prototypes.entities.effects","Entity Effects")

-- ===========================================================================
-- РЕЦЕПТЫ (Обязательные)
-- ===========================================================================

log("[ATF-Data] Loading recipes...")

safe_require("prototypes.recipes.ammo","Ammo Recipes (Part 1)")
safe_require("prototypes.recipes.ammo-2","Ammo Recipes (Part 2)")
safe_require("prototypes.recipes.armor","Armor Recipes")
safe_require("prototypes.recipes.weapons-1","Weapon Recipes (Part 1)")
safe_require("prototypes.recipes.weapons-2","Weapon Recipes (Part 2)")
safe_require("prototypes.recipes.components","Component Recipes (Part 1)")
safe_require("prototypes.recipes.components-2","Component Recipes (Part 2)")
safe_require("prototypes.recipes.drone-recipes","Drone Recipes")
safe_require("prototypes.recipes.turret-recipes","Turret Recipes")
safe_require("prototypes.recipes.bundles","Bundle Box Recipes")
safe_require("prototypes.recipes.selling","Selling Recipes")
safe_require("prototypes.recipes.buying","Buying Recipes")
safe_require("prototypes.recipes.market","Market Recipes")

-- safe_require("prototypes.recipe-override","Recipe Overrides") -- Отключено автором

-- ===========================================================================
-- СУЩНОСТИ И МИР
-- ===========================================================================

log("[ATF-Data] Loading entities and world...")

safe_require("prototypes.drones","Drones")
safe_require("prototypes.autoplace-controls","Autoplace Controls")
safe_require("prototypes.tech","Technologies")

-- ===========================================================================
-- ОПЦИОНАЛЬНЫЕ ФАЙЛЫ (Отключено автором)
-- ===========================================================================

log("[ATF-Data] Optional files (disabled by author)...")

-- safe_require("prototypes.allow_productivity","Productivity Module Support")
-- safe_require("prototypes.achievements","Achievements")
-- safe_require("prototypes.armor-grid","Armor Grid")
-- safe_require("prototypes.ammo-category","Ammo Category Definitions")

-- ===========================================================================
-- ПРОВЕРКА СОВМЕСТИМОСТИ С МОДАМИ
-- ===========================================================================

log("[ATF-Data] Checking mod compatibility...")

if mods["bobwarfare"] then
    log("[ATF-Data] ✓ Bob's Warfare detected - compatibility enabled")
end

if mods["bobplates"] then
    log("[ATF-Data] ✓ Bob's Plates detected - using gold-ore")
end

if mods["bobrevamp"] then
    log("[ATF-Data] ✓ Bob's Revamp detected - using crushed-geode")
end

if mods["IndustrialRevolution"] then
    log("[ATF-Data] ✓ Industrial Revolution detected - compatibility enabled")
end

if mods["space-age"] then
    log("[ATF-Data] ✓ Space Age DLC detected - flying armor enabled")
end

-- ===========================================================================
-- ЛОГИРОВАНИЕ ОКОНЧАНИЯ ЗАГРУЗКИ
-- ===========================================================================

log("[ATF-Data] ================================================")
log("[ATF-Data] ATFELPN Mod Data Loading Completed")
log("[ATF-Data] ================================================")