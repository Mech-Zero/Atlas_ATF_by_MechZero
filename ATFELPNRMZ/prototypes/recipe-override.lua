-- recipe-override.lua
-- Переопределение рецептов для совместимости с модами
-- Версия: 1.1 (Rebalance by Mechromancer-Zero)
-- Интеграция: Bob's Warfare + Bob's Metals + Industrial Revolution 3

-- ============================================================================
-- BOB'S MODS INTEGRATION (Bob's Plates + Bob's Metals + Bob's Warfare)
-- ============================================================================

if mods["bobplates"] and mods["bobmetal"] then
    log("[ATF-Rebalance] Bob's Metals detected - applying recipe overrides")

    -- =========================================================================
    -- КОМПОНЕНТЫ ОРУЖИЯ
    -- =========================================================================

    -- ATF-pistol-tips: Свинец + Железо (вместо чистого железа)
    data.raw.recipe["ATF-pistol-tips"].ingredients = {
        {"lead-plate", 1},
        {"iron-plate", 1}
    }

    -- ATF-rifle-casing: Латунный сплав (вместо меди)
    data.raw.recipe["ATF-rifle-casing"].ingredients = {
        {"brass-alloy", 2}
    }

    -- ATF-rifle-bullets: Свинец + Латунь (вместо железа + меди)
    data.raw.recipe["ATF-rifle-bullets"].ingredients = {
        {"lead-plate", 2},
        {"brass-alloy", 2}
    }

    -- ATF-powerful-receiver: Инварный сплав (прочнее стали)
    data.raw.recipe["ATF-powerful-receiver"].ingredients = {
        {"invar-alloy", 2},
        {"ATF-bolts-nuts", 4}
    }

    -- ATF-hmg-receiver: Кобальт-стальной сплав (для тяжёлых пулемётов)
    data.raw.recipe["ATF-hmg-receiver"].ingredients = {
        {"cobalt-steel-alloy", 4},
        {"ATF-bolts-nuts", 6}
    }

    -- ATF-hmg-barrel: Кобальт-сталь + Пружина
    data.raw.recipe["ATF-hmg-barrel"].ingredients = {
        {"cobalt-steel-alloy", 1},
        {"ATF-recoil-spring", 2},
        {"ATF-bolts-nuts", 2}
    }

    -- ATF-heavy-casings: Пушечная бронза (Gunmetal)
    data.raw.recipe["ATF-heavy-casings"].ingredients = {
        {"gunmetal-alloy", 2}
    }

    -- ATF-heavy-bullets: Сталь + Пушечная бронза
    data.raw.recipe["ATF-heavy-bullets"].ingredients = {
        {"steel-plate", 1},
        {"gunmetal-alloy", 1}
    }

    -- ATF-buckshot: Свинец (для дроби)
    data.raw.recipe["ATF-buckshot"].ingredients = {
        {"lead-plate", 1}
    }

    -- =========================================================================
    -- ЭНЕРГЕТИЧЕСКИЕ КОМПОНЕНТЫ
    -- =========================================================================

    -- ATF-plasma-cell: Плазма-ячейка с водородом
    data.raw.recipe["ATF-plasma-cell"].ingredients = {
        {"plastic-bar", 2},
        {type = "fluid", name = "hydrogen", amount = 40},
        {"zinc-plate", 1},
        {"silver-plate", 1}
    }

    -- ATF-future-receiver: Титан + Пластик + Процессор
    data.raw.recipe["ATF-future-receiver"].ingredients = {
        {"plastic-bar", 2},
        {"titanium-plate", 2},
        {"processing-unit", 1}
    }

    -- ATF-future-barrel: Титан (лёгкий и прочный)
    data.raw.recipe["ATF-future-barrel"].ingredients = {
        {"titanium-plate", 1}
    }

    -- ATF-plasmaheater: Инвар + Медный кабель
    data.raw.recipe["ATF-plasmaheater"].ingredients = {
        {"invar-alloy", 2},
        {"copper-cable", 8}
    }

    -- =========================================================================
    -- БОЕПРИПАСЫ
    -- =========================================================================

    -- 40wattmag: Плазма-ячейка + Никель
    data.raw.recipe["40wattmag"].ingredients = {
        {"ATF-plasma-cell", 1},
        {"nickel-plate", 1},
        {"plastic-bar", 2}
    }

    -- heliosmag: Улучшенная плазма-ячейка
    data.raw.recipe["heliosmag"].ingredients = {
        {"ATF-plasma-cell", 2},
        {"nickel-plate", 1},
        {"plastic-bar", 2}
    }

    -- ATF-fusion-battery: Уран-235 + Свинец (экранирование)
    data.raw.recipe["ATF-fusion-battery"].ingredients = {
        {"uranium-235", 1},
        {"lead-plate", 1},
        {"plastic-bar", 2}
    }

    -- =========================================================================
    -- ТУРЕЛИ
    -- =========================================================================

    -- ATF-m25-turret: Титан вместо стали
    data.raw.recipe["ATF-m25-turret"].ingredients = {
        {"plasma40watt", 1},
        {"40wattmag", 2},
        {"titanium-plate", 4},
        {"processing-unit", 1}
    }

    -- ATF-rcw-turret: Титан + Ядерная батарея
    data.raw.recipe["ATF-rcw-turret"].ingredients = {
        {"laserrcw", 1},
        {"ATF-fusion-battery", 2},
        {"titanium-plate", 4},
        {"processing-unit", 1}
    }

    -- =========================================================================
    -- ТОРГОВЛЯ И ЭКОНОМИКА
    -- =========================================================================

    -- Включаем рецепты торговли
    data.raw.recipe["ATF-gold"].enabled = true
    data.raw.recipe["ATF-gembox"].enabled = true
    data.raw.recipe["ATF-sell-gold"].enabled = true
    data.raw.recipe["ATF-sell-gembox"].enabled = true
    data.raw.recipe["ATF-gems"].enabled = false  -- Не нужно (дублирует Bob's)

    -- ATF-gold: Золотая пластина + Серная кислота
    data.raw.recipe["ATF-gold"].ingredients = {
        {"gold-plate", 10},
        {type = "fluid", name = "sulfuric-acid", amount = 50}
    }

    -- ATF-gembox: Драгоценные камни Bob's
    data.raw.recipe["ATF-gembox"].ingredients = {
        {"steel-chest", 1},
        {"gold-plate", 1},
        {"ruby-5", 5},
        {"sapphire-5", 5},
        {"emerald-5", 5},
        {"amethyst-5", 5},
        {"topaz-5", 5},
        {"diamond-5", 5}
    }

    log("[ATF-Rebalance] Bob's Metals recipe overrides applied successfully")
end

-- ============================================================================
-- INDUSTRIAL REVOLUTION 3 INTEGRATION
-- ============================================================================

if mods["IndustrialRevolution3"] then
    log("[ATF-Rebalance] Industrial Revolution 3 detected - applying recipe overrides")

    -- Включаем рецепты торговли
    data.raw.recipe["ATF-gold"].enabled = true
    data.raw.recipe["ATF-gembox"].enabled = true
    data.raw.recipe["ATF-sell-gold"].enabled = true
    data.raw.recipe["ATF-sell-gembox"].enabled = true
    data.raw.recipe["ATF-gems"].enabled = false  -- Не нужно

    -- ATF-gold: IR3 использует gold-ingot вместо gold-plate
    data.raw.recipe["ATF-gold"].ingredients = {
        {"gold-ingot", 10},
        {type = "fluid", name = "sulfuric-acid", amount = 50}
    }

    -- ATF-gembox: IR3 использует другие названия камней
    data.raw.recipe["ATF-gembox"].ingredients = {
        {"steel-chest", 1},
        {"gold-foil", 2},
        {"diamond-gem", 15},
        {"ruby-gem", 15}
    }

    log("[ATF-Rebalance] Industrial Revolution 3 recipe overrides applied successfully")
end

-- ============================================================================
-- BOB'S WARFARE INTEGRATION (Дополнительные настройки)
-- ============================================================================

if mods["bobwarfare"] then
    log("[ATF-Rebalance] Bob's Warfare detected - applying additional settings")

    -- Можно добавить дополнительные настройки для оружия Bob's
    -- Например, изменение урона или скорости стрельбы

    -- Пример: ATF-патроны совместимы с турелями Bob's
    -- (реализуется в tech-turrets.lua)

    log("[ATF-Rebalance] Bob's Warfare integration complete")
end

-- ============================================================================
-- ЗАВЕРШЕНИЕ
-- ============================================================================

log("[ATF-Rebalance] recipe-override.lua loaded successfully")