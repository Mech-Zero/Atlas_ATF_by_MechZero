  data:extend(
{
  {
    type = "projectile",
    name = "rcxd-detonate",
    flags = {"not-on-map"},
    acceleration = 10,
      action =
      {
        type = "area",
		radius = 8,
        action_delivery =
        {
        type = "instant",
          target_effects =
          {
            {
              type = "damage",
              damage = { amount = 500, type = "explosion"}
            }
          }
        }
      }
  },
  {
    type = "projectile",
    name = "rcxd-blast",
    flags = {"not-on-map"},
    acceleration = 0.02,
      action =
      {
        type = "area",
		radius = 8,
        action_delivery =
        {
        type = "instant",
          target_effects =
          {
            {
              type = "damage",
              damage = { amount = 1000, type = "explosion"}
            }
          }
        }
      }
  }

  })