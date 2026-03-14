data:extend(
{
  {
    type = "recipe",
    name = "ATF-swatt-turret",
    enabled = false,
	energy_required = 10,
    ingredients =
    {
			{type = "item", name = "swatt",amount = 1},
			{type = "item", name = "556-swatt", amount = 2},
			{type = "item", name = "steel-plate", amount = 4},
			{type = "item", name = "advanced-circuit", amount = 2},
    },
		results = {
		{type = "item", name = "ATF-swatt-turret", amount = 1}
		},
		--main_product = "ATF-swatt-turret",
  },  
  {
    type = "recipe",
    name = "ATF-m25-turret",
    enabled = false,
	energy_required = 10,
    ingredients =
    {
		{type = "item", name = "plasma40watt",amount = 1},
		{type = "item", name = "40wattmag", amount = 2},
		{type = "item", name = "steel-plate", amount = 6},
		{type = "item", name = "processing-unit",amount = 1},

    },
		results = {
		{type = "item", name = "ATF-m25-turret", amount = 1}
		},
		--main_product = "ATF-swatt-turret",
  },  
  {
    type = "recipe",
    name = "ATF-rcw-turret",
    enabled = false,
	energy_required = 10,
    ingredients =
    {
		{type = "item", name = "laserrcw",amount = 1},
		{type = "item", name = "ATF-fusion-battery", amount = 2},
		{type = "item", name = "steel-plate", amount = 6},
		{type = "item", name = "processing-unit",amount = 1},
    },
		results = {
		{type = "item", name = "ATF-rcw-turret", amount = 1}
		}
  },  
  
  {
    type = "recipe",
    name = "ATF-grenade-turret",
    enabled = false,
	energy_required = 10,
    ingredients =
    {
			{type = "item", name = "m32",amount = 1},
			{type = "item", name = "steel-plate", amount = 4},
			{type = "item", name = "advanced-circuit", amount = 2},
    },
		results = {
		{type = "item", name = "ATF-grenade-turret", amount = 1}
		}
  }, 
  {
    type = "recipe",
    name = "ATF-grenade-turret-2",
    enabled = false,
	energy_required = 10,
    ingredients =
    {
            {type = "item", name = "ATF-future-barrel", amount = 1},
            {type = "item", name = "ATF-future-receiver", amount = 1},
			{type = "item", name = "ATF-grenade-turret",amount = 1}
    },
		results = {
		{type = "item", name = "ATF-grenade-turret-2", amount = 1}
		}
  }, 
  {
    type = "recipe",
    name = "ATF-gau-turret",
    enabled = false,
	energy_required = 10,
    ingredients =
    {
			{type = "item", name = "gau",amount = 1},
			{type = "item", name = "steel-plate", amount = 4},
			{type = "item", name = "advanced-circuit", amount = 2},
    },
		results = {
		{type = "item", name = "ATF-gau-turret", amount = 1}
		}
  },  
  })