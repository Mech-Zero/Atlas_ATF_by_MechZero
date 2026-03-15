-- turrets.lua
-- Настройка турелей ATF Rebalance
-- Версия: 1.1 (Rebalance by Mechromancer-Zero)
-- Интеграция: Bob's Warfare Compatibility

-- ============================================================================
-- НАСТРОЙКА БАЗОВЫХ ТУРЕЛЕЙ
-- ============================================================================

-- Добавляем базовые турели в группу замены
if data.raw["ammo-turret"]["gun-turret"] then
    data.raw["ammo-turret"]["gun-turret"].fast_replaceable_group ="turret"
    log("[ATF-Rebalance] Gun turret fast_replaceable_group set")
end

if data.raw["electric-turret"]["laser-turret"] then
    data.raw["electric-turret"]["laser-turret"].fast_replaceable_group ="turret"
    log("[ATF-Rebalance] Laser turret fast_replaceable_group set")
end

-- ============================================================================
-- ЗАГРУЗКА ПРОТОТИПОВ ТУРЕЛЕЙ ATF
-- ============================================================================

-- Вспомогательная функция для безопасной загрузки
local function safe_require(path)
    local ok, err = pcall(function() require(path) end)
    if not ok then
        log("[ATF-Rebalance] Warning:" .. path .." not found")
    end
    return ok
end

-- Загрузка прототипов турелей
safe_require("prototypes.items.entities.turrets")
safe_require("prototypes.entities.turrets.grenade-turret")
safe_require("prototypes.entities.turrets.swatt-turret")
safe_require("prototypes.entities.turrets.plasma-turret")
safe_require("prototypes.entities.turrets.rcw-turret")
safe_require("prototypes.entities.turrets.gau-turret")

-- Отключённая турель (требуется дополнительная настройка)
-- safe_require("prototypes.entities.turrets.tesla_turret")

-- ============================================================================
-- ИНТЕГРАЦИЯ С BOB'S WARFARE
-- ============================================================================

if mods["bobwarfare"] then
    log("[ATF-Rebalance] Bob's Warfare detected - applying turret compatibility")
    
    -- Настройка групп замены для турелей Bob's
    local bob_turrets = {
        ["ammo-turret"] = {
           "bob-machine-gun-turret",
           "bob-flamethrower-turret",
           "bob-artillery-turret"
        },
        ["electric-turret"] = {
           "bob-laser-turret"
        }
    }
    
    for turret_type, turret_list in pairs(bob_turrets) do
        for _, turret_name in pairs(turret_list) do
            if data.raw[turret_type][turret_name] then
                data.raw[turret_type][turret_name].fast_replaceable_group ="turret"
                log("[ATF-Rebalance] Bob's turret" .. turret_name .." added to replaceable group")
            end
        end
    end
    
    log("[ATF-Rebalance] Bob's Warfare turret integration complete")
end

-- ============================================================================
-- ЛОГИРОВАНИЕ ЗАВЕРШЕНИЯ
-- ============================================================================

log("[ATF-Rebalance] turrets.lua loaded successfully")