data:extend(
    {
        --ammo 2
        {
            type = "recipe",
            name = "ATF-arti-shell-acid",
            category = "chemistry",
            energy_required = 15,
            enabled = false,
            ingredients = {
                {type = "item", name = "steel-plate", amount = 10},
                {type = "item", name = "explosives", amount = 8},
                {type = "fluid", name = "sulfuric-acid", amount = 20}
            },
            results = {
                {type = "item", name = "ATF-arti-shell-acid", amount = 1}
            }
        },
        {
            type = "recipe",
            name = "ATF-arti-shell-napalm",
            category = "chemistry",
            energy_required = 15,
            enabled = false,
            ingredients = {
                {type = "item", name = "steel-plate", amount = 10},
                {type = "item", name = "explosives", amount = 8},
                {type = "item", name = "plastic-bar", amount = 2},
                {type = "fluid", name = "heavy-oil", amount = 20}
            },
            results = {
                {type = "item", name = "ATF-arti-shell-napalm", amount = 1}
            }
        },
        {
            type = "recipe",
            name = "20mm",
            energy_required = 8,
            enabled = false,
            ingredients = {
                {type = "item", name = "ATF-heavy-casings", amount = 8},
                {type = "item", name = "ATF-heavy-bullets", amount = 8},
                {type = "item", name = "ATF-primer", amount = 8},
                {type = "item", name = "ATF-powder", amount = 10}
            },
            results = {
                {type = "item", name = "20mm", amount = 1}
            }
        },
        {
            type = "recipe",
            name = "20mm-he",
            energy_required = 10,
            enabled = false,
            ingredients = {
                {type = "item", name = "20mm", amount = 1},
                {type = "item", name = "explosives", amount = 2}
            },
            results = {
                {type = "item", name = "20mm-he", amount = 1}
            }
        },
        {
            type = "recipe",
            name = "50bmg",
            energy_required = 6,
            enabled = false,
            ingredients = {
                {type = "item", name = "ATF-heavy-casings", amount = 6},
                {type = "item", name = "ATF-heavy-bullets", amount = 6},
                {type = "item", name = "ATF-primer", amount = 6},
                {type = "item", name = "ATF-powder", amount = 8}
            },
            results = {
                {type = "item", name = "50bmg", amount = 1}
            }
        },
        {
            type = "recipe",
            name = "40mm-he",
            energy_required = 15,
            enabled = false,
            ingredients = {
                {type = "item", name = "ATF-heavy-casings", amount = 2},
                {type = "item", name = "ATF-primer", amount = 2},
                {type = "item", name = "grenade", amount = 1},
                {type = "item", name = "explosives", amount = 2}
            },
            results = {
                {type = "item", name = "40mm-he", amount = 1}
            }
        },
        {
            type = "recipe",
            name = "40mm-incendiary",
            energy_required = 15,
            enabled = false,
            category = "chemistry",
            ingredients = {
                {type = "item", name = "ATF-heavy-casings", amount = 2},
                {type = "item", name = "ATF-primer", amount = 2},
                {type = "item", name = "grenade", amount = 1},
                {type = "fluid", name = "heavy-oil", amount = 10}
            },
            results = {
                {type = "item", name = "40mm-incendiary", amount = 1}
            }
        },
        {
            type = "recipe",
            name = "40mm-acid",
            energy_required = 15,
            enabled = false,
            category = "chemistry",
            ingredients = {
                {type = "item", name = "ATF-heavy-casings", amount = 2},
                {type = "item", name = "ATF-primer", amount = 2},
                {type = "fluid", name = "sulfuric-acid", amount = 15}
            },
            results = {
                {type = "item", name = "40mm-acid", amount = 1}
            }
        },
        {
            type = "recipe",
            name = "40mm-plasma",
            energy_required = 15,
            enabled = false,
            category = "advanced-crafting",
            ingredients = {
                {type = "item", name = "ATF-plasma-cell", amount = 2},
                {type = "item", name = "ATF-heavy-casings", amount = 2},
                {type = "item", name = "ATF-primer", amount = 2}
            },
            results = {
                {type = "item", name = "40mm-plasma", amount = 1}
            }
        },
        {
            type = "recipe",
            name = "12g-buckshot",
            energy_required = 5,
            enabled = false,
            ingredients = {
                {type = "item", name = "ATF-buckshot", amount = 2},
                {type = "item", name = "ATF-primer", amount = 2},
                {type = "item", name = "ATF-empty-shell", amount = 2},
                {type = "item", name = "ATF-powder", amount = 4}
            },
            results = {
                {type = "item", name = "12g-buckshot", amount = 1}
            }
        },
        {
            type = "recipe",
            name = "12g-slug",
            energy_required = 5,
            enabled = false,
            ingredients = {
                {type = "item", name = "ATF-rifle-bullets", amount = 2},
                {type = "item", name = "ATF-primer", amount = 2},
                {type = "item", name = "ATF-empty-shell", amount = 2},
                {type = "item", name = "ATF-powder", amount = 4}
            },
            results = {
                {type = "item", name = "12g-slug", amount = 1}
            }
        },
        {
            type = "recipe",
            name = "12g-frag",
            energy_required = 10,
            enabled = false,
            ingredients = {
                {type = "item", name = "explosives", amount = 1},
                {type = "item", name = "ATF-buckshot", amount = 2},
                {type = "item", name = "ATF-primer", amount = 2},
                {type = "item", name = "ATF-empty-shell", amount = 2},
                {type = "item", name = "ATF-powder", amount = 2}
            },
            results = {
                {type = "item", name = "12g-frag", amount = 1}
            }
        },
        {
            type = "recipe",
            name = "12g-dragon",
            energy_required = 10,
            enabled = false,
            ingredients = {
                {type = "item", name = "solid-fuel", amount = 1},
                {type = "item", name = "ATF-buckshot", amount = 2},
                {type = "item", name = "ATF-primer", amount = 2},
                {type = "item", name = "ATF-empty-shell", amount = 2},
                {type = "item", name = "ATF-powder", amount = 2}
            },
            results = {
                {type = "item", name = "12g-dragon", amount = 1}
            }
        },
        {
            type = "recipe",
            name = "556-swatt",
            energy_required = 10,
            enabled = false,
            ingredients = {
                {type = "item", name = "556x45", amount = 2},
                {type = "item", name = "copper-cable", amount = 6},
                {type = "item", name = "plastic-bar", amount = 2}
            },
            results = {
                {type = "item", name = "556-swatt", amount = 1}
            }
        },
        {
            type = "recipe",
            name = "556belt",
            energy_required = 10,
            enabled = false,
            category = "advanced-crafting",
            ingredients = {
                {type = "item", name = "556x45drum", amount = 2},
                {type = "fluid", name = "lubricant", amount = 10},
                {type = "item", name = "steel-plate", amount = 1}
            },
            results = {
                {type = "item", name = "556belt", amount = 1}
            }
        },
        {
            type = "recipe",
            name = "762belt",
            energy_required = 10,
            enabled = false,
            category = "advanced-crafting",
            ingredients = {
                {type = "item", name = "762x51drum", amount = 2},
                {type = "fluid", name = "lubricant", amount = 10},
                {type = "item", name = "steel-plate", amount = 1}
            },
            results = {
                {type = "item", name = "762belt", amount = 1}
            }
        },
        {
            type = "recipe",
            name = "40wattmag",
            energy_required = 15,
            enabled = false,
            category = "advanced-crafting",
            ingredients = {
                {type = "item", name = "ATF-plasma-cell", amount = 1},
                {type = "item", name = "steel-plate", amount = 4},
                {type = "item", name = "plastic-bar", amount = 2}
            },
            results = {
                {type = "item", name = "40wattmag", amount = 1}
            }
        },
        {
            type = "recipe",
            name = "killerwattmag",
            energy_required = 15,
            enabled = false,
            category = "advanced-crafting",
            ingredients = {
                {type = "item", name = "ATF-fusion-battery", amount = 2}
            },
            results = {
                {type = "item", name = "killerwattmag", amount = 1}
            }
        },
        {
            type = "recipe",
            name = "heliosmag",
            energy_required = 15,
            enabled = false,
            category = "advanced-crafting",
            ingredients = {
                {type = "item", name = "ATF-plasma-cell", amount = 2},
                {type = "item", name = "steel-plate", amount = 4},
                {type = "item", name = "plastic-bar", amount = 2}
            },
            results = {
                {type = "item", name = "heliosmag", amount = 1}
            }
        },
        {
            type = "recipe",
            name = "ATF-fusion-battery",
            energy_required = 15,
            enabled = false,
            category = "advanced-crafting",
            ingredients = {
                {type = "item", name = "uranium-235", amount = 1},
                {type = "item", name = "iron-plate", amount = 2},
                {type = "item", name = "plastic-bar", amount = 2}
            },
            results = {
                {type = "item", name = "ATF-fusion-battery", amount = 1}
            }
        }
    }
)
