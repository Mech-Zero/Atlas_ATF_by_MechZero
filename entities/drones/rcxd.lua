local sounds = require("__base__.prototypes.entity.sounds")

function atf_rcxd_animation(scale, tint1, tint2)
  if tint1 == nil then tint1 = {r=1, g=1, b=1} end
  if tint2 == nil then tint2 = {r=1, g=1, b=1} end
  return
  {
      layers =
      {
        {
          priority = "low",
          width = 201,
          height = 172,
          frame_count = 2,
          scale = 0.5,
          direction_count = 64,
          shift = util.by_pixel(0+2, -11.5+8.5),
          animation_speed = 8,
          max_advance = 0.2,
          stripes =
          {
          {
          filename = "__base__/graphics/entity/car/car-1.png",
          width_in_frames = 2,
          height_in_frames = 11
          },
          {
          filename = "__base__/graphics/entity/car/car-2.png",
          width_in_frames = 2,
          height_in_frames = 11
          },
          {
          filename = "__base__/graphics/entity/car/car-3.png",
          width_in_frames = 2,
          height_in_frames = 11
          },
          {
          filename = "__base__/graphics/entity/car/car-4.png",
          width_in_frames = 2,
          height_in_frames = 11
          },
          {
          filename = "__base__/graphics/entity/car/car-5.png",
          width_in_frames = 2,
          height_in_frames = 11
          },
          {
          filename = "__base__/graphics/entity/car/car-6.png",
          width_in_frames = 2,
          height_in_frames = 9
          }
          }
        },
        {
          priority = "low",
          width = 199,
          height = 147,
          frame_count = 2,
          apply_runtime_tint = true,
          scale = 0.5,
          direction_count = 64,
          max_advance = 0.2,
          shift = util.by_pixel(0+2, -11+8.5),
          line_length = 1,
          stripes = util.multiplystripes(2,
          {
          {
          filename = "__base__/graphics/entity/car/car-mask-1.png",
          width_in_frames = 1,
          height_in_frames = 13
          },
          {
          filename = "__base__/graphics/entity/car/car-mask-2.png",
          width_in_frames = 1,
          height_in_frames = 13
          },
          {
          filename = "__base__/graphics/entity/car/car-mask-3.png",
          width_in_frames = 1,
          height_in_frames = 13
          },
          {
          filename = "__base__/graphics/entity/car/car-mask-4.png",
          width_in_frames = 1,
          height_in_frames = 13
          },
          {
          filename = "__base__/graphics/entity/car/car-mask-5.png",
          width_in_frames = 1,
          height_in_frames = 12
          }
          })
        },
        {
          priority = "low",
          width = 114,
          height = 76,
          frame_count = 2,
          draw_as_shadow = true,
          direction_count = 64,
          shift = {0.28125, 0.25},
          max_advance = 0.2,
          stripes = util.multiplystripes(2,
          {
            {
              filename = "__base__/graphics/entity/car/car-shadow-1.png",
              width_in_frames = 1,
              height_in_frames = 22
            },
            {
              filename = "__base__/graphics/entity/car/car-shadow-2.png",
              width_in_frames = 1,
              height_in_frames = 22
            },
            {
              filename = "__base__/graphics/entity/car/car-shadow-3.png",
              width_in_frames = 1,
              height_in_frames = 20
            }
          })
        }
      }
      }
end


local tint_rcxd = {r = 0.94, g = 0.9, b = 0.54} -- khaki
local tint_rcnd = {r = 0.29, g = 0.32, b = 0.12} -- army green

