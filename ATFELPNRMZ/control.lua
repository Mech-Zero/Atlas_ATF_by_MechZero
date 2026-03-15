-- control.lua
-- ATFELPN Control Script
-- Версия: 1.0.7 (Rebalance by Mechromancer-Zero)
-- Интеграция: Bob's Warfare Compatibility

-- ===========================================================================
-- ИНИЦИАЛИЗАЦИЯ ПРИ ЗАГРУЗКЕ
-- ===========================================================================

script.on_init(function()
    log("[ATF-Control] Mod initialized successfully")
    log("[ATF-Control] Version: 1.0.7")
    
    -- Инициализация глобальных переменных
    global.atf_version ="1.0.7"
    global.atf_trading_enabled = true
    global.atf_damage_upgrades = true
    global.atf_rof_upgrades = false
    
    -- Проверка наличия Bob's Mods
    if mods["bobwarfare"] or mods["bobplates"] then
        log("[ATF-Control] Bob's Mods detected - compatibility enabled")
        global.atf_bobs_compatible = true
    else
        log("[ATF-Control] Bob's Mods not detected - using alternate recipes")
        global.atf_bobs_compatible = false
    end
    
    -- Инициализация для всех сил
    for _, force in pairs(game.forces) do
        if force.name ~="neutral" then
            force.reset_technology_effects()
            log("[ATF-Control] Technology effects reset for force:" .. force.name)
        end
    end
end)

-- ===========================================================================
-- ОБРАБОТКА ИЗМЕНЕНИЙ КОНФИГУРАЦИИ
-- ===========================================================================

script.on_configuration_changed(function(configuration_changed_data)
    log("[ATF-Control] Configuration changed detected")
    
    -- Проверка изменений настроек запуска мода
    if configuration_changed_data.mod_startup_settings_changed == true then
        log("[ATF-Control] Mod startup settings changed - resetting technology effects")
        
        for _, force in pairs(game.forces) do
            if force.name ~="neutral" then
                force.reset_technology_effects()
                log("[ATF-Control] Technology effects reset for force:" .. force.name)
            end
        end
    end
    
    -- Проверка изменений версии мода
    if configuration_changed_data.mod_changes and configuration_changed_data.mod_changes["Atlas_ATF"] then
        local mod_change = configuration_changed_data.mod_changes["Atlas_ATF"]
        log("[ATF-Control] ATF mod version changed:" .. tostring(mod_change.old_version) .." ->" .. tostring(mod_change.new_version))
        
        -- Миграция данных при обновлении
        if mod_change.old_version then
            log("[ATF-Control] Running migration from version:" .. mod_change.old_version)
            -- Здесь можно добавить миграцию данных для старых сохранений
        end
    end
end)

-- ===========================================================================
-- ОБРАБОТКА СОБЫТИЙ ТОРГОВЛИ (для Remote Market)
-- ===========================================================================

-- Примечание: Если Remote Market не работает, проверьте:
-- 1. Спрайт рынка (graphics/entity/market/atf-market.png)
-- 2. Тип сущности (должен быть"market" или кастомный с торговым интерфейсом)
-- 3. События on_market_item_purchased и on_market_item_sold

script.on_event(defines.events.on_market_item_purchased, function(event)
    if event.entity and event.entity.name =="ATF-market" then
        log("[ATF-Control] Trade purchased at ATF-market:" .. tostring(event.item) .." x" .. tostring(event.count))
    end
end)

script.on_event(defines.events.on_market_item_sold, function(event)
    if event.entity and event.entity.name =="ATF-market" then
        log("[ATF-Control] Trade sold at ATF-market:" .. tostring(event.item) .." x" .. tostring(event.count))
    end
end)

-- ===========================================================================
-- ОБРАБОТКА СОБЫТИЙ ОРУЖИЯ (для Killerwatt и других)
-- ===========================================================================

-- Примечание: Если Killerwatt beam невидим, проверьте:
-- 1. Путь к спрайтам луча (graphics/projectiles/beam/killerwatt-beam.png)
-- 2. Тип снаряда (должен быть"beam" а не"projectile")
-- 3. Свойства graphics_set в определении луча

script.on_event(defines.events.on_entity_died, function(event)
    if event.entity and event.cause then
        -- Логирование убийств оружием ATF для отладки
        local cause_name = event.cause.name
        if string.find(cause_name,"ATF") or string.find(cause_name,"killerwatt") or string.find(cause_name,"helios") then
            log("[ATF-Control] Entity killed by ATF weapon:" .. cause_name)
        end
    end
end)

-- ===========================================================================
-- КОНСОЛЬНЫЕ КОМАНДЫ (для отладки)
-- ===========================================================================

commands.add_command("atf_debug","ATF Debug Commands", function(event)
    local player = game.players[event.player_index]
    
    if player.admin then
        player.print("[ATF-Debug] Version:" .. tostring(global.atf_version))
        player.print("[ATF-Debug] Trading enabled:" .. tostring(global.atf_trading_enabled))
        player.print("[ATF-Debug] Damage upgrades:" .. tostring(global.atf_damage_upgrades))
        player.print("[ATF-Debug] RoF upgrades:" .. tostring(global.atf_rof_upgrades))
        player.print("[ATF-Debug] Bob's compatible:" .. tostring(global.atf_bobs_compatible))
    else
        player.print("[ATF-Debug] Admin only command")
    end
end)

commands.add_command("atf_reset_techs","Reset ATF Technology Effects", function(event)
    local player = game.players[event.player_index]
    
    if player.admin then
        for _, force in pairs(game.forces) do
            if force.name ~="neutral" then
                force.reset_technology_effects()
                player.print("[ATF-Debug] Technology effects reset for force:" .. force.name)
            end
        end
    else
        player.print("[ATF-Debug] Admin only command")
    end
end)

-- ===========================================================================
-- ЛОГИРОВАНИЕ ПРИ ВЫГРУЗКЕ
-- ===========================================================================

script.on_load(function()
    -- Восстановление глобальных переменных при загрузке сохранения
    if not global.atf_version then
        global.atf_version ="1.0.7"
        log("[ATF-Control] Global variables initialized on load")
    end
end)