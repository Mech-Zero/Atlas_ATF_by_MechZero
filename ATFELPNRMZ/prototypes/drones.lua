-- drones.lua
-- Загрузка прототипов дронов ATF
-- Версия: 1.1 (Rebalance by Mechromancer-Zero)
-- Интеграция: Bob's Warfare Compatibility

-- ============================================================================
-- ЗАГРУЗКА ПРОТОТИПОВ ДРОНОВ
-- ============================================================================

-- RCXD - Радиоуправляемый взрывной дрон
-- Требует: prototypes/entities/drones/rcxd.lua
require("prototypes.entities.drones.rcxd")

-- RCND - Радиоуправляемый ядерный дрон (улучшенная версия RCXD)
-- Требует: prototypes/items/entities/drones.lua
require("prototypes.items.entities.drones")

-- ============================================================================
-- ИНТЕГРАЦИЯ С BOB'S WARFARE (опционально)
-- ============================================================================

if mods["bobwarfare"] then
    -- Bob's Warfare имеет свои настройки для боевых дронов
    -- Можно добавить дополнительную логику при необходимости
    
    -- Пример: изменение стоимости рецептов дронов
    if data.raw.recipe["ATF-rcxd"] then
        log("[ATF-Rebalance] Bob's Warfare detected - drone recipes loaded")
    end
    
    if data.raw.recipe["ATF-rcnd"] then
        log("[ATF-Rebalance] RCND nuclear drone recipe loaded")
    end
end

-- ============================================================================
-- ЛОГИРОВАНИЕ ЗАГРУЗКИ
-- ============================================================================

log("[ATF-Rebalance] Drone prototypes loaded successfully")