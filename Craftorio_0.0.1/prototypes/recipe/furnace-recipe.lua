data:extend(
{
 
  {
    type = "recipe",
    name = "coxcoaling",
    category = "smelting",
    energy_required = 3.2,
    --enabled = true,
	hidden_from_player_crafting = true,
    ingredients = {{"coal", 10}},
    result = "coxcoal",
	result_count = 10
  },
  
  {
    type = "recipe",
    name = "iron-smelt",
    category = "smelting",
    energy_required = 3.2,
    --enabled = true,
	hidden_from_player_crafting = true,
    ingredients = {{"iron-ore", 1}},
    result = "iron-ingot",
	result_count = 1
  },
  
  {
    type = "recipe",
    name = "iron-smelting",
    category = "iron-smelting",
    energy_required = 1,
    --enabled = true,
	hidden_from_player_crafting = true,
    ingredients =
    {

      {type="item", name="iron-ore", amount=1}

    },
    results=
    {
      {type="fluid", name="fluid-iron", amount=10}
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
    name = "iron-smelting",
    category = "iron-smelting",
    energy_required = 1,
	hidden_from_player_crafting = true,
    --enabled = true,
    ingredients =
    {

      {type="item", name="iron-ore", amount=1}

    },
    results=
    {
      {type="fluid", name="fluid-iron", amount=100}
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
