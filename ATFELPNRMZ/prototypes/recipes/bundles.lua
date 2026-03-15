-- bundles-recipes.lua
-- Рецепты крафта сборных коробок ATF (оружие, патроны, ценности)
-- Версия: 2.1 (Rebalance by Mechromancer-Zero)
-- Интеграция: Bob's Mods Compatibility (gold-ore, crushed-geode)

extend({
    -- =========================================================================
    -- ATF-gunbox-old: Коробка старого оружия (WW1/WW2 эра)
    -- =========================================================================
    {
        type ="recipe",
        name ="ATF-gunbox-old",
        category ="crafting",
        energy_required = 15,
        enabled = true,
        allow_as_intermediate = false,
        ingredients = {
            {type ="item", name ="steel-chest", amount = 1},
            -- Винтовки
            {type ="item", name ="lee", amount = 1},
            {type ="item", name ="1903", amount = 1},
            {type ="item", name ="k98", amount = 1},
            {type ="item", name ="g43", amount = 1},
            -- ПП
            {type ="item", name ="mp18", amount = 1},
            {type ="item", name ="mp40", amount = 1},
            {type ="item", name ="ppsh", amount = 1},
            -- Автоматы/Пулемёты
            {type ="item", name ="stg44", amount = 1},
            {type ="item", name ="bar", amount = 1},
            {type ="item", name ="mg42", amount = 1},
            {type ="item", name ="m1919", amount = 1},
            -- Дробовики
            {type ="item", name ="m1897", amount = 1},
            -- Пистолеты
            {type ="item", name ="1911", amount = 1},
            {type ="item", name ="c96", amount = 1}
        },
        results = {
            {type ="item", name ="ATF-gunbox-old", amount = 1}
        }
    },

    -- =========================================================================
    -- ATF-gunbox-coldwar: Коробка оружия холодной войны
    -- =========================================================================
    {
        type ="recipe",
        name ="ATF-gunbox-coldwar",
        category ="crafting",
        energy_required = 15,
        enabled = true,
        allow_as_intermediate = false,
        ingredients = {
            {type ="item", name ="steel-chest", amount = 1},
            -- Автоматы
            {type ="item", name ="akm", amount = 1},
            {type ="item", name ="ak74m", amount = 1},
            {type ="item", name ="g3", amount = 1},
            -- ПП
            {type ="item", name ="mp5", amount = 1},
            -- Винтовки
            {type ="item", name ="m14", amount = 1}
        },
        results = {
            {type ="item", name ="ATF-gunbox-coldwar", amount = 1}
        }
    },

    -- =========================================================================
    -- ATF-gunbox-modern: Коробка современного оружия
    -- =========================================================================
    {
        type ="recipe",
        name ="ATF-gunbox-modern",
        category ="crafting",
        energy_required = 15,
        enabled = true,
        allow_as_intermediate = false,
        ingredients = {
            {type ="item", name ="steel-chest", amount = 1},
            -- Автоматы
            {type ="item", name ="acr", amount = 1},
            {type ="item", name ="hk416", amount = 1},
            -- ПП
            {type ="item", name ="vector", amount = 1},
            -- Пистолеты
            {type ="item", name ="glock", amount = 1}
        },
        results = {
            {type ="item", name ="ATF-gunbox-modern", amount = 1}
        }
    },

    -- =========================================================================
    -- ATF-gunbox-concept: Коробка концепт-оружия (будущее)
    -- =========================================================================
    {
        type ="recipe",
        name ="ATF-gunbox-concept",
        category ="crafting",
        energy_required = 15,
        enabled = true,
        allow_as_intermediate = false,
        ingredients = {
            {type ="item", name ="steel-chest", amount = 1},
            -- Пистолеты
            {type ="item", name ="p60", amount = 1},
            -- Винтовки
            {type ="item", name ="stg60", amount = 1},
            -- Тяжёлое
            {type ="item", name ="atlas20mm", amount = 1},
            -- Энергетическое
            {type ="item", name ="plasma40watt", amount = 1},
            {type ="item", name ="laserrcw", amount = 1},
            {type ="item", name ="killerwatt", amount = 1},
            {type ="item", name ="heliosrifle", amount = 1}
        },
        results = {
            {type ="item", name ="ATF-gunbox-concept", amount = 1}
        }
    },

    -- =========================================================================
    -- ATF-gunbox-heavy: Коробка тяжёлого оружия (пулемёты, гранатомёты)
    -- =========================================================================
    {
        type ="recipe",
        name ="ATF-gunbox-heavy",
        category ="crafting",
        energy_required = 15,
        enabled = true,
        allow_as_intermediate = false,
        ingredients = {
            {type ="item", name ="steel-chest", amount = 1},
            -- Пулемёты
            {type ="item", name ="mg42", amount = 1},
            {type ="item", name ="m1919", amount = 1},
            {type ="item", name ="m2", amount = 1},
            {type ="item", name ="m134", amount = 1},
            {type ="item", name ="deathmachine", amount = 1},
            {type ="item", name ="gau", amount = 1},
            -- Гранатомёты
            {type ="item", name ="m79", amount = 1},
            {type ="item", name ="m32", amount = 1},
            {type ="item", name ="warmachine", amount = 1},
            -- Дробовики
            {type ="item", name ="aa12", amount = 1}
        },
        results = {
            {type ="item", name ="ATF-gunbox-heavy", amount = 1}
        }
    },

    -- =========================================================================
    -- ATF-gunbox-ammo: Коробка патронов (все типы)
    -- =========================================================================
    {
        type ="recipe",
        name ="ATF-gunbox-ammo",
        category ="crafting",
        energy_required = 20,
        enabled = true,
        allow_as_intermediate = false,
        ingredients = {
            {type ="item", name ="steel-chest", amount = 1},
            -- Пистолетные
            {type ="item", name ="9mm", amount = 1},
            {type ="item", name ="9mmp", amount = 1},
            {type ="item", name ="9mmu", amount = 1},
            {type ="item", name ="45acp", amount = 1},
            {type ="item", name ="762x25", amount = 1},
            -- Винтовочные
            {type ="item", name ="3006ammo", amount = 1},
            {type ="item", name ="303ammo", amount = 1},
            {type ="item", name ="556x45", amount = 1},
            {type ="item", name ="762x51", amount = 1},
            {type ="item", name ="762x39", amount = 1},
            {type ="item", name ="545x39", amount = 1},
            {type ="item", name ="792x33", amount = 1},
            {type ="item", name ="792x57", amount = 1},
            {type ="item", name ="68spc", amount = 1},
            -- Дробовик
            {type ="item", name ="12g-buckshot", amount = 1},
            {type ="item", name ="12g-slug", amount = 1},
            {type ="item", name ="12g-frag", amount = 1},
            {type ="item", name ="12g-dragon", amount = 1},
            -- Магазины/Барабаны
            {type ="item", name ="303mag", amount = 1},
            {type ="item", name ="792x57drum", amount = 1},
            {type ="item", name ="556x45drum", amount = 1},
            {type ="item", name ="762x51drum", amount = 1},
            {type ="item", name ="762x39drum", amount = 1},
            {type ="item", name ="68spcdrum", amount = 1},
            {type ="item", name ="762x25drum", amount = 1},
            {type ="item", name ="45acpdrum", amount = 1},
            {type ="item", name ="545long", amount = 1},
            -- Ленты
            {type ="item", name ="3006belt", amount = 1},
            {type ="item", name ="556belt", amount = 1},
            {type ="item", name ="762belt", amount = 1},
            -- Гранаты
            {type ="item", name ="40mm-he", amount = 1},
            {type ="item", name ="40mm-incendiary", amount = 1},
            {type ="item", name ="40mm-acid", amount = 1},
            {type ="item", name ="40mm-plasma", amount = 1},
            -- Тяжёлые
            {type ="item", name ="20mm", amount = 1},
            {type ="item", name ="20mm-he", amount = 1},
            {type ="item", name ="50bmg", amount = 1},
            -- Энергетические
            {type ="item", name ="40wattmag", amount = 1},
            {type ="item", name ="killerwattmag", amount = 1},
            {type ="item", name ="heliosmag", amount = 1},
            {type ="item", name ="ATF-fusion-battery", amount = 1},
            -- Электрические
            {type ="item", name ="556-swatt", amount = 1}
        },
        results = {
            {type ="item", name ="ATF-gunbox-ammo", amount = 1}
        }
    },

    -- =========================================================================
    -- ATF-gold: Золото (переработка золотой руды Bob's)
    -- =========================================================================
    {
        type ="recipe",
        name ="ATF-gold",
        category ="smelting",
        energy_required = 10,
        enabled = true,
        allow_as_intermediate = false,
        ingredients = {
            {type ="item", name ="gold-ore", amount = 10}
        },
        results = {
            {type ="item", name ="ATF-gold", amount = 1}
        },
        main_product ="ATF-gold"
    },

    -- =========================================================================
    -- ATF-gems: Драгоценные камни (из дроблёных жеод Bob's)
    -- =========================================================================
    {
        type ="recipe",
        name ="ATF-gems",
        category ="chemistry",
        energy_required = 15,
        enabled = true,
        allow_as_intermediate = false,
        ingredients = {
            {type ="item", name ="crushed-geode", amount = 20},
            {type ="fluid", name ="sulfuric-acid", amount = 50}
        },
        results = {
            {type ="item", name ="ATF-gems", amount = 1}
        },
        main_product ="ATF-gems"
    },

    -- =========================================================================
    -- ATF-gembox: Коробка ценностей (золото + камни)
    -- =========================================================================
    {
        type ="recipe",
        name ="ATF-gembox",
        category ="crafting",
        energy_required = 5,
        enabled = true,
        allow_as_intermediate = false,
        ingredients = {
            {type ="item", name ="steel-chest", amount = 1},
            {type ="item", name ="ATF-gems", amount = 10},
            {type ="item", name ="ATF-gold", amount = 10}
        },
        results = {
            {type ="item", name ="ATF-gembox", amount = 1}
        }
    }
})

-- ============================================================================
-- ЛОГИРОВАНИЕ ЗАГРУЗКИ
-- ============================================================================

log("[ATF-Rebalance] Bundle recipes loaded successfully (9 recipes registered)")
log("[ATF-Rebalance] Bob's Mods integration: gold-ore, crushed-geode")

-- ============================================================================
-- ПРОВЕРКА BOB'S MODS (опционально)
-- ============================================================================

if mods["bobrevamp"] or mods["bobplates"] then
    log("[ATF-Rebalance] Bob's Revamp/Plates detected - using native resources")
else
    log("[ATF-Rebalance] WARNING: Bob's mods not detected - recipes may require alternative resources")
end