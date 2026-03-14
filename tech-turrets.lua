--these work
--data.raw["ammo-turret"]["gun-turret"].attack_parameters.ammo_category = "9mm"
--data.raw["ammo-turret"]["gun-turret"].attack_parameters.ammo_categories = {"9mm","45acp"}

local a = {"bullet"}
for i, f in ipairs(ATF_calibers_ammoturrets) do
table.insert(a,f)
end
local tur = data.raw["ammo-turret"]
for i, v in pairs(tur) do
	if v.attack_parameters.ammo_category == "bullet" then
	if  v.attack_parameters.ammo_categories == nil then 
	v.attack_parameters.ammo_categories = {}
	end
	for e, g in ipairs(a) do 
	table.insert(v.attack_parameters.ammo_categories,g)
	end
end
end