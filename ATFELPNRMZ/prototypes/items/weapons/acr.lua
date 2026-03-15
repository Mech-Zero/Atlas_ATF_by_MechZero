data:extend
({
-- acr 6.8
  {
    type = "gun",
 icon_size = 128, 

    name = "acr",
    icon = "__Atlas_ATF__/graphics/weapons/acr.png",
    
    subgroup = "modernarms",
    order = "a[acr]",
    attack_parameters =
    {
      type = "projectile",
      ammo_category = "68spc",
			damage_modifier = 2.1,
      cooldown = 7,
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
      range = 25,
			 	 sound =
		 	 {
		 	    {
		 	      filename = "__Atlas_ATF__/sound/hk416.ogg",
		   	    volume = 0.5
		 	    }
		   }
    },
    stack_size = 100
  },

  }
)
