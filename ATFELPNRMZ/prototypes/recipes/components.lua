-- components-recipes.lua
-- Рецепты крафта компонентов оружия ATF (стволы, приклады, ствольные коробки и т.д.)
-- Версия: 1.1 (Rebalance by Mechromancer-Zero)
-- Интеграция: Bob's Warfare Compatibility

extend({
    -- =========================================================================
    -- БАЗОВЫЕ КОМПОНЕНТЫ: Болты, гайки, нитраты
    -- =========================================================================

    -- -------------------------------------------------------------------------
    -- ATF-bolts-nuts: Болты и гайки (базовый компонент)
    -- -------------------------------------------------------------------------
    {
        type ="recipe",
        name ="ATF-bolts-nuts",
        category ="crafting",
        energy_required = 3,
        enabled = true,
        ingredients = {
            {type ="item", name ="iron-plate", amount = 1}
        },
        results = {
            {type ="item", name ="ATF-bolts-nuts", amount = 5}
        }
    },

    -- -------------------------------------------------------------------------
    -- ATF-nitrate: Нитраты (для пороха)
    -- -------------------------------------------------------------------------
    {
        type ="recipe",
        name ="ATF-nitrate",
        category ="crafting",
        subgroup ="ATF-comp",
        energy_required = 2,
        enabled = true,
        ingredients = {
            {type ="item", name ="stone", amount = 1}
        },
        results = {
            {type ="item", name ="ATF-nitrate", amount = 2}
        }
    },

    -- -------------------------------------------------------------------------
    -- ATF-cinnabar: Киноварная руда (для ртути)
    -- -------------------------------------------------------------------------
    {
        type ="recipe",
        name ="ATF-cinnabar",
        category ="crafting",
        subgroup ="ATF-comp",
        energy_required = 2,
        enabled = true,
        ingredients = {
            {type ="item", name ="stone", amount = 1}
        },
        results = {
            {type ="item", name ="cinnabar-ore", amount = 2}
        }
    },

    -- -------------------------------------------------------------------------
    -- ATF-mercury: Ртуть (плавка из киновари)
    -- -------------------------------------------------------------------------
    {
        type ="recipe",
        name ="ATF-mercury",
        category ="smelting",
        subgroup ="ATF-comp",
        energy_required = 4,
        enabled = true,
        ingredients = {
            {type ="item", name ="cinnabar-ore", amount = 1}
        },
        results = {
            {type ="item", name ="mercury", amount = 1}
        }
    },

    -- =========================================================================
    -- ПОРОХ: Базовый и улучшенный
    -- =========================================================================

    -- -------------------------------------------------------------------------
    -- ATF-powder: Чёрный порох (базовый)
    -- -------------------------------------------------------------------------
    {
        type ="recipe",
        name ="ATF-powder",
        category ="crafting",
        energy_required = 5,
        enabled = true,
        ingredients = {
            {type ="item", name ="coal", amount = 4},
            {type ="item", name ="ATF-nitrate", amount = 4}
        },
        results = {
            {type ="item", name ="ATF-powder", amount = 5}
        }
    },

    -- -------------------------------------------------------------------------
    -- ATF-better-powder: Улучшенный порох (с серой)
    -- -------------------------------------------------------------------------
    {
        type ="recipe",
        name ="ATF-better-powder",
        category ="crafting",
        energy_required = 4,
        enabled = true,
        ingredients = {
            {type ="item", name ="coal", amount = 2},
            {type ="item", name ="sulfur", amount = 2},
            {type ="item", name ="ATF-nitrate", amount = 4}
        },
        results = {
            {type ="item", name ="ATF-powder", amount = 10}
        }
    },

    -- =========================================================================
    -- ПИСТОЛЕТНЫЕ КОМПОНЕНТЫ: Стволы, рамки, затворы
    -- =========================================================================

    -- -------------------------------------------------------------------------
    -- ATF-pistol-tips: Пулечки для пистолетных патронов
    -- -------------------------------------------------------------------------
    {
        type ="recipe",
        name ="ATF-pistol-tips",
        category ="crafting",
        energy_required = 3,
        enabled = true,
        ingredients = {
            {type ="item", name ="iron-plate", amount = 2}
        },
        results = {
            {type ="item", name ="ATF-pistol-tips", amount = 4}
        }
    },

    -- -------------------------------------------------------------------------
    -- ATF-pistol-casing: Пистолетные гильзы
    -- -------------------------------------------------------------------------
    {
        type ="recipe",
        name ="ATF-pistol-casing",
        category ="crafting",
        energy_required = 3,
        enabled = true,
        ingredients = {
            {type ="item", name ="copper-plate", amount = 2}
        },
        results = {
            {type ="item", name ="ATF-pistol-casing", amount = 1}
        }
    },

    -- -------------------------------------------------------------------------
    -- ATF-pistol-barrel: Пистолетный ствол
    -- -------------------------------------------------------------------------
    {
        type ="recipe",
        name ="ATF-pistol-barrel",
        category ="crafting",
        energy_required = 3,
        enabled = true,
        ingredients = {
            {type ="item", name ="iron-stick", amount = 1},
            {type ="item", name ="ATF-recoil-spring", amount = 1}
        },
        results = {
            {type ="item", name ="ATF-pistol-barrel", amount = 1}
        }
    },

    -- -------------------------------------------------------------------------
    -- ATF-pistol-grip: Пистолетная рукоять
    -- -------------------------------------------------------------------------
    {
        type ="recipe",
        name ="ATF-pistol-grip",
        category ="crafting",
        energy_required = 3,
        enabled = true,
        ingredients = {
            {type ="item", name ="iron-plate", amount = 2}
        },
        results = {
            {type ="item", name ="ATF-pistol-grip", amount = 1}
        }
    },

    -- -------------------------------------------------------------------------
    -- ATF-pistol-frame-metal: Металлическая рамка пистолета
    -- -------------------------------------------------------------------------
    {
        type ="recipe",
        name ="ATF-pistol-frame-metal",
        category ="crafting",
        energy_required = 3,
        enabled = true,
        ingredients = {
            {type ="item", name ="iron-plate", amount = 2}
        },
        results = {
            {type ="item", name ="ATF-pistol-frame-metal", amount = 1}
        }
    },

    -- -------------------------------------------------------------------------
    -- ATF-pistol-frame-modern: Современная рамка пистолета (пластик)
    -- -------------------------------------------------------------------------
    {
        type ="recipe",
        name ="ATF-pistol-frame-modern",
        category ="crafting",
        energy_required = 3,
        enabled = false,
        ingredients = {
            {type ="item", name ="steel-plate", amount = 1},
            {type ="item", name ="plastic-bar", amount = 2}
        },
        results = {
            {type ="item", name ="ATF-pistol-frame-modern", amount = 1}
        }
    },

    -- -------------------------------------------------------------------------
    -- ATF-pistol-slide: Затвор пистолета
    -- -------------------------------------------------------------------------
    {
        type ="recipe",
        name ="ATF-pistol-slide",
        category ="crafting",
        energy_required = 3,
        enabled = true,
        ingredients = {
            {type ="item", name ="iron-plate", amount = 2},
            {type ="item", name ="ATF-bolts-nuts", amount = 2}
        },
        results = {
            {type ="item", name ="ATF-pistol-slide", amount = 1}
        }
    },

    -- -------------------------------------------------------------------------
    -- ATF-recoil-spring: Возвратная пружина
    -- -------------------------------------------------------------------------
    {
        type ="recipe",
        name ="ATF-recoil-spring",
        category ="crafting",
        energy_required = 3,
        enabled = true,
        ingredients = {
            {type ="item", name ="iron-plate", amount = 2},
            {type ="item", name ="copper-cable", amount = 4}
        },
        results = {
            {type ="item", name ="ATF-recoil-spring", amount = 1}
        }
    },

    -- =========================================================================
    -- ПРИПАДЫ: Деревянные, металлические, полимерные
    -- =========================================================================

    -- -------------------------------------------------------------------------
    -- ATF-wooden-stock: Деревянный приклад
    -- -------------------------------------------------------------------------
    {
        type ="recipe",
        name ="ATF-wooden-stock",
        category ="crafting",
        energy_required = 3,
        enabled = false,
        ingredients = {
            {type ="item", name ="wood", amount = 2},
            {type ="item", name ="ATF-bolts-nuts", amount = 2}
        },
        results = {
            {type ="item", name ="ATF-wooden-stock", amount = 1}
        }
    },

    -- -------------------------------------------------------------------------
    -- ATF-metal-stock: Металлический приклад
    -- -------------------------------------------------------------------------
    {
        type ="recipe",
        name ="ATF-metal-stock",
        category ="crafting",
        energy_required = 3,
        enabled = false,
        ingredients = {
            {type ="item", name ="iron-plate", amount = 2},
            {type ="item", name ="ATF-bolts-nuts", amount = 2}
        },
        results = {
            {type ="item", name ="ATF-metal-stock", amount = 1}
        }
    },

    -- -------------------------------------------------------------------------
    -- ATF-poly-stock: Полимерный приклад
    -- -------------------------------------------------------------------------
    {
        type ="recipe",
        name ="ATF-poly-stock",
        category ="crafting",
        energy_required = 3,
        enabled = false,
        ingredients = {
            {type ="item", name ="plastic-bar", amount = 4},
            {type ="item", name ="ATF-bolts-nuts", amount = 2}
        },
        results = {
            {type ="item", name ="ATF-poly-stock", amount = 1}
        }
    },

    -- =========================================================================
    -- СТВОЛЫ: ПП, винтовочные, пулемётные
    -- =========================================================================

    -- -------------------------------------------------------------------------
    -- ATF-smg-barrel: Ствол ПП
    -- -------------------------------------------------------------------------
    {
        type ="recipe",
        name ="ATF-smg-barrel",
        category ="crafting",
        energy_required = 3,
        enabled = false,
        ingredients = {
            {type ="item", name ="iron-stick", amount = 1}
        },
        results = {
            {type ="item", name ="ATF-smg-barrel", amount = 1}
        }
    },

    -- -------------------------------------------------------------------------
    -- ATF-long-rifle-barrel: Длинный винтовочный ствол
    -- -------------------------------------------------------------------------
    {
        type ="recipe",
        name ="ATF-long-rifle-barrel",
        category ="crafting",
        energy_required = 3,
        enabled = true,
        ingredients = {
            {type ="item", name ="iron-stick", amount = 2}
        },
        results = {
            {type ="item", name ="ATF-long-rifle-barrel", amount = 1}
        }
    },

    -- -------------------------------------------------------------------------
    -- ATF-short-rifle-barrel: Короткий винтовочный ствол
    -- -------------------------------------------------------------------------
    {
        type ="recipe",
        name ="ATF-short-rifle-barrel",
        category ="crafting",
        energy_required = 3,
        enabled = false,
        ingredients = {
            {type ="item", name ="iron-stick", amount = 2}
        },
        results = {
            {type ="item", name ="ATF-short-rifle-barrel", amount = 1}
        }
    },

    -- -------------------------------------------------------------------------
    -- ATF-mg-barrel: Пулемётный ствол
    -- -------------------------------------------------------------------------
    {
        type ="recipe",
        name ="ATF-mg-barrel",
        category ="crafting",
        energy_required = 3,
        enabled = false,
        ingredients = {
            {type ="item", name ="steel-plate", amount = 2},
            {type ="item", name ="pipe", amount = 1}
        },
        results = {
            {type ="item", name ="ATF-mg-barrel", amount = 1}
        }
    },

    -- =========================================================================
    -- СТВОЛЬНЫЕ КОРОБКИ: Различные типы
    -- =========================================================================

    -- -------------------------------------------------------------------------
    -- ATF-smg-receiver-stamped: Штампованная ствольная коробка ПП
    -- -------------------------------------------------------------------------
    {
        type ="recipe",
        name ="ATF-smg-receiver-stamped",
        category ="crafting",
        energy_required = 3,
        enabled = false,
        ingredients = {
            {type ="item", name ="steel-plate", amount = 1}
        },
        results = {
            {type ="item", name ="ATF-smg-receiver-stamped", amount = 1}
        }
    },

    -- -------------------------------------------------------------------------
    -- ATF-smg-receiver-milled: Фрезерованная ствольная коробка ПП
    -- -------------------------------------------------------------------------
    {
        type ="recipe",
        name ="ATF-smg-receiver-milled",
        category ="crafting",
        energy_required = 10,
        enabled = false,
        ingredients = {
            {type ="item", name ="iron-plate", amount = 4}
        },
        results = {
            {type ="item", name ="ATF-smg-receiver-milled", amount = 1}
        }
    },

    -- -------------------------------------------------------------------------
    -- ATF-smg-receiver-modern: Современная ствольная коробка ПП
    -- -------------------------------------------------------------------------
    {
        type ="recipe",
        name ="ATF-smg-receiver-modern",
        category ="crafting",
        energy_required = 10,
        enabled = false,
        ingredients = {
            {type ="item", name ="steel-plate", amount = 2},
            {type ="item", name ="plastic-bar", amount = 4}
        },
        results = {
            {type ="item", name ="ATF-smg-receiver-modern", amount = 1}
        }
    },

    -- -------------------------------------------------------------------------
    -- ATF-bolt-receiver: Болтовая ствольная коробка
    -- -------------------------------------------------------------------------
    {
        type ="recipe",
        name ="ATF-bolt-receiver",
        category ="crafting",
        energy_required = 3,
        enabled = true,
        ingredients = {
            {type ="item", name ="iron-plate", amount = 4},
            {type ="item", name ="ATF-bolts-nuts", amount = 2}
        },
        results = {
            {type ="item", name ="ATF-bolt-receiver", amount = 1}
        }
    },

    -- -------------------------------------------------------------------------
    -- ATF-semi-receiver: Полуавтоматическая ствольная коробка
    -- -------------------------------------------------------------------------
    {
        type ="recipe",
        name ="ATF-semi-receiver",
        category ="crafting",
        energy_required = 3,
        enabled = false,
        ingredients = {
            {type ="item", name ="iron-plate", amount = 4},
            {type ="item", name ="ATF-bolts-nuts", amount = 2}
        },
        results = {
            {type ="item", name ="ATF-semi-receiver", amount = 1}
        }
    },

    -- -------------------------------------------------------------------------
    -- ATF-auto-receiver: Автоматическая ствольная коробка
    -- -------------------------------------------------------------------------
    {
        type ="recipe",
        name ="ATF-auto-receiver",
        category ="crafting",
        energy_required = 3,
        enabled = false,
        ingredients = {
            {type ="item", name ="steel-plate", amount = 3},
            {type ="item", name ="ATF-bolts-nuts", amount = 3}
        },
        results = {
            {type ="item", name ="ATF-auto-receiver", amount = 1}
        }
    },

    -- -------------------------------------------------------------------------
    -- ATF-powerful-receiver: Усиленная ствольная коробка
    -- -------------------------------------------------------------------------
    {
        type ="recipe",
        name ="ATF-powerful-receiver",
        category ="crafting",
        energy_required = 6,
        enabled = false,
        ingredients = {
            {type ="item", name ="steel-plate", amount = 2},
            {type ="item", name ="ATF-bolts-nuts", amount = 4}
        },
        results = {
            {type ="item", name ="ATF-powerful-receiver", amount = 1}
        }
    },

    -- -------------------------------------------------------------------------
    -- ATF-mg-receiver: Пулемётная ствольная коробка
    -- -------------------------------------------------------------------------
    {
        type ="recipe",
        name ="ATF-mg-receiver",
        category ="crafting",
        energy_required = 3,
        enabled = false,
        ingredients = {
            {type ="item", name ="steel-plate", amount = 4},
            {type ="item", name ="ATF-bolts-nuts", amount = 4}
        },
        results = {
            {type ="item", name ="ATF-mg-receiver", amount = 1}
        }
    },

    -- =========================================================================
    -- ВИНТОВОЧНЫЕ КОМПОНЕНТЫ: Гильзы, пули, рукояти
    -- =========================================================================

    -- -------------------------------------------------------------------------
    -- ATF-rifle-casing: Винтовочные гильзы
    -- -------------------------------------------------------------------------
    {
        type ="recipe",
        name ="ATF-rifle-casing",
        category ="crafting",
        energy_required = 4,
        enabled = false,
        ingredients = {
            {type ="item", name ="copper-plate", amount = 2}
        },
        results = {
            {type ="item", name ="ATF-rifle-casing", amount = 1}
        }
    },

    -- -------------------------------------------------------------------------
    -- ATF-rifle-bullets: Винтовочные пули
    -- -------------------------------------------------------------------------
    {
        type ="recipe",
        name ="ATF-rifle-bullets",
        category ="crafting",
        energy_required = 3,
        enabled = false,
        ingredients = {
            {type ="item", name ="iron-plate", amount = 2},
            {type ="item", name ="copper-plate", amount = 2}
        },
        results = {
            {type ="item", name ="ATF-rifle-bullets", amount = 1}
        }
    },

    -- -------------------------------------------------------------------------
    -- ATF-rifle-grip: Винтовочная рукоять (дерево)
    -- -------------------------------------------------------------------------
    {
        type ="recipe",
        name ="ATF-rifle-grip",
        category ="crafting",
        energy_required = 3,
        enabled = false,
        ingredients = {
            {type ="item", name ="iron-plate", amount = 1},
            {type ="item", name ="wood", amount = 1}
        },
        results = {
            {type ="item", name ="ATF-rifle-grip", amount = 1}
        }
    },

    -- -------------------------------------------------------------------------
    -- ATF-poly-rifle-grip: Винтовочная рукоять (пластик)
    -- -------------------------------------------------------------------------
    {
        type ="recipe",
        name ="ATF-poly-rifle-grip",
        category ="crafting",
        energy_required = 3,
        enabled = false,
        ingredients = {
            {type ="item", name ="iron-plate", amount = 1},
            {type ="item", name ="plastic-bar", amount = 2}
        },
        results = {
            {type ="item", name ="ATF-poly-rifle-grip", amount = 1}
        }
    },

    -- -------------------------------------------------------------------------
    -- ATF-primer: Капсюли (из ртути)
    -- -------------------------------------------------------------------------
    {
        type ="recipe",
        name ="ATF-primer",
        category ="crafting",
        energy_required = 3,
        enabled = true,
        ingredients = {
            {type ="item", name ="copper-plate", amount = 1},
            {type ="item", name ="mercury", amount = 1}
        },
        results = {
            {type ="item", name ="ATF-primer", amount = 1}
        }
    }
})

-- ============================================================================
-- ЛОГИРОВАНИЕ ЗАГРУЗКИ
-- ============================================================================

log("[ATF-Rebalance] Component recipes loaded successfully (34 recipes registered)")

-- ============================================================================
-- ИНТЕГРАЦИЯ С BOB'S WARFARE (опционально)
-- ============================================================================

if mods["bobwarfare"] then
    log("[ATF-Rebalance] Bob's Warfare detected - component recipes compatible")
end