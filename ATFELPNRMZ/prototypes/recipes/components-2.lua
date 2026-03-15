-- components-2.lua
-- Рецепты крафта компонентов ATF второй части (тяжёлые, дробовичные, энергетические)
-- Версия: 1.1 (Rebalance by Mechromancer-Zero)
-- Интеграция: Bob's Warfare Compatibility

extend({
    -- =========================================================================
    -- ДРОБОВИЧНЫЕ КОМПОНЕНТЫ: Ствольные коробки
    -- =========================================================================

    -- -------------------------------------------------------------------------
    -- ATF-shotgun-receiver: Ствольная коробка дробовика
    -- -------------------------------------------------------------------------
    {
        type ="recipe",
        name ="ATF-shotgun-receiver",
        category ="crafting",
        energy_required = 5,
        enabled = false,
        ingredients = {
            {type ="item", name ="steel-plate", amount = 2},
            {type ="item", name ="ATF-bolts-nuts", amount = 2}
        },
        results = {
            {type ="item", name ="ATF-shotgun-receiver", amount = 1}
        }
    },

    -- =========================================================================
    -- ТЯЖЁЛЫЕ КОМПОНЕНТЫ: Пулемётные ствольные коробки и стволы
    -- =========================================================================

    -- -------------------------------------------------------------------------
    -- ATF-hmg-receiver: Ствольная коробка тяжёлого пулемёта
    -- -------------------------------------------------------------------------
    {
        type ="recipe",
        name ="ATF-hmg-receiver",
        category ="crafting",
        energy_required = 10,
        enabled = false,
        ingredients = {
            {type ="item", name ="steel-plate", amount = 10},
            {type ="item", name ="ATF-bolts-nuts", amount = 6}
        },
        results = {
            {type ="item", name ="ATF-hmg-receiver", amount = 1}
        }
    },

    -- -------------------------------------------------------------------------
    -- ATF-hmg-barrel: Ствол тяжёлого пулемёта
    -- -------------------------------------------------------------------------
    {
        type ="recipe",
        name ="ATF-hmg-barrel",
        category ="crafting",
        energy_required = 10,
        enabled = false,
        ingredients = {
            {type ="item", name ="steel-plate", amount = 2},
            {type ="item", name ="ATF-recoil-spring", amount = 2},
            {type ="item", name ="ATF-bolts-nuts", amount = 2}
        },
        results = {
            {type ="item", name ="ATF-hmg-barrel", amount = 1}
        }
    },

    -- =========================================================================
    -- ТЯЖЁЛЫЕ ПАТРОННЫЕ КОМПОНЕНТЫ: Гильзы и пули для 20mm, 50bmg
    -- =========================================================================

    -- -------------------------------------------------------------------------
    -- ATF-heavy-casings: Тяжёлые гильзы (20mm, 50bmg)
    -- -------------------------------------------------------------------------
    {
        type ="recipe",
        name ="ATF-heavy-casings",
        category ="crafting",
        energy_required = 4,
        enabled = false,
        ingredients = {
            {type ="item", name ="steel-plate", amount = 4},
            {type ="item", name ="copper-plate", amount = 2}
        },
        results = {
            {type ="item", name ="ATF-heavy-casings", amount = 1}
        }
    },

    -- -------------------------------------------------------------------------
    -- ATF-heavy-bullets: Тяжёлые пули (20mm, 50bmg)
    -- -------------------------------------------------------------------------
    {
        type ="recipe",
        name ="ATF-heavy-bullets",
        category ="crafting",
        energy_required = 4,
        enabled = false,
        ingredients = {
            {type ="item", name ="steel-plate", amount = 1},
            {type ="item", name ="copper-plate", amount = 4}
        },
        results = {
            {type ="item", name ="ATF-heavy-bullets", amount = 1}
        }
    },

    -- =========================================================================
    -- ДРОБОВИЧНЫЕ ПАТРОННЫЕ КОМПОНЕНТЫ: Дробь и гильзы
    -- =========================================================================

    -- -------------------------------------------------------------------------
    -- ATF-buckshot: Картечь для дробовика
    -- -------------------------------------------------------------------------
    {
        type ="recipe",
        name ="ATF-buckshot",
        category ="crafting",
        energy_required = 4,
        enabled = false,
        ingredients = {
            {type ="item", name ="iron-plate", amount = 1}
        },
        results = {
            {type ="item", name ="ATF-buckshot", amount = 1}
        }
    },

    -- -------------------------------------------------------------------------
    -- ATF-empty-shell: Пустая дробовая гильза
    -- -------------------------------------------------------------------------
    {
        type ="recipe",
        name ="ATF-empty-shell",
        category ="crafting",
        energy_required = 4,
        enabled = false,
        ingredients = {
            {type ="item", name ="iron-plate", amount = 1}
        },
        results = {
            {type ="item", name ="ATF-empty-shell", amount = 1}
        }
    },

    -- =========================================================================
    -- ЭНЕРГЕТИЧЕСКИЕ КОМПОНЕНТЫ: Плазма, суперконденсаторы
    -- =========================================================================

    -- -------------------------------------------------------------------------
    -- ATF-plasma-cell: Плазменная ячейка (химический завод)
    -- -------------------------------------------------------------------------
    {
        type ="recipe",
        name ="ATF-plasma-cell",
        category ="chemistry",
        energy_required = 15,
        enabled = false,
        ingredients = {
            {type ="item", name ="plastic-bar", amount = 2},
            {type ="fluid", name ="water", amount = 200},
            {type ="item", name ="steel-plate", amount = 2},
            {type ="item", name ="copper-plate", amount = 2}
        },
        results = {
            {type ="item", name ="ATF-plasma-cell", amount = 1}
        }
    },

    -- -------------------------------------------------------------------------
    -- ATF-future-receiver: Ствольная коробка будущего (продвинутый крафт)
    -- -------------------------------------------------------------------------
    {
        type ="recipe",
        name ="ATF-future-receiver",
        category ="advanced-crafting",
        energy_required = 10,
        enabled = false,
        ingredients = {
            {type ="item", name ="low-density-structure", amount = 1},
            {type ="item", name ="processing-unit", amount = 1}
        },
        results = {
            {type ="item", name ="ATF-future-receiver", amount = 1}
        }
    },

    -- -------------------------------------------------------------------------
    -- ATF-future-barrel: Ствол будущего (продвинутый крафт)
    -- -------------------------------------------------------------------------
    {
        type ="recipe",
        name ="ATF-future-barrel",
        category ="advanced-crafting",
        energy_required = 10,
        enabled = false,
        ingredients = {
            {type ="item", name ="low-density-structure", amount = 1}
        },
        results = {
            {type ="item", name ="ATF-future-barrel", amount = 1}
        }
    },

    -- -------------------------------------------------------------------------
    -- ATF-plasmaheater: Плазменный нагреватель (для Hellfire брони)
    -- -------------------------------------------------------------------------
    {
        type ="recipe",
        name ="ATF-plasmaheater",
        category ="advanced-crafting",
        energy_required = 10,
        enabled = false,
        ingredients = {
            {type ="item", name ="steel-plate", amount = 4},
            {type ="item", name ="copper-cable", amount = 8}
        },
        results = {
            {type ="item", name ="ATF-plasmaheater", amount = 1}
        }
    },

    -- -------------------------------------------------------------------------
    -- ATF-supercap: Суперконденсатор (для Tesla брони)
    -- -------------------------------------------------------------------------
    {
        type ="recipe",
        name ="ATF-supercap",
        category ="advanced-crafting",
        energy_required = 10,
        enabled = false,
        ingredients = {
            {type ="item", name ="mercury", amount = 2},
            {type ="item", name ="plastic-bar", amount = 2},
            {type ="item", name ="copper-cable", amount = 4}
        },
        results = {
            {type ="item", name ="ATF-supercap", amount = 1}
        }
    },

    -- =========================================================================
    -- РЕСУРСЫ: Синтетическая древесина
    -- =========================================================================

    -- -------------------------------------------------------------------------
    -- ATF-wood: Синтетическая древесина (из тяжёлой нефти)
    -- -------------------------------------------------------------------------
    {
        type ="recipe",
        name ="ATF-wood",
        category ="chemistry",
        subgroup ="ATF-comp",
        energy_required = 5,
        enabled = true,
        allow_as_intermediate = false,
        ingredients = {
            {type ="fluid", name ="heavy-oil", amount = 2}
        },
        results = {
            {type ="item", name ="wood", amount = 1}
        }
    }
})

-- ============================================================================
-- ЛОГИРОВАНИЕ ЗАГРУЗКИ
-- ============================================================================

log("[ATF-Rebalance] Component-2 recipes loaded successfully (13 recipes registered)")

-- ============================================================================
-- ИНТЕГРАЦИЯ С BOB'S WARFARE (опционально)
-- ============================================================================

if mods["bobwarfare"] then
    log("[ATF-Rebalance] Bob's Warfare detected - component-2 recipes compatible")
end