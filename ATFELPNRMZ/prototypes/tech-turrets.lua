-- tech-turrets.lua
-- Интеграция калибров ATF с турелями
-- Версия: 1.1 (Rebalance by Mechromancer-Zero)
-- Интеграция: Bob's Warfare Compatibility

-- ============================================================================
-- ПРОВЕРКА СУЩЕСТВОВАНИЯ ТАБЛИЦ КАЛИБРОВ
-- ============================================================================

if not ATF_calibers_ammoturrets then
    log("[ATF-Rebalance] Warning: ATF_calibers_ammoturrets not found - creating from ATF_calibers")
    ATF_calibers_ammoturrets = ATF_deepcopy(ATF_calibers or {})
    -- Исключаем тяжёлые калибры из турелей
    local tur = {"20mm", "40mm"}
    if ATF_array_sub then
        ATF_array_sub(tur, ATF_calibers_ammoturrets)
    end
end

-- ============================================================================
-- БАЗОВЫЙ СПИСОК КАТЕГОРИЙ (включаем ванильную "bullet")
-- ============================================================================

local a = {"bullet"}
for i, f in ipairs(ATF_calibers_ammoturrets) do
    table.insert(a, f)
end

log("[ATF-Rebalance] Adding " .. #a .. " ammo categories to turrets")

-- ============================================================================
-- ИНТЕГРАЦИЯ С ВаниЛЬНЫМИ ТУРЕЛЯМИ
-- ============================================================================

local tur = data.raw["ammo-turret"]
if tur then
    local count = 0
    for i, v in pairs(tur) do
        -- Проверка существования attack_parameters
        if v.attack_parameters then
            -- Проверяем, использует ли турель категорию "bullet"
            if v.attack_parameters.ammo_category == "bullet" then
                -- Создаём таблицу категорий если не существует
                if v.attack_parameters.ammo_categories == nil then
                    v.attack_parameters.ammo_categories = {}
                end
                
                -- Добавляем все калибры ATF
                for e, g in ipairs(a) do
                    -- Проверка на дубликаты
                    local exists = false
                    for _, cat in pairs(v.attack_parameters.ammo_categories) do
                        if cat == g then
                            exists = true
                            break
                        end
                    end
                    if not exists then
                        table.insert(v.attack_parameters.ammo_categories, g)
                        count = count + 1
                    end
                end
                
                log("[ATF-Rebalance] Updated turret: " .. v.name .. " (+ " .. count .. " categories)")
            end
        end
    end
    log("[ATF-Rebalance] Ammo-turret integration complete")
else
    log("[ATF-Rebalance] Warning: No ammo-turret prototypes found")
end

-- ============================================================================
-- ИНТЕГРАЦИЯ С BOB'S WARFARE ТУРЕЛЯМИ
-- ============================================================================

if mods["bobwarfare"] then
    log("[ATF-Rebalance] Bob's Warfare detected - applying turret compatibility")
    
    -- Bob's Warfare имеет собственные турели с разными категориями
    -- Добавляем калибры ATF к турелям Bob's
    
    local bob_turrets = {
        "bob-machine-gun-turret",
        "bob-laser-turret",
        "bob-flamethrower-turret",
        "bob-artillery-turret"
    }
    
    for _, turret_name in pairs(bob_turrets) do
        local turret = data.raw["ammo-turret"][turret_name] or 
                       data.raw["electric-turret"][turret_name]
        if turret and turret.attack_parameters then
            if turret.attack_parameters.ammo_categories == nil then
                turret.attack_parameters.ammo_categories = {}
            end
            
            for e, g in ipairs(a) do
                local exists = false
                for _, cat in pairs(turret.attack_parameters.ammo_categories) do
                    if cat == g then
                        exists = true
                        break
                    end
                end
                if not exists then
                    table.insert(turret.attack_parameters.ammo_categories, g)
                end
            end
            
            log("[ATF-Rebalance] Updated Bob's turret: " .. turret_name)
        end
    end
    
    log("[ATF-Rebalance] Bob's Warfare turret integration complete")
end

-- ============================================================================
-- ИНТЕГРАЦИЯ С ELECTRIC-TURRET (Лазерные турели)
-- ============================================================================

local electric_tur = data.raw["electric-turret"]
if electric_tur then
    for i, v in pairs(electric_tur) do
        if v.attack_parameters and v.attack_parameters.ammo_category then
            -- Лазерные турели используют energy категорию
            -- Можно добавить поддержку энергетических калибров ATF
            log("[ATF-Rebalance] Found electric turret: " .. v.name)
        end
    end
end

-- ============================================================================
-- ЗАВЕРШЕНИЕ
-- ============================================================================

log("[ATF-Rebalance] tech-turrets.lua loaded successfully")