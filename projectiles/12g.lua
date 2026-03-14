  data:extend(
{

--buckshot
  {
    type = "projectile",
    name = "12g-buck",
    flags = {"not-on-map"},
    collision_box = {{-0.05, -0.25}, {0.05, 0.25}},
    acceleration = 0.01,
    direction_only = true,
    action =
    {
      type = "direct",
      action_delivery =
      {
        type = "instant",
        target_effects =
        {
			{
				type = "damage",
				damage = {amount = 20, type = "physical"}
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
    }
  },


--slug

  {
    type = "projectile",
    name = "12g-slug",
    flags = {"not-on-map"},
    collision_box = {{-0.05, -0.25}, {0.05, 0.25}},
    acceleration = 0.01,
    direction_only = true,
    piercing_damage = 30,
    action =
    {
      type = "direct",
      action_delivery =
      {
        type = "instant",
        target_effects =
        {
			{
			type = "damage",
			damage = {amount = 50, type = "physical"}
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
    }
  },



--frag

  {
    type = "projectile",
    name = "12g-frag",
    flags = {"not-on-map"},
    collision_box = {{-0.05, -0.25}, {0.05, 0.25}},
    acceleration = 0.01,
    direction_only = true,
    action =
    {
      type = "direct",
      action_delivery =
      {
        type = "instant",
        target_effects =
        {		
			{
			type = "damage",
			damage = {amount = 5, type = "physical"}
			},
			{
				type = "damage",
				damage = {amount = 25, type = "explosion"}
			},
			
			{
				type = "create-entity",
				entity_name = "explosion"
			}
		},		
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
    }
  },

  {
    type = "projectile",
    name = "12g-inc",
    flags = {"not-on-map"},
    collision_box = {{-0.05, -0.25}, {0.05, 0.25}},
    acceleration = 0.01,
    direction_only = true,
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
						type = "damage",
						damage = {amount = 2, type = "impact"},
						apply_damage_to_trees = false
					},	
					{
						type = "damage",
						damage = {amount = 30, type = "fire"},
						apply_damage_to_trees = false
					},
					{
						type = "create-sticker",
						sticker = "fire-sticker"
					},		
					{
						type = "create-fire",
						entity_name = "fire-flame"
					},
				},		
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
    }
  },



  })