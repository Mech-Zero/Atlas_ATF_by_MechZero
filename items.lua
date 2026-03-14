--components items
require("items.comp.components")
require("items.comp.components-2")
require("items.comp.res")
--require("calibers")

--ammunition items


require("items.ammunition.9mm")
require("items.ammunition.45acp")
require("items.ammunition.556x45")
require("items.ammunition.792x33")
require("items.ammunition.792x57")
require("items.ammunition.762x25")
require("items.ammunition.762x51")
require("items.ammunition.68spc")
require("items.ammunition.3006")
require("items.ammunition.762x39")
require("items.ammunition.545x39")
require("items.ammunition.303")
require("items.ammunition.20mm")
require("items.ammunition.50bmg")
require("items.ammunition.40mm")
require("items.ammunition.12g")
require("items.ammunition.plasma40watt")
require("items.ammunition.fusion-battery")
require("items.ammunition.arti")
require("items.ammunition.kf2")



--weapon items

require("items.weapons.ppsh")
require("items.weapons.m1928")
require("items.weapons.mp40")
require("items.weapons.mp18")
require("items.weapons.k98")
require("items.weapons.g43")
require("items.weapons.stg44")
require("items.weapons.stg60")
require("items.weapons.g3")
require("items.weapons.1903")
require("items.weapons.mp5")
require("items.weapons.hk416")
require("items.weapons.c96")
require("items.weapons.p60")
require("items.weapons.1911")
require("items.weapons.ak74m")
require("items.weapons.lee")
require("items.weapons.mg42")
require("items.weapons.m1919")
require("items.weapons.acr")
require("items.weapons.m14")
require("items.weapons.glock")
require("items.weapons.m4a1")
require("items.weapons.atlas20mm")
require("items.weapons.rotators")
require("items.weapons.bren")
require("items.weapons.bar")
require("items.weapons.vector")
require("items.weapons.m2")
require("items.weapons.akm")
require("items.weapons.m1897")
require("items.weapons.aa12")
require("items.weapons.gl")
require("items.weapons.40watt")
require("items.weapons.kf2")

--armor items
--require("items.armor.armor")
if mods["space-age"] then
require("items.armor.armor")
else 
require("items.armor.armor-nospaceage")
end

--trade items
require("items.trade.bundles")
--entity items
require("items.trade.market")
require("items.trade.valuables")
require("entities.market")
--require("entities.cinnabar")
