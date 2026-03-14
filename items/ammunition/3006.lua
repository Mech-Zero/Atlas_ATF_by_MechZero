data:extend(
{
  {
    type = "ammo",
    name = "3006ammo",
	ammo_category = "3006ammo",
    icon = "__Atlas_ATF__/graphics/ammo/3006.png",
	icon_size = 64,
    
    ammo_type =
    {
      category = "3006ammo",
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
    magazine_size = 5,
    subgroup = "ATF-ammo",
    order = "a[3006]",
    stack_size = 200
  },  
  {
    type = "ammo",
    name = "3006belt",
	ammo_category = "3006ammo",
    icon = "__Atlas_ATF__/graphics/ammo/3006belt.png",
	icon_size = 128,
    
    ammo_type =
    {
      category = "3006ammo",
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
            },
			{
              type = "damage",
              damage = { amount = 5, type = "fire"}
            }
          }
        }
      }
    },
    magazine_size = 150,
    subgroup = "ATF-ammo",
    order = "a[3006]",
    stack_size = 200
  },

  })