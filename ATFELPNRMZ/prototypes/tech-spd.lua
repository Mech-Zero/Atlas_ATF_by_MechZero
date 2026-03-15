-- tech-spd.lua
-- Модификаторы скорости стрельбы для технологий ATF Rebalance
-- Версия: 1.1 (Rebalance by Mechromancer-Zero)
-- Интеграция: Bob's Warfare Compatibility

-- ============================================================================
-- ПРОВЕРКА НАСТРОЙКИ МОДА
-- ============================================================================

if settings.startup["ATF-rof-upgrade"].value == true then
    log("[ATF-Rebalance] Rate of Fire upgrades enabled - applying modifiers")

    -- ========================================================================
    -- КИНЕТИЧЕСКИЕ БОЕПРИПАСЫ (Kinetic Ammo)
    -- ========================================================================

    -- Уровень 1: +10% скорости стрельбы
    for i, v in ipairs(ATF_calibers) do
        table.insert(data.raw.technology["weapon-shooting-speed-1"].effects, {
            type ="gun-speed",
            ammo_category = v,
            modifier = 0.1
        })
    end

    -- Уровень 2: +10% скорости стрельбы
    for i, v in ipairs(ATF_calibers) do
        table.insert(data.raw.technology["weapon-shooting-speed-2"].effects, {
            type ="gun-speed",
            ammo_category = v,
            modifier = 0.1
        })
    end

    -- Уровень 3: +20% скорости стрельбы
    for i, v in ipairs(ATF_calibers) do
        table.insert(data.raw.technology["weapon-shooting-speed-3"].effects, {
            type ="gun-speed",
            ammo_category = v,
            modifier = 0.2
        })
    end

    -- Уровень 4: +20% скорости стрельбы
    for i, v in ipairs(ATF_calibers) do
        table.insert(data.raw.technology["weapon-shooting-speed-4"].effects, {
            type ="gun-speed",
            ammo_category = v,
            modifier = 0.2
        })
    end

    -- Уровень 5: +20% скорости стрельбы
    for i, v in ipairs(ATF_calibers) do
        table.insert(data.raw.technology["weapon-shooting-speed-5"].effects, {
            type ="gun-speed",
            ammo_category = v,
            modifier = 0.2
        })
    end

    -- Уровень 6: +40% скорости стрельбы
    for i, v in ipairs(ATF_calibers) do
        table.insert(data.raw.technology["weapon-shooting-speed-6"].effects, {
            type ="gun-speed",
            ammo_category = v,
            modifier = 0.4
        })
    end

    -- ========================================================================
    -- ЭНЕРГЕТИЧЕСКИЕ БОЕПРИПАСЫ (Energy Ammo)
    -- ========================================================================

    -- Уровень 1: +10% скорости стрельбы
    for i, v in ipairs(ATF_calibers_energy) do
        table.insert(data.raw.technology["weapon-shooting-speed-1"].effects, {
            type ="gun-speed",
            ammo_category = v,
            modifier = 0.1
        })
    end

    -- Уровень 2: +10% скорости стрельбы
    for i, v in ipairs(ATF_calibers_energy) do
        table.insert(data.raw.technology["weapon-shooting-speed-2"].effects, {
            type ="gun-speed",
            ammo_category = v,
            modifier = 0.1
        })
    end

    -- Уровень 3: +20% скорости стрельбы
    for i, v in ipairs(ATF_calibers_energy) do
        table.insert(data.raw.technology["weapon-shooting-speed-3"].effects, {
            type ="gun-speed",
            ammo_category = v,
            modifier = 0.2
        })
    end

    -- Уровень 4: +20% скорости стрельбы
    for i, v in ipairs(ATF_calibers_energy) do
        table.insert(data.raw.technology["weapon-shooting-speed-4"].effects, {
            type ="gun-speed",
            ammo_category = v,
            modifier = 0.2
        })
    end

    -- Уровень 5: +20% скорости стрельбы
    for i, v in ipairs(ATF_calibers_energy) do
        table.insert(data.raw.technology["weapon-shooting-speed-5"].effects, {
            type ="gun-speed",
            ammo_category = v,
            modifier = 0.2
        })
    end

    -- Уровень 6: +40% скорости стрельбы
    for i, v in ipairs(ATF_calibers_energy) do
        table.insert(data.raw.technology["weapon-shooting-speed-6"].effects, {
            type ="gun-speed",
            ammo_category = v,
            modifier = 0.4
        })
    end

    -- ========================================================================
    -- ВЗРЫВЧАТЫЕ БОЕПРИПАСЫ (Explosive Ammo)
    -- ========================================================================

    -- Уровень 1: +10% скорости стрельбы
    for i, v in ipairs(ATF_calibers_explosives) do
        table.insert(data.raw.technology["weapon-shooting-speed-1"].effects, {
            type ="gun-speed",
            ammo_category = v,
            modifier = 0.1
        })
    end

    -- Уровень 2: +10% скорости стрельбы
    for i, v in ipairs(ATF_calibers_explosives) do
        table.insert(data.raw.technology["weapon-shooting-speed-2"].effects, {
            type ="gun-speed",
            ammo_category = v,
            modifier = 0.1
        })
    end

    -- Уровень 3: +20% скорости стрельбы
    for i, v in ipairs(ATF_calibers_explosives) do
        table.insert(data.raw.technology["weapon-shooting-speed-3"].effects, {
            type ="gun-speed",
            ammo_category = v,
            modifier = 0.2
        })
    end

    -- Уровень 4: +20% скорости стрельбы
    for i, v in ipairs(ATF_calibers_explosives) do
        table.insert(data.raw.technology["weapon-shooting-speed-4"].effects, {
            type ="gun-speed",
            ammo_category = v,
            modifier = 0.2
        })
    end

    -- Уровень 5: +20% скорости стрельбы
    for i, v in ipairs(ATF_calibers_explosives) do
        table.insert(data.raw.technology["weapon-shooting-speed-5"].effects, {
            type ="gun-speed",
            ammo_category = v,
            modifier = 0.2
        })
    end

    -- Уровень 6: +40% скорости стрельбы
    for i, v in ipairs(ATF_calibers_explosives) do
        table.insert(data.raw.technology["weapon-shooting-speed-6"].effects, {
            type ="gun-speed",
            ammo_category = v,
            modifier = 0.4
        })
    end

    -- ========================================================================
    -- ЛОГИРОВАНИЕ
    -- ========================================================================

    log("[ATF-Rebalance] Kinetic RoF modifiers applied:" .. #ATF_calibers .." calibers")
    log("[ATF-Rebalance] Energy RoF modifiers applied:" .. #ATF_calibers_energy .." calibers")
    log("[ATF-Rebalance] Explosive RoF modifiers applied:" .. #ATF_calibers_explosives .." calibers")
else
    log("[ATF-Rebalance] Rate of Fire upgrades disabled in settings")
end

-- ============================================================================
-- ИНТЕГРАЦИЯ С BOB'S WARFARE (опционально)
-- ============================================================================

if mods["bobwarfare"] then
    log("[ATF-Rebalance] Bob's Warfare detected - RoF modifiers may overlap")
    -- Bob's Warfare имеет свои модификаторы скорости стрельбы
    -- При необходимости можно добавить дополнительную логику
end

log("[ATF-Rebalance] tech-spd.lua loaded successfully")