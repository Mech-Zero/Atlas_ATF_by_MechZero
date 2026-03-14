data:extend(
    {
        {
            type = "equipment-grid",
            name = "ATF-PA-grid",
            width = 14,
            height = 14,
            equipment_categories = {"armor"}
        },
        {
            type = "equipment-grid",
            name = "ATF-PA-grid-2",
            width = 18,
            height = 18,
            equipment_categories = {"armor"}
        },
        {
            type = "armor",
            name = "ATF-tesla-armor",
            icon = "__Atlas_ATF__/graphics/armor/tesla.png",
            icon_size = 256,
            resistances = {
                {
                    type = "physical",
                    decrease = 40,
                    percent = 50
                },
                {
                    type = "impact",
                    decrease = 10,
                    percent = 90
                },
                {
                    type = "laser",
                    decrease = 10,
                    percent = 90
                },
                {
                    type = "electric",
                    decrease = 100,
                    percent = 100
                },
                {
                    type = "acid",
                    decrease = 10,
                    percent = 90
                },
                {
                    type = "explosion",
                    decrease = 60,
                    percent = 80
                },
                {
                    type = "fire",
                    decrease = 10,
                    percent = 80
                }
            },
            movement_bonus = 0.3,
            subgroup = "ATF-armor",
            order = "a[ATF-tesla-armor]",
            stack_size = 1,
            infinite = true,
            equipment_grid = "ATF-PA-grid",
            inventory_size_bonus = 40,
            open_sound = {filename = "__base__/sound/armor-open.ogg", volume = 1},
            close_sound = {filename = "__base__/sound/armor-close.ogg", volume = 1}
        },
        {
            type = "armor",
            name = "ATF-hellfire-armor",
            icon = "__Atlas_ATF__/graphics/armor/hellfire.png",
            icon_size = 256,
            resistances = {
                {
                    type = "physical",
                    decrease = 40,
                    percent = 50
                },
                {
                    type = "impact",
                    decrease = 10,
                    percent = 90
                },
                {
                    type = "acid",
                    decrease = 10,
                    percent = 90
                },
                {
                    type = "explosion",
                    decrease = 50,
                    percent = 90
                },
                {
                    type = "laser",
                    decrease = 10,
                    percent = 50
                },
                {
                    type = "electric",
                    decrease = 10,
                    percent = 50
                },
                {
                    type = "fire",
                    decrease = 100,
                    percent = 100
                }
            },
            movement_bonus = 0.3,
            subgroup = "ATF-armor",
            order = "a[ATF-hellfire-armor]",
            stack_size = 1,
            infinite = true,
            equipment_grid = "ATF-PA-grid",
            inventory_size_bonus = 40,
            open_sound = {filename = "__base__/sound/armor-open.ogg", volume = 1},
            close_sound = {filename = "__base__/sound/armor-close.ogg", volume = 1}
        },
        {
            type = "armor",
            name = "ATF-eliminator-armor",
            icon = "__Atlas_ATF__/graphics/armor/eliminator.png",
            icon_size = 256,
            resistances = {
                {
                    type = "physical",
                    decrease = 50,
                    percent = 80
                },
                {
                    type = "impact",
                    decrease = 10,
                    percent = 95
                },
                {
                    type = "laser",
                    decrease = 10,
                    percent = 90
                },
                {
                    type = "electric",
                    decrease = 10,
                    percent = 100
                },
                {
                    type = "acid",
                    decrease = 10,
                    percent = 95
                },
                {
                    type = "explosion",
                    decrease = 60,
                    percent = 80
                },
                {
                    type = "fire",
                    decrease = 100,
                    percent = 100
                }
            },
            movement_bonus = 0.5,
            subgroup = "ATF-armor",
            order = "a[ATF-eliminator-armor]",
            stack_size = 1,
            infinite = true,
            equipment_grid = "ATF-PA-grid-2",
            inventory_size_bonus = 60,
            open_sound = {filename = "__base__/sound/armor-open.ogg", volume = 1},
            close_sound = {filename = "__base__/sound/armor-close.ogg", volume = 1}
        }
    }
)
table.insert(data.raw.character.character.animations[3].armors, "ATF-tesla-armor")
table.insert(data.raw.character.character.animations[3].armors, "ATF-hellfire-armor")
table.insert(data.raw.character.character.animations[3].armors, "ATF-eliminator-armor")
