data:extend
({
--aa12
     {
    type = "gun",
    name = "aa12",
    icon = "__Atlas_ATF__/graphics/weapons/aa12.png",
	icon_size = 128,
    
    subgroup = "modernarms",
    order = "a[aa12]",
    attack_parameters =
    {
      type = "projectile",
      ammo_category = "shotgun-shell",
	  damage_modifier = 2.2,
      cooldown = 20,
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
      range = 22,
			 	 sound =
		 	 {
		 	    {
		 	      filename = "__Atlas_ATF__/sound/autoshotgun.ogg",
		   	    volume = 0.8
		 	    }
		   }
    },
    stack_size = 50
  }
  
})
