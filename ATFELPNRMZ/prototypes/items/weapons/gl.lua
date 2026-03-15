-- gl.lua
-- Гранатомёты ATF (M79, M32, War Machine)
-- Версия: 1.1 (Rebalance by Mechromancer-Zero)
-- Интеграция: Bob's Warfare Compatibility

extend({
    -- =========================================================================
    -- m79: M79 Grenade Launcher (одиночный гранатомёт холодной войны)
    -- =========================================================================
    {
        type ="gun",
        name ="m79",
        icon ="__Atlas_ATF__/graphics/weapons/m79.png",
        icon_size = 128,
        icon_mipmaps = 4,
        flags = {"item"},
        subgroup ="coldwararms",
        order ="h[grenade]-a[m79]",
        attack_parameters = {
            type ="projectile",
            ammo_category ="40mm",
            damage_modifier = 1.5,
            cooldown = 90,
            movement_slow_down_factor = 0.2,
            projectile_creation_distance = 1.2,
            range = 40,
            sound = {
                {
                    filename ="__Atlas_ATF__/sound/m79.ogg",
                    volume = 0.5
                }
            }
        },
        stack_size = 100
    },

    -- =========================================================================
    -- m32: M32 MGL (револьверный гранатомёт современности)
    -- =========================================================================
    {
        type ="gun",
        name ="m32",
        icon ="__Atlas_ATF__/graphics/weapons/m32.png",
        icon_size = 128,
        icon_mipmaps = 4,
        flags = {"item"},
        subgroup ="modernarms",
        order ="h[grenade]-b[m32]",
        attack_parameters = {
            type ="projectile",
            ammo_category ="40mm",
            damage_modifier = 1.8,
            cooldown = 45,
            movement_slow_down_factor = 0.4,
            projectile_creation_distance = 1.2,
            range = 45,
            sound = {
                {
                    filename ="__Atlas_ATF__/sound/mgl.ogg",
                    volume = 0.5
                }
            }
        },
        stack_size = 50
    },

    -- =========================================================================
    -- warmachine: War Machine (автоматический гранатомёт концепта)
    -- =========================================================================
    {
        type ="gun",
        name ="warmachine",
        icon ="__Atlas_ATF__/graphics/weapons/warmachine.png",
        icon_size = 128,
        icon_mipmaps = 4,
        flags = {"item"},
        subgroup ="conceptarms",
        order ="h[grenade]-c[warmachine]",
        attack_parameters = {
            type ="projectile",
            ammo_category ="40mm",
            damage_modifier = 2.2,
            cooldown = 12,
            movement_slow_down_factor = 0.4,
            projectile_creation_distance = 1.5,
            range = 50,
            sound = {
                {
                    filename ="__Atlas_ATF__/sound/glmg.ogg",
                    volume = 1.2
                }
            }
        },
        stack_size = 50
    }
})

-- ============================================================================
-- ЛОГИРОВАНИЕ ЗАГРУЗКИ
-- ============================================================================

log("[ATF-Rebalance] Grenade launchers loaded successfully (M79, M32, War Machine)")

-- ============================================================================
-- ИНТЕГРАЦИЯ С BOB'S WARFARE (опционально)
-- ============================================================================

if mods["bobwarfare"] then
    log("[ATF-Rebalance] Bob's Warfare detected - grenade launchers compatible")
end