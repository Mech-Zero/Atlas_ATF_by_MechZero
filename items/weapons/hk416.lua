data:extend
({
-- hk416
  {
    type = "gun",
    name = "hk416",
	icon_size = 128,
    icon = "__Atlas_ATF__/graphics/weapons/416.png",
    
    subgroup = "modernarms",
    order = "a[hk416]",
    attack_parameters =
    {
      type = "projectile",
      ammo_category = "556x45",
			damage_modifier = 1.8,
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
      range = 28,
			 	 sound =
		 	 {
		 	    {
		 	      filename = "__Atlas_ATF__/sound/hk416.ogg",
		   	    volume = 0.6
		 	    }
		   }
    },
    stack_size = 100
  },

  }
)
