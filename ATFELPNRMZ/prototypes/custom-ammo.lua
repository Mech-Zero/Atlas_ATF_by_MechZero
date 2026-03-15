-- custom-ammo.lua
-- Определение категорий боеприпасов и загрузка снарядов ATF
-- Версия: 1.1 (Rebalance by Mechromancer-Zero)
-- Интеграция: Bob's Warfare Compatibility

-- ============================================================================
-- СПИСКИ КАЛИБРОВ (все строковые литералы очищены от пробелов)
-- ============================================================================

-- Кинетические боеприпасы
ATF_calibers = {
    "9mm",
    "45acp",
    "68spc",
    "303ammo",
    "556x45",
    "545x39",
    "762x25",
    "762x39",
    "762x51",
    "792x33",
    "792x57",
    "3006ammo",
    "20mm",
    "50bmg",
    "556belt",
    "762belt"
}

-- Энергетические боеприпасы
ATF_calibers_energy = {
    "556-swatt",
    "plasma40watt",
    "fusion-battery",
    "killerwatt",
    "helios"
}

-- Взрывчатые боеприпасы
ATF_calibers_explosives = {
    "40mm"
}

-- Калибры для турелей (исключаем артиллерию и тяжёлые калибры)
ATF_calibers_ammoturrets = ATF_deepcopy(ATF_calibers)
local tur = {"20mm", "40mm"}
ATF_array_sub(tur, ATF_calibers_ammoturrets)

-- ============================================================================
-- РЕГИСТРАЦИЯ КАТЕГОРИЙ БОЕПРИПАСОВ
-- ============================================================================

-- Кинетические категории
for i, v in pairs(ATF_calibers) do
    data:extend({
        {
            type = "ammo-category",
            name = v
        }
    })
end

-- Энергетические категории
for i, v in pairs(ATF_calibers_energy) do
    data:extend({
        {
            type = "ammo-category",
            name = v
        }
    })
end

-- Взрывчатые категории
for i, v in pairs(ATF_calibers_explosives) do
    data:extend({
        {
            type = "ammo-category",
            name = v
        }
    })
end

-- ============================================================================
-- ЗАГРУЗКА СНАРЯДОВ (все пути очищены от пробелов)
-- ============================================================================

require("projectiles.12g")
require("projectiles.40mm")
require("projectiles.556-swatt")
require("projectiles.556belt")
require("projectiles.762belt")
require("projectiles.20mm")
require("projectiles.40watt")
require("projectiles.fusion-laser")
require("projectiles.arti")
require("projectiles.rcxd")
require("projectiles.kf2")
require("projectiles.tesla")

-- ============================================================================
-- ИНТЕГРАЦИЯ С BOB'S WARFARE (опционально)
-- ============================================================================

if mods["bobwarfare"] then
    log("[ATF-Rebalance] Bob's Warfare detected - ammo categories registered")
end

log("[ATF-Rebalance] " .. #ATF_calibers .. " kinetic ammo categories registered")
log("[ATF-Rebalance] " .. #ATF_calibers_energy .. " energy ammo categories registered")
log("[ATF-Rebalance] " .. #ATF_calibers_explosives .. " explosive ammo categories registered")