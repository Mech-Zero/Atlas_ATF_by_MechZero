data:extend
({
-- k98
  {
    type = "gun",
    name = "k98",
	icon_size = 128,
    icon = "__Atlas_ATF__/graphics/weapons/k98.png",
    
    subgroup = "oldarms",
    order = "a[k98]",
    attack_parameters =
    {
      type = "projectile",
      ammo_category = "792x57",
			damage_modifier = 4.0,
      cooldown = 80,
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
