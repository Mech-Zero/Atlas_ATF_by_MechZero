data:extend
({
  -- Phased Plasma 40watt
  {
    type = "gun",
    name = "plasma40watt",
	icon_size = 128,
    icon = "__Atlas_ATF__/graphics/weapons/40watt.png",
    
    subgroup = "conceptarms",
    order = "g[plasma]-a[40watt]",
    attack_parameters =
    {
      type = "projectile",	  
	  source_effects =
          {
            type = "create-explosion",
            entity_name = "explosion-gunshot"
          },
      ammo_categories = {"plasma40watt"},
	  damage_modifier = 1.6,
      cooldown = 8,
      movement_slow_down_factor = 0.15,
      projectile_creation_distance = 1.5,
      range = 40,
		         cyclic_sound =
      {
        begin_sound =
        {
          {
            filename = "__Atlas_ATF__/sound/empty.ogg",
            volume = 0,
			speed = 1000.0
          }
        },
        middle_sound =
        {
          {
            filename = "__Atlas_ATF__/sound/m25.ogg",
            volume = 1.0
          }
        },
        end_sound =
        {
          {
            filename = "__Atlas_ATF__/sound/empty.ogg",
            volume = 0,
			speed = 1000.0
          }
        }
      }
    },
    stack_size = 50
  },

  })
