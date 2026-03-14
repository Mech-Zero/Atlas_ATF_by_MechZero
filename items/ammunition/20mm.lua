data:extend(
{
  {
    type = "ammo",
    name = "20mm",
	ammo_category = "20mm",
    icon = "__Atlas_ATF__/graphics/ammo/20mm.png",
	icon_size = 128,
    
    ammo_type =
    {
      category = "20mm",
      target_type = "position",
      --target_type = "entity",
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
            projectile = "20mm",
            starting_speed = 3,
            starting_speed_deviation = 0,
            direction_deviation = 0,
            range_deviation = 0,
            max_range = 100
        }
      }
    },
    magazine_size = 200,
    subgroup = "ATF-ammo",
    order = "a[20mm]",
    stack_size = 200
  },
  {
    type = "ammo",
    name = "20mm-he",
	ammo_category = "20mm",
    icon = "__Atlas_ATF__/graphics/ammo/20mm-he.png",
	icon_size = 128,
    
    ammo_type =
    {
      category = "20mm",
	  target_type = "position",
      --target_type = "position",
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
            projectile = "20mm-he",
            starting_speed = 3,
            starting_speed_deviation = 0,
            direction_deviation = 0,
            range_deviation = 0,
            max_range = 100
        }
      }
    },
    magazine_size = 200,
    subgroup = "ATF-ammo",
    order = "a[20mm-he]",
    stack_size = 100
  },
  })