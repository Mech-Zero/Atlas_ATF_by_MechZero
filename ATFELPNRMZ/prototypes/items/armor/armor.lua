-- armor.lua
-- Продвинутая силовая броня ATF (Tesla, Hellfire, Eliminator)
-- Версия: 1.1 (Rebalance by Mechromancer-Zero)
-- Интеграция: Space Age + Bob's Warfare Compatibility

-- ============================================================================
-- ПРОВЕРКА SPACE AGE
-- ============================================================================

local has_space_age = mods["space-age"]

-- ============================================================================
-- ЗВУКИ (безопасная загрузка)
-- ============================================================================

local function get_armor_sounds()
    if has_space_age then
        return {
            takeoff = {
                filename ="__space-age__/sound/entity/mech-armor/mech-armor-takeoff.ogg",
                volume = 0.2,
                aggregation = {max_count = 2, remove = true, count_already_playing = true}
            },
            landing = {
                filename ="__space-age__/sound/entity/mech-armor/mech-armor-land.ogg",
                volume = 0.3,
                aggregation = {max_count = 2, remove = true, count_already_playing = true}
            },
            flight = {
                sound = {
                    filename ="__space-age__/sound/entity/mech-armor/mech-armor-flight.ogg",
                    volume = 0.2
                }
            }
        }
    else
        -- Ванильные звуки если Space Age не установлен
        return {
            takeoff = {filename ="__base__/sound/armor-open.ogg", volume = 0.5},
            landing = {filename ="__base__/sound/armor-close.ogg", volume = 0.5},
            flight = nil
        }
    end
end

local armor_sounds = get_armor_sounds()

-- ============================================================================
-- ПРОТОТИПЫ БРОНИ
-- ============================================================================

