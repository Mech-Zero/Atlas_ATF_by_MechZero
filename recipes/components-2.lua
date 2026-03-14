data:extend(
    {
        --components 2
        {
            type = "recipe",
            name = "ATF-shotgun-receiver",
            energy_required = 5,
            enabled = false,
            ingredients = {
                {type = "item", name = "steel-plate", amount = 2},
                {type = "item", name = "ATF-bolts-nuts", amount = 2}
            },
            results = {{type = "item", name = "ATF-shotgun-receiver", amount = 1}}
        },
        {
            type = "recipe",
            name = "ATF-hmg-receiver",
            energy_required = 10,
            enabled = false,
            ingredients = {
                {type = "item", name = "steel-plate", amount = 10},
                {type = "item", name = "ATF-bolts-nuts", amount = 6}
            },
            results = {{type = "item", name = "ATF-hmg-receiver", amount = 1}}
        },
        {
            type = "recipe",
            name = "ATF-hmg-barrel",
            energy_required = 10,
            enabled = false,
            ingredients = {
                {type = "item", name = "steel-plate", amount = 2},
                {type = "item", name = "ATF-recoil-spring", amount = 2},
                {type = "item", name = "ATF-bolts-nuts", amount = 2}
            },
            results = {{type = "item", name = "ATF-hmg-barrel", amount = 1}}
        },
        {
            type = "recipe",
            name = "ATF-heavy-casings",
            energy_required = 4,
            enabled = false,
            ingredients = {
                {type = "item", name = "steel-plate", amount = 4},
                {type = "item", name = "copper-plate", amount = 2}
            },
            results = {{type = "item", name = "ATF-heavy-casings", amount = 1}}
        },
        {
            type = "recipe",
            name = "ATF-heavy-bullets",
            energy_required = 4,
            enabled = false,
            ingredients = {
                {type = "item", name = "steel-plate", amount = 1},
                {type = "item", name = "copper-plate", amount = 4}
            },
            results = {{type = "item", name = "ATF-heavy-bullets", amount = 1}}
        },
        {
            type = "recipe",
            name = "ATF-buckshot",
            energy_required = 4,
            enabled = false,
            ingredients = {
                {type = "item", name = "iron-plate", amount = 1}
            },
            results = {{type = "item", name = "ATF-buckshot", amount = 1}}
        },
        {
            type = "recipe",
            name = "ATF-empty-shell",
            energy_required = 4,
            enabled = false,
            ingredients = {
                {type = "item", name = "iron-plate", amount = 1}
            },
            results = {{type = "item", name = "ATF-empty-shell", amount = 1}}
        },
        {
            type = "recipe",
            name = "ATF-plasma-cell",
            category = "chemistry",
            energy_required = 15,
            enabled = false,
            ingredients = {
                {type = "item", name = "plastic-bar", amount = 2},
                {type = "fluid", name = "water", amount = 200},
                {type = "item", name = "steel-plate", amount = 2},
                {type = "item", name = "copper-plate", amount = 2}
            },
            results = {{type = "item", name = "ATF-plasma-cell", amount = 1}}
        },
        {
            type = "recipe",
            name = "ATF-future-receiver",
            category = "advanced-crafting",
            energy_required = 10,
            enabled = false,
            ingredients = {
                {type = "item", name = "low-density-structure", amount = 1},
                {type = "item", name = "processing-unit", amount = 1}
            },
            results = {{type = "item", name = "ATF-future-receiver", amount = 1}}
        },
        {
            type = "recipe",
            name = "ATF-future-barrel",
            category = "advanced-crafting",
            energy_required = 10,
            enabled = false,
            ingredients = {
                {type = "item", name = "low-density-structure", amount = 1}
            },
            results = {{type = "item", name = "ATF-future-barrel", amount = 1}}
        },
        {
            type = "recipe",
            name = "ATF-plasmaheater",
            category = "advanced-crafting",
            energy_required = 10,
            enabled = false,
            ingredients = {
                {type = "item", name = "steel-plate", amount = 4},
                {type = "item", name = "copper-cable", amount = 8}
            },
            results = {{type = "item", name = "ATF-plasmaheater", amount = 1}}
        },
        {
            type = "recipe",
            name = "ATF-supercap",
            category = "advanced-crafting",
            energy_required = 10,
            enabled = false,
            ingredients = {
                {type = "item", name = "mercury", amount = 2},
                {type = "item", name = "plastic-bar", amount = 2},
                {type = "item", name = "copper-cable", amount = 4}
            },
            results = {{type = "item", name = "ATF-supercap", amount = 1}}
        },
        {
            type = "recipe",
            name = "ATF-wood",
            subgroup = "ATF-comp",
            energy_required = 5,
            enabled = true,
            allow_as_intermediate = false,
            category = "chemistry",
            ingredients = {
                {type = "fluid", name = "heavy-oil", amount = 2}
            },
            results = {{type = "item", name = "wood", amount = 1}}
        }
    }
)
