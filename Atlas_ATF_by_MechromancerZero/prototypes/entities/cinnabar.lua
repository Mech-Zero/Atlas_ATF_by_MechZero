-- cinnabar.lua
-- Ресурс Cinnabar (Киноварь) для производства ртути
-- Версия: 1.1 (Rebalance by Mechromancer-Zero)
-- Интеграция: Bob's Ores Compatibility

-- ============================================================================
-- ПРОВЕРКА НА BOB'S ORES
-- ============================================================================

-- Если Bob's Ores установлен, не создаём свой ресурс (избегаем дублирования)
if mods["bobores"] then
    log("[ATF-Rebalance] Bob's Ores detected - skipping cinnabar resource creation")
    return
end

-- ============================================================================
-- ПРОТОТИП РЕСУРСА
-- ============================================================================

data:extend({
    {
        type = "resource",
        name = "cinnabar",
        icon = "__Atlas_ATF__/graphics/ores/cinnabar-ore.png",
        icon_size = 32,
        flags = {"placeable-neutral"},
        order = "a-b-g",
        minable = {
            hardness = 0.5,
            mining_particle = "copper-ore-particle",
            mining_time = 3,
            results = {
                {
                    name = "cinnabar-ore",
                    amount_min = 1,
                    amount_max = 2,
                    probability = 1
                }
            }
        },
        collision_box = {{-0.1, -0.1}, {0.1, 0.1}},
        selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
        autoplace = {
            control = "cinnabar",
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
                    noise_layer = "coal",
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
                filename = "__Atlas_ATF__/graphics/ores/cinnabar.png",
                priority = "extra-high",
                width = 64,
                height = 64,
                frame_count = 8,
                variation_count = 8,
                scale = 0.5,
                hr_version = {
                    filename = "__Atlas_ATF__/graphics/ores/hr-cinnabar.png",
                    priority = "extra-high",
                    width = 128,
                    height = 128,
                    frame_count = 8,
                    variation_count = 8,
                    scale = 0.5
                }
            }
        },
        map_color = {r = 117, g = 42, b = 35}
    }
})

-- ============================================================================
-- ЛОГИРОВАНИЕ ЗАГРУЗКИ
-- ============================================================================

log("[ATF-Rebalance] Cinnabar resource loaded successfully")

-- ============================================================================
-- ИНТЕГРАЦИЯ С BOB'S ORES (опционально)
-- ============================================================================

if mods["bobores"] then
    log("[ATF-Rebalance] Bob's Ores detected - using Bob's cinnabar instead")
end

if mods["angelsrefining"] then
    log("[ATF-Rebalance] Angel's Refining detected - cinnabar may require additional processing")
end