data:extend(
{
  {
    type = "ammo",
    name = "762x39",
	ammo_category = "762x39",
    icon = "__Atlas_ATF__/graphics/ammo/762x39.png",
	icon_size = 64,
    
    ammo_type =
    {
      category = "762x39",
      action =
      {
        type = "direct",
        action_delivery =
        {
          type = "instant",
          source_effects =
          {
            type = "create-explosion",
            entity_name = "explosion-gunshot"
          },
          target_effects =
          {
            {
              type = "create-entity",
              entity_name = "explosion-hit"
            },
            {
              type = "damage",
              damage = { amount = 15, type = "physical"}
            }
          }
        }
      }
    },
    magazine_size = 30,
    subgroup = "ATF-ammo",
    order = "a[762x39]",
    stack_size = 200
  },
    {
    type = "ammo",
    name = "762x39drum",
	ammo_category = "762x39",
	icon_size = 64,
    icon = "__Atlas_ATF__/graphics/ammo/762x39drum.png",
    
    ammo_type =
    {
      category = "762x39",
      action =
      {
        type = "direct",
        action_delivery =
        {
          type = "instant",
          source_effects =
          {
            type = "create-explosion",
            entity_name = "explosion-gunshot"
          },
          target_effects =
          {
            {
              type = "create-entity",
              entity_name = "explosion-hit"
            },
            {
              type = "damage",
              damage = { amount = 15, type = "physical"}
            },
			            {
              type = "damage",
              damage = { amount = 10, type = "impact"}
            }
          }
        }
      }
    },
    magazine_size = 100,
    subgroup = "ATF-ammo",
    order = "a[762x39drum]",
    stack_size = 200
  }
  })