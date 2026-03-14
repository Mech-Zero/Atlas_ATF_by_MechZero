  data:extend(
{
  {
    type = "projectile",
    name = "556-swatt",
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
              type = "direct",
              radius = 3,
              action_delivery =
              {
                type = "instant",
                target_effects =
                {
					{
					type = "damage",
					damage = {amount = 30, type = "electric"}
					},
					{
					type = "damage",
					damage = {amount = 15, type = "physical"}
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

    light = {intensity = 1, size = 5},
  animation =
    {
      filename = "__Atlas_ATF__/graphics/projectiles/beam/swatt.png",
      draw_as_glow = true,
      frame_count = 1,
	  apply_runtime_tint = true,
	  tint = {r=244/255, g=245/255, b=1, a=0.8},
      height = 128,
      width = 8,
      priority = "high"
    },
	--hit_collision_mask = { "player-layer","ground-tile"},
	hit_at_collision_position = true
  },

  })