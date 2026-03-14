data:extend(
{
  {
    type = "ammo",
    name = "50bmg",
	ammo_category = "50bmg",
    icon = "__Atlas_ATF__/graphics/ammo/50bmg.png",
	icon_size = 128,
    
    ammo_type =
    {
      category = "50bmg",
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
              damage = { amount = 35, type = "physical"}
            },
            {
              type = "damage",
              damage = { amount = 15, type = "impact"}
            },
          }
        }
      }
    },
    magazine_size = 100,
    subgroup = "ATF-ammo",
    order = "a[50bmg]",
    stack_size = 200
  }
  })