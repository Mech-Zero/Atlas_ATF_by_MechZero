data:extend(
{
  {
    type = "ammo",
    name = "68spc",
	ammo_category = "68spc",
    icon = "__Atlas_ATF__/graphics/ammo/68spc.png",
	icon_size = 64,
    
    ammo_type =
    {
      category = "68spc",
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
              damage = { amount = 16, type = "physical"}
            }
          }
        }
      }
    },
    magazine_size = 30,
    subgroup = "ATF-ammo",
    order = "a[68spc]",
    stack_size = 200
  },
    {
    type = "ammo",
    name = "68spcdrum",
	ammo_category = "68spc",
    icon = "__Atlas_ATF__/graphics/ammo/68spcdrum.png",
	icon_size = 64,
    
    ammo_type =
    {
      category = "68spc",
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
              damage = { amount = 16, type = "physical"}
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
    order = "a[68spc]",
    stack_size = 200
  }
  })
  