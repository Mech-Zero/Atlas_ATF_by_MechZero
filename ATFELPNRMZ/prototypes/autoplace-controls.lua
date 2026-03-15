-- autoplace-controls.lua
-- Настройки автоматического размещения ресурсов на карте
-- Версия: 1.1 (Rebalance by Mechromancer-Zero)
-- Интеграция: Bob's Metals Compatibility

-- ============================================================================
-- ПРОВЕРКА СУЩЕСТВОВАНИЯ РЕСУРСА
-- ============================================================================

-- Cinnabar (Киноварь) используется для производства Mercury (Ртуть)
-- Если установлен Bob's Metals, ресурс уже определён там

if not mods["bobores"] then
    -- Только если Bob's Ores НЕ установлен, создаём свой ресурс
    
    data:extend({
        {
            type ="autoplace-control",
            category ="resource",
            name ="cinnabar",
            richness = true,
            order ="b-g",
            icon ="__ATFELPNRMZ__/graphics/items/cinnabar.png",
            icon_size = 64
        }
    })
    
    log("[ATF-Rebalance] Cinnabar autoplace-control created (Bob's Ores not detected)")
else
    log("[ATF-Rebalance] Bob's Ores detected - using Bob's cinnabar resource")
end

-- ============================================================================
-- ДОПОЛНИТЕЛЬНЫЕ РЕСУРСЫ (при необходимости)
-- ============================================================================

-- Если мод добавляет другие ресурсы для размещения, раскомментировать:

--[[
if not mods["bobores"] then
    data:extend({
        {
            type ="autoplace-control",
            category ="resource",
            name ="your-resource-name",
            richness = true,
            order ="b-h"
        }
    })
end
--]]