-- ammo.lua
-- Рецепты крафта боеприпасов ATF (пистолетные и винтовочные патроны)
-- Версия: 1.1 (Rebalance by Mechromancer-Zero)
-- Интеграция: Bob's Warfare Compatibility

data:extend({
    -- =========================================================================
    -- 9mm: Пистолетные патроны 9mm Parabellum
    -- =========================================================================
    {
        type ="recipe",
        name ="9mm",
        category ="crafting",
        energy_required = 3,
        enabled = true,
        ingredients = {
            {type ="item", name ="ATF-pistol-casing", amount = 4},
            {type ="item", name ="ATF-pistol-tips", amount = 4},
            {type ="item", name ="ATF-primer", amount = 2},
            {type ="item", name ="ATF-powder", amount = 2}
        },
        results = {
            {type ="item", name ="9mm", amount = 4}
        }
    },

    -- =========================================================================
    -- 9mmp: Бронебойные патроны 9mm (упрочнённые)
    -- =========================================================================
    {
        type ="recipe",
        name ="9mmp",
        category ="crafting",
        energy_required = 3,
        enabled = false,
        ingredients = {
            {type ="item", name ="ATF-powder", amount = 2},
            {type ="item", name ="steel-plate", amount = 2},
            {type ="item", name ="9mm", amount = 1}
        },
        results = {
            {type ="item", name ="9mmp", amount = 1}
        }
    },

    -- =========================================================================
    -- 9mmu: Урановые патроны 9mm (экспериментальные)
    -- =========================================================================
    {
        type ="recipe",
        name ="9mmu",
        category ="crafting",
        energy_required = 5,
        enabled = false,
        ingredients = {
            {type ="item", name ="9mmp", amount = 1},
            {type ="item", name ="uranium-238", amount = 1}
        },
        results = {
            {type ="item", name ="9mmu", amount = 1}
        }
    },

    -- =========================================================================
    -- 3006ammo: Винтовочные патроны .30-06 Springfield
    -- =========================================================================
    {
        type ="recipe",
        name ="3006ammo",
        category ="crafting",
        energy_required = 5,
        enabled = false,
        ingredients = {
            {type ="item", name ="ATF-rifle-casing", amount = 3},
            {type ="item", name ="ATF-rifle-bullets", amount = 3},
            {type ="item", name ="ATF-primer", amount = 6},
            {type ="item", name ="ATF-powder", amount = 6}
        },
        results = {
            {type ="item", name ="3006ammo", amount = 1}
        }
    },

    -- =========================================================================
    -- 303ammo: Винтовочные патроны .303 British
    -- =========================================================================
    {
        type ="recipe",
        name ="303ammo",
        category ="crafting",
        energy_required = 5,
        enabled = false,
        ingredients = {
            {type ="item", name ="ATF-rifle-casing", amount = 3},
            {type ="item", name ="ATF-rifle-bullets", amount = 3},
            {type ="item", name ="ATF-primer", amount = 6},
            {type ="item", name ="ATF-powder", amount = 6}
        },
        results = {
            {type ="item", name ="303ammo", amount = 1}
        }
    },

    -- =========================================================================
    -- 303mag: Магазин .303 British (5 патронов)
    -- =========================================================================
    {
        type ="recipe",
        name ="303mag",
        category ="crafting",
        energy_required = 10,
        enabled = false,
        ingredients = {
            {type ="item", name ="303ammo", amount = 5},
            {type ="item", name ="steel-plate", amount = 1}
        },
        results = {
            {type ="item", name ="303mag", amount = 1}
        }
    },

    -- =========================================================================
    -- 792x57drum: Барабан 7.92x57mm (10 патронов)
    -- =========================================================================
    {
        type ="recipe",
        name ="792x57drum",
        category ="crafting",
        energy_required = 10,
        enabled = false,
        ingredients = {
            {type ="item", name ="792x57", amount = 10},
            {type ="item", name ="steel-plate", amount = 2}
        },
        results = {
            {type ="item", name ="792x57drum", amount = 1}
        }
    },

    -- =========================================================================
    -- 3006belt: Лента .30-06 (15 патронов)
    -- =========================================================================
    {
        type ="recipe",
        name ="3006belt",
        category ="crafting",
        energy_required = 10,
        enabled = false,
        ingredients = {
            {type ="item", name ="3006ammo", amount = 15},
            {type ="item", name ="steel-plate", amount = 2}
        },
        results = {
            {type ="item", name ="3006belt", amount = 1}
        }
    },

    -- =========================================================================
    -- 556x45: Винтовочные патроны 5.56x45mm NATO
    -- =========================================================================
    {
        type ="recipe",
        name ="556x45",
        category ="crafting",
        energy_required = 5,
        enabled = false,
        ingredients = {
            {type ="item", name ="ATF-rifle-casing", amount = 3},
            {type ="item", name ="ATF-rifle-bullets", amount = 3},
            {type ="item", name ="ATF-primer", amount = 4},
            {type ="item", name ="ATF-powder", amount = 4}
        },
        results = {
            {type ="item", name ="556x45", amount = 1}
        }
    },

    -- =========================================================================
    -- 792x33: Промежуточные патроны 7.92x33mm Kurz
    -- =========================================================================
    {
        type ="recipe",
        name ="792x33",
        category ="crafting",
        energy_required = 5,
        enabled = false,
        ingredients = {
            {type ="item", name ="ATF-rifle-casing", amount = 3},
            {type ="item", name ="ATF-rifle-bullets", amount = 3},
            {type ="item", name ="ATF-primer", amount = 3},
            {type ="item", name ="ATF-powder", amount = 3}
        },
        results = {
            {type ="item", name ="792x33", amount = 1}
        }
    },

    -- =========================================================================
    -- 792x57: Винтовочные патроны 7.92x57mm Mauser
    -- =========================================================================
    {
        type ="recipe",
        name ="792x57",
        category ="crafting",
        energy_required = 5,
        enabled = false,
        ingredients = {
            {type ="item", name ="ATF-rifle-casing", amount = 4},
            {type ="item", name ="ATF-rifle-bullets", amount = 4},
            {type ="item", name ="ATF-primer", amount = 4},
            {type ="item", name ="ATF-powder", amount = 6}
        },
        results = {
            {type ="item", name ="792x57", amount = 1}
        }
    },

    -- =========================================================================
    -- 68spc: Винтовочные патроны 6.8mm SPC
    -- =========================================================================
    {
        type ="recipe",
        name ="68spc",
        category ="crafting",
        energy_required = 5,
        enabled = false,
        ingredients = {
            {type ="item", name ="ATF-rifle-casing", amount = 4},
            {type ="item", name ="ATF-rifle-bullets", amount = 5},
            {type ="item", name ="ATF-primer", amount = 5},
            {type ="item", name ="ATF-powder", amount = 4}
        },
        results = {
            {type ="item", name ="68spc", amount = 1}
        }
    },

    -- =========================================================================
    -- 68spcdrum: Барабан 6.8mm SPC (2 патрона)
    -- =========================================================================
    {
        type ="recipe",
        name ="68spcdrum",
        category ="crafting",
        energy_required = 5,
        enabled = false,
        ingredients = {
            {type ="item", name ="68spc", amount = 2},
            {type ="item", name ="steel-plate", amount = 4}
        },
        results = {
            {type ="item", name ="68spcdrum", amount = 1}
        }
    },

    -- =========================================================================
    -- 762x25: Пистолетные патроны 7.62x25mm Tokarev
    -- =========================================================================
    {
        type ="recipe",
        name ="762x25",
        category ="crafting",
        energy_required = 5,
        enabled = false,
        ingredients = {
            {type ="item", name ="ATF-pistol-casing", amount = 4},
            {type ="item", name ="ATF-pistol-tips", amount = 4},
            {type ="item", name ="ATF-primer", amount = 3},
            {type ="item", name ="ATF-powder", amount = 3}
        },
        results = {
            {type ="item", name ="762x25", amount = 1}
        }
    },

    -- =========================================================================
    -- 762x25drum: Барабан 7.62x25mm (3 патрона)
    -- =========================================================================
    {
        type ="recipe",
        name ="762x25drum",
        category ="crafting",
        energy_required = 5,
        enabled = false,
        ingredients = {
            {type ="item", name ="762x25", amount = 3},
            {type ="item", name ="steel-plate", amount = 2}
        },
        results = {
            {type ="item", name ="762x25drum", amount = 1}
        }
    },

    -- =========================================================================
    -- 45acp: Пистолетные патроны .45 ACP
    -- =========================================================================
    {
        type ="recipe",
        name ="45acp",
        category ="crafting",
        energy_required = 5,
        enabled = true,
        ingredients = {
            {type ="item", name ="ATF-pistol-casing", amount = 4},
            {type ="item", name ="ATF-pistol-tips", amount = 4},
            {type ="item", name ="ATF-primer", amount = 2},
            {type ="item", name ="ATF-powder", amount = 4}
        },
        results = {
            {type ="item", name ="45acp", amount = 1}
        }
    },

    -- =========================================================================
    -- 45acpdrum: Барабан .45 ACP (2 патрона)
    -- =========================================================================
    {
        type ="recipe",
        name ="45acpdrum",
        category ="crafting",
        energy_required = 5,
        enabled = false,
        ingredients = {
            {type ="item", name ="45acp", amount = 2},
            {type ="item", name ="steel-plate", amount = 2},
            {type ="item", name ="copper-plate", amount = 5}
        },
        results = {
            {type ="item", name ="45acpdrum", amount = 1}
        }
    },

    -- =========================================================================
    -- 762x51: Винтовочные патроны 7.62x51mm NATO
    -- =========================================================================
    {
        type ="recipe",
        name ="762x51",
        category ="crafting",
        energy_required = 5,
        enabled = false,
        ingredients = {
            {type ="item", name ="ATF-rifle-casing", amount = 4},
            {type ="item", name ="ATF-rifle-bullets", amount = 6},
            {type ="item", name ="ATF-primer", amount = 4},
            {type ="item", name ="ATF-powder", amount = 6}
        },
        results = {
            {type ="item", name ="762x51", amount = 1}
        }
    },

    -- =========================================================================
    -- 762x51drum: Барабан 7.62x51mm (2 патрона)
    -- =========================================================================
    {
        type ="recipe",
        name ="762x51drum",
        category ="crafting",
        energy_required = 5,
        enabled = false,
        ingredients = {
            {type ="item", name ="762x51", amount = 2},
            {type ="item", name ="steel-plate", amount = 3}
        },
        results = {
            {type ="item", name ="762x51drum", amount = 1}
        }
    },

    -- =========================================================================
    -- 762x39: Винтовочные патроны 7.62x39mm
    -- =========================================================================
    {
        type ="recipe",
        name ="762x39",
        category ="crafting",
        energy_required = 5,
        enabled = false,
        ingredients = {
            {type ="item", name ="ATF-rifle-casing", amount = 3},
            {type ="item", name ="ATF-rifle-bullets", amount = 5},
            {type ="item", name ="ATF-primer", amount = 3},
            {type ="item", name ="ATF-powder", amount = 5}
        },
        results = {
            {type ="item", name ="762x39", amount = 1}
        }
    },

    -- =========================================================================
    -- 556x45drum: Барабан 5.56x45mm (3 патрона)
    -- =========================================================================
    {
        type ="recipe",
        name ="556x45drum",
        category ="crafting",
        energy_required = 5,
        enabled = false,
        ingredients = {
            {type ="item", name ="556x45", amount = 3},
            {type ="item", name ="steel-plate", amount = 2}
        },
        results = {
            {type ="item", name ="556x45drum", amount = 1}
        }
    },

    -- =========================================================================
    -- 762x39drum: Барабан 7.62x39mm (3 патрона)
    -- =========================================================================
    {
        type ="recipe",
        name ="762x39drum",
        category ="crafting",
        energy_required = 5,
        enabled = false,
        ingredients = {
            {type ="item", name ="762x39", amount = 3},
            {type ="item", name ="iron-plate", amount = 3}
        },
        results = {
            {type ="item", name ="762x39drum", amount = 1}
        }
    },

    -- =========================================================================
    -- 545x39: Винтовочные патроны 5.45x39mm
    -- =========================================================================
    {
        type ="recipe",
        name ="545x39",
        category ="crafting",
        energy_required = 5,
        enabled = false,
        ingredients = {
            {type ="item", name ="ATF-rifle-casing", amount = 3},
            {type ="item", name ="ATF-rifle-bullets", amount = 3},
            {type ="item", name ="ATF-primer", amount = 4},
            {type ="item", name ="ATF-powder", amount = 4}
        },
        results = {
            {type ="item", name ="545x39", amount = 1}
        }
    },

    -- =========================================================================
    -- 545long: Удлинённый магазин 5.45x39mm
    -- =========================================================================
    {
        type ="recipe",
        name ="545long",
        category ="crafting",
        energy_required = 5,
        enabled = false,
        ingredients = {
            {type ="item", name ="545x39", amount = 2},
            {type ="item", name ="plastic-bar", amount = 4}
        },
        results = {
            {type ="item", name ="545long", amount = 1}
        }
    }
})

-- ============================================================================
-- ЛОГИРОВАНИЕ ЗАГРУЗКИ
-- ============================================================================

log("[ATF-Rebalance] Ammo recipes loaded successfully (24 recipes registered)")

-- ============================================================================
-- ИНТЕГРАЦИЯ С BOB'S WARFARE (опционально)
-- ============================================================================

if mods["bobwarfare"] then
    log("[ATF-Rebalance] Bob's Warfare detected - ammo recipes compatible")
end