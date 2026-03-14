 data:extend
({  
     {
    type = "ammo",
    name = "40mm-he",
	ammo_category = "40mm",
    icon = "__Atlas_ATF__/graphics/ammo/40mm.png",
    icon_size = 128,
    ammo_type =
    {
      category = "40mm",
      target_type = "position",
      clamp_position = false,
      action =
      {
        {
          type = "direct",
          action_delivery =
          {
            type = "projectile",
            projectile = "40mm-he",
            starting_speed = 1,
            starting_speed_deviation = 0.1,
            direction_deviation = 0.3,
            range_deviation = 0.3,
            max_range = 80
          }
        }
      }
    },
    magazine_size = 10,
    subgroup = "ATF-ammo",
    order = "e[grenade]-a[he]",
    stack_size = 200
  },
  
  
     {
    type = "ammo",
    name = "40mm-incendiary",
	ammo_category = "40mm",
    icon = "__Atlas_ATF__/graphics/ammo/40mm-incendiary.png",
    icon_size = 128,
    ammo_type =
    {
      category = "40mm",
      target_type = "position",
      clamp_position = false,
      action =
      {
        {
          type = "direct",
          action_delivery =
          {
            type = "projectile",
            projectile = "40mm-incendiary",
            starting_speed = 1,
            starting_speed_deviation = 0.1,
            direction_deviation = 0.2,
            range_deviation = 0.2,
            max_range = 80
          }
        }
      }
    },
    magazine_size = 10,
    subgroup = "ATF-ammo",
    order = "e[grenade]-b[inc]",
    stack_size = 200
  },
     {
    type = "ammo",
    name = "40mm-acid",
	ammo_category = "40mm",
    icon = "__Atlas_ATF__/graphics/ammo/40mm-acid.png",
    icon_size = 128,
    ammo_type =
    {
      category = "40mm",
      target_type = "position",
      clamp_position = false,
      action =
      {
        {
          type = "direct",
          action_delivery =
          {
            type = "projectile",
            projectile = "40mm-acid",
            starting_speed = 1,
            starting_speed_deviation = 0.1,
            direction_deviation = 0.2,
            range_deviation = 0.2,
            max_range = 80
          }
        }
      }
    },
    magazine_size = 10,
    subgroup = "ATF-ammo",
    order = "e[grenade]-b[inc]",
    stack_size = 200
  },
  
     {
    type = "ammo",
    name = "40mm-plasma",
	ammo_category = "40mm",
    icon = "__Atlas_ATF__/graphics/ammo/40mm-plasma.png",
    icon_size = 128,
    ammo_type =
    {
      category = "40mm",
      target_type = "position",
      clamp_position = false,
      action =
      {
        {
          type = "direct",
          action_delivery =
          {
            type = "projectile",
            projectile = "40mm-plasma",
            starting_speed = 1.2,
            starting_speed_deviation = 0.1,
            direction_deviation = 0.2,
            range_deviation = 0.2,
            max_range = 80
          }
        }
      }
    },
    magazine_size = 10,
    subgroup = "ATF-ammo",
    order = "e[grenade]-b[inc]",
    stack_size = 200
  },
  
  })