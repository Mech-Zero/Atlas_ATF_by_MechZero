data:extend(
{
--buying stuff with cash
--science
    {
    type = "recipe",
    name = "ATF-buy-science-1",
	category = "ATF-trade",
    --icon = "__base__/graphics/--icons/automation-science-pack.png",
    --icon_size = 64, --icon_mipmaps = 4,
	subgroup = "ATF-buying-science", 
	main_product= "automation-science-pack",
	energy_required = 10,
    enabled = true,
	ingredients =
		{
			{type = "item", name = "ATF-cash", amount = 1}
		},

		results = 
		{
			{type = "item", name = "automation-science-pack", amount = 20},
			--{type = "item", name = "ATF-cash", amount = 0, probability = 0}
		},
	},
    {
    type = "recipe",
    name = "ATF-buy-science-2",    
	category = "ATF-trade",
	main_product= "logistic-science-pack",
    --icon = "__base__/graphics/--icons/logistic-science-pack.png",
    --icon_size = 64, --icon_mipmaps = 4,
	subgroup = "ATF-buying-science",
	energy_required = 10,
    enabled = true,
	ingredients =
		{
			{type = "item", name = "ATF-cash",amount =  2}
		},

		results = 
		{
			{type = "item", name = "logistic-science-pack", amount = 20},
			--{type = "item", name = "ATF-cash", amount = 0, probability = 0}
		},
	},

 
    {
    type = "recipe",
    name = "ATF-buy-science-3", 
	category = "ATF-trade",
	main_product= "military-science-pack",
    --icon = "__base__/graphics/--icons/military-science-pack.png",
    --icon_size = 64, --icon_mipmaps = 4,
	subgroup = "ATF-buying-science",
	energy_required = 10,
    enabled = true,
	ingredients =
		{
			{type = "item", name = "ATF-cash",amount =  2}
		},

		results = 
		{
			{type = "item", name = "military-science-pack", amount = 20},
			--{type = "item", name = "ATF-cash", amount = 0, probability = 0}
		},
	},

 
    {
    type = "recipe",
    name = "ATF-buy-science-4",   
	category = "ATF-trade", 
	main_product= "chemical-science-pack",
    --icon = "__base__/graphics/--icons/chemical-science-pack.png",
    --icon_size = 64, --icon_mipmaps = 4,
	subgroup = "ATF-buying-science",
	energy_required = 10,
    enabled = true,
	ingredients =
		{
			{type = "item", name = "ATF-cash",amount =  4}
		},

		results = 
		{
			{type = "item", name = "chemical-science-pack", amount = 20},
			--{type = "item", name = "ATF-cash", amount = 0, probability = 0}
		},
	},
    {
    type = "recipe",
    name = "ATF-buy-science-5", 
	category = "ATF-trade",  
	main_product= "production-science-pack",
    --icon = "__base__/graphics/--icons/production-science-pack.png",
    --icon_size = 64, --icon_mipmaps = 4,
	subgroup = "ATF-buying-science",
	energy_required = 10,
    enabled = true,
	ingredients =
		{
			{type = "item", name = "ATF-cash",amount =  8}
		},

		results = 
		{
			{type = "item", name = "production-science-pack", amount = 20},
			--{type = "item", name = "ATF-cash", amount = 0, probability = 0}
		},
	},

    {
    type = "recipe",
    name = "ATF-buy-science-6", 
	category = "ATF-trade",  
	main_product= "utility-science-pack",
    --icon = "__base__/graphics/--icons/utility-science-pack.png",
    --icon_size = 64, --icon_mipmaps = 4,
	subgroup = "ATF-buying-science",
	energy_required = 10,
    enabled = true,
	ingredients =
		{
			{type = "item", name = "ATF-cash",amount =  12}
		},

		results = 
		{
			{type = "item", name = "utility-science-pack", amount = 20},
			--{type = "item", name = "ATF-cash", amount = 0, probability = 0}
		},
	},

    {
    type = "recipe",
    name = "ATF-buy-science-7",  
	category = "ATF-trade",  
	main_product= "space-science-pack",
    --icon = "__base__/graphics/--icons/space-science-pack.png",
    --icon_size = 64, --icon_mipmaps = 4,
	subgroup = "ATF-buying-science",
	energy_required = 10,
    enabled = true,
	ingredients =
		{
			{type = "item", name = "ATF-cash",amount =  10}
		},

		results = 
		{
			{type = "item", name = "space-science-pack", amount = 1},
			--{type = "item", name = "ATF-cash", amount = 0, probability = 0}
		},
	},


 --resources
    {
    type = "recipe",
    name = "ATF-buy-solid",
	category = "ATF-trade",
	subgroup = "ATF-buying",
	energy_required = 5,
    enabled = true,
	ingredients =
		{
			{type = "item", name = "ATF-cash",amount =  1}
		},

		results = 
		{
			{type = "item", name = "solid-fuel", amount = 20},
		},
	},
    {
    type = "recipe",
    name = "ATF-buy-wood",
	category = "ATF-trade",
	subgroup = "ATF-buying",
	energy_required = 5,
    enabled = true,
	ingredients =
		{
			{type = "item", name = "ATF-cash",amount =  1}
		},

		results = 
		{
			{type = "item", name = "wood", amount = 50},
		},
	},
    {
    type = "recipe",
    name = "ATF-buy-explosives",
	category = "ATF-trade",
	subgroup = "ATF-buying",
	energy_required = 5,
    enabled = true,
	ingredients =
		{
			{type = "item", name = "ATF-cash",amount =  1}
		},

		results = 
		{
			{type = "item", name = "explosives", amount = 10},
		},
	},
    {
    type = "recipe",
    name = "ATF-buy-circuit-1",
	category = "ATF-trade",
	subgroup = "ATF-buying",
	energy_required = 5,
    enabled = true,
	ingredients =
		{
			{type = "item", name = "ATF-cash",amount =  1}
		},

		results = 
		{
			{type = "item", name = "electronic-circuit", amount = 20},
		},
	},
    {
    type = "recipe",
    name = "ATF-buy-circuit-2",
	category = "ATF-trade",
	subgroup = "ATF-buying",
	energy_required = 5,
    enabled = true,
	ingredients =
		{
			{type = "item", name = "ATF-cash",amount =  1}
		},

		results = 
		{
			{type = "item", name = "advanced-circuit", amount = 10},
		},
	},

 
    {
    type = "recipe",
    name = "ATF-buy-circuit-3",
	category = "ATF-trade",
	subgroup = "ATF-buying",
	energy_required = 5,
    enabled = true,
	ingredients =
		{
			{type = "item", name = "ATF-cash",amount =  1}
		},

		results = 
		{
			{type = "item", name = "processing-unit", amount = 1},
		},
	},

    {
    type = "recipe",
    name = "ATF-buy-nuke",
	category = "ATF-trade",
	subgroup = "ATF-buying",
	energy_required = 5,
    enabled = true,
	ingredients =
		{
			{type = "item", name = "ATF-cash",amount =  80}
		},

		results = 
		{
			{type = "item", name = "atomic-bomb", amount = 1},
		},
	},

 
})