data:extend(
{
  {
    type = "unit",
    name = "ATF-rcxd",
    icon = "__Atlas_ATF__/graphics/tech/rcxd.png",
    icon_size = 256,
    flags = {"placeable-player", "placeable-enemy", "placeable-off-grid", "player-creation", "not-repairable"},
    minable = {mining_time = 1, result = "ATF-rcxd"},
    max_health = 250,
    corpse = "small-remnants",
    dying_explosion = "big-artillery-explosion",
    collision_box = {{-0.45, -0.65}, {0.45, 0.65}},
    selection_box = {{-0.45, -0.65}, {0.45, 0.65}},
    drawing_box = {{-0.9, -0.9}, {0.9, 0.75}},
    distraction_cooldown = 300,
	attack_target_mask = { "unit-spawner"},
	ignore_target_mask = { "unit"},
	resistances =
    {
      {
        type = "fire",
        decrease = 10,
        percent = 100
      },
      {
        type = "acid",
        decrease = 10,
        percent = 100
      }
    },
    attack_parameters =
    {
      type = "projectile",
	  ammo_category ="bullet",
      cooldown = 6,
      range = 1,
      projectile_creation_distance = 1,
      projectile_center = {0, 0.6}, -- same as gun_turret_attack shift
      animation = atf_rcxd_animation(0.05, tint_rcxd, tint_rcxd),
      --sound = sounds.heavy_gunshot,
      ammo_type =
      {
        category = "bullet",
		target_type = "entity",
        action =
        {
          type = "direct",
          action_delivery =
          {
            type = "projectile",
            projectile = "rcxd-detonate",
            starting_speed = 1,
            starting_speed_deviation = 0,
            direction_deviation = 0,
            range_deviation = 0,
            max_range = 1
          }
        }
      },
    },
	dying_trigger_effect = {	
          {
            type = "create-entity",
            entity_name = "rcxd-blast"
          },
		 
          {
            type = "show-explosion-on-chart",
            scale = 1
          },
		  
	},
    vision_distance = 100,
    movement_speed = 0.5,
    distance_per_frame = 1,
    --pollution_to_join_attack = 10,
	--absorptions_to_join_attack = -1,
    run_animation = atf_rcxd_animation(0.05, tint_rcxd, tint_rcxd)
  },
  {
    type = "unit",
    name = "ATF-rcnd",
    icon = "__Atlas_ATF__/graphics/tech/rcnd.png",
    icon_size = 256,
    flags = {"placeable-player", "placeable-enemy", "placeable-off-grid", "player-creation", "not-repairable"},
    minable = {mining_time = 1, result = "ATF-rcnd"},
    max_health = 300,
    corpse = "small-remnants",
    --dying_explosion = "big-artillery-explosion",
    collision_box = {{-0.45, -0.65}, {0.45, 0.65}},
    selection_box = {{-0.45, -0.65}, {0.45, 0.65}},
    drawing_box = {{-0.9, -0.9}, {0.9, 0.75}},
    distraction_cooldown = 300,
	attack_target_mask = { "unit-spawner"},
	ignore_target_mask = { "unit"},	
	resistances =
    {
      {
        type = "fire",
        decrease = 10,
        percent = 100
      },
      {
        type = "acid",
        decrease = 10,
        percent = 100
      }
    },
    attack_parameters =
    {
      type = "projectile",
	  ammo_category ="bullet",
      cooldown = 6,
      range = 1,
      projectile_creation_distance = 1,
      projectile_center = {0, 0.6}, -- same as gun_turret_attack shift
      animation = atf_rcxd_animation(0.05, tint_rcnd, tint_rcnd),
      --sound = sounds.heavy_gunshot,
      ammo_type =
      {
        category = "bullet",
		target_type = "entity",
        action =
        {
          type = "direct",
          action_delivery =
          {
            type = "projectile",
            projectile = "rcxd-detonate",
            starting_speed = 1,
            starting_speed_deviation = 0,
            direction_deviation = 0,
            range_deviation = 0,
            max_range = 1
          }
        }
      },
    },
	dying_trigger_effect = {	
	
          {
            type = "create-entity",
            entity_name = "atomic-rocket"
          },
		  
          {
            type = "show-explosion-on-chart",
            scale = 1
          },
		  
	},
    vision_distance = 100,
    movement_speed = 0.5,
    distance_per_frame = 1,
    --pollution_to_join_attack = 10,
	--absorptions_to_join_attack = -1,
    run_animation = atf_rcxd_animation(0.05, tint_rcnd, tint_rcnd)
  },

})
