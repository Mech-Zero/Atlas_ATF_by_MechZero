  data:extend(
{
  {
    type = "projectile",
    name = "556belt",
    flags = {"not-on-map"},
    acceleration = 0.01,
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
						damage = { amount = 25, type = "physical"}
					},
					{
						type = "damage",
						damage = { amount = 5, type = "fire"}
					}
          
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

    light = {intensity = 0.5, size = 2},
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