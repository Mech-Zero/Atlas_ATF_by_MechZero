data:extend(
{
  {
    type = "ammo",
    name = "40wattmag",
	ammo_category = "plasma40watt",
    icon = "__Atlas_ATF__/graphics/ammo/40watt.png",
	icon_size = 128,
    
    ammo_type =
    {
      category = "plasma40watt",
      --target_type = "position",
      clamp_position = false,
      action =
      {
        type = "direct",
        action_delivery =
        {
          type = "instant",
		    type = "projectile",
            projectile = "40wattbolt",
            starting_speed = 2,
            starting_speed_deviation = 0,
            direction_deviation = 0,
            range_deviation = 0,
            max_range = 40
        }
      }
    },
    magazine_size = 50,
    subgroup = "ATF-ammo",
    order = "g[plasma]-[40wattmag]",
    stack_size = 100
  },
  
  })