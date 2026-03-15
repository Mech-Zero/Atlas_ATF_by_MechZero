-- kf2.lua
-- Снаряды для концепт-оружия (Helios Plasma, Killer Watt Beam)
-- Версия: 1.1 (Rebalance by Mechromancer-Zero)
-- Интеграция: Bob's Warfare Compatibility

extend({
    -- =========================================================================
    -- helios-plasma: Плазменный снаряд Helios Rifle
    -- =========================================================================
    {
        type ="projectile",
        name ="helios-plasma",
        flags = {"not-on-map"},
        acceleration = 0.01,
        action = {
            type ="direct",
            action_delivery = {
                type ="instant",
                target_effects = {
                    {
                        type ="damage",
                        damage = {amount = 250, type ="fire"}
                    },
                    {
                        type ="damage",
                        damage = {amount = 20, type ="impact"}
                    },
                    {
                        type ="create-sticker",
                        sticker ="fire-sticker"
                    },
                    {
                        type ="create-entity",
                        entity_name ="explosion-hit"
                    },
                    {
                        type ="create-fire",
                        entity_name ="fire-flame"
                    }
                }
            }
        },
        light = {intensity = 4, size = 8},
        animation = {
            filename ="__Atlas_ATF__/graphics/projectiles/plasma/red-plasma.png",
            draw_as_glow = true,
            frame_count = 1,
            height = 32,
            width = 32,
            priority ="high"
        },
        hit_at_collision_position = true
    },

    -- =========================================================================
    -- killerwatt-beam: Электрический луч Killer Watt
    -- =========================================================================
    {
        type ="beam",
        name ="killerwatt-beam",
        flags = {"not-on-map"},
        width = 0.5,
        damage_interval = 1,
        random_target_offset = true,
        action = {
            type ="direct",
            action_delivery = {
                type ="instant",
                target_effects = {
                    {
                        type ="damage",
                        damage = {amount = 100, type ="electric"}
                    },
                    {
                        type ="create-sticker",
                        sticker ="stun-sticker"
                    }
                }
            }
        },
        light = {intensity = 6, size = 10},
        working_sound = {
            {
                filename ="__base__/sound/fight/electric-beam.ogg",
                volume = 0.7
            }
        }
    }
})

-- ============================================================================
-- ЛОГИРОВАНИЕ ЗАГРУЗКИ
-- ============================================================================

log("[ATF-Rebalance] KF2 projectiles loaded successfully (helios-plasma, killerwatt-beam)")

-- ============================================================================
-- ИНТЕГРАЦИЯ С BOB'S WARFARE (опционально)
-- ============================================================================

if mods["bobwarfare"] then
    log("[ATF-Rebalance] Bob's Warfare detected - KF2 projectiles compatible")
end