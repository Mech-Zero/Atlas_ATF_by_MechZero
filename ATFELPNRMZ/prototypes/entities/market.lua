-- market.lua
-- Торговый терминал ATF (ATF-market)
-- Версия: 1.2 (Rebalance by Mechromancer-Zero)
-- Исправление: Интерфейс размещения

local sounds = require("__base__.prototypes.entity.sounds")
local hit_effects = require("__base__.prototypes.entity.hit-effects")

-- ============================================================================
-- ВСПОМОГАТЕЛЬНЫЕ ФУНКЦИИ ДЛЯ ТРУБ
-- ============================================================================

local function assembler3pipepictures()
    return {
        north = {
            filename ="__base__/graphics/entity/assembling-machine-3/assembling-machine-3-pipe-N.png",
            priority ="extra-high",
            width = 32,
            height = 32,
            shift = util.by_pixel(0, -32)
        },
        south = {
            filename ="__base__/graphics/entity/assembling-machine-3/assembling-machine-3-pipe-S.png",
            priority ="extra-high",
            width = 32,
            height = 32,
            shift = util.by_pixel(0, 32)
        },
        east = {
            filename ="__base__/graphics/entity/assembling-machine-3/assembling-machine-3-pipe-E.png",
            priority ="extra-high",
            width = 32,
            height = 32,
            shift = util.by_pixel(32, 0)
        },
        west = {
            filename ="__base__/graphics/entity/assembling-machine-3/assembling-machine-3-pipe-W.png",
            priority ="extra-high",
            width = 32,
            height = 32,
            shift = util.by_pixel(-32, 0)
        }
    }
end

local function pipecoverspictures()
    return {
        north = {
            filename ="__base__/graphics/entity/pipe-covers/pipe-cover-north.png",
            priority ="extra-high",
            width = 64,
            height = 64
        },
        south = {
            filename ="__base__/graphics/entity/pipe-covers/pipe-cover-south.png",
            priority ="extra-high",
            width = 64,
            height = 64
        },
        east = {
            filename ="__base__/graphics/entity/pipe-covers/pipe-cover-east.png",
            priority ="extra-high",
            width = 64,
            height = 64
        },
        west = {
            filename ="__base__/graphics/entity/pipe-covers/pipe-cover-west.png",
            priority ="extra-high",
            width = 64,
            height = 64
        }
    }
end

-- ============================================================================
-- ПРОТОТИП ТОРГОВОГО ТЕРМИНАЛА
-- ============================================================================

