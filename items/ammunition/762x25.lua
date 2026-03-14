data:extend(
{
  {
    type = "ammo",
    name = "762x25",
	ammo_category = "762x25",
    icon = "__Atlas_ATF__/graphics/ammo/762x25.png",
	icon_size = 64,
    
    ammo_type =
    {
      category = "762x25",
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
              damage = { amount = 9, type = "physical"}
            }
          }
        }
      }
    },
    magazine_size = 30,
    subgroup = "ATF-ammo",
    order = "a[762x25]",
    stack_size = 200
  },
    {
    type = "ammo",
    name = "762x25drum",
	ammo_category = "762x25",
	icon_size = 64,
    icon = "__Atlas_ATF__/graphics/ammo/762x25drum.png",
    
    ammo_type =
    {
      category = "762x25",
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
              damage = { amount = 9, type = "physical"}
            },
			            {
              type = "damage",
              damage = { amount = 4, type = "poison"}
            }
          }
        }
      }
    },
    magazine_size = 71,
    subgroup = "ATF-ammo",
    order = "a[762x25drum]",
    stack_size = 200
  }

  })