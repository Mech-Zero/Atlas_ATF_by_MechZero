data:extend(
{
  {
    type = "ammo",
    name = "792x57",
	ammo_category = "792x57",
    icon = "__Atlas_ATF__/graphics/ammo/792x57.png",
	icon_size = 64,
    
    ammo_type =
    {
      category = "792x57",
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
              damage = { amount = 28, type = "physical"}
            }
          }
        }
      }
    },
    magazine_size = 5,
    subgroup = "ATF-ammo",
    order = "a[792x57]",
    stack_size = 200
  },
    {
    type = "ammo",
    name = "792x57drum",
	ammo_category = "792x57",
	icon_size = 64,
    icon = "__Atlas_ATF__/graphics/ammo/792x57drum.png",
    
    ammo_type =
    {
      category = "792x57",
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
              damage = { amount = 30, type = "physical"}
            }
          }
        }
      }
    },
    magazine_size = 100,
    subgroup = "ATF-ammo",
    order = "a[792x57drum]",
    stack_size = 200
  }
  })