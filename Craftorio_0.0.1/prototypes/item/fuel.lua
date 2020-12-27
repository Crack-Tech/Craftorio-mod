--local sounds = require ("prototypes.entity.demo-sounds")

data:extend(
{
 
  
  {
    type = "item",
    name = "coxcoal",
    icon = "__base__/graphics/icons/coal.png",
    icon_size = 64,
    icon_mipmaps = 4,
    dark_background_icon = "__base__/graphics/icons/coal-dark-background.png",
    pictures =
    {
      { size = 64, filename = "__base__/graphics/icons/coal.png",   scale = 0.25, mipmap_count = 4 },
      { size = 64, filename = "__base__/graphics/icons/coal-1.png", scale = 0.25, mipmap_count = 4 },
      { size = 64, filename = "__base__/graphics/icons/coal-2.png", scale = 0.25, mipmap_count = 4 },
      { size = 64, filename = "__base__/graphics/icons/coal-3.png", scale = 0.25, mipmap_count = 4 }
    },
    fuel_category = "burnable",
    fuel_value = "30MJ",
    subgroup = "intermediate-product",
    order = "b[coxcoal]",
    stack_size = 50
  },
  
 }
)
