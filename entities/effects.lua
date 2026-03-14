data:extend(
{
  {
    type = "explosion",
    name = "ATF-plasma-grenade",
    flags = {"not-on-map"},
    animations =
    {
      {
        filename = "__Atlas_ATF__/graphics/projectiles/plasma/40mm-plasma.png",
        tint = {r = 139/255, g = 0, b = 139/255, a = 1},
        priority = "extra-high",
        width = 128,
        height = 128,
        frame_count = 64,
        line_length = 8,
        scale = 4,
        axially_symmetrical = false,
        direction_count = 1,
        animation_speed = 0.6
      }
    },
    light = {intensity = 1, size = 50},
    sound =
    {
      aggregation =
      {
        max_count = 1,
        remove = true
      },
      variations =
      {
        {
          filename = "__base__/sound/fight/large-explosion-1.ogg",
          volume = 1.0
        },
        {
          filename = "__base__/sound/fight/large-explosion-2.ogg",
          volume = 1.0
        }
      }
    },
    created_effect =
    {
      type = "direct",
      action_delivery =
      {
        type = "instant",
        target_effects =
        {
          {
            type = "create-particle",
            repeat_count = 10,
            particle_name = "explosion-remnants-particle",
            initial_height = 0.4,
            speed_from_center = 0.2,
            speed_from_center_deviation = 0.15,
            initial_vertical_speed = 0.1,
            initial_vertical_speed_deviation = 0.15,
            offset_deviation = {{-0.2, -0.2}, {0.2, 0.2}}
          }
        }
      }
    }
   }
  })