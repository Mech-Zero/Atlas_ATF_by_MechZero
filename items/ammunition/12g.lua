 data:extend
({ 

--buckshot
  {
    type = "ammo",
    name = "12g-buckshot",
	ammo_category = "shotgun-shell",
    icon = "__Atlas_ATF__/graphics/ammo/buckshot.png",
    icon_size = 128,
    ammo_type =
    {
      category = "shotgun-shell",
      target_type = "direction",
      clamp_position = true,
      action =
      {
		{
			type = "direct",
			action_delivery =
			{
				type = "instant",
				source_effects =
				{
					{
					type = "create-explosion",
					entity_name = "explosion-gunshot"
					}
				}
			}
        },
        {
          type = "direct",
          repeat_count = 16,
          action_delivery =
          {
            type = "projectile",
            projectile = "12g-buck",
            starting_speed = 1,
            starting_speed_deviation = 0.1,
            direction_deviation = 0.3,
            range_deviation = 0.3,
            max_range = 25
          }
        }
      }
    },
    magazine_size = 20,
    subgroup = "ATF-ammo",
    order = "b[shotgun]-b[buckshot]",
    stack_size = 200
  },
 
 --slug
   {
    type = "ammo",
    name = "12g-slug",
	ammo_category = "shotgun-shell",
    icon = "__Atlas_ATF__/graphics/ammo/slug.png",
    icon_size = 128,
    ammo_type =
    {
      category = "shotgun-shell",
      target_type = "direction",
      clamp_position = true,
      action =
      {
		{
			type = "direct",
			action_delivery =
			{
				type = "instant",
				source_effects =
				{
					{
					type = "create-explosion",
					entity_name = "explosion-gunshot"
					}
				}
			}
        },
        {
          type = "direct",
          action_delivery =
          {
            type = "projectile",
            projectile = "12g-slug",
            starting_speed = 1,
            starting_speed_deviation = 0.1,
            direction_deviation = 0.3,
            range_deviation = 0.3,
            max_range = 35
          }
        }
      }
    },
    magazine_size = 20,
    subgroup = "ATF-ammo",
    order = "b[shotgun]-b[slug]",
    stack_size = 200
  },
  
  --frag
    {
    type = "ammo",
    name = "12g-frag",
	ammo_category = "shotgun-shell",
    icon = "__Atlas_ATF__/graphics/ammo/fragshot.png",
    icon_size = 128,
    ammo_type =
    {
      category = "shotgun-shell",
      target_type = "direction",
      clamp_position = true,
      action =
      {
		{
			type = "direct",
			action_delivery =
			{
				type = "instant",
				source_effects =
				{
					{
					type = "create-explosion",
					entity_name = "explosion-gunshot"
					}
				}
			}
        },
        {
          type = "direct",
          repeat_count = 10,
          action_delivery =
          {
            type = "projectile",
            projectile = "12g-frag",
            starting_speed = 1,
            starting_speed_deviation = 0.1,
            direction_deviation = 0.3,
            range_deviation = 0.3,
            max_range = 25
          }
        }
      }
    },
    magazine_size = 20,
    subgroup = "ATF-ammo",
    order = "b[shotgun]-b[frag]",
    stack_size = 200
  }, 

  --incendiary
    {
    type = "ammo",
    name = "12g-dragon",
	ammo_category = "shotgun-shell",
    icon = "__Atlas_ATF__/graphics/ammo/dragonsbreath.png",
    icon_size = 128,
    ammo_type =
    {
      category = "shotgun-shell",
      target_type = "direction",
      clamp_position = true,
      action =
      {
		{
			type = "direct",
			action_delivery =
			{
				type = "instant",
				source_effects =
				{
					{
					type = "create-explosion",
					entity_name = "explosion-gunshot"
					}
				}
			}
        },
        {
          type = "direct",
          repeat_count = 8,
          action_delivery =
          {
            type = "projectile",
            projectile = "12g-inc",
            starting_speed = 1,
            starting_speed_deviation = 0.1,
            direction_deviation = 0.3,
            range_deviation = 0.3,
            max_range = 25
          }
        }
      }
    },
    magazine_size = 20,
    subgroup = "ATF-ammo",
    order = "b[shotgun]-b[dragon]",
    stack_size = 200
  },
  })