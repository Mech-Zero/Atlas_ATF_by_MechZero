-- allow_productivity.lua
-- Разрешение модулей производительности для рецептов ATF
-- Версия: 1.1 (Rebalance by Mechromancer-Zero)
-- Интеграция: Bob's Warfare + Bob's Metals

-- ============================================================================
-- СПИСКИ ПРЕДМЕТОВ (все строковые литералы очищены от пробелов)
-- ============================================================================

-- Компоненты оружия и промежуточные предметы
local comps = {
    "ATF-smg-receiver-stamped",
    "ATF-smg-receiver-milled",
    "ATF-smg-receiver-modern",
    "ATF-metal-stock",
    "ATF-rifle-bullets",
    "ATF-powder",
    "ATF-better-powder",
    "ATF-pistol-tips",
    "ATF-recoil-spring",
    "ATF-smg-barrel",
    "ATF-long-rifle-barrel",
    "ATF-short-rifle-barrel",
    "ATF-rifle-casing",
    "ATF-pistol-barrel",
    "ATF-pistol-casing",
    "ATF-primer",
    "ATF-poly-stock",
    "ATF-wooden-stock",
    "ATF-rifle-grip",
    "ATF-poly-rifle-grip",
    "ATF-pistol-grip",
    "ATF-pistol-frame-metal",
    "ATF-pistol-frame-modern",
    "ATF-auto-receiver",
    "ATF-powerful-receiver",
    "ATF-semi-receiver",
    "ATF-mg-receiver",
    "ATF-mg-barrel",
    "ATF-bolt-receiver",
    "ATF-pistol-slide",
    "ATF-bolts-nuts",
    "ATF-nitrate",
    "ATF-mercury",
    "ATF-cinnabar",
    "ATF-hmg-barrel",
    "ATF-heavy-bullets",
    "ATF-heavy-casings",
    "ATF-shotgun-receiver",
    "ATF-buckshot",
    "ATF-empty-shell",
    "ATF-future-receiver",
    "ATF-future-barrel",
    "ATF-plasma-cell",
    "ATF-plasmaheater",
    "ATF-supercap",
}

-- Стандартные боеприпасы (разрешена продуктивность)
local ammo_standard = {
    "9mm",
    "9mmp",
    "3006ammo",
    "303ammo",
    "303mag",
    "792x57drum",
    "3006belt",
    "556x45",
    "792x33",
    "792x57",
    "68spc",
    "68spcdrum",
    "762x25",
    "762x25drum",
    "45acp",
    "45acpdrum",
    "762x51",
    "762x51drum",
    "762x39",
    "556x45drum",
    "762x39drum",
    "545x39",
    "545long",
    "ATF-arti-shell-acid",
    "ATF-arti-shell-napalm",
    "20mm",
    "20mm-he",
    "50bmg",
    "40mm-he",
    "40mm-incendiary",
    "40mm-acid",
    "40mm-plasma",
    "12g-buckshot",
    "12g-slug",
    "12g-frag",
    "12g-dragon",
    "556-swatt",
    "556belt",
    "762belt",
    "40wattmag",
    "killerwattmag",
    "heliosmag",
}

-- ⚠️ ПРЕДМЕТЫ С УРАНОМ/ЯДЕРНОЙ ЭНЕРГИЕЙ (запрещена продуктивность)
-- Эти предметы НЕ должны множиться модулями производительности
local ammo_forbidden = {
    "9mmu",                   -- Урановые патроны
    "ATF-fusion-battery",     -- Ядерная батарея
}

-- Дроны (разрешена продуктивность)
local drones = {
    "ATF-rcxd",
    "ATF-rcnd"
}

-- ============================================================================
-- ПРИМЕНЕНИЕ НАСТРОЕК
-- ============================================================================

-- Разрешаем продуктивность для стандартных предметов
ATF_allow_productivity(comps)
ATF_allow_productivity(ammo_standard)
ATF_allow_productivity(drones)

-- ⚠️ НЕ применяем ATF_allow_productivity к ammo_forbidden
-- Эти предметы остаются без поддержки модулей производительности

-- ============================================================================
-- ИНТЕГРАЦИЯ С BOB'S WARFARE (опционально)
-- ============================================================================

if mods["bobwarfare"] then
    -- Bob's Warfare имеет свои ограничения для продуктивности
    -- Можно добавить дополнительную логику при необходимости
    log("[ATF-Rebalance] Bob's Warfare detected - productivity settings applied")
end