data:extend({
    {
        type ="recipe-category",
        name ="ATF-trade"
    },
    {
        type ="assembling-machine",
        name ="ATF-market",
        icon ="__ATFELPNRMZ__/graphics/entities/market.png",
        icon_size = 256,
        flags = {"placeable-neutral","placeable-player","player-creation"},
        minable = {mining_time = 0.2, result ="ATF-market"},
        max_health = 1000,
        corpse ="radar-remnants",
        dying_explosion ="radar-explosion",
        collision_box = {{-1.2, -1.2}, {1.2, 1.2}},
        selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
        damaged_trigger_effect = hit_effects.entity(),
        
        -- =====================================================================
        -- КРИТИЧЕСКИ ВАЖНО: КАТЕГОРИИ КРАФТА
        -- =====================================================================
        crafting_categories = {"ATF-trade"},
        crafting_speed = 1.0,
        
        -- =====================================================================
        -- ЭНЕРГИЯ
        -- =====================================================================
        energy_source = {
            type = "electric",
            usage_priority = "secondary-input",
            emissions_per_minute = {
                pollution = 0,
            },
        },
        energy_usage ="375kW",
        
        -- =====================================================================
        -- ИНВЕНТАРЬ (КРИТИЧНО ДЛЯ ИНТЕРФЕЙСА)
        -- =====================================================================
        ingredient_count = 1,  -- Количество слотов для ингредиентов
        result_count = 1,      -- Количество слотов для результатов
        
        -- =====================================================================
        -- МОДУЛИ
        -- =====================================================================
        module_specification = {
            module_slots = 4
        },
        allowed_effects = {"consumption","speed","productivity","pollution"},
        
        -- =====================================================================
        -- АНИМАЦИИ
        -- =====================================================================
        animation = {
            layers = {
                {
                    filename ="__ATFELPNRMZ__/graphics/entities/market.png",
                    priority ="high",
                    width = 256,
                    height = 256,
                    frame_count = 1,
                    direction_count = 1,
                    scale = 0.5,
                    shift = util.by_pixel(0, 0)
                },
                {
                    filename ="__base__/graphics/entity/radar/radar-shadow.png",
                    priority ="high",
                    width = 172,
                    height = 94,
                    frame_count = 1,
                    direction_count = 1,
                    scale = 0.5,
                    shift = util.by_pixel(20, 10),
                    draw_as_shadow = true
                }
            }
        },
        
        -- =====================================================================
        -- АНИМАЦИЯ РАБОТЫ (КРИТИЧНО ДЛЯ ОТОБРАЖЕНИЯ ИНТЕРФЕЙСА)
        -- =====================================================================
        working_visualisations = {
            {
                animation = {
                    filename ="__base__/graphics/entity/radar/radar-antenna.png",
                    priority ="high",
                    width = 64,
                    height = 64,
                    frame_count = 32,
                    line_length = 8,
                    scale = 0.5,
                    shift = util.by_pixel(0, -10)
                },
                light = {
                    intensity = 0.5,
                    size = 10,
                    color = {r = 1, g = 1, b = 0.5}
                }
            }
        },
        
        -- =====================================================================
        -- ЖИДКОСТНЫЕ ТРУБЫ (ИСПРАВЛЕНЫ ПОЗИЦИИ)
        -- =====================================================================
        fluid_boxes = {
            {
                production_type ="input",
                pipe_picture = assembler3pipepictures(),
                pipe_covers = pipecoverspictures(),
                base_area = 10,
                base_level = -1,
                pipe_connections = {{
                    flow_direction ="input",
                    direction = defines.direction.south,
                    position = {-1, 1}  -- ИСПРАВЛЕНО: смещено влево
                }},
                volume = 1000,
                secondary_draw_orders = {north = -1}
            },
            {
                production_type ="output",
                pipe_picture = assembler3pipepictures(),
                pipe_covers = pipecoverspictures(),
                base_area = 10,
                base_level = 1,
                pipe_connections = {{
                    flow_direction ="output",
                    direction = defines.direction.north,
                    position = {1, -1}  -- ИСПРАВЛЕНО: смещено вправо
                }},
                volume = 1000,
                secondary_draw_orders = {north = -1}
            }
        },
        fluid_boxes_off_when_no_fluid_recipe = true,
        
        -- =====================================================================
        -- ЗВУКИ
        -- =====================================================================
        open_sound = sounds.machine_open,
        close_sound = sounds.machine_close,
        vehicle_impact_sound = sounds.generic_impact,
        working_sound = {
            sound = {
                {
                    filename ="__base__/sound/radar.ogg",
                    volume = 0.5
                }
            },
            audible_distance_modifier = 0.5,
            fade_in_ticks = 4,
            fade_out_ticks = 20
        },
        
        -- =====================================================================
        -- ЗАМЕНА С ДРУГИМИ МАШИНАМИ
        -- =====================================================================
        fast_replaceable_group ="assembling-machine",
        
        -- =====================================================================
        -- СОПРОТИВЛЕНИЯ
        -- =====================================================================
        resistances = {
            {type ="fire", percent = 100}
        },
        
        -- =====================================================================
        -- ИНТЕГРАЦИЯ С BOB'S WARFARE
        -- =====================================================================
        next_upgrade = nil  -- Можно добавить модернизацию при необходимости
    }
})

-- ============================================================================
-- ЛОГИРОВАНИЕ ЗАГРУЗКИ
-- ============================================================================

log("[ATF-Rebalance] ATF-market entity loaded successfully with crafting interface")

-- ============================================================================
-- ПРОВЕРКА РЕЦЕПТОВ
-- ============================================================================

if data.raw.recipe["ATF-market"] then
    log("[ATF-Rebalance] ATF-market recipe found")
else
    log("[ATF-Rebalance] Warning: ATF-market recipe not found!")
end

if mods["bobwarfare"] then
    log("[ATF-Rebalance] Bob's Warfare detected - market compatible")
end