data:extend({
    -- =========================================================================
    -- ATF-PA-grid: Сетка оборудования (14x14)
    -- =========================================================================
    {
        type ="equipment-grid",
        name ="ATF-PA-grid",
        width = 14,
        height = 14,
        equipment_categories = {"armor"}
    },

    -- =========================================================================
    -- ATF-PA-grid-2: Увеличенная сетка оборудования (18x18)
    -- =========================================================================
    {
        type ="equipment-grid",
        name ="ATF-PA-grid-2",
        width = 18,
        height = 18,
        equipment_categories = {"armor"}
    },

    -- =========================================================================
    -- ATF-tesla-armor: Тесла броня (электрическая защита)
    -- =========================================================================
    {
        type ="armor",
        name ="ATF-tesla-armor",
        icon ="__ATFELPNRMZ__/graphics/armor/tesla.png",
        icon_size = 256,
        durability = 120000,
        icon_mipmaps = 4,
        -- flags = {"item"},
        resistances = {
            {type ="physical", decrease = 40, percent = 50},
            {type ="impact", decrease = 10, percent = 90},
            {type ="laser", decrease = 10, percent = 90},
            {type ="electric", decrease = 100, percent = 100},
            {type ="acid", decrease = 10, percent = 90},
            {type ="explosion", decrease = 60, percent = 80},
            {type ="fire", decrease = 10, percent = 80}
        },
        movement_bonus = 0.3,
        subgroup ="ATF-armor",
        order ="a[ATF-tesla-armor]",
        stack_size = 1,
        equipment_grid ="ATF-PA-grid",
        inventory_size_bonus = 40,
        provides_flight = true,
        takeoff_sound = armor_sounds.takeoff,
        landing_sound = armor_sounds.landing,
        flight_sound = armor_sounds.flight,
        open_sound = {filename ="__base__/sound/armor-open.ogg", volume = 1},
        close_sound = {filename ="__base__/sound/armor-close.ogg", volume = 1}
    },

    -- =========================================================================
    -- ATF-hellfire-armor: Адское пламя (огненная защита)
    -- =========================================================================
    {
        type ="armor",
        name ="ATF-hellfire-armor",
        icon ="__ATFELPNRMZ__/graphics/armor/hellfire.png",
        icon_size = 256,
        durability = 160000,
        icon_mipmaps = 4,
        -- flags = {"item"},
        resistances = {
            {type ="physical", decrease = 40, percent = 50},
            {type ="impact", decrease = 10, percent = 90},
            {type ="acid", decrease = 10, percent = 90},
            {type ="explosion", decrease = 50, percent = 90},
            {type ="laser", decrease = 10, percent = 50},
            {type ="electric", decrease = 10, percent = 50},
            {type ="fire", decrease = 100, percent = 100}
        },
        movement_bonus = 0.3,
        subgroup ="ATF-armor",
        order ="a[ATF-hellfire-armor]",
        stack_size = 1,
        equipment_grid ="ATF-PA-grid",
        inventory_size_bonus = 40,
        provides_flight = true,
        takeoff_sound = armor_sounds.takeoff,
        landing_sound = armor_sounds.landing,
        flight_sound = armor_sounds.flight,
        open_sound = {filename ="__base__/sound/armor-open.ogg", volume = 1},
        close_sound = {filename ="__base__/sound/armor-close.ogg", volume = 1}
    },

    -- =========================================================================
    -- ATF-eliminator-armor: Уничтожитель (максимальная защита)
    -- =========================================================================
    {
        type ="armor",
        name ="ATF-eliminator-armor",
        icon ="__ATFELPNRMZ__/graphics/armor/eliminator.png",
        icon_size = 256,
        durability = 210000,
        icon_mipmaps = 4,
        -- flags = {"item"},
        resistances = {
            {type ="physical", decrease = 50, percent = 80},
            {type ="impact", decrease = 10, percent = 95},
            {type ="laser", decrease = 10, percent = 90},
            {type ="electric", decrease = 10, percent = 100},
            {type ="acid", decrease = 10, percent = 95},
            {type ="explosion", decrease = 60, percent = 80},
            {type ="fire", decrease = 100, percent = 100}
        },
        movement_bonus = 0.5,
        subgroup ="ATF-armor",
        order ="a[ATF-eliminator-armor]",
        stack_size = 1,
        equipment_grid ="ATF-PA-grid-2",
        inventory_size_bonus = 60,
        provides_flight = true,
        takeoff_sound = armor_sounds.takeoff,
        landing_sound = armor_sounds.landing,
        flight_sound = armor_sounds.flight,
        open_sound = {filename ="__base__/sound/armor-open.ogg", volume = 1},
        close_sound = {filename ="__base__/sound/armor-close.ogg", volume = 1}
    }
})

-- ============================================================================
-- ИНТЕГРАЦИЯ С АНИМАЦИЯМИ ПЕРСОНАЖА (безопасная)
-- ============================================================================

local function add_armor_to_character(armor_name)
    if data.raw.character and 
       data.raw.character.character and 
       data.raw.character.character.animations then
        for i, animation_set in ipairs(data.raw.character.character.animations) do
            if animation_set.armors then
                table.insert(animation_set.armors, armor_name)
            end
        end
    end
end

add_armor_to_character("ATF-tesla-armor")
add_armor_to_character("ATF-hellfire-armor")
add_armor_to_character("ATF-eliminator-armor")

-- ============================================================================
-- ЛОГИРОВАНИЕ ЗАГРУЗКИ
-- ============================================================================

log("[ATF-Rebalance] Armor loaded successfully (Tesla, Hellfire, Eliminator)")

if has_space_age then
    log("[ATF-Rebalance] Space Age detected - using Space Age armor sounds")
else
    log("[ATF-Rebalance] Space Age not detected - using vanilla armor sounds")
end

-- ============================================================================
-- ИНТЕГРАЦИЯ С BOB'S WARFARE (опционально)
-- ============================================================================

if mods["bobwarfare"] then
    log("[ATF-Rebalance] Bob's Warfare detected - armor compatible")
end