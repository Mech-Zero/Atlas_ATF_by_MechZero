data:extend
({
-- lee
  {
    type = "gun",
 icon_size = 128, 

    name = "lee",
    icon = "__Atlas_ATF__/graphics/weapons/lee.png",
    
    subgroup = "oldarms",
    order = "a[lee]",
    attack_parameters =
    {
      type = "projectile",
      ammo_category = "303ammo",
			damage_modifier = 4.0,
      cooldown = 60,
      movement_slow_down_factor = 0.7,
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
      range = 35,
			 	 sound =
		 	 {
		 	    {
		 	      filename = "__Atlas_ATF__/sound/k98.ogg",
		   	    volume = 0.9
		 	    }
		   }
    },
    stack_size = 100
  }
  
})
