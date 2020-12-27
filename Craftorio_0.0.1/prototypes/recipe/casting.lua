data:extend(
{

 {
    type = "recipe",
    name = "iron-stick-casting",
    category = "casting",
	icon = "__Craftorio__/graphics/icons/casting/iron-stick-casting.png",
    icon_size = 64, icon_mipmaps = 4,
    energy_required = 1,
	hidden_from_player_crafting = true,
   -- enabled = true,
    ingredients =
    {
      {type="fluid", name="fluid-iron", amount=10}
    },
    results=
    {
      {type="item", name="iron-stick", amount=1}
    },
    subgroup = "fluid-recipes",
    crafting_machine_tint =
    {
      primary = {r = 1.000, g = 0.958, b = 0.000, a = 1.000}, -- #fff400ff
      secondary = {r = 1.000, g = 0.852, b = 0.172, a = 1.000}, -- #ffd92bff
      tertiary = {r = 0.876, g = 0.869, b = 0.597, a = 1.000}, -- #dfdd98ff
      quaternary = {r = 0.969, g = 1.000, b = 0.019, a = 1.000}, -- #f7ff04ff
    }
  },
  
 {
    type = "recipe",
    name = "iron-plate-casting",
    category = "casting",
	icon = "__Craftorio__/graphics/icons/casting/iron-plate-casting.png",
    icon_size = 64, icon_mipmaps = 4,
    energy_required = 1,
	hidden_from_player_crafting = true,
    --enabled = true,
    ingredients =
    {
      {type="fluid", name="fluid-iron", amount=50}
    },
    results=
    {
      {type="item", name="iron-plate", amount=1},
    },
    subgroup = "fluid-recipes",
    crafting_machine_tint =
    {
      primary = {r = 1.000, g = 0.958, b = 0.000, a = 1.000}, -- #fff400ff
      secondary = {r = 1.000, g = 0.852, b = 0.172, a = 1.000}, -- #ffd92bff
      tertiary = {r = 0.876, g = 0.869, b = 0.597, a = 1.000}, -- #dfdd98ff
      quaternary = {r = 0.969, g = 1.000, b = 0.019, a = 1.000}, -- #f7ff04ff
    }
  },


 {
    type = "recipe",
    name = "iron-gear-wheel-casting",
    category = "casting",
	icon = "__Craftorio__/graphics/icons/casting/iron-gear-wheel-casting.png",
    icon_size = 64, icon_mipmaps = 4,
    energy_required = 1,
	hidden_from_player_crafting = true,
    --enabled = true,
    ingredients =
    {
      {type="fluid", name="fluid-iron", amount=20}
    },
    results=
    {
      {type="item", name="iron-gear-wheel", amount=1},
    },
    subgroup = "fluid-recipes",
    crafting_machine_tint =
    {
      primary = {r = 1.000, g = 0.958, b = 0.000, a = 1.000}, -- #fff400ff
      secondary = {r = 1.000, g = 0.852, b = 0.172, a = 1.000}, -- #ffd92bff
      tertiary = {r = 0.876, g = 0.869, b = 0.597, a = 1.000}, -- #dfdd98ff
      quaternary = {r = 0.969, g = 1.000, b = 0.019, a = 1.000}, -- #f7ff04ff
    }
  },



}
)