data:extend(
{
  {
    type = "ammo",
    name = "ATF-fusion-battery",
	ammo_category = "fusion-battery",
    icon = "__Atlas_ATF__/graphics/ammo/fusion-battery.png",
	icon_size = 128,
    
    ammo_type =
    {
      category = "fusion-battery",
      target_type = "entity",
      clamp_position = false,
      action =
      {
        type = "direct",
        action_delivery =
        {
          type = "instant",
		    type = "projectile",
            projectile = "fusion-laser",
            starting_speed = 4,
            starting_speed_deviation = 0,
            direction_deviation = 0,
            range_deviation = 0,
            max_range = 30
        }
      }
    },
    magazine_size = 50,
    subgroup = "ATF-ammo",
    order = "g[laser]-a[fusion]",
    stack_size = 100
  },
  
  
  
  
  })