data:extend
({
-- m4a1
  {
    type = "gun",
    name = "m4a1",
	icon_size = 128,
    icon = "__Atlas_ATF__/graphics/weapons/m4a1.png",
    
    subgroup = "modernarms",
    order = "a[m4a1]",
    attack_parameters =
    {
      type = "projectile",
      ammo_category = "556x45",
			damage_modifier = 1.9,
      cooldown = 6.5,
      movement_slow_down_factor = 0.3,
      shell_particle =
      {
        name = "shell-particle",
        direction_deviation = 0.1,
        speed = 0.1,
        speed_deviation = 0.03,
        center = {0, 0.1},
        creation_distance = -0.5,
        starting_frame_speed = 0.4,
        starting_frame_speed_deviation = 0.1
      },
      projectile_creation_distance = 0.1,
      range = 30,
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
            filename = "__Atlas_ATF__/sound/m4a1.ogg",
            volume = 0.9
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
    stack_size = 100
  },
  
  -- swatt master
  {
    type = "gun",
    name = "swatt",
	icon_size = 128,
    icon = "__Atlas_ATF__/graphics/weapons/swatt.png",
    
    subgroup = "conceptarms",
    order = "d[swatt]",
    attack_parameters =
    {
      type = "projectile",
      ammo_categories = {"556x45","556-swatt"},
	  damage_modifier = 1.4,
      cooldown = 6,
      movement_slow_down_factor = 0.3,
      shell_particle =
      {
        name = "shell-particle",
        direction_deviation = 0.1,
        speed = 0.1,
        speed_deviation = 0.03,
        center = {0, 0.1},
        creation_distance = -0.5,
        starting_frame_speed = 0.4,
        starting_frame_speed_deviation = 0.1
      },
      projectile_creation_distance = 1.125,
      range = 28,
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
            filename = "__Atlas_ATF__/sound/m4a1.ogg",
            volume = 0.9
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
    stack_size = 100
  },

  })
