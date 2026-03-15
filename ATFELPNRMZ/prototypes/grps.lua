-- grps.lua
-- Определение групп и подгрупп предметов ATF
-- Версия: 1.1 (Rebalance by Mechromancer-Zero)
-- Интеграция: Bob's Warfare Compatibility

data:extend({
    -- =========================================================================
    -- ГРУППА: ОРУЖИЕ ATF (atf-firearms)
    -- =========================================================================
    {
        type ="item-group",
        name ="atf-firearms",
        icon ="__ATFELPNRMZ__/graphics/tech/smg.png",
        icon_size = 256,
        inventory_order ="m",
        order ="m"
    },

    -- Подгруппы оружия по эпохам
    {
        type ="item-subgroup",
        name ="oldarms",
        group ="atf-firearms",
        order ="aa"
    },
    {
        type ="item-subgroup",
        name ="oldarms-pistol",
        group ="atf-firearms",
        order ="ab"
    },
    {
        type ="item-subgroup",
        name ="coldwararms",
        group ="atf-firearms",
        order ="ac"
    },
    {
        type ="item-subgroup",
        name ="modernarms",
        group ="atf-firearms",
        order ="ad"
    },
    {
        type ="item-subgroup",
        name ="modernarms-smg",
        group ="atf-firearms",
        order ="ae"
    },
    {
        type ="item-subgroup",
        name ="modernarms-pistol",
        group ="atf-firearms",
        order ="af"
    },
    {
        type ="item-subgroup",
        name ="conceptarms",
        group ="atf-firearms",
        order ="ag"
    },
    {
        type ="item-subgroup",
        name ="conceptarms-pistol",
        group ="atf-firearms",
        order ="ah"
    },
    {
        type ="item-subgroup",
        name ="futurearms",
        group ="atf-firearms",
        order ="ai"
    },

    -- Подгруппы компонентов и боеприпасов
    {
        type ="item-subgroup",
        name ="ATF-ammo",
        group ="atf-firearms",
        order ="aj"
    },
    {
        type ="item-subgroup",
        name ="ATF-comp",
        group ="atf-firearms",
        order ="ak"
    },
    {
        type ="item-subgroup",
        name ="ATF-res",
        group ="atf-firearms",
        order ="al"
    },
    {
        type ="item-subgroup",
        name ="ATF-turrets",
        group ="atf-firearms",
        order ="am1"
    },
    {
        type ="item-subgroup",
        name ="ATF-drones",
        group ="atf-firearms",
        order ="am2"
    },
    {
        type ="item-subgroup",
        name ="ATF-armor",
        group ="atf-firearms",
        order ="an1"
    },

    -- =========================================================================
    -- ГРУППА: ТОРГОВЛЯ ATF (atf-trading)
    -- =========================================================================
    {
        type ="item-group",
        name ="atf-trading",
        icon ="__ATFELPNRMZ__/graphics/tech/trade.png",
        icon_size = 256,
        inventory_order ="n",
        order ="n"
    },

    -- Подгруппы торговли
    {
        type ="item-subgroup",
        name ="ATF-bundles",
        group ="atf-trading",
        order ="a1"
    },
    {
        type ="item-subgroup",
        name ="ATF-buying",
        group ="atf-trading",
        order ="a2"
    },
    {
        type ="item-subgroup",
        name ="ATF-buying-science",
        group ="atf-trading",
        order ="a3"
    },
    {
        type ="item-subgroup",
        name ="ATF-selling",
        group ="atf-trading",
        order ="a4"
    },
    {
        type ="item-subgroup",
        name ="ATF-cash",
        group ="atf-trading",
        order ="zm"
    },
    {
        type ="item-subgroup",
        name ="ATF-market",
        group ="atf-trading",
        order ="zn"
    }
})

-- ============================================================================
-- ЛОГИРОВАНИЕ ЗАГРУЗКИ
-- ============================================================================

log("[ATF-Rebalance] Item groups and subgroups registered successfully")