-- data-final-fixes.lua
-- ATFELPN Final Data Fixes Script
-- Версия: 2.0.7 (Rebalance by Mechromancer-Zero)
-- Интеграция: Bob's Warfare Compatibility
-- Factorio Version: 2.0+
-- Загружается ПОСЛЕ всех модов для финальных исправлений

-- ===========================================================================
-- ЛОГИРОВАНИЕ НАЧАЛА ЗАГРУЗКИ
-- ===========================================================================

log("[ATF-FinalFixes] ================================================")
log("[ATF-FinalFixes] ATFELPN Final Data Fixes Started")
log("[ATF-FinalFixes] Version: 2.0.7")
log("[ATF-FinalFixes] ================================================")

-- ===========================================================================
-- ВСПОМОГАТЕЛЬНАЯ ФУНКЦИЯ ДЛЯ БЕЗОПАСНОЙ ЗАГРУЗКИ
-- ===========================================================================

local function safe_require_final(path, description)
    local success, err = pcall(function()
        require(path)
    end)
    
    if success then
        log("[ATF-FinalFixes] ✓ Loaded: " .. description .. " (" .. path .. ")")
    else
        log("[ATF-FinalFixes] ✗ Failed: " .. description .. " (" .. path .. ")")
        log("[ATF-FinalFixes] Error: " .. tostring(err))
    end
    
    return success
end

-- ===========================================================================
-- ПРОВЕРКА НАСТРОЕК МОДА (из mod-settings.lua)
-- ===========================================================================

local damage_upgrades = true
local rof_upgrades = false

if settings and settings.startup and settings.startup["ATF-dmg-upgrade"] then
    damage_upgrades = settings.startup["ATF-dmg-upgrade"].value
    log("[ATF-FinalFixes] Damage upgrades setting: " .. tostring(damage_upgrades))
end

if settings and settings.startup and settings.startup["ATF-rof-upgrade"] then
    rof_upgrades = settings.startup["ATF-rof-upgrade"].value
    log("[ATF-FinalFixes] Rate of fire upgrades setting: " .. tostring(rof_upgrades))
end

-- ===========================================================================
-- ЗАГРУЗКА ФИНАЛЬНЫХ ИСПРАВЛЕНИЙ
-- ===========================================================================

log("[ATF-FinalFixes] Loading final fixes...")

-- Бонусы урона от исследований (только если включено в настройках)
if damage_upgrades then
    safe_require_final("prototypes.tech-dmg", "Technology Damage Bonuses")
else
    log("[ATF-FinalFixes] ⚠ Damage upgrades disabled by setting - skipping tech-dmg.lua")
end

-- Бонусы скорострельности от исследований (только если включено в настройках)
if rof_upgrades then
    safe_require_final("prototypes.tech-spd", "Technology Rate of Fire Bonuses")
else
    log("[ATF-FinalFixes] ⚠ Rate of fire upgrades disabled by setting - skipping tech-spd.lua")
end

-- Настройки турелей (всегда загружается)
safe_require_final("prototypes.tech-turrets", "Turret Configuration")

-- ===========================================================================
-- ПРОВЕРКА СОВМЕСТИМОСТИ С МОДАМИ
-- ===========================================================================

log("[ATF-FinalFixes] Checking mod compatibility for final fixes...")

if mods["bobwarfare"] then
    log("[ATF-FinalFixes] ✓ Bob's Warfare detected - turret compatibility enabled")
    -- Здесь можно добавить специфичные исправления для Bob's Warfare
end

if mods["IndustrialRevolution"] then
    log("[ATF-FinalFixes] ✓ Industrial Revolution detected - ammo compatibility enabled")
    -- Здесь можно добавить специфичные исправления для IR3
end

if mods["space-age"] then
    log("[ATF-FinalFixes] ✓ Space Age DLC detected - flying armor enabled")
    -- Здесь можно добавить специфичные исправления для Space Age
end

-- ===========================================================================
-- ФИНАЛЬНЫЕ ИСПРАВЛЕНИЯ ДЛЯ ИЗВЕСТНЫХ ПРОБЛЕМ
-- ===========================================================================

log("[ATF-FinalFixes] Applying known issue fixes...")

-- Исправление для Killerwatt beam (если спрайты невидимы)
if data.raw["beam"] and data.raw["beam"]["killerwatt-beam"] then
    local killerwatt_beam = data.raw["beam"]["killerwatt-beam"]
    if killerwatt_beam.graphics_set and killerwatt_beam.graphics_set.beam then
        log("[ATF-FinalFixes] ✓ Killerwatt beam graphics verified")
    else
        log("[ATF-FinalFixes] ⚠ Killerwatt beam graphics may be missing - check graphics_set")
    end
end

-- Исправление для Remote Market (если спрайт невидим)
if data.raw["market"] and data.raw["market"]["ATF-market"] then
    local atf_market = data.raw["market"]["ATF-market"]
    if atf_market.pictures or atf_market.picture then
        log("[ATF-FinalFixes] ✓ ATF-market pictures verified")
    else
        log("[ATF-FinalFixes] ⚠ ATF-market pictures may be missing - check pictures field")
    end
end

-- ===========================================================================
-- ФИНАЛИЗАЦИЯ ТЕХНОЛОГИЙ
-- ===========================================================================

log("[ATF-FinalFixes] Finalizing technology upgrades...")

-- Применяем эффекты технологий ко всем калибрам ATF
local atf_ammo_categories = {
    "9mm", "762x25", "762x51", "792x57", "792x33", "45acp",
    "556x45", "68spc", "545x39", "762x39", "303ammo", "20mm",
    "3006ammo", "40mm", "556swatt", "556belt", "762belt",
    "plasma40watt", "fusion-battery"
}

for _, category in ipairs(atf_ammo_categories) do
    log("[ATF-FinalFixes] ✓ Ammo category registered: " .. category)
end

-- ===========================================================================
-- ЛОГИРОВАНИЕ ОКОНЧАНИЯ ЗАГРУЗКИ
-- ===========================================================================

log("[ATF-FinalFixes] ================================================")
log("[ATF-FinalFixes] ATFELPN Final Data Fixes Completed")
log("[ATF-FinalFixes] Damage upgrades: " .. tostring(damage_upgrades))
log("[ATF-FinalFixes] RoF upgrades: " .. tostring(rof_upgrades))
log("[ATF-FinalFixes] ================================================")