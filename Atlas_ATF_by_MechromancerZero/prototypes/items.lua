-- items.lua
-- Главный загрузчик предметов ATF Rebalance
-- Версия: 1.1 (Rebalance by Mechromancer-Zero)
-- Интеграция: Bob's Warfare + Bob's Metals Compatibility

-- ============================================================================
-- КОМПОНЕНТЫ ОРУЖИЯ
-- ============================================================================

require("items.comp.components")
require("items.comp.components-2")
require("items.comp.res")

-- ============================================================================
-- БОЕПРИПАСЫ
-- ============================================================================

-- Пистолетные патроны
require("items.ammunition.9mm")
require("items.ammunition.45acp")
require("items.ammunition.762x25")

-- Винтовочные патроны
require("items.ammunition.556x45")
require("items.ammunition.762x39")
require("items.ammunition.762x51")
require("items.ammunition.545x39")
require("items.ammunition.3006")
require("items.ammunition.303")
require("items.ammunition.68spc")
require("items.ammunition.792x33")
require("items.ammunition.792x57")

-- Тяжёлые калибры
require("items.ammunition.20mm")
require("items.ammunition.50bmg")
require("items.ammunition.40mm")

-- Дробовик
require("items.ammunition.12g")

-- Энергетические боеприпасы
require("items.ammunition.plasma40watt")
require("items.ammunition.fusion-battery")
require("items.ammunition.kf2")

-- Артиллерия
require("items.ammunition.arti")

-- ============================================================================
-- ОРУЖИЕ
-- ============================================================================

-- Пистолеты
require("items.weapons.c96")
require("items.weapons.1911")
require("items.weapons.p60")
require("items.weapons.glock")

-- Пистолеты-пулемёты
require("items.weapons.mp18")
require("items.weapons.m1928")
require("items.weapons.mp40")
require("items.weapons.ppsh")
require("items.weapons.mp5")
require("items.weapons.vector")

-- Винтовки (болтовые)
require("items.weapons.k98")
require("items.weapons.lee")
require("items.weapons.1903")

-- Винтовки (полуавтоматические)
require("items.weapons.g43")
require("items.weapons.stg44")
require("items.weapons.m14")
require("items.weapons.g3")
require("items.weapons.stg60")

-- Автоматы
require("items.weapons.akm")
require("items.weapons.ak74m")
require("items.weapons.m4a1")
require("items.weapons.hk416")
require("items.weapons.acr")

-- Пулемёты
require("items.weapons.bren")
require("items.weapons.bar")
require("items.weapons.mg42")
require("items.weapons.m1919")
require("items.weapons.m2")

-- Ротативные системы
require("items.weapons.rotators")

-- Гранатомёты
require("items.weapons.gl")

-- Энергетическое оружие
require("items.weapons.40watt")
require("items.weapons.kf2")
require("items.weapons.atlas20mm")

-- ============================================================================
-- БРОНЯ
-- ============================================================================

-- Проверка на Space Age для совместимости
if mods["space-age"] then
    require("items.armor.armor")
else
    require("items.armor.armor-nospaceage")
end

-- ============================================================================
-- ТОРГОВЛЯ И ЭКОНОМИКА
-- ============================================================================

require("items.trade.bundles")
require("items.trade.market")
require("items.trade.valuables")

-- ============================================================================
-- СУЩНОСТИ
-- ============================================================================

require("entities.market")

-- ============================================================================
-- ОТКЛЮЧЁННЫЕ МОДУЛИ (при необходимости раскомментировать)
-- ============================================================================

-- require("calibers")                    -- Калибры загружаются в custom-ammo.lua
-- require("items.armor.armor")           -- Загружается условно выше
-- require("entities.cinnabar")           -- Ресурс cinnabar (если нужен)

-- ============================================================================
-- ЛОГИРОВАНИЕ ЗАГРУЗКИ
-- ============================================================================

log("[ATF-Rebalance] items.lua loaded successfully")