data:extend
({
  {
    type = "gun",

    name = "1903",
    icon = "__Atlas_ATF__/graphics/weapons/1903.png",
	icon_size = 128,
    
    subgroup = "oldarms",
    order = "a[1903]",
    attack_parameters =
    {
      type = "projectile",
      ammo_category = "3006ammo",
			damage_modifier = 4.0,
      cooldown = 85,
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
      range = 38,
			 	 sound =
		 	 {
		 	    {
		 	      filename = "__Atlas_ATF__/sound/1903.ogg",
		   	    volume = 0.9
		 	    }
		   }
    },
    stack_size = 100
  }
  
})
