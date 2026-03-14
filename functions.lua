function ATF_array_sub(t1, t2)
  local t = {}
  for i = 1, #t1 do
    t[t1[i]] = true;
  end
  for i = #t2, 1, -1 do
    if t[t2[i]] then
      table.remove(t2, i);
    end
  end
end

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


function ATF_allow_productivity(recipe)
  if
    type(recipe) == "string" and
    data.raw.recipe[recipe]
  then
    for i, module in pairs(data.raw.module) do
      if module.limitation and module.effect.productivity then
        table.insert(module.limitation, recipe)
      end
    end
  end
end