data:extend(
{

{
    type = "capsule",
    name = "unlockable-blueprint",
    icon = "__base__/graphics/icons/fish.png",
    icon_size = 64, icon_mipmaps = 4,
    subgroup = "raw-resource",
    capsule_action =
    {
      type = "use-on-self",
      attack_parameters =
      {
        type = "projectile",
        ammo_category = "capsule",
        cooldown = 30,
        range = 0,
        ammo_type =
        {
          category = "capsule",
          target_type = "position",
          action =
          {
            type = "direct",
            action_delivery =
            {
              type = "instant",
              target_effects =
              {
                {
                  type = "damage",
                  damage = {type = "physical", amount = -80}
                },
				{
					type = "unlock-recipe",
					recipe = "assembling-machine-1"
				},
				effects =
				{
					{
						type = "unlock-recipe",
						recipe = "assembling-machine-1"
					},
					{
						type = "unlock-recipe",
						recipe = "long-handed-inserter"
					}
				},

              }
            }
          }
        }
      }
    },
    order = "h[raw-fish]",
    stack_size = 100
  },
}
)