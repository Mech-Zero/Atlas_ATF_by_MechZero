data:extend(
{
  {
    type = "ammo",
    name = "303ammo",
	ammo_category = "303ammo",
    icon = "__Atlas_ATF__/graphics/ammo/303.png",
	icon_size = 64,
    
    ammo_type =
    {
      category = "303ammo",
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
              damage = { amount = 26, type = "physical"}
            }
          }
        }
      }
    },
    magazine_size = 5,
    subgroup = "ATF-ammo",
    order = "a[303]",
    stack_size = 200
  }, 
  {
    type = "ammo",
    name = "303mag",
	ammo_category = "303ammo",
    icon = "__Atlas_ATF__/graphics/ammo/303mag.png",
	icon_size = 128,
    
    ammo_type =
    {
      category = "303ammo",
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
              damage = { amount = 26, type = "physical"}
            },
            {
              type = "damage",
              damage = { amount = 5, type = "poison"}
            }
          }
        }
      }
    },
    magazine_size = 30,
    subgroup = "ATF-ammo",
    order = "a[303mag]",
    stack_size = 200
  },
  })