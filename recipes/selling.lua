data:extend(
    {
        --selling gun boxes
        {
            type = "recipe",
            name = "ATF-sell-old",
            category = "ATF-trade",
            icon = "__Atlas_ATF__/graphics/trade/selling/box-old.png",
            icon_size = 64,
            -- main_product = "",
            allow_as_intermediate = false,
            subgroup = "ATF-selling",
            energy_required = 10,
            enabled = true,
			order = "a2",
            ingredients = {
                {type = "item", name = "ATF-gunbox-old", amount = 1}
            },
            results = {
                {type = "item", name = "ATF-cash", amount = 2}
            }
        },
        {
            type = "recipe",
            name = "ATF-sell-coldwar",
            category = "ATF-trade",
            icon = "__Atlas_ATF__/graphics/trade/selling/box-coldwar.png",
            icon_size = 64,
            --main_product = "",
            allow_as_intermediate = false,
            subgroup = "ATF-selling",
            energy_required = 10,
            enabled = true,
			order = "a3",
            ingredients = {
                {type = "item", name = "ATF-gunbox-coldwar", amount = 1}
            },
            results = {
                {type = "item", name = "ATF-cash", amount = 4}
            }
        },
        {
            type = "recipe",
            name = "ATF-sell-modern",
            category = "ATF-trade",
            icon = "__Atlas_ATF__/graphics/trade/selling/box-modern.png",
            icon_size = 64,
            --main_product = "",
            allow_as_intermediate = false,
            subgroup = "ATF-selling",
            energy_required = 10,
            enabled = true,
			order = "a4",
            ingredients = {
                {type = "item", name = "ATF-gunbox-modern", amount = 1}
            },
            results = {
                {type = "item", name = "ATF-cash", amount = 6}
            }
        },
        {
            type = "recipe",
            name = "ATF-sell-concept",
            category = "ATF-trade",
            icon = "__Atlas_ATF__/graphics/trade/selling/box-concept.png",
            icon_size = 64,
            --main_product = "",
            allow_as_intermediate = false,
            subgroup = "ATF-selling",
            energy_required = 10,
            enabled = true,
			order = "a5",
            ingredients = {
                {type = "item", name = "ATF-gunbox-concept", amount = 1}
            },
            results = {
                {type = "item", name = "ATF-cash", amount = 10}
            }
        },
        {
            type = "recipe",
            name = "ATF-sell-heavy",
            category = "ATF-trade",
            icon = "__Atlas_ATF__/graphics/trade/selling/box-heavy.png",
            icon_size = 64,
            -- main_product = "",
            allow_as_intermediate = false,
            subgroup = "ATF-selling",
            energy_required = 10,
            enabled = true,
			order = "a6",
            ingredients = {
                {type = "item", name = "ATF-gunbox-heavy", amount = 1}
            },
            results = {
                {type = "item", name = "ATF-cash", amount = 10}
                --{type = "item", name = "ATF-cash", amount = 0, probability = 0},
            }
        },
        {
            type = "recipe",
            name = "ATF-sell-ammo",
            category = "ATF-trade",
            icon = "__Atlas_ATF__/graphics/trade/selling/box-ammo.png",
            icon_size = 64,
            --main_product = "",
            allow_as_intermediate = false,
            subgroup = "ATF-selling",
            energy_required = 10,
            enabled = true,
			order = "a1",
            ingredients = {
                {type = "item", name = "ATF-gunbox-ammo", amount = 1}
            },
            results = {
                {type = "item", name = "ATF-cash", amount = 2}
                --{type = "item", name = "ATF-cash", amount = 0, probability = 0},
            }
        },
        {
            type = "recipe",
            name = "ATF-sell-gold",
            category = "ATF-trade",
            icon = "__Atlas_ATF__/graphics/trade/selling/sell-gold.png",
            icon_size = 64,
           -- main_product = "",
            allow_as_intermediate = false,
            subgroup = "ATF-selling",
            energy_required = 10,
            enabled = true,
			order = "ba",
            ingredients = {
                {type = "item", name = "ATF-gold", amount = 1}
            },
            results = {
                {type = "item", name = "ATF-cash", amount =1}
            }
        },
        {
            type = "recipe",
            name = "ATF-sell-gembox",
            category = "ATF-trade",
            icon = "__Atlas_ATF__/graphics/trade/selling/sell-gem.png",
            icon_size = 64,
           -- main_product = "",
            allow_as_intermediate = false,
            subgroup = "ATF-selling",
            energy_required = 10,
            enabled = true,
			order = "bb",
            ingredients = {
                {type = "item", name = "ATF-gembox", amount = 1}
            },
            results = {
                {type = "item", name = "ATF-cash", amount = 3}
            }
        },
    }
)
