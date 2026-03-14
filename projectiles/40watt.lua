  data:extend(
{
  {
    type = "projectile",
    name = "40wattbolt",
    flags = {"not-on-map"},
    acceleration = 0.01,
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
              type = "direct",
              radius = 3,
              action_delivery =
              {
                type = "instant",
                target_effects =
                {
					{
					type = "damage",
					damage = {amount = 100, type = "laser"}
					},
					{
					type = "damage",
					damage = {amount = 50, type = "fire"}
					},
					{
					type = "damage",
					damage = {amount = 100, type = "physical"}
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
			graphics_set ={},
    light = {intensity = 2, size = 8},
  animation =
    {
      filename = "__Atlas_ATF__/graphics/projectiles/beam/plasma40.png",
      draw_as_glow = true,
      frame_count = 1,
      height = 50,
      width = 7,
      priority = "high"
    },
	--hit_collision_mask = { "player-layer","ground-tile"},
	hit_at_collision_position = true
  },

  })