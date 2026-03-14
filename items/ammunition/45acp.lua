data:extend(
{
  {
    type = "ammo",
    name = "45acp",
	ammo_category = "45acp",
    icon = "__Atlas_ATF__/graphics/ammo/45acp.png",
	icon_size = 64,
    
    ammo_type =
    {
      category = "45acp",
      action =
      {
        type = "direct",
        action_delivery =
        {
          type = "instant",
          source_effects =
          {
            type = "create-explosion",
            entity_name = "explosion-gunshot"
          },
          target_effects =
          {
            {
              type = "create-entity",
              entity_name = "explosion-hit"
            },
            {
              type = "damage",
              damage = { amount = 10, type = "physical"}
            }
          }
        }
      }
    },
    magazine_size = 20,
    subgroup = "ATF-ammo",
    order = "a[45acp]",
    stack_size = 200
  }
  })
  
  data:extend(
{
  {
    type = "ammo",
	ammo_category = "45acp",
    name = "45acpdrum",
    icon = "__Atlas_ATF__/graphics/ammo/45acpdrum.png",
	icon_size = 64,
    
    ammo_type =
    {
      category = "45acp",
      action =
      {
        type = "direct",
        action_delivery =
        {
          type = "instant",
          source_effects =
          {
            type = "create-explosion",
            entity_name = "explosion-gunshot"
          },
          target_effects =
          {
            {
              type = "create-entity",
              entity_name = "explosion-hit"
            },
            {
              type = "damage",
              damage = { amount = 10, type = "physical"}
            },
            {
              type = "damage",
              damage = { amount = 5, type = "impact"}
            }
          }
        }
      }
    },
    magazine_size = 50,
    subgroup = "ATF-ammo",
    order = "a[45acpdrum]",
    stack_size = 200
  }
  })