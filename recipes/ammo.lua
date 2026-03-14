data:extend(
    {
        --ammo
        {
            type = "recipe",
            name = "9mm",
            energy_required = 3,
            enabled = true,
            ingredients = {
                {type = "item", name = "ATF-pistol-casing", amount = 4},
                {type = "item", name = "ATF-pistol-tips", amount = 4},
                {type = "item", name = "ATF-primer", amount = 2},
                {type = "item", name = "ATF-powder", amount = 2}
            },
            results = {
                {type = "item", name = "9mm", amount = 4}
            }
        },
        {
            type = "recipe",
            name = "9mmp",
            energy_required = 3,
            enabled = false,
            ingredients = {
                {type = "item", name = "ATF-powder", amount = 2},
                {type = "item", name = "steel-plate", amount = 2},
                {type = "item", name = "9mm", amount = 1},
                --{type = "item", name = "ATF-powder", amount = 2}
            },
            results = {
                {type = "item", name = "9mmp", amount = 1}
            }
        },
        {
            type = "recipe",
            name = "9mmu",
            energy_required = 5,
            enabled = false,
            ingredients = {
                {type = "item", name = "9mmp", amount = 1},
                {type = "item", name = "uranium-238", amount = 1}
            },
            results = {
                {type = "item", name = "9mmu", amount = 1}
            }
        },
        {
            type = "recipe",
            name = "3006ammo",
            enabled = false,
            ingredients = {
                {type = "item", name = "ATF-rifle-casing", amount = 3},
                {type = "item", name = "ATF-rifle-bullets", amount = 3},
                {type = "item", name = "ATF-primer", amount = 6},
                {type = "item", name = "ATF-powder", amount = 6}
            },
            results = {
                {type = "item", name = "3006ammo", amount = 1}
            }
        },
        {
            name = "303ammo",
            type = "recipe",
            energy_required = 5,
            enabled = false,
            ingredients = {
                {type = "item", name = "ATF-rifle-casing", amount = 3},
                {type = "item", name = "ATF-rifle-bullets", amount = 3},
                {type = "item", name = "ATF-primer", amount = 6},
                {type = "item", name = "ATF-powder", amount = 6}
            },
            results = {
                {type = "item", name = "303ammo", amount = 1}
            }
        },
        {
            name = "303mag",
            type = "recipe",
            energy_required = 10,
            enabled = false,
            ingredients = {
                {type = "item", name = "303ammo", amount = 5},
                {type = "item", name = "steel-plate", amount = 1}
            },
            results = {
                {type = "item", name = "303mag", amount = 1}
            }
        },
        {
            type = "recipe",
            name = "792x57drum",
            energy_required = 10,
            enabled = false,
            ingredients = {
                {type = "item", name = "792x57", amount = 10},
                {type = "item", name = "steel-plate", amount = 2}
            },
            results = {
                {type = "item", name = "792x57drum", amount = 1}
            }
        },
        {
            type = "recipe",
            name = "3006belt",
            energy_required = 10,
            enabled = false,
            ingredients = {
                {type = "item", name = "3006ammo", amount = 15},
                {type = "item", name = "steel-plate", amount = 2}
            },
            results = {
                {type = "item", name = "3006belt", amount = 1}
            }
        },
        {
            type = "recipe",
            name = "556x45",
            energy_required = 5,
            enabled = false,
            ingredients = {
                {type = "item", name = "ATF-rifle-casing", amount = 3},
                {type = "item", name = "ATF-rifle-bullets", amount = 3},
                {type = "item", name = "ATF-primer", amount = 4},
                {type = "item", name = "ATF-powder", amount = 4}
            },
            results = {
                {type = "item", name = "556x45", amount = 1}
            }
        },
        {
            type = "recipe",
            name = "792x33",
            energy_required = 5,
            enabled = false,
            ingredients = {
                {type = "item", name = "ATF-rifle-casing", amount = 3},
                {type = "item", name = "ATF-rifle-bullets", amount = 3},
                {type = "item", name = "ATF-primer", amount = 3},
                {type = "item", name = "ATF-powder", amount = 3}
            },
            results = {
                {type = "item", name = "792x33", amount = 1}
            }
        },
        {
            type = "recipe",
            name = "792x57",
            energy_required = 5,
            enabled = false,
            ingredients = {
                {type = "item", name = "ATF-rifle-casing", amount = 4},
                {type = "item", name = "ATF-rifle-bullets", amount = 4},
                {type = "item", name = "ATF-primer", amount = 4},
                {type = "item", name = "ATF-powder", amount = 6}
            },
            results = {
                {type = "item", name = "792x57", amount = 1}
            }
        },
        {
            type = "recipe",
            name = "68spc",
            energy_required = 5,
            enabled = false,
            ingredients = {
                {type = "item", name = "ATF-rifle-casing", amount = 4},
                {type = "item", name = "ATF-rifle-bullets", amount = 5},
                {type = "item", name = "ATF-primer", amount = 5},
                {type = "item", name = "ATF-powder", amount = 4}
            },
            results = {
                {type = "item", name = "68spc", amount = 1}
            }
        },
        {
            type = "recipe",
            name = "68spcdrum",
            energy_required = 5,
            enabled = false,
            ingredients = {
                {type = "item", name = "68spc", amount = 2},
                {type = "item", name = "steel-plate", amount = 4}
            },
            results = {
                {type = "item", name = "68spcdrum", amount = 1}
            }
        },
        {
            type = "recipe",
            name = "762x25",
            energy_required = 5,
            enabled = false,
            ingredients = {
                {type = "item", name = "ATF-pistol-casing", amount = 4},
                {type = "item", name = "ATF-pistol-tips", amount = 4},
                {type = "item", name = "ATF-primer", amount = 3},
                {type = "item", name = "ATF-powder", amount = 3}
            },
            results = {
                {type = "item", name = "762x25", amount = 1}
            }
        },
        {
            type = "recipe",
            name = "762x25drum",
            energy_required = 5,
            enabled = false,
            ingredients = {
                {type = "item", name = "762x25", amount = 3},
                {type = "item", name = "steel-plate", amount = 2}
            },
            results = {
                {type = "item", name = "762x25drum", amount = 1}
            }
        },
        {
            type = "recipe",
            name = "45acp",
            energy_required = 5,
            enabled = true,
            ingredients = {
                {type = "item", name = "ATF-pistol-casing", amount = 4},
                {type = "item", name = "ATF-pistol-tips", amount = 4},
                {type = "item", name = "ATF-primer", amount = 2},
                {type = "item", name = "ATF-powder", amount = 4}
            },
            results = {
                {type = "item", name = "45acp", amount = 1}
            }
        },
        {
            type = "recipe",
            name = "45acpdrum",
            energy_required = 5,
            enabled = false,
            ingredients = {
                {type = "item", name = "45acp", amount = 2},
                {type = "item", name = "steel-plate", amount = 2},
                {type = "item", name = "copper-plate", amount = 5}
            },
            results = {
                {type = "item", name = "45acpdrum", amount = 1}
            }
        },
        {
            type = "recipe",
            name = "762x51",
            energy_required = 5,
            enabled = false,
            ingredients = {
                {type = "item", name = "ATF-rifle-casing", amount = 4},
                {type = "item", name = "ATF-rifle-bullets", amount = 6},
                {type = "item", name = "ATF-primer", amount = 4},
                {type = "item", name = "ATF-powder", amount = 6}
            },
            results = {
                {type = "item", name = "762x51", amount = 1}
            }
        },
        {
            type = "recipe",
            name = "762x51drum",
            energy_required = 5,
            enabled = false,
            ingredients = {
                {type = "item", name = "762x51", amount = 2},
                {type = "item", name = "steel-plate", amount = 3}
            },
            results = {
                {type = "item", name = "762x51drum", amount = 1}
            }
        },
        {
            type = "recipe",
            name = "762x39",
            energy_required = 5,
            enabled = false,
            ingredients = {
                {type = "item", name = "ATF-rifle-casing", amount = 3},
                {type = "item", name = "ATF-rifle-bullets", amount = 5},
                {type = "item", name = "ATF-primer", amount = 3},
                {type = "item", name = "ATF-powder", amount = 5}
            },
            results = {
                {type = "item", name = "762x39", amount = 1}
            }
        },
        {
            type = "recipe",
            name = "556x45drum",
            energy_required = 5,
            enabled = false,
            ingredients = {
                {type = "item", name = "556x45", amount = 3},
                {type = "item", name = "steel-plate", amount = 2}
            },
            results = {
                {type = "item", name = "556x45drum", amount = 1}
            }
        },
        {
            type = "recipe",
            name = "762x39drum",
            energy_required = 5,
            enabled = false,
            ingredients = {
                {type = "item", name = "762x39", amount = 3},
                {type = "item", name = "iron-plate", amount = 3}
            },
            results = {
                {type = "item", name = "762x39drum", amount = 1}
            }
        },
        {
            type = "recipe",
            name = "545x39",
            energy_required = 5,
            enabled = false,
            ingredients = {
                {type = "item", name = "ATF-rifle-casing", amount = 3},
                {type = "item", name = "ATF-rifle-bullets", amount = 3},
                {type = "item", name = "ATF-primer", amount = 4},
                {type = "item", name = "ATF-powder", amount = 4}
            },
            results = {
                {type = "item", name = "545x39", amount = 1}
            }
        },
        {
            type = "recipe",
            name = "545long",
            energy_required = 5,
            enabled = false,
            ingredients = {
                {type = "item", name = "545x39", amount = 2},
                {type = "item", name = "plastic-bar", amount = 4}
            },
            results = {
                {type = "item", name = "545long", amount = 1}
            }
        }
    }
)
