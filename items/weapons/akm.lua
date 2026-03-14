data:extend
({
-- akm
  {
    type = "gun",
 icon_size = 128, 

    name = "akm",
    icon = "__Atlas_ATF__/graphics/weapons/akm.png",
    
    subgroup = "coldwararms",
    order = "a[akm]",
    attack_parameters =
    {
      type = "projectile",
      ammo_category = "762x39",
			damage_modifier = 2.0,
      cooldown = 8,
      movement_slow_down_factor = 0.35,
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
		 	      filename = "__Atlas_ATF__/sound/ak74m.ogg",
		   	    volume = 1.0
		 	    }
		   }
    },
    stack_size = 100
  }
  
})
