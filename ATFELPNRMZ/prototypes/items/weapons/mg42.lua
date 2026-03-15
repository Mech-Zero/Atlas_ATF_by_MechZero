data:extend
({
-- mg42
  {
    type = "gun",
	icon_size = 128, 
    name = "mg42",
    icon = "__Atlas_ATF__/graphics/weapons/mg42.png",
    
    subgroup = "oldarms",
    order = "a[mg42]",
    attack_parameters =
    {
      type = "projectile",
      ammo_category = "792x57",
			damage_modifier = 2.2,
      cooldown = 4,
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
		 	      filename = "__Atlas_ATF__/sound/mg42.ogg",
		   	    volume = 0.9
		 	    }
		   }
    },
    stack_size = 100
  }
  
})
