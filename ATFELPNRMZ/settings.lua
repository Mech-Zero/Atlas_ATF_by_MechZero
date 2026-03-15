-- settings.lua
-- ATFELPN Mod Settings Script
-- Версия: 2.0.7 (Rebalance by Mechromancer-Zero)
-- Интеграция: Bob's Warfare Compatibility
-- Factorio Version: 2.0+

-- ===========================================================================
-- НАСТРОЙКИ ЗАПУСКА (Startup Settings)
-- ===========================================================================

data:extend({
    -- -------------------------------------------------------------------------
    -- ATF-dmg-upgrade: Включить улучшение урона от исследований
    -- -------------------------------------------------------------------------
    {
        type = "bool-setting",
        name = "ATF-dmg-upgrade",
        setting_type = "startup",
        default_value = true,
        order = "aba",
        title = "ATF weapons damage upgrade",
        description = "Enable this for ATF weapons to receive damage upgrade from researches. (default: on)"
    },

    -- -------------------------------------------------------------------------
    -- ATF-rof-upgrade: Включить улучшение скорострельности от исследований
    -- -------------------------------------------------------------------------
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

-- ===========================================================================
-- ЛОГИРОВАНИЕ ЗАГРУЗКИ НАСТРОЕК
-- ===========================================================================

-- Примечание: Логирование в settings.lua ограничено, но можно добавить комментарий
-- Логи будут видны в data-final-fixes.lua где настройки читаются
