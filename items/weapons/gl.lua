data:extend
({
--m79
     {
    type = "gun",
    name = "m79",
    icon = "__Atlas_ATF__/graphics/weapons/m79.png",
	icon_size = 128,
    
    subgroup = "coldwararms",
    order = "h[grenade]-a[m79]",
    attack_parameters =
    {
      type = "projectile",
      ammo_category = "40mm",
	  damage_modifier = 1.5,
      cooldown = 90,
      movement_slow_down_factor = 0.2,
      projectile_creation_distance = 1.2,
      range = 40,
      			 	 sound =
		 	 {
		 	    {
		 	      filename = "__Atlas_ATF__/sound/m79.ogg",
		   	    volume = 0.5
		 	    }
		   }
    },
    stack_size = 100
  },
       {
    type = "gun",
    name = "m32",
    icon = "__Atlas_ATF__/graphics/weapons/m32.png",
	icon_size = 128,
    
    subgroup = "modernarms",
    order = "h[grenade]-b[m32]",
    attack_parameters =
    {
      type = "projectile",
      ammo_category = "40mm",
	  damage_modifier = 1.8,
      cooldown = 45,
      movement_slow_down_factor = 0.4,
      projectile_creation_distance = 1.2,
      range = 45,
      			 	 sound =
		 	 {
		 	    {
		 	      filename = "__Atlas_ATF__/sound/mgl.ogg",
		   	    volume = 0.5
		 	    }
		   }
    },
    stack_size = 50
  },
       {
    type = "gun",
    name = "warmachine",
    icon = "__Atlas_ATF__/graphics/weapons/warmachine.png",
	icon_size = 128,
    
    subgroup = "conceptarms",
    order = "h[grenade]-a[warmachine]",
    attack_parameters =
    {
      type = "projectile",
      ammo_category = "40mm",
	  damage_modifier = 2.2,
      cooldown = 12,
      movement_slow_down_factor = 0.4,
      projectile_creation_distance = 1.5,
      range = 50,
	  --range_modifier = 1.5,
      			 	 sound =
		 	 {
		 	    {
		 	      filename = "__Atlas_ATF__/sound/glmg.ogg",
		   	    volume = 1.2
		 	    }
		   }
    },
    stack_size = 50
  },
  
})
