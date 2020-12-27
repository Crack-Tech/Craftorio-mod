data:extend(
{
  {
    type = "recipe",
    name = "kovarex-enrichment-process",
    energy_required = 60,
    enabled = false,
    category = "centrifuging",
    ingredients = {{"uranium-235", 40}, {"uranium-238", 5}},
    icon = "__base__/graphics/icons/kovarex-enrichment-process.png",
    icon_size = 64, icon_mipmaps = 4,
    subgroup = "intermediate-product",
    order = "r[uranium-processing]-c[kovarex-enrichment-process]",
    main_product = "",
    results = {{"uranium-235", 41}, {"uranium-238", 2}},
   -- allow_decomposition = false
  },
}
)
  