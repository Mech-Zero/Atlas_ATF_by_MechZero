data:extend(
{
  {
    type = "ammo",
    name = "762x51",
	ammo_category = "762x51",
    icon = "__Atlas_ATF__/graphics/ammo/762x51.png",
	icon_size = 64,
    
    ammo_type =
    {
      category = "762x51",
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
              damage = { amount = 18, type = "physical"}
            }
          }
        }
      }
    },
    magazine_size = 20,
    subgroup = "ATF-ammo",
    order = "a[762x51]",
    stack_size = 200
  },
  
    {
    type = "ammo",
    name = "762x51drum",
	ammo_category = "762x51",
    icon = "__Atlas_ATF__/graphics/ammo/762x51drum.png",
	icon_size = 64,
    
    ammo_type =
    {
      category = "762x51",
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
              damage = { amount = 25, type = "physical"}
            }
          }
        }
      }
    },
    magazine_size = 50,
    subgroup = "ATF-ammo",
    order = "a[762x51]-b[drum]",
    stack_size = 200
  },
  
        {
    type = "ammo",
    name = "762belt",
	ammo_category = "762belt",
    icon = "__Atlas_ATF__/graphics/ammo/762belt.png",
	icon_size = 128,
    
    ammo_type =
    {
      category = "762belt",
      target_type = "position",
      clamp_position = false,
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
		    type = "projectile",
            projectile = "762belt",
            starting_speed = 3,
            starting_speed_deviation = 0,
            direction_deviation = 0,
            range_deviation = 0,
            max_range = 35
        }
      }
    },
    magazine_size = 200,
    subgroup = "ATF-ammo",
    order = "a[762x51]-c[belt]",
    stack_size = 100
  },
  })