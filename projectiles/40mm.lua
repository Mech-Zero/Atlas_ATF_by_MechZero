  data:extend(
{
  {
    type = "projectile",
    name = "40mm-he",
    flags = {"not-on-map"},
    acceleration = -0.001,
   -- collision_box = {{-0.5, -0.5}, {0.5, 0.5}},
    --direction_only = true,
    action =
    {
		{
			type = "direct",	 
      action_delivery =
      {
        type = "instant",
        target_effects =
        {
          {
            type = "nested-result",
            action =
            {
              type = "area",
              radius = 8.0,
              action_delivery =
              {
                type = "instant",
                target_effects =
                {
                  {
                    type = "damage",
                    damage = {amount = 120 , type = "explosion"}
                  },
					{
						type = "create-entity",
						entity_name = "grenade-explosion"
					}
                }
              }
            }
          },
          {
            type = "create-trivial-smoke",
            smoke_name = "artillery-smoke",
            initial_height = 0,
            speed_from_center = 0.02,
            speed_from_center_deviation = 0.002,
            offset_deviation = {{-4, -4}, {4, 4}},
            max_radius = 1.5,
            repeat_count = 4 * 4 * 15
          },
          {
            type = "create-entity",
            entity_name = "big-artillery-explosion"
          },
            {
              type = "create-entity",
              entity_name = "small-scorchmark-tintable",
              check_buildability = true
            }, 
        }
      }
		
	},
	
    },
    animation =
    {
      filename = "__base__/graphics/entity/bullet/bullet.png",
      draw_as_glow = true,
      frame_count = 1,
      width = 3,
      height = 50,
      priority = "high"
    },
	--hit_collision_mask = { "player-layer","ground-tile"},
	hit_at_collision_position = true
  },
  {
    type = "projectile",
    name = "40mm-incendiary",
    flags = {"not-on-map"},
    acceleration = -0.002,
   -- collision_box = {{-0.5, -0.5}, {0.5, 0.5}},
    --direction_only = true,
    action =
    {
		{
			type = "direct",	 
      action_delivery =
      {
        type = "instant",
        target_effects =
        {
          {
            type = "nested-result",
            action =
            {
              type = "area",
              radius = 6.0,
              action_delivery =
              {
                type = "instant",
                target_effects =
                {
                  {
                    type = "damage",
                    damage = {amount = 120 , type = "fire"}
                  },
                  {
                    type = "damage",
                    damage = {amount = 30 , type = "explosion"}
                  },
					{
						type = "create-entity",
						entity_name = "grenade-explosion"
					},
                }
              }
            }
          },
          {
            type = "nested-result",
            action =
            {
              type = "area",
              radius = 7.0,
              action_delivery =
              {
                type = "instant",
                target_effects =
                {
					{
						type = "create-fire",
						entity_name = "fire-flame"
					},
					{
						type = "create-sticker",
						sticker = "fire-sticker"
					},
                }
              }
            }
          },
			{
				type = "create-trivial-smoke",
				smoke_name = "artillery-smoke",
				initial_height = 0,
				speed_from_center = 0.02,
				speed_from_center_deviation = 0.002,
				offset_deviation = {{-4, -4}, {4, 4}},
				max_radius = 1.5,
				repeat_count = 4 * 4 * 15
			},
			{
			type = "create-entity",
			entity_name = "big-artillery-explosion"
			},
            {
              type = "create-entity",
              entity_name = "small-scorchmark-tintable",
              check_buildability = true
            },
        }
      }
		
	},
	
    },
    animation =
    {
      filename = "__base__/graphics/entity/bullet/bullet.png",
      draw_as_glow = true,
      frame_count = 1,
      width = 3,
      height = 50,
      priority = "high"
    },
	--hit_collision_mask = { "player-layer","ground-tile"},
	hit_at_collision_position = true
  },
  {
    type = "projectile",
    name = "40mm-acid",
    flags = {"not-on-map"},
    acceleration = -0.002,
   -- collision_box = {{-0.5, -0.5}, {0.5, 0.5}},
    --direction_only = true,
    action =
    {
		{
			type = "direct",	 
      action_delivery =
      {
        type = "instant",
        target_effects =
        {
          {
            type = "nested-result",
            action =
            {
              type = "area",
              radius = 8.0,
              action_delivery =
              {
                type = "instant",
                target_effects =
                {
                  {
                    type = "damage",
                    damage = {amount = 100 , type = "poison"}
                  },
                  {
                    type = "damage",
                    damage = {amount = 100 , type = "acid"}
                  },
					{
						type = "create-sticker",
						sticker = "slowdown-sticker"
					},
                }
              }
            }
          },
            {
              type = "create-smoke",
              show_in_tooltip = true,
              entity_name = "poison-cloud",
              initial_height = 0.2
            },
        }
      }
		
	},
	
    },
    animation =
    {
      filename = "__base__/graphics/entity/bullet/bullet.png",
      draw_as_glow = true,
      frame_count = 1,
      width = 3,
      height = 50,
      priority = "high"
    },
	--hit_collision_mask = { "player-layer","ground-tile"},
	hit_at_collision_position = true
  },

  {
    type = "projectile",
    name = "40mm-plasma",
    flags = {"not-on-map"},
    acceleration = -0.002,
    action =
    {
      {
        type = "direct",
        action_delivery =
        {
          type = "instant",
          target_effects =
          {
            {
              type = "create-entity",
              entity_name = "ATF-plasma-grenade"
            },
            {
              type = "create-entity",
              entity_name = "small-scorchmark",
              check_buildability = true
            }
          }
        }
      },
      {
        type = "area",
        radius = 8,
        action_delivery =
        {
          type = "instant",
          target_effects =
          {
            {
              type = "damage",
              damage = {amount = 100, type = "explosion"}
            },
            {
              type = "damage",
              damage = {amount = 100, type = "laser"}
            },
            {
              type = "damage",
              damage = {amount = 50, type = "fire"}
            },
            {
              type = "create-sticker",
              sticker = "fire-sticker"
            },
            {
              type = "create-entity",
              entity_name = "explosion"
            }
          }
        }
      }
    },
    animation =
    {
      filename = "__base__/graphics/entity/bullet/bullet.png",
      draw_as_glow = true,
      frame_count = 1,
      width = 3,
      height = 50,
      priority = "high"
    },
	--hit_collision_mask = { "player-layer","ground-tile"},
	hit_at_collision_position = true
  },
  })