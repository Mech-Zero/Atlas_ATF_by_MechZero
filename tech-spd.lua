if settings.startup["ATF-rof-upgrade"].value == true then
--a = {"9mm","45acp","68spc","303","556x45","545x39","762x25","762x51","792x33","792x57","3006","20mm","50bmg","40mm","556-swatt","556belt","762belt"}
    for i, v in ipairs(ATF_calibers) do
      table.insert(data.raw.technology["weapon-shooting-speed-1"].effects,{type = "gun-speed", ammo_category = v, modifier = 0.1})
    end   
	for i, v in ipairs(ATF_calibers) do
      table.insert(data.raw.technology["weapon-shooting-speed-2"].effects,{type = "gun-speed", ammo_category = v, modifier = 0.1})
    end   
	for i, v in ipairs(ATF_calibers) do
      table.insert(data.raw.technology["weapon-shooting-speed-3"].effects,{type = "gun-speed", ammo_category = v, modifier = 0.2})
    end   
	for i, v in ipairs(ATF_calibers) do
      table.insert(data.raw.technology["weapon-shooting-speed-4"].effects,{type = "gun-speed", ammo_category = v, modifier = 0.2})
    end   
	for i, v in ipairs(ATF_calibers) do
      table.insert(data.raw.technology["weapon-shooting-speed-5"].effects,{type = "gun-speed", ammo_category = v, modifier = 0.2})
    end  
	for i, v in ipairs(ATF_calibers) do
      table.insert(data.raw.technology["weapon-shooting-speed-6"].effects,{type = "gun-speed", ammo_category = v, modifier = 0.4})
    end
end