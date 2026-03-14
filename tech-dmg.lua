if settings.startup["ATF-dmg-upgrade"].value == true then
--kinetic
    for i, v in ipairs(ATF_calibers) do
      table.insert(data.raw.technology["physical-projectile-damage-1"].effects,{type = "ammo-damage", ammo_category = v, modifier = 0.1})
    end   
	for i, v in ipairs(ATF_calibers) do
      table.insert(data.raw.technology["physical-projectile-damage-2"].effects,{type = "ammo-damage", ammo_category = v, modifier = 0.1})
    end   
	for i, v in ipairs(ATF_calibers) do
      table.insert(data.raw.technology["physical-projectile-damage-3"].effects,{type = "ammo-damage", ammo_category = v, modifier = 0.2})
    end   
	for i, v in ipairs(ATF_calibers) do
      table.insert(data.raw.technology["physical-projectile-damage-4"].effects,{type = "ammo-damage", ammo_category = v, modifier = 0.2})
    end   
	for i, v in ipairs(ATF_calibers) do
      table.insert(data.raw.technology["physical-projectile-damage-5"].effects,{type = "ammo-damage", ammo_category = v, modifier = 0.2})
    end  
	for i, v in ipairs(ATF_calibers) do
      table.insert(data.raw.technology["physical-projectile-damage-6"].effects,{type = "ammo-damage", ammo_category = v, modifier = 0.4})
    end
	for i, v in ipairs(ATF_calibers) do
      table.insert(data.raw.technology["physical-projectile-damage-7"].effects,{type = "ammo-damage", ammo_category = v, modifier = 0.7})
    end
	
--energy	
	
	    for i, v in ipairs(ATF_calibers_energy) do
      table.insert(data.raw.technology["laser-weapons-damage-1"].effects,{type = "ammo-damage", ammo_category = v, modifier = 0.2})
    end   
	for i, v in ipairs(ATF_calibers_energy) do
      table.insert(data.raw.technology["laser-weapons-damage-2"].effects,{type = "ammo-damage", ammo_category = v, modifier = 0.2})
    end   
	for i, v in ipairs(ATF_calibers_energy) do
      table.insert(data.raw.technology["laser-weapons-damage-3"].effects,{type = "ammo-damage", ammo_category = v, modifier = 0.3})
    end   
	for i, v in ipairs(ATF_calibers_energy) do
      table.insert(data.raw.technology["laser-weapons-damage-4"].effects,{type = "ammo-damage", ammo_category = v, modifier = 0.4})
    end   
	for i, v in ipairs(ATF_calibers_energy) do
      table.insert(data.raw.technology["laser-weapons-damage-5"].effects,{type = "ammo-damage", ammo_category = v, modifier = 0.5})
    end  
	for i, v in ipairs(ATF_calibers_energy) do
      table.insert(data.raw.technology["laser-weapons-damage-6"].effects,{type = "ammo-damage", ammo_category = v, modifier = 0.7})
    end
	for i, v in ipairs(ATF_calibers_energy) do
      table.insert(data.raw.technology["laser-weapons-damage-7"].effects,{type = "ammo-damage", ammo_category = v, modifier = 0.7})
    end
	
	--explosives
		    for i, v in ipairs(ATF_calibers_explosives) do
      table.insert(data.raw.technology["stronger-explosives-1"].effects,{type = "ammo-damage", ammo_category = v, modifier = 0.2})
    end   
	for i, v in ipairs(ATF_calibers_explosives) do
      table.insert(data.raw.technology["stronger-explosives-2"].effects,{type = "ammo-damage", ammo_category = v, modifier = 0.25})
    end   
	for i, v in ipairs(ATF_calibers_explosives) do
      table.insert(data.raw.technology["stronger-explosives-3"].effects,{type = "ammo-damage", ammo_category = v, modifier = 0.3})
    end   
	for i, v in ipairs(ATF_calibers_explosives) do
      table.insert(data.raw.technology["stronger-explosives-4"].effects,{type = "ammo-damage", ammo_category = v, modifier = 0.4})
    end   
	for i, v in ipairs(ATF_calibers_explosives) do
      table.insert(data.raw.technology["stronger-explosives-5"].effects,{type = "ammo-damage", ammo_category = v, modifier = 0.5})
    end  
	for i, v in ipairs(ATF_calibers_energy) do
      table.insert(data.raw.technology["stronger-explosives-6"].effects,{type = "ammo-damage", ammo_category = v, modifier = 0.6})
    end
	for i, v in ipairs(ATF_calibers_explosives) do
      table.insert(data.raw.technology["stronger-explosives-7"].effects,{type = "ammo-damage", ammo_category = v, modifier = 0.7})
    end
	
     --table.insert(data.raw.technology["stronger-explosives-1"].effects,{type = "rcxd-damage", ammo_category = v, modifier = 0.2})
     --table.insert(data.raw.technology["stronger-explosives-2"].effects,{type = "rcxd-damage", ammo_category = v, modifier = 0.25})
     --table.insert(data.raw.technology["stronger-explosives-3"].effects,{type = "rcxd-damage", ammo_category = v, modifier = 0.3})
     --table.insert(data.raw.technology["stronger-explosives-4"].effects,{type = "rcxd-damage", ammo_category = v, modifier = 0.4})
     --table.insert(data.raw.technology["stronger-explosives-5"].effects,{type = "rcxd-damage", ammo_category = v, modifier = 0.5})
     --table.insert(data.raw.technology["stronger-explosives-6"].effects,{type = "rcxd-damage", ammo_category = v, modifier = 0.6})
     --table.insert(data.raw.technology["stronger-explosives-7"].effects,{type = "rcxd-damage", ammo_category = v, modifier = 0.7})
	
end

