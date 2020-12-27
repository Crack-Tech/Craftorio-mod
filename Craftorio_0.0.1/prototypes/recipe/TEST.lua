data:extend(
{  
--[[
  {
    type = "recipe",
    name = "iron-remelting",
    category = "remelting",
	enabled = true,
    energy_required = 3.2,
    ingredients = {{"ironingot", 5}},
    results=
    {
		{type="fluid", name="fluid-iron", amount=100}
    },
	subgroup = "fluid-recipes",
	main_product= "",
	order = "b[remelting]-b[ironingot]",
  },

  ]]--
  

  --[[
    {
    type = "recipe",
    name = "copper-plate",
    category = "smelting",
    energy_required = 3.2,
    ingredients = {{ "copper-ore", 1}},
    result = "copper-plate"
  },
  ]]--
  
    
    
  
 
  
  
  
  
  
  
  
  
  {
    type = "recipe",
    name = "smelter",
    enabled = true,
    energy_required = 20,
    ingredients = {{"iron-ore", 1}},
    result = "smelter",
	},
	
  
  
  
  
  
	
	{
    type = "recipe",
    name = "domen-furnace",
    enabled = true,
    energy_required = 20,
    ingredients = {{"iron-ore", 1}},
    result = "domen-furnace",
	},
	--[[
	{
    type = "recipe",
    name = "casting-pipe",
    enabled = true,
    energy_required = 20,
    ingredients = {{"stone", 1}},
    result = "casting-pipe",
	},
	]]--
	{
    type = "recipe",
    name = "ore-crusher",
    enabled = true,
    energy_required = 20,
    ingredients = {{"iron-ore", 1}},
    result = "ore-crusher",
	},
	
	{
    type = "recipe",
    name = "metal-caster",
    enabled = true,
    energy_required = 20,
    ingredients = {{"iron-ore", 1}},
    result = "metal-caster",
	},
	
	{
    type = "recipe",
    name = "iron-remelting",
    category = "remelting",
    hidden_from_player_crafting = true,
    energy_required = 5,
    ingredients =
    {
      {type="item", name="iron-ingot", amount=5}
    },
    results=
    {
      {type="fluid", name="fluid-iron", amount=100}
    },
    icon = "__base__/graphics/icons/fluid/basic-oil-processing.png",
    icon_size = 64, icon_mipmaps = 4,
    subgroup = "fluid-recipes",
    order = "b[remelting]-b[iron-ingot]",
    main_product = ""
  },
  
	
	
	
	
	
    

}
)