ATF_calibers =  {"9mm","45acp","68spc","303ammo","556x45","545x39","762x25","762x39","762x51","792x33","792x57","3006ammo","20mm","50bmg","556belt","762belt"}
ATF_calibers_energy = {"556-swatt","plasma40watt","fusion-battery","killerwatt","helios"}
ATF_calibers_explosives = {"40mm"}

local tur = {"20mm","40mm"}
ATF_array_sub(tur,ATF_calibers_ammoturrets)

--add calibers-----------
for i, v in pairs(ATF_calibers) do
data:extend({
  {
    type = "ammo-category",
    name = v
  }
})
end   
for i, v in pairs(ATF_calibers_energy) do
data:extend({
  {
    type = "ammo-category",
    name = v
  }
})
end   
for i, v in pairs(ATF_calibers_explosives) do
data:extend({
  {
    type = "ammo-category",
    name = v
  }
})
end   