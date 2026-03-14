data:extend
({
-- atlas20mm
  {
    type = "gun",
	icon_size = 128, 
    name = "atlas20mm",
    icon = "__Atlas_ATF__/graphics/weapons/atlas20mm.png",
    
    subgroup = "conceptarms",
    order = "b[atlas20mm]",
    attack_parameters =
    {
      type = "projectile",
      ammo_category = "20mm",
	  damage_modifier = 5,
      cooldown = 60,
	  speed_modifier = 3,
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
      range = 100,
			 	 sound =
		 	 {
		 	    {
		 	      filename = "__Atlas_ATF__/sound/20mm.ogg",
		   	    volume = 0.9
		 	    }
		   }
    },
    stack_size = 50
  }
  
})
