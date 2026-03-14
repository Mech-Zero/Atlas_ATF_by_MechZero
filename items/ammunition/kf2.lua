data:extend(
{
  {
    type = "ammo",
    name = "killerwattmag",
	ammo_category = "killerwatt",
    icon = "__Atlas_ATF__/graphics/ammo/killerwattmag.png",
	icon_size = 128,
    
    ammo_type =
    {
      category = "killerwatt",
      target_type = "entity",
      clamp_position = false,
      action =
      {
        type = "direct",
        action_delivery =
        {
          type = "instant",
		    type = "beam",
            beam = "killerwatt-beam",
            max_length = 30,
            duration = 20,
            source_offset = {0.15, -0.5}
        }
      }
    },
    magazine_size = 200,
    subgroup = "ATF-ammo",
    order = "g[laser]-a[watt]",
    stack_size = 100
  },
    {
    type = "ammo",
    name = "heliosmag",
	ammo_category = "helios",
    icon = "__Atlas_ATF__/graphics/ammo/heliosmag.png",
	icon_size = 128,
    
    ammo_type =
    {
      category = "helios",
      --target_type = "position",
      clamp_position = false,
      action =
      {
        type = "direct",
        action_delivery =
        {
          type = "instant",
		    type = "projectile",
            projectile = "helios-plasma",
            starting_speed = 2,
            starting_speed_deviation = 0,
            direction_deviation = 0,
            range_deviation = 0,
            max_range = 32
        }
      }
    },
    magazine_size = 50,
    subgroup = "ATF-ammo",
    order = "g[plasma]-a[helios]",
    stack_size = 100
  },
  
  })