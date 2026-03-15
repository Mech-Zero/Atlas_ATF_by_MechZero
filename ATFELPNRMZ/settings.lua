-- settings.lua
-- ATFELPN Mod Settings Script
-- Версия: 1.0.7 (Rebalance by Mechromancer-Zero)
-- Factorio Version: 2.0+

data:extend({
    {
        type = "bool-setting",
        name = "ATF-dmg-upgrade",
        setting_type = "startup",
        default_value = true,
        order = "aba",
        title = "ATF weapons damage upgrade",
        description = "Enable this for ATF weapons to receive damage upgrade from researches. (default: on)"
    },
    {
        type = "bool-setting",
        name = "ATF-rof-upgrade",
        setting_type = "startup",
        default_value = false,
        order = "abb",
        title = "ATF weapons rate of fire upgrade",
        description = "Enable this for ATF weapons to receive rate of fire upgrade from researches. (default: off)"
    }
})