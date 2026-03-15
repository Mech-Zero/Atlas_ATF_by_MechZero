-- functions.lua
-- Вспомогательные функции для ATF Rebalance
-- Версия: 1.1 (Rebalance by Mechromancer-Zero)
-- Интеграция: Bob's Warfare + Bob's Metals Compatibility

-- ============================================================================
-- ФУНКЦИЯ: ATF_array_sub
-- Описание: Удаляет элементы из таблицы t2, которые присутствуют в таблице t1
-- Параметры: t1 (таблица для удаления), t2 (таблица для обработки)
-- Возврат: ничего (изменяет t2 напрямую)
-- ============================================================================

function ATF_array_sub(t1, t2)
    local t = {}
    for i = 1, #t1 do
        t[t1[i]] = true
    end
    for i = #t2, 1, -1 do
        if t[t2[i]] then
            table.remove(t2, i)
        end
    end
end

-- ============================================================================
-- ФУНКЦИЯ: ATF_deepcopy
-- Описание: Создаёт глубокую копию таблицы (рекурсивно)
-- Параметры: orig (оригинальная таблица или значение)
-- Возврат: copy (копия таблицы или значения)
-- ============================================================================

function ATF_deepcopy(orig)
    local orig_type = type(orig)
    local copy
    if orig_type == 'table' then
        copy = {}
        for orig_key, orig_value in next, orig, nil do
            copy[ATF_deepcopy(orig_key)] = ATF_deepcopy(orig_value)
        end
        setmetatable(copy, ATF_deepcopy(getmetatable(orig)))
    else -- number, string, boolean, etc
        copy = orig
    end
    return copy
end

-- ============================================================================
-- ФУНКЦИЯ: ATF_allow_productivity
-- Описание: Разрешает модули производительности для указанных рецептов
-- Параметры: recipe (строка с именем рецепта ИЛИ таблица имён)
-- Возврат: ничего
-- Примечание: НЕ используйте для урановых/ядерных предметов!
-- ============================================================================

function ATF_allow_productivity(recipe)
    -- Обработка таблицы рецептов
    if type(recipe) =="table" then
        for _, r in pairs(recipe) do
            ATF_allow_productivity(r)
        end
        return
    end
    
    -- Обработка одиночного рецепта
    if type(recipe) ~="string" then
        log("[ATF-Rebalance] Warning: ATF_allow_productivity received non-string:" .. tostring(recipe))
        return
    end
    
    -- Проверка существования рецепта
    if not data.raw.recipe[recipe] then
        log("[ATF-Rebalance] Warning: Recipe '" .. recipe .."' not found for productivity")
        return
    end
    
    -- Добавление рецепта в ограничения модулей
    for i, module in pairs(data.raw.module) do
        if module.limitation and module.effect.productivity then
            -- Проверка на дубликаты
            local exists = false
            for _, v in pairs(module.limitation) do
                if v == recipe then
                    exists = true
                    break
                end
            end
            if not exists then
                table.insert(module.limitation, recipe)
            end
        end
    end
    
    log("[ATF-Rebalance] Productivity enabled for:" .. recipe)
end

-- ============================================================================
-- ФУНКЦИЯ: ATF_deny_productivity (НОВАЯ)
-- Описание: Явно запрещает модули производительности для указанных рецептов
-- Параметры: recipe (строка с именем рецепта ИЛИ таблица имён)
-- Возврат: ничего
-- Использование: Для урановых/ядерных предметов
-- ============================================================================

function ATF_deny_productivity(recipe)
    -- Обработка таблицы рецептов
    if type(recipe) =="table" then
        for _, r in pairs(recipe) do
            ATF_deny_productivity(r)
        end
        return
    end
    
    -- Обработка одиночного рецепта
    if type(recipe) ~="string" then
        return
    end
    
    -- Проверка существования рецепта
    if not data.raw.recipe[recipe] then
        return
    end
    
    -- Удаление рецепта из ограничений модулей (если есть)
    for i, module in pairs(data.raw.module) do
        if module.limitation and module.effect.productivity then
            for j, v in pairs(module.limitation) do
                if v == recipe then
                    table.remove(module.limitation, j)
                    break
                end
            end
        end
    end
    
    log("[ATF-Rebalance] Productivity disabled for:" .. recipe)
end

-- ============================================================================
-- ФУНКЦИЯ: ATF_log_mod_info (НОВАЯ)
-- Описание: Выводит информацию о загруженных модах в лог
-- Параметры: нет
-- Возврат: ничего
-- ============================================================================

function ATF_log_mod_info()
    log("[ATF-Rebalance] === Mod Compatibility Check ===")
    log("[ATF-Rebalance] Bob's Warfare:" .. (mods["bobwarfare"] and"DETECTED" or"NOT DETECTED"))
    log("[ATF-Rebalance] Bob's Metals:" .. (mods["bobplates"] and"DETECTED" or"NOT DETECTED"))
    log("[ATF-Rebalance] Bob's Ores:" .. (mods["bobores"] and"DETECTED" or"NOT DETECTED"))
    log("[ATF-Rebalance] Angel's Refining:" .. (mods["angelsrefining"] and"DETECTED" or"NOT DETECTED"))
    log("[ATF-Rebalance] Space Age:" .. (mods["space-age"] and"DETECTED" or"NOT DETECTED"))
    log("[ATF-Rebalance] =================================")
end

-- ============================================================================
-- ФУНКЦИЯ: ATF_safe_require (НОВАЯ)
-- Описание: Безопасная загрузка файлов с обработкой ошибок
-- Параметры: path (путь к файлу без расширения .lua)
-- Возврат: success (boolean), error_message (string или nil)
-- ============================================================================

function ATF_safe_require(path)
    local ok, err = pcall(function()
        require(path)
    end)
    if not ok then
        log("[ATF-Rebalance] Error loading:" .. path .." -" .. tostring(err))
        return false, err
    end
    return true, nil
end

-- ============================================================================
-- ИНИЦИАЛИЗАЦИЯ
-- ============================================================================

-- Логирование информации о моде при загрузке
log("[ATF-Rebalance] functions.lua loaded successfully")