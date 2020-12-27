 data:extend(
{



  {
    type = "recipe",
    name = "iron-crush",
    category = "crushing",
	icon = "__base__/graphics/icons/kovarex-enrichment-process.png",
    icon_size = 64, icon_mipmaps = 4,
    energy_required = 3.2,
    hidden_from_player_crafting = true,
    ingredients = {{"iron-ore", 2}},
	results = {{"crush-iron-ore", 1}, {"crush-iron-ore", 1}},
	subgroup = "intermediate-product",
	--main_product = ""
	--result_count = 1
  },
  {
    type = "recipe",
    name = "copper-crush",
    category = "crushing",
	icon = "__base__/graphics/icons/stone.png",
    icon_size = 64, icon_mipmaps = 4,
    energy_required = 3.2,
    hidden_from_player_crafting = true,
    ingredients = {{"copper-ore", 2}},
    result = "crush-copper-ore",
	subgroup = "intermediate-product",
	result_count = 1
  },
   {
    type = "recipe",
    name = "copper-crush",
    category = "crushing",
	icon = "__base__/graphics/icons/stone.png",
    icon_size = 64, icon_mipmaps = 4,
    energy_required = 3.2,
    hidden_from_player_crafting = true,
    ingredients = {{"copper-ore", 2}},
	results = {{"crush-copper-ore", 1}, {"crush-copper-ore", 1}},
	subgroup = "intermediate-product",
	--main_product = ""
	--result_count = 1
  
  }
}
)