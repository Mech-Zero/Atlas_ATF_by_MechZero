data:extend(
{
  {
    type = "recipe",
    name = "ATF-rcxd",
    enabled = false,
	energy_required = 10,
    ingredients =
    {
			{type = "item", name = "explosives", amount = 8},
			{type = "item", name = "electronic-circuit",amount =  1},
			{type = "item", name = "steel-plate",amount =  4},
    },
    results = {
			{type = "item", name = "ATF-rcxd", amount = 1}
	}
  },  
  {
    type = "recipe",
    name = "ATF-rcnd",
    enabled = false,
	energy_required = 10,
    ingredients =
    {
			{type = "item", name = "ATF-rcxd",amount =  1},
			{type = "item", name = "atomic-bomb", amount = 1},
    },
    results = {
			{type = "item", name = "ATF-rcnd", amount = 1}
	}
  },  
})