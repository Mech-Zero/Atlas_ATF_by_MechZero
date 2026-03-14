data:extend
({
-- 1911
  {
    type = "gun",
 icon_size = 128, 

    name = "1911",
    icon = "__Atlas_ATF__/graphics/weapons/1911.png",
    
    subgroup = "oldarms",
    order = "a[1911]",
        attack_parameters =
    {
      type = "projectile",
      ammo_category = "45acp",
      cooldown = 13,
      movement_slow_down_factor = 0,
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
      range = 18,
      			 	 sound =
		 	 {
		 	    {
		 	      filename = "__Atlas_ATF__/sound/c96.ogg",
		   	    volume = 0.5
		 	    }
		   }
    },
	stack_size = 100
  },
  
  }
)
