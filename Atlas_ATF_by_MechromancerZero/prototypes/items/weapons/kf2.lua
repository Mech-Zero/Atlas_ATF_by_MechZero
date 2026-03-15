-- kf2.lua
-- Энергетическое оружие ATF (Killer Watt, Helios Rifle)
-- Версия: 1.1 (Rebalance by Mechromancer-Zero)
-- Интеграция: Bob's Warfare Compatibility

extend({
    -- =========================================================================
    -- killerwatt: Лучевая винтовка Killer Watt (электрический луч)
    -- =========================================================================
    {
        type = "gun",
        name = "killerwatt",
        icon = "__Atlas_ATF__/graphics/weapons/killerwatt.png",
        icon_size = 128,
        icon_mipmaps = 4,
        flags = {"item"},
        subgroup = "conceptarms",
        order = "g[laser]-a[killerwatt]",
        attack_parameters = {
            type = "beam",
            ammo_category = "killerwatt",
            damage_modifier = 1.4,
            cooldown = 4,
            movement_slow_down_factor = 0.1,
            projectile_creation_distance = 1,
            range = 30,
            cyclic_sound = {
                begin_sound = {
                    {
                        filename = "__Atlas_ATF__/sound/empty.ogg",
                        volume = 0,
                        speed = 1000.0
                    }
                },
                middle_sound = {
                    {
                        filename = "__Atlas_ATF__/sound/killerwatt.ogg",
                        volume = 0.9
                    }
                },
                end_sound = {
                    {
                        filename = "__Atlas_ATF__/sound/empty.ogg",
                        volume = 0,
                        speed = 1000.0
                    }
                }
            }
        },
        stack_size = 50
    },

    -- =========================================================================
    -- heliosrifle: Плазменная винтовка Helios (плазменный снаряд)
    -- =========================================================================
    {
        type = "gun",
        name = "heliosrifle",
        icon = "__Atlas_ATF__/graphics/weapons/helios.png",
        icon_size = 128,
        icon_mipmaps = 4,
        flags = {"item"},
        subgroup = "conceptarms",
        order = "g[plasma]-a[helios]",
        attack_parameters = {
            type = "projectile",
            ammo_category = "helios",
            damage_modifier = 1.2,
            cooldown = 6,
            movement_slow_down_factor = 0.1,
            projectile_creation_distance = 1.5,
            range = 35,
            cyclic_sound = {
                begin_sound = {
                    {
                        filename = "__Atlas_ATF__/sound/empty.ogg",
                        volume = 0,
                        speed = 1000.0
                    }
                },
                middle_sound = {
                    {
                        filename = "__Atlas_ATF__/sound/helios.ogg",
                        volume = 0.9
                    }
                },
                end_sound = {
                    {
                        filename = "__Atlas_ATF__/sound/empty.ogg",
                        volume = 0,
                        speed = 1000.0
                    }
                }
            }
        },
        stack_size = 50
    }
})

-- ============================================================================
-- ЛОГИРОВАНИЕ ЗАГРУЗКИ
-- ============================================================================

log("[ATF-Rebalance] Energy weapons loaded successfully (Killer Watt, Helios Rifle)")

-- ============================================================================
-- ИНТЕГРАЦИЯ С BOB'S WARFARE (опционально)
-- ============================================================================

if mods["bobwarfare"] then
    log("[ATF-Rebalance] Bob's Warfare detected - energy weapons compatible")
end