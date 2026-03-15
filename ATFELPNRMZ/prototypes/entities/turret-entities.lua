-- prototypes/entities/turret-entities.lua

data:extend({
    -- ATF-grenade-turret
    {
        type = "ammo-turret",
        name = "ATF-grenade-turret",
        icon = "__ATFELPNRMZ__/graphics/items/grenade-turret.png",
        icon_size = 128,
        flags = {"placeable-player", "player-creation"},
        minable = {mining_time = 0.5, result = "ATF-grenade-turret"},
        max_health = 500,
        corpse = "medium-remnants",
        collision_box = {{-1.4, -1.4}, {1.4, 1.4}},
        selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
        
        ammo_categories = {"grenade"},
        attack_parameters = {
            type = "projectile",
            ammo_category = "grenade",
            cooldown = 60,
            range = 15,
            projectile_creation_distance = 2,
            sound = {filename = "__base__/sound/fight/gunshot.ogg", volume = 0.8}
        },
        
        animation = {
            filename = "__base__/graphics/entity/gun-turret/gun-turret.png",
            priority = "high",
            width = 64,
            height = 64,
            frame_count = 1,
            direction_count = 64,
            scale = 1.0
        },
        
        rotation_speed = 0.15,
        energy_source = {type = "electric", usage_priority = "secondary-input"},
        energy_usage = "10kW",
        inventory_size = 1
    },
    
    -- ATF-grenade-turret-2
    {
        type = "ammo-turret",
        name = "ATF-grenade-turret-2",
        icon = "__ATFELPNRMZ__/graphics/items/grenade-turret.png",
        icon_size = 128,
        flags = {"placeable-player", "player-creation"},
        minable = {mining_time = 0.5, result = "ATF-grenade-turret-2"},
        max_health = 800,
        corpse = "medium-remnants",
        collision_box = {{-1.4, -1.4}, {1.4, 1.4}},
        selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
        
        ammo_categories = {"grenade"},
        attack_parameters = {
            type = "projectile",
            ammo_category = "grenade",
            cooldown = 45,
            range = 18,
            projectile_creation_distance = 2,
            sound = {filename = "__base__/sound/fight/gunshot.ogg", volume = 0.8}
        },
        
        animation = {
            filename = "__base__/graphics/entity/gun-turret/gun-turret.png",
            priority = "high",
            width = 64,
            height = 64,
            frame_count = 1,
            direction_count = 64,
            scale = 1.0
        },
        
        rotation_speed = 0.2,
        energy_source = {type = "electric", usage_priority = "secondary-input"},
        energy_usage = "15kW",
        inventory_size = 1
    },
    
    -- ATF-swatt-turret
    {
        type = "electric-turret",
        name = "ATF-swatt-turret",
        icon = "__base__/graphics/icons/laser-turret.png",
        icon_size = 64,
        flags = {"placeable-player", "player-creation"},
        minable = {mining_time = 0.5, result = "ATF-swatt-turret"},
        max_health = 400,
        corpse = "medium-remnants",
        collision_box = {{-1.2, -1.2}, {1.2, 1.2}},
        selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
        
        attack_parameters = {
            type = "beam",
            ammo_category = "electric",
            cooldown = 20,
            range = 12,
            beam = "tesla-beam",
            sound = {filename = "__base__/sound/fight/electric-beam.ogg", volume = 0.6}
        },
        
        animation = {
            filename = "__base__/graphics/entity/laser-turret/laser-turret.png",
            priority = "high",
            width = 64,
            height = 64,
            frame_count = 1,
            direction_count = 64,
            scale = 0.8
        },
        
        rotation_speed = 0.2,
        energy_source = {type = "electric", usage_priority = "secondary-input"},
        energy_usage = "8kW"
    },
    
    -- ATF-m25-turret
    {
        type = "ammo-turret",
        name = "ATF-m25-turret",
        icon = "__base__/graphics/icons/laser-turret.png",
        icon_size = 64,
        flags = {"placeable-player", "player-creation"},
        minable = {mining_time = 0.5, result = "ATF-m25-turret"},
        max_health = 600,
        corpse = "medium-remnants",
        collision_box = {{-1.3, -1.3}, {1.3, 1.3}},
        selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
        
        ammo_categories = {"plasma"},
        attack_parameters = {
            type = "projectile",
            ammo_category = "plasma",
            cooldown = 30,
            range = 16,
            damage_modifier = 2.0,
            sound = {filename = "__base__/sound/fight/laser.ogg", volume = 0.7}
        },
        
        animation = {
            filename = "__base__/graphics/entity/laser-turret/laser-turret.png",
            priority = "high",
            width = 64,
            height = 64,
            frame_count = 1,
            direction_count = 64,
            scale = 0.9
        },
        
        rotation_speed = 0.18,
        energy_source = {type = "electric", usage_priority = "secondary-input"},
        energy_usage = "12kW",
        inventory_size = 1
    },
    
    -- ATF-gau-turret
    {
        type = "ammo-turret",
        name = "ATF-gau-turret",
        icon = "__base__/graphics/icons/gun-turret.png",
        icon_size = 64,
        flags = {"placeable-player", "player-creation"},
        minable = {mining_time = 0.5, result = "ATF-gau-turret"},
        max_health = 700,
        corpse = "medium-remnants",
        collision_box = {{-1.4, -1.4}, {1.4, 1.4}},
        selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
        
        ammo_categories = {"bullet"},
        attack_parameters = {
            type = "projectile",
            ammo_category = "bullet",
            cooldown = 8,
            range = 18,
            damage_modifier = 1.8,
            sound = {filename = "__base__/sound/fight/gunshot.ogg", volume = 0.9}
        },
        
        animation = {
            filename = "__base__/graphics/entity/gun-turret/gun-turret.png",
            priority = "high",
            width = 64,
            height = 64,
            frame_count = 1,
            direction_count = 64,
            scale = 1.0
        },
        
        rotation_speed = 0.25,
        energy_source = {type = "electric", usage_priority = "secondary-input"},
        energy_usage = "20kW",
        inventory_size = 1
    },
    
    -- ATF-rcw-turret
    {
        type = "electric-turret",
        name = "ATF-rcw-turret",
        icon = "__base__/graphics/icons/laser-turret.png",
        icon_size = 64,
        flags = {"placeable-player", "player-creation"},
        minable = {mining_time = 0.5, result = "ATF-rcw-turret"},
        max_health = 500,
        corpse = "medium-remnants",
        collision_box = {{-1.2, -1.2}, {1.2, 1.2}},
        selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
        
        attack_parameters = {
            type = "beam",
            ammo_category = "laser",
            cooldown = 15,
            range = 14,
            beam = "laser-beam",
            sound = {filename = "__base__/sound/fight/laser.ogg", volume = 0.6}
        },
        
        animation = {
            filename = "__base__/graphics/entity/laser-turret/laser-turret.png",
            priority = "high",
            width = 64,
            height = 64,
            frame_count = 1,
            direction_count = 64,
            scale = 0.85
        },
        
        rotation_speed = 0.22,
        energy_source = {type = "electric", usage_priority = "secondary-input"},
        energy_usage = "10kW"
    }
})

log("[ATF-Rebalance] 6 turret entities created")