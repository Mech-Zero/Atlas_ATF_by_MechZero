-- ammo-2.lua
-- Рецепты крафта боеприпасов ATF (тяжёлые, специальные и энергетические патроны)
-- Версия: 1.1 (Rebalance by Mechromancer-Zero)
-- Интеграция: Bob's Warfare Compatibility

extend({
    -- =========================================================================
    -- ATF-arti-shell-acid: Кислотный артиллерийский снаряд
    -- =========================================================================
    {
        type ="recipe",
        name ="ATF-arti-shell-acid",
        category ="chemistry",
        energy_required = 15,
        enabled = false,
        ingredients = {
            {type ="item", name ="steel-plate", amount = 10},
            {type ="item", name ="explosives", amount = 8},
            {type ="fluid", name ="sulfuric-acid", amount = 20}
        },
        results = {
            {type ="item", name ="ATF-arti-shell-acid", amount = 1}
        }
    },

    -- =========================================================================
    -- ATF-arti-shell-napalm: Напалмовый артиллерийский снаряд
    -- =========================================================================
    {
        type ="recipe",
        name ="ATF-arti-shell-napalm",
        category ="chemistry",
        energy_required = 15,
        enabled = false,
        ingredients = {
            {type ="item", name ="steel-plate", amount = 10},
            {type ="item", name ="explosives", amount = 8},
            {type ="item", name ="plastic-bar", amount = 2},
            {type ="fluid", name ="heavy-oil", amount = 20}
        },
        results = {
            {type ="item", name ="ATF-arti-shell-napalm", amount = 1}
        }
    },

    -- =========================================================================
    -- 20mm: Бронебойные патроны 20mm
    -- =========================================================================
    {
        type ="recipe",
        name ="20mm",
        category ="crafting",
        energy_required = 8,
        enabled = false,
        ingredients = {
            {type ="item", name ="ATF-heavy-casings", amount = 8},
            {type ="item", name ="ATF-heavy-bullets", amount = 8},
            {type ="item", name ="ATF-primer", amount = 8},
            {type ="item", name ="ATF-powder", amount = 10}
        },
        results = {
            {type ="item", name ="20mm", amount = 1}
        }
    },

    -- =========================================================================
    -- 20mm-he: Фугасные патроны 20mm
    -- =========================================================================
    {
        type ="recipe",
        name ="20mm-he",
        category ="crafting",
        energy_required = 10,
        enabled = false,
        ingredients = {
            {type ="item", name ="20mm", amount = 1},
            {type ="item", name ="explosives", amount = 2}
        },
        results = {
            {type ="item", name ="20mm-he", amount = 1}
        }
    },

    -- =========================================================================
    -- 50bmg: Патроны .50 BMG (12.7x99mm)
    -- =========================================================================
    {
        type ="recipe",
        name ="50bmg",
        category ="crafting",
        energy_required = 6,
        enabled = false,
        ingredients = {
            {type ="item", name ="ATF-heavy-casings", amount = 6},
            {type ="item", name ="ATF-heavy-bullets", amount = 6},
            {type ="item", name ="ATF-primer", amount = 6},
            {type ="item", name ="ATF-powder", amount = 8}
        },
        results = {
            {type ="item", name ="50bmg", amount = 1}
        }
    },

    -- =========================================================================
    -- 40mm-he: Фугасные гранаты 40mm
    -- =========================================================================
    {
        type ="recipe",
        name ="40mm-he",
        category ="crafting",
        energy_required = 15,
        enabled = false,
        ingredients = {
            {type ="item", name ="ATF-heavy-casings", amount = 2},
            {type ="item", name ="ATF-primer", amount = 2},
            {type ="item", name ="grenade", amount = 1},
            {type ="item", name ="explosives", amount = 2}
        },
        results = {
            {type ="item", name ="40mm-he", amount = 1}
        }
    },

    -- =========================================================================
    -- 40mm-incendiary: Зажигательные гранаты 40mm
    -- =========================================================================
    {
        type ="recipe",
        name ="40mm-incendiary",
        category ="chemistry",
        energy_required = 15,
        enabled = false,
        ingredients = {
            {type ="item", name ="ATF-heavy-casings", amount = 2},
            {type ="item", name ="ATF-primer", amount = 2},
            {type ="item", name ="grenade", amount = 1},
            {type ="fluid", name ="heavy-oil", amount = 10}
        },
        results = {
            {type ="item", name ="40mm-incendiary", amount = 1}
        }
    },

    -- =========================================================================
    -- 40mm-acid: Кислотные гранаты 40mm
    -- =========================================================================
    {
        type ="recipe",
        name ="40mm-acid",
        category ="chemistry",
        energy_required = 15,
        enabled = false,
        ingredients = {
            {type ="item", name ="ATF-heavy-casings", amount = 2},
            {type ="item", name ="ATF-primer", amount = 2},
            {type ="fluid", name ="sulfuric-acid", amount = 15}
        },
        results = {
            {type ="item", name ="40mm-acid", amount = 1}
        }
    },

    -- =========================================================================
    -- 40mm-plasma: Плазменные гранаты 40mm
    -- =========================================================================
    {
        type ="recipe",
        name ="40mm-plasma",
        category ="advanced-crafting",
        energy_required = 15,
        enabled = false,
        ingredients = {
            {type ="item", name ="ATF-plasma-cell", amount = 2},
            {type ="item", name ="ATF-heavy-casings", amount = 2},
            {type ="item", name ="ATF-primer", amount = 2}
        },
        results = {
            {type ="item", name ="40mm-plasma", amount = 1}
        }
    },

    -- =========================================================================
    -- 12g-buckshot: Дробовые патроны 12 Gauge (картечь)
    -- =========================================================================
    {
        type ="recipe",
        name ="12g-buckshot",
        category ="crafting",
        energy_required = 5,
        enabled = false,
        ingredients = {
            {type ="item", name ="ATF-buckshot", amount = 2},
            {type ="item", name ="ATF-primer", amount = 2},
            {type ="item", name ="ATF-empty-shell", amount = 2},
            {type ="item", name ="ATF-powder", amount = 4}
        },
        results = {
            {type ="item", name ="12g-buckshot", amount = 1}
        }
    },

    -- =========================================================================
    -- 12g-slug: Пулевые патроны 12 Gauge (пуля)
    -- =========================================================================
    {
        type ="recipe",
        name ="12g-slug",
        category ="crafting",
        energy_required = 5,
        enabled = false,
        ingredients = {
            {type ="item", name ="ATF-rifle-bullets", amount = 2},
            {type ="item", name ="ATF-primer", amount = 2},
            {type ="item", name ="ATF-empty-shell", amount = 2},
            {type ="item", name ="ATF-powder", amount = 4}
        },
        results = {
            {type ="item", name ="12g-slug", amount = 1}
        }
    },

    -- =========================================================================
    -- 12g-frag: Осколочные патроны 12 Gauge
    -- =========================================================================
    {
        type ="recipe",
        name ="12g-frag",
        category ="crafting",
        energy_required = 10,
        enabled = false,
        ingredients = {
            {type ="item", name ="explosives", amount = 1},
            {type ="item", name ="ATF-buckshot", amount = 2},
            {type ="item", name ="ATF-primer", amount = 2},
            {type ="item", name ="ATF-empty-shell", amount = 2},
            {type ="item", name ="ATF-powder", amount = 2}
        },
        results = {
            {type ="item", name ="12g-frag", amount = 1}
        }
    },

    -- =========================================================================
    -- 12g-dragon: Зажигательные патроны 12 Gauge (Dragon's Breath)
    -- =========================================================================
    {
        type ="recipe",
        name ="12g-dragon",
        category ="crafting",
        energy_required = 10,
        enabled = false,
        ingredients = {
            {type ="item", name ="solid-fuel", amount = 1},
            {type ="item", name ="ATF-buckshot", amount = 2},
            {type ="item", name ="ATF-primer", amount = 2},
            {type ="item", name ="ATF-empty-shell", amount = 2},
            {type ="item", name ="ATF-powder", amount = 2}
        },
        results = {
            {type ="item", name ="12g-dragon", amount = 1}
        }
    },

    -- =========================================================================
    -- 556-swatt: Электрические патроны 5.56mm SWATT
    -- =========================================================================
    {
        type ="recipe",
        name ="556-swatt",
        category ="crafting",
        energy_required = 10,
        enabled = false,
        ingredients = {
            {type ="item", name ="556x45", amount = 2},
            {type ="item", name ="copper-cable", amount = 6},
            {type ="item", name ="plastic-bar", amount = 2}
        },
        results = {
            {type ="item", name ="556-swatt", amount = 1}
        }
    },

    -- =========================================================================
    -- 556belt: Ленточные патроны 5.56mm (для M134)
    -- =========================================================================
    {
        type ="recipe",
        name ="556belt",
        category ="advanced-crafting",
        energy_required = 10,
        enabled = false,
        ingredients = {
            {type ="item", name ="556x45drum", amount = 2},
            {type ="fluid", name ="lubricant", amount = 10},
            {type ="item", name ="steel-plate", amount = 1}
        },
        results = {
            {type ="item", name ="556belt", amount = 1}
        }
    },

    -- =========================================================================
    -- 762belt: Ленточные патроны 7.62mm (для Death Machine)
    -- =========================================================================
    {
        type ="recipe",
        name ="762belt",
        category ="advanced-crafting",
        energy_required = 10,
        enabled = false,
        ingredients = {
            {type ="item", name ="762x51drum", amount = 2},
            {type ="fluid", name ="lubricant", amount = 10},
            {type ="item", name ="steel-plate", amount = 1}
        },
        results = {
            {type ="item", name ="762belt", amount = 1}
        }
    },

    -- =========================================================================
    -- 40wattmag: Магазины для плазменной винтовки 40 Watt
    -- =========================================================================
    {
        type ="recipe",
        name ="40wattmag",
        category ="advanced-crafting",
        energy_required = 15,
        enabled = false,
        ingredients = {
            {type ="item", name ="ATF-plasma-cell", amount = 1},
            {type ="item", name ="steel-plate", amount = 4},
            {type ="item", name ="plastic-bar", amount = 2}
        },
        results = {
            {type ="item", name ="40wattmag", amount = 1}
        }
    },

    -- =========================================================================
    -- killerwattmag: Магазины для Killer Watt
    -- =========================================================================
    {
        type ="recipe",
        name ="killerwattmag",
        category ="advanced-crafting",
        energy_required = 15,
        enabled = false,
        ingredients = {
            {type ="item", name ="ATF-fusion-battery", amount = 2}
        },
        results = {
            {type ="item", name ="killerwattmag", amount = 1}
        }
    },

    -- =========================================================================
    -- heliosmag: Магазины для винтовки Helios
    -- =========================================================================
    {
        type ="recipe",
        name ="heliosmag",
        category ="advanced-crafting",
        energy_required = 15,
        enabled = false,
        ingredients = {
            {type ="item", name ="ATF-plasma-cell", amount = 2},
            {type ="item", name ="steel-plate", amount = 4},
            {type ="item", name ="plastic-bar", amount = 2}
        },
        results = {
            {type ="item", name ="heliosmag", amount = 1}
        }
    },

    -- =========================================================================
    -- ATF-fusion-battery: Ядерная батарея (для энергетического оружия)
    -- =========================================================================
    {
        type ="recipe",
        name ="ATF-fusion-battery",
        category ="advanced-crafting",
        energy_required = 15,
        enabled = false,
        ingredients = {
            {type ="item", name ="uranium-235", amount = 1},
            {type ="item", name ="iron-plate", amount = 2},
            {type ="item", name ="plastic-bar", amount = 2}
        },
        results = {
            {type ="item", name ="ATF-fusion-battery", amount = 1}
        }
    }
})

-- ============================================================================
-- ЛОГИРОВАНИЕ ЗАГРУЗКИ
-- ============================================================================

log("[ATF-Rebalance] Ammo-2 recipes loaded successfully (20 recipes registered)")

-- ============================================================================
-- ИНТЕГРАЦИЯ С BOB'S WARFARE (опционально)
-- ============================================================================

if mods["bobwarfare"] then
    log("[ATF-Rebalance] Bob's Warfare detected - ammo-2 recipes compatible")
end