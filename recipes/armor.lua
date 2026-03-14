data:extend(
    {
        --ammo 2
        {
            type = "recipe",
            name = "ATF-tesla-armor",
            energy_required = 10,
            enabled = false,
            ingredients = {
                {type = "item", name = "steel-plate", amount = 100},
                {type = "item", name = "processing-unit", amount = 50},
                {type = "item", name = "ATF-supercap", amount = 20},
                {type = "item", name = "ATF-fusion-battery", amount = 10},
                {type = "item", name = "electric-engine-unit", amount = 10}
            },
            results = {{type = "item", name = "ATF-tesla-armor", amount = 1}}
        },
        {
            type = "recipe",
            name = "ATF-hellfire-armor",
            energy_required = 10,
            enabled = false,
            ingredients = {
                {type = "item", name = "steel-plate", amount = 100},
                {type = "item", name = "processing-unit", amount = 50},
                {type = "item", name = "ATF-plasmaheater", amount = 20},
                {type = "item", name = "ATF-fusion-battery", amount = 10},
                {type = "item", name = "electric-engine-unit", amount = 10}
            },
            results = {{type = "item", name = "ATF-hellfire-armor", amount = 1}}
        },
        {
            type = "recipe",
            name = "ATF-eliminator-armor",
            energy_required = 10,
            enabled = false,
            ingredients = {
                {type = "item", name = "steel-plate", amount = 200},
                {type = "item", name = "processing-unit", amount = 200},
                {type = "item", name = "electric-engine-unit", amount = 20},
                {type = "item", name = "ATF-fusion-battery", amount = 20},
                {type = "item", name = "ATF-plasma-cell", amount = 20},
                {type = "item", name = "ATF-supercap", amount = 20}
            },
            results = {{type = "item", name = "ATF-eliminator-armor", amount = 1}}
        }
    }
)
