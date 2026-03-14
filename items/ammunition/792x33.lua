data:extend(
{
  {
    type = "ammo",
    name = "792x33",
	ammo_category = "792x33",
    icon = "__Atlas_ATF__/graphics/ammo/792x33.png",
	icon_size = 64,
    
    ammo_type =
    {
      category = "792x33",
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
              damage = { amount = 14, type = "physical"}
            }
          }
        }
      }
    },
    magazine_size = 30,
    subgroup = "ATF-ammo",
    order = "a[792x33]",
    stack_size = 200
  }
  })