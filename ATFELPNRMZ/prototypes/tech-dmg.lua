-- tech-dmg.lua
-- Модификаторы урона для технологий ATF Rebalance
-- Версия: 1.1 (Rebalance by Mechromancer-Zero)
-- Интеграция: Bob's Warfare Compatibility

-- ============================================================================
-- ПРОВЕРКА НАСТРОЙКИ МОДА
-- ============================================================================

if settings.startup["ATF-dmg-upgrade"].value == true then
    log("[ATF-Rebalance] Damage upgrades enabled - applying modifiers")

    -- ========================================================================
    -- КИНЕТИЧЕСКИЕ БОЕПРИПАСЫ (Kinetic Ammo)
    -- ========================================================================

    for i, v in ipairs(ATF_calibers) do
        table.insert(data.raw.technology["physical-projectile-damage-1"].effects, {
            type = "ammo-damage",
            ammo_category = v,
            modifier = 0.1
        })
    end

    for i, v in ipairs(ATF_calibers) do
        table.insert(data.raw.technology["physical-projectile-damage-2"].effects, {
            type = "ammo-damage",
            ammo_category = v,
            modifier = 0.1
        })
    end

    for i, v in ipairs(ATF_calibers) do
        table.insert(data.raw.technology["physical-projectile-damage-3"].effects, {
            type = "ammo-damage",
            ammo_category = v,
            modifier = 0.2
        })
    end

    for i, v in ipairs(ATF_calibers) do
        table.insert(data.raw.technology["physical-projectile-damage-4"].effects, {
            type = "ammo-damage",
            ammo_category = v,
            modifier = 0.2
        })
    end

    for i, v in ipairs(ATF_calibers) do
        table.insert(data.raw.technology["physical-projectile-damage-5"].effects, {
            type = "ammo-damage",
            ammo_category = v,
            modifier = 0.2
        })
    end

    for i, v in ipairs(ATF_calibers) do
        table.insert(data.raw.technology["physical-projectile-damage-6"].effects, {
            type = "ammo-damage",
            ammo_category = v,
            modifier = 0.4
        })
    end

    for i, v in ipairs(ATF_calibers) do
        table.insert(data.raw.technology["physical-projectile-damage-7"].effects, {
            type = "ammo-damage",
            ammo_category = v,
            modifier = 0.7
        })
    end

    -- ========================================================================
    -- ЭНЕРГЕТИЧЕСКИЕ БОЕПРИПАСЫ (Energy Ammo)
    -- ========================================================================

    for i, v in ipairs(ATF_calibers_energy) do
        table.insert(data.raw.technology["laser-weapons-damage-1"].effects, {
            type = "ammo-damage",
            ammo_category = v,
            modifier = 0.2
        })
    end

    for i, v in ipairs(ATF_calibers_energy) do
        table.insert(data.raw.technology["laser-weapons-damage-2"].effects, {
            type = "ammo-damage",
            ammo_category = v,
            modifier = 0.2
        })
    end

    for i, v in ipairs(ATF_calibers_energy) do
        table.insert(data.raw.technology["laser-weapons-damage-3"].effects, {
            type = "ammo-damage",
            ammo_category = v,
            modifier = 0.3
        })
    end

    for i, v in ipairs(ATF_calibers_energy) do
        table.insert(data.raw.technology["laser-weapons-damage-4"].effects, {
            type = "ammo-damage",
            ammo_category = v,
            modifier = 0.4
        })
    end

    for i, v in ipairs(ATF_calibers_energy) do
        table.insert(data.raw.technology["laser-weapons-damage-5"].effects, {
            type = "ammo-damage",
            ammo_category = v,
            modifier = 0.5
        })
    end

    for i, v in ipairs(ATF_calibers_energy) do
        table.insert(data.raw.technology["laser-weapons-damage-6"].effects, {
            type = "ammo-damage",
            ammo_category = v,
            modifier = 0.7
        })
    end

    for i, v in ipairs(ATF_calibers_energy) do
        table.insert(data.raw.technology["laser-weapons-damage-7"].effects, {
            type = "ammo-damage",
            ammo_category = v,
            modifier = 0.7
        })
    end

    -- ========================================================================
    -- ВЗРЫВЧАТЫЕ БОЕПРИПАСЫ (Explosive Ammo)
    -- ========================================================================

    for i, v in ipairs(ATF_calibers_explosives) do
        table.insert(data.raw.technology["stronger-explosives-1"].effects, {
            type = "ammo-damage",
            ammo_category = v,
            modifier = 0.2
        })
    end

    for i, v in ipairs(ATF_calibers_explosives) do
        table.insert(data.raw.technology["stronger-explosives-2"].effects, {
            type = "ammo-damage",
            ammo_category = v,
            modifier = 0.25
        })
    end

    for i, v in ipairs(ATF_calibers_explosives) do
        table.insert(data.raw.technology["stronger-explosives-3"].effects, {
            type = "ammo-damage",
            ammo_category = v,
            modifier = 0.3
        })
    end

    for i, v in ipairs(ATF_calibers_explosives) do
        table.insert(data.raw.technology["stronger-explosives-4"].effects, {
            type = "ammo-damage",
            ammo_category = v,
            modifier = 0.4
        })
    end

    for i, v in ipairs(ATF_calibers_explosives) do
        table.insert(data.raw.technology["stronger-explosives-5"].effects, {
            type = "ammo-damage",
            ammo_category = v,
            modifier = 0.5
        })
    end

    for i, v in ipairs(ATF_calibers_explosives) do
        table.insert(data.raw.technology["stronger-explosives-6"].effects, {
            type = "ammo-damage",
            ammo_category = v,
            modifier = 0.6
        })
    end

    for i, v in ipairs(ATF_calibers_explosives) do
        table.insert(data.raw.technology["stronger-explosives-7"].effects, {
            type = "ammo-damage",
            ammo_category = v,
            modifier = 0.7
        })
    end

    -- ========================================================================
    -- ЛОГИРОВАНИЕ
    -- ========================================================================

    log("[ATF-Rebalance] Kinetic damage modifiers applied: " .. #ATF_calibers .. " calibers")
    log("[ATF-Rebalance] Energy damage modifiers applied: " .. #ATF_calibers_energy .. " calibers")
    log("[ATF-Rebalance] Explosive damage modifiers applied: " .. #ATF_calibers_explosives .. " calibers")
else
    log("[ATF-Rebalance] Damage upgrades disabled in settings")
end

-- ============================================================================
-- ИНТЕГРАЦИЯ С BOB'S WARFARE (опционально)
-- ============================================================================

if mods["bobwarfare"] then
    log("[ATF-Rebalance] Bob's Warfare detected - damage modifiers may overlap")
    -- Bob's Warfare имеет свои модификаторы урона
    -- При необходимости можно добавить дополнительную логику
end