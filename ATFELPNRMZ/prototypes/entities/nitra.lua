-- nitra.lua
-- Ресурс Nitra (Нитра) для производства нитратов
-- Версия: 1.1 (Rebalance by Mechromancer-Zero)
-- Интеграция: Bob's Ores Compatibility

-- ============================================================================
-- ПРОВЕРКА НА BOB'S ORES
-- ============================================================================

-- Если Bob's Ores установлен, не создаём свой ресурс (избегаем дублирования)
if mods["bobores"] then
    log("[ATF-Rebalance] Bob's Ores detected - skipping nitra resource creation")
    return
end

-- ============================================================================
-- ПРОТОТИП РЕСУРСА
-- ============================================================================

data:extend({
    {
        type ="resource",
        name ="nitra",
        icon ="__ATFELPNRMZ__/graphics/ores/nitra-ore.png",
        icon_size = 32,
        flags = {"placeable-neutral"},
        order ="a-b-h",
        minable = {
            hardness = 0.5,
            mining_particle ="iron-ore-particle",
            mining_time = 3,
            results = {
                {
                    name ="ATF-nitrate",
                    amount_min = 1,
                    amount_max = 2,
                    probability = 1
                }
            }
        },
        collision_box = {{-0.1, -0.1}, {0.1, 0.1}},
        selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
        autoplace = {
            control ="nitra",
            starting_area = true,
            starting_area_amount = 500,
            starting_area_size = 15,
            sharpness = 15 / 16,
            richness_multiplier = 5,
            richness_base = 5,
            richness_multiplier_distance_bonus = 10,
            coverage = 0.01,
            peaks = {
                {
                    influence = 0.8,
                    noise_layer ="coal",
                    noise_octaves_difference = 0.3,
                    noise_persistence = 0.5,
                    starting_area_weight_optimal = 1,
                    starting_area_weight_range = 1,
                    starting_area_weight_max_range = 2
                }
            }
        },
        stage_counts = {5000, 3000, 1500, 800, 400, 100, 50, 10},
        stages = {
            sheet = {
                filename ="__ATFELPNRMZ__/graphics/ores/nitra.png",  -- ИСПРАВЛЕНО: было cinnabar.png
                priority ="extra-high",
                width = 64,
                height = 64,
                frame_count = 8,
                variation_count = 8,
                scale = 0.5,
                hr_version = {
                    filename ="__ATFELPNRMZ__/graphics/ores/hr-nitra.png",  -- ИСПРАВЛЕНО: было hr-cinnabar.png
                    priority ="extra-high",
                    width = 128,
                    height = 128,
                    frame_count = 8,
                    variation_count = 8,
                    scale = 0.5
                }
            }
        },
        map_color = {r = 180, g = 140, b = 100}  -- ИСПРАВЛЕНО: более подходящий цвет для нитры
    }
})

-- ============================================================================
-- ЛОГИРОВАНИЕ ЗАГРУЗКИ
-- ============================================================================

log("[ATF-Rebalance] Nitra resource loaded successfully")

-- ============================================================================
-- ИНТЕГРАЦИЯ С BOB'S ORES (опционально)
-- ============================================================================

if mods["bobores"] then
    log("[ATF-Rebalance] Bob's Ores detected - using Bob's nitra instead")
end

if mods["angelsrefining"] then
    log("[ATF-Rebalance] Angel's Refining detected - nitra may require additional processing")
end