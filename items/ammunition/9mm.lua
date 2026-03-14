data:extend(
{
  {
    type = "ammo",
    name = "9mm",
    icon = "__Atlas_ATF__/graphics/ammo/9mm.png",
	icon_size = 64,    
    ammo_category = "9mm",
    ammo_type =
    {
      category = "9mm",
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
    magazine_size = 30,
    subgroup = "ATF-ammo",
    order = "a[9mm]",
    stack_size = 200
  },
    {
    type = "ammo",
    name = "9mmp",
    icon = "__Atlas_ATF__/graphics/ammo/9mmp.png",
	icon_size = 64,
    ammo_category = "9mm",   
    ammo_type =
    {
      category = "9mm",
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
              damage = { amount = 14, type = "physical"}
            }
          }
        }
      }
    },
    magazine_size = 30,
    subgroup = "ATF-ammo",
    order = "a[9mmp]",
    stack_size = 200
  },
   {
    type = "ammo",
    name = "9mmu",
    ammo_category = "9mm",
    icon = "__Atlas_ATF__/graphics/ammo/9mmu.png",
	icon_size = 64,
    
    ammo_type =
    {
      category = "9mm",
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
              damage = { amount = 25, type = "physical"}
            }
          }
        }
      }
    },
    magazine_size = 30,
    subgroup = "ATF-ammo",
    order = "a[uranium-rounds-magazine]",
    stack_size = 200
  }
  
  })
