data:extend(
{
  {
    type = "ammo",
    name = "556x45",
	ammo_category = "556x45",
    icon = "__Atlas_ATF__/graphics/ammo/556x45.png",
	icon_size = 64,
    
    ammo_type =
    {
      category = "556x45",
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
    order = "a[556x45]",
    stack_size = 200
  },
  
  --drum
    {
    type = "ammo",
    name = "556x45drum",
	ammo_category = "556x45",
    icon = "__Atlas_ATF__/graphics/ammo/556drum.png",
	icon_size = 64,
    
    ammo_type =
    {
      category = "556x45",
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
    magazine_size = 100,
    subgroup = "ATF-ammo",
    order = "a[556x45]-b[drum]",
    stack_size = 200
  },
  
  --swatt
    {
    type = "ammo",
    name = "556-swatt",
	ammo_category = "556-swatt",
    icon = "__Atlas_ATF__/graphics/ammo/swatt-mag.png",
	icon_size = 128,
    ammo_type =
    {
      category = "556-swatt",
      target_type = "position",
      clamp_position = false,
      action =
      {
        {
          type = "direct",
          action_delivery =
          {
		  
          source_effects =
          {
            type = "create-explosion",
            entity_name = "explosion-gunshot"
          },
            type = "projectile",
            projectile = "556-swatt",
            starting_speed = 3,
            starting_speed_deviation = 0,
            direction_deviation = 0,
            range_deviation = 0,
            max_range = 35
          }
        }
      }
    },
    magazine_size = 50,
    subgroup = "ATF-ammo",
    order = "a[556x45]-c[swatt]",
    stack_size = 200
  },
  
  --belt 
  
      {
    type = "ammo",
    name = "556belt",
	ammo_category = "556belt",
    icon = "__Atlas_ATF__/graphics/ammo/556belt.png",
	icon_size = 128,
    
    ammo_type =
    {
      category = "556belt",
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
            projectile = "556belt",
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
    order = "a[556x45]-c[belt]",
    stack_size = 100
  },
  })