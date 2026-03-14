  data:extend(
{
  {
    type = "projectile",
    name = "20mm",
    flags = {"not-on-map"},
    acceleration = 0.02,
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
              radius = 3,
              action_delivery =
              {
                type = "instant",
                target_effects =
                {
					{
					type = "damage",
					damage = { amount = 50, type = "physical"}
					},			
					{
					type = "damage",
					damage = { amount = 15, type = "impact"}
					},
                }
              }
            }
          },
          {
            type = "create-entity",
            entity_name = "explosion-hit"
          }
        }
      }
		
	},
	
    },

    light = {intensity = 1, size = 2},
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
    name = "20mm-he",
    flags = {"not-on-map"},
    acceleration = 0.02,
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
              radius = 5,
              action_delivery =
              {
                type = "instant",
                target_effects =
                {
					{
					type = "damage",
					damage = { amount = 45, type = "physical"}
					},			
					{
					type = "damage",
					damage = { amount = 30, type = "explosion"}
					},
                }
              }
            }
          },
          {
            type = "create-entity",
            entity_name = "explosion"
          }
        }
      }
		
	},
	
    },

    light = {intensity = 1, size = 2},
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