data:extend
({
--m1897
     {
    type = "gun",
    name = "m1897",
    icon = "__Atlas_ATF__/graphics/weapons/m1897.png",
	icon_size = 128,
    
    subgroup = "oldarms",
    order = "a[m1897]",
    attack_parameters =
    {
      type = "projectile",
      ammo_category = "shotgun-shell",
	  damage_modifier = 2,
      cooldown = 60,
      movement_slow_down_factor = 0.2,
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
      range = 22,
			 	 sound =
		 	 {
		 	    {
		 	      filename = "__Atlas_ATF__/sound/m1897.ogg",
		   	    volume = 0.8
		 	    }
		   }
    },
    stack_size = 100
  }
  
})
