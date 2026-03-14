if mods["bobplates"] then
	--components
	data.raw.recipe["ATF-pistol-tips"].ingredients =
	{
			{"lead-plate",1},
			{"iron-plate",1}
	}
		data.raw.recipe["ATF-rifle-casing"].ingredients =
	{
		{"brass-alloy", 2} 
	}
	
	data.raw.recipe["ATF-rifle-bullets"].ingredients =
	{
			{"lead-plate", 2},
			{"brass-alloy", 2}
	}
	
	data.raw.recipe["ATF-powerful-receiver"].ingredients =
	{
		{"invar-alloy", 2},
		{"ATF-bolts-nuts",4}
	}


	data.raw.recipe["ATF-hmg-receiver"].ingredients =
	{
		{"cobalt-steel-alloy", 4},
		{"ATF-bolts-nuts",6}
	}

	data.raw.recipe["ATF-hmg-barrel"].ingredients =
	{
			{"cobalt-steel-alloy", 1},
			{"ATF-recoil-spring", 2},
			{"ATF-bolts-nuts",2}
	}

	data.raw.recipe["ATF-heavy-casings"].ingredients =
	{
		{"gunmetal-alloy", 2} 
	}


	data.raw.recipe["ATF-heavy-bullets"].ingredients =
	{
		{"steel-plate", 1}, 
		{"gunmetal-alloy", 1}, 
	}

	data.raw.recipe["ATF-buckshot"].ingredients =
	{
		{"lead-plate", 1}, 
	}

	data.raw.recipe["ATF-plasma-cell"].ingredients =
	{
	  {"plastic-bar",2},
      {type = "fluid", name = "hydrogen", amount = 40},
        {"zinc-plate", 1},
        {"silver-plate", 1},
	}

	data.raw.recipe["ATF-future-receiver"].ingredients =
	{
	  {"plastic-bar",2},
	  {"titanium-plate",2},
	  {"processing-unit",1}
	}
	
	data.raw.recipe["ATF-future-barrel"].ingredients =
	{
	  {"titanium-plate",1}
	}

	data.raw.recipe["ATF-plasmaheater"].ingredients =
	{
	  {"invar-alloy", 2},
	  {"copper-cable",8},
	}

	--ammo
	data.raw.recipe["40wattmag"].ingredients =
	{
		{"ATF-plasma-cell", 1},
		{"nickel-plate", 1},
		{"plastic-bar",2}
	}
	data.raw.recipe["heliosmag"].ingredients =
	{
		{"ATF-plasma-cell", 2},
		{"nickel-plate", 1},
		{"plastic-bar",2}
	}

	data.raw.recipe["ATF-fusion-battery"].ingredients =
	{
		{"uranium-235", 1},
		{"lead-plate", 1},
		{"plastic-bar",2}
	}

--turrets

	data.raw.recipe["ATF-m25-turret"].ingredients =
	{
		{"plasma40watt", 1},
		{"40wattmag", 2},
		{"titanium-plate", 4},
		{"processing-unit", 1},
	}
	
	data.raw.recipe["ATF-rcw-turret"].ingredients =
	{
		{"laserrcw", 1},
		{"ATF-fusion-battery", 2},
		{"titanium-plate", 4},
		{"processing-unit", 1},

	}

	
	--weapons
	--data:extend({{}});


-- buy oil

-- sell gems, sell gold bars
	data.raw.recipe["ATF-gold"].enabled = true
	data.raw.recipe["ATF-gembox"].enabled = true
	data.raw.recipe["ATF-sell-gold"].enabled = true
	data.raw.recipe["ATF-sell-gembox"].enabled = true
	data.raw.recipe["ATF-gems"].enabled = false -- not needed
	
	data.raw.recipe["ATF-gold"].ingredients =
	{
		{"gold-plate",10},
		{type = "fluid",name="sulfuric-acid",amount=50}
	}
	data.raw.recipe["ATF-gembox"].ingredients =
	{
		{"steel-chest",1},
		{"gold-plate",1},
		{"ruby-5",5},
		{"sapphire-5",5},
		{"emerald-5",5},
		{"amethyst-5",5},
		{"topaz-5",5},
		{"diamond-5",5}
	}
end

if mods["IndustrialRevolution3"] then
	
	data.raw.recipe["ATF-gold"].enabled = true
	data.raw.recipe["ATF-gembox"].enabled = true
	data.raw.recipe["ATF-sell-gold"].enabled = true
	data.raw.recipe["ATF-sell-gembox"].enabled = true
	data.raw.recipe["ATF-gems"].enabled = false -- not needed
	
	data.raw.recipe["ATF-gold"].ingredients =
	{
		{"gold-ingot",10},
		{type = "fluid",name="sulfuric-acid",amount=50}
	}
	data.raw.recipe["ATF-gembox"].ingredients =
	{
		{"steel-chest",1},
		{"gold-foil",2},
		{"diamond-gem",15},
		{"ruby-gem",15},
	}
end
