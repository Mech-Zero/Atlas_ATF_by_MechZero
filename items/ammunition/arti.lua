 data:extend
({  
  {
    type = "ammo",
    name = "ATF-arti-shell-acid",	
    ammo_category = "artillery-shell",
    icon = "__Atlas_ATF__/graphics/ammo/artillery-shell-acid.png",
    icon_size = 64, icon_mipmaps = 4,
    ammo_type =
    {
      category = "artillery-shell",
      target_type = "position",
      action =
      {
        type = "direct",
        action_delivery =
        {
          type = "artillery",
          projectile = "ATF-artillery-projectile-acid",
          starting_speed = 1,
          direction_deviation = 0,
          range_deviation = 0,
          source_effects =
          {
            type = "create-explosion",
            entity_name = "artillery-cannon-muzzle-flash"
          }
        }
      }
    },
    subgroup = "ATF-turrets",
    order = "e[artillery]-d[acid]",
    stack_size = 20
  },
    {
    type = "ammo",
    name = "ATF-arti-shell-napalm",	
    ammo_category = "artillery-shell",
    icon = "__Atlas_ATF__/graphics/ammo/artillery-shell-napalm.png",
    icon_size = 64, icon_mipmaps = 4,
    ammo_type =
    {
      category = "artillery-shell",
      target_type = "position",
      action =
      {
        type = "direct",
        action_delivery =
        {
          type = "artillery",
          projectile = "ATF-artillery-projectile-napalm",
          starting_speed = 1,
          direction_deviation = 0,
          range_deviation = 0,
          source_effects =
          {
            type = "create-explosion",
            entity_name = "artillery-cannon-muzzle-flash"
          }
        }
      }
    },
    subgroup = "ATF-turrets",
    order = "e[artillery]-d[napalm]",
    stack_size = 20
  },
  
  })