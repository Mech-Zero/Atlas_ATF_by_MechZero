data:extend(
{
  {
    type = "ammo",
    name = "545x39",
	ammo_category = "545x39",
	icon_size = 64,
    icon = "__Atlas_ATF__/graphics/ammo/545x39.png",
    
    ammo_type =
    {
      category = "545x39",
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
    order = "a[545x39]",
    stack_size = 200
  },
    {
    type = "ammo",
    name = "545long",
	ammo_category = "545x39",
	icon_size = 64,
    icon = "__Atlas_ATF__/graphics/ammo/545long.png",
    
    ammo_type =
    {
      category = "545x39",
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
              damage = { amount = 4, type = "fire"}
            }
          }
        }
      }
    },
    magazine_size = 45,
    subgroup = "ATF-ammo",
    order = "a[545long]",
    stack_size = 200
  }
  })
  