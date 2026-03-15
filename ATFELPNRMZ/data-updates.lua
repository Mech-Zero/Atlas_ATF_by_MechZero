-- data-updates.lua
-- ATFELPN Data Updates Script
-- Версия: 1.0.7 (Rebalance by Mechromancer-Zero)
-- Интеграция: Bob's Warfare Compatibility
-- Factorio Version: 2.0+
-- Загружается ПОСЛЕ data.lua но ПЕРЕД data-final-fixes.lua

-- ===========================================================================
-- ЛОГИРОВАНИЕ НАЧАЛА ЗАГРУЗКИ
-- ===========================================================================

log("[ATF-Updates] ================================================")
log("[ATF-Updates] ATFELPN Data Updates Started")
log("[ATF-Updates] Version: 1.0.7")
log("[ATF-Updates] ================================================")

-- ===========================================================================
-- ВСПОМОГАТЕЛЬНАЯ ФУНКЦИЯ ДЛЯ БЕЗОПАСНОЙ МОДИФИКАЦИИ
-- ===========================================================================

local function safe_modify(prototype_type, prototype_name, field, value, description)
    if data.raw[prototype_type] and data.raw[prototype_type][prototype_name] then
        data.raw[prototype_type][prototype_name][field] = value
        log("[ATF-Updates] ✓ Modified:" .. description)
        return true
    else
        log("[ATF-Updates] ⚠ Not found:" .. prototype_type .." /" .. prototype_name)
        return false
    end
end

-- ===========================================================================
-- ИСПРАВЛЕНИЕ ИЗВЕСТНЫХ ПРОБЛЕМ
-- ===========================================================================

log("[ATF-Updates] Applying known issue fixes...")

-- -------------------------------------------------------------------------
-- Исправление для Killerwatt beam (невидимые спрайты)
-- -------------------------------------------------------------------------
if data.raw["beam"] and data.raw["beam"]["killerwatt-beam"] then
    local killerwatt_beam = data.raw["beam"]["killerwatt-beam"]
    
    if not killerwatt_beam.graphics_set then
        killerwatt_beam.graphics_set = {
            beam = {
                filename ="__ATFELPNRMZ__/graphics/projectiles/beam/killerwatt-beam.png",
                width = 8,
                height = 128,
                priority ="high",
                scale = 1
            }
        }
        log("[ATF-Updates] ✓ Killerwatt beam graphics_set fixed")
    end
    
    if not killerwatt_beam.width then
        killerwatt_beam.width = 0.5
    end
    if not killerwatt_beam.damage_interval then
        killerwatt_beam.damage_interval = 1
    end
    
    log("[ATF-Updates] ✓ Killerwatt beam properties verified")
else
    log("[ATF-Updates] ⚠ Killerwatt beam not found - check prototypes/entities.lua")
end

-- -------------------------------------------------------------------------
-- Исправление для Remote Market (невидимый спрайт и торговля)
-- -------------------------------------------------------------------------
if data.raw["market"] and data.raw["market"]["ATF-market"] then
    local atf_market = data.raw["market"]["ATF-market"]
    
    if not atf_market.pictures and not atf_market.picture then
        atf_market.pictures = {
            filename ="__ATFELPNRMZ__/graphics/entity/market/atf-market.png",
            width = 128,
            height = 128,
            direction_count = 4,
            shift = {0, 0}
        }
        log("[ATF-Updates] ✓ ATF-market pictures fixed")
    end
    
    if not atf_market.buying_enabled then
        atf_market.buying_enabled = true
    end
    if not atf_market.selling_enabled then
        atf_market.selling_enabled = true
    end
    
    log("[ATF-Updates] ✓ ATF-market trading properties verified")
else
    log("[ATF-Updates] ⚠ ATF-market not found - check prototypes/entities.lua")
end

-- ===========================================================================
-- СОВМЕСТИМОСТЬ С МОДАМИ
-- ===========================================================================

log("[ATF-Updates] Applying mod compatibility fixes...")

if mods["bobwarfare"] then
    log("[ATF-Updates] ✓ Bob's Warfare detected")
end

if mods["IndustrialRevolution"] then
    log("[ATF-Updates] ✓ Industrial Revolution 3 detected")
end

if mods["space-age"] then
    log("[ATF-Updates] ✓ Space Age DLC detected")
    
    for _, armor_name in ipairs({"ATF-tesla-armor","ATF-hellfire-armor","ATF-eliminator-armor"}) do
        if data.raw["armor"] and data.raw["armor"][armor_name] then
            data.raw["armor"][armor_name].allow_flight = true
            log("[ATF-Updates] ✓" .. armor_name .." flight enabled for Space Age")
        end
    end
end

-- ===========================================================================
-- БАЛАНСИРОВКА И ИСПРАВЛЕНИЯ ПРОТОТИПОВ
-- ===========================================================================

log("[ATF-Updates] Applying balance adjustments...")

if data.raw["gun"] and data.raw["gun"]["m79"] then
    data.raw["gun"]["m79"].attack_parameters.cooldown = 60
    log("[ATF-Updates] ✓ M79 cooldown adjusted")
end

if data.raw["gun"] and data.raw["gun"]["m32"] then
    data.raw["gun"]["m32"].attack_parameters.cooldown = 60
    log("[ATF-Updates] ✓ M32 cooldown adjusted")
end

-- ===========================================================================
-- ПРОВЕРКА КАТЕГОРИЙ БОЕПРИПАСОВ
-- ===========================================================================

log("[ATF-Updates] Verifying ammo categories...")

local atf_ammo_categories = {
   "9mm","762x25","762x51","792x57","792x33","45acp",
   "556x45","68spc","545x39","762x39","303ammo","20mm",
   "3006ammo","40mm","556swatt","556belt","762belt",
   "plasma40watt","fusion-battery"
}

for _, category_name in ipairs(atf_ammo_categories) do
    if data.raw["ammo-category"] and data.raw["ammo-category"][category_name] then
        log("[ATF-Updates] ✓ Ammo category exists:" .. category_name)
    else
        log("[ATF-Updates] ⚠ Ammo category missing:" .. category_name)
    end
end

-- ===========================================================================
-- ПРОВЕРКА ТУРЕЛЕЙ (360° покрытие)
-- ===========================================================================

log("[ATF-Updates] Verifying turret 360° coverage...")

local turrets_360 = {"ATF-swatt-turret","ATF-m25-turret","ATF-rcw-turret"}

for _, turret_name in ipairs(turrets_360) do
    if data.raw["turret"] and data.raw["turret"][turret_name] then
        log("[ATF-Updates] ✓" .. turret_name .." 360° coverage verified")
    else
        log("[ATF-Updates] ⚠ Turret not found:" .. turret_name)
    end
end

-- ===========================================================================
-- ЛОГИРОВАНИЕ ОКОНЧАНИЯ ЗАГРУЗКИ
-- ===========================================================================

log("[ATF-Updates] ================================================")
log("[ATF-Updates] ATFELPN Data Updates Completed")
log("[ATF-Updates] ================================================")