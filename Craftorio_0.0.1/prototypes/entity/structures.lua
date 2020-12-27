require ("util")
require ("prototypes.entity.demo-pipecovers")
local hit_effects = require ("prototypes.entity.demo-hit-effects")
local sounds = require("prototypes.entity.demo-sounds")

if not data.is_demo then
  require ("prototypes.entity.assemblerpipes")
end

pipepictures = function()
  return
  {
    straight_vertical_single =
    {
      filename = "__base__/graphics/entity/pipe/pipe-straight-vertical-single.png",
      priority = "extra-high",
      width = 80,
      height = 80,
      hr_version =
      {
        filename = "__base__/graphics/entity/pipe/hr-pipe-straight-vertical-single.png",
        priority = "extra-high",
        width = 160,
        height = 160,
        scale = 0.5
      }
    },
    straight_vertical =
    {
      filename = "__base__/graphics/entity/pipe/pipe-straight-vertical.png",
      priority = "extra-high",
      width = 64,
      height = 64,
      hr_version =
      {
        filename = "__base__/graphics/entity/pipe/hr-pipe-straight-vertical.png",
        priority = "extra-high",
        width = 128,
        height = 128,
        scale = 0.5
      }
    },
    straight_vertical_window =
    {
      filename = "__base__/graphics/entity/pipe/pipe-straight-vertical-window.png",
      priority = "extra-high",
      width = 64,
      height = 64,
      hr_version =
      {
        filename = "__base__/graphics/entity/pipe/hr-pipe-straight-vertical-window.png",
        priority = "extra-high",
        width = 128,
        height = 128,
        scale = 0.5
      }
    },
    straight_horizontal_window =
    {
      filename = "__base__/graphics/entity/pipe/pipe-straight-horizontal-window.png",
      priority = "extra-high",
      width = 64,
      height = 64,
      hr_version =
      {
        filename = "__base__/graphics/entity/pipe/hr-pipe-straight-horizontal-window.png",
        priority = "extra-high",
        width = 128,
        height = 128,
        scale = 0.5
      }
    },
    straight_horizontal =
    {
      filename = "__base__/graphics/entity/pipe/pipe-straight-horizontal.png",
      priority = "extra-high",
      width = 64,
      height = 64,
      hr_version =
      {
        filename = "__base__/graphics/entity/pipe/hr-pipe-straight-horizontal.png",
        priority = "extra-high",
        width = 128,
        height = 128,
        scale = 0.5
      }
    },
    corner_up_right =
    {
      filename = "__base__/graphics/entity/pipe/pipe-corner-up-right.png",
      priority = "extra-high",
      width = 64,
      height = 64,
      hr_version =
      {
        filename = "__base__/graphics/entity/pipe/hr-pipe-corner-up-right.png",
        priority = "extra-high",
        width = 128,
        height = 128,
        scale = 0.5
      }
    },
    corner_up_left =
    {
      filename = "__base__/graphics/entity/pipe/pipe-corner-up-left.png",
      priority = "extra-high",
      width = 64,
      height = 64,
      hr_version =
      {
        filename = "__base__/graphics/entity/pipe/hr-pipe-corner-up-left.png",
        priority = "extra-high",
        width = 128,
        height = 128,
        scale = 0.5
      }
    },
    corner_down_right =
    {
      filename = "__base__/graphics/entity/pipe/pipe-corner-down-right.png",
      priority = "extra-high",
      width = 64,
      height = 64,
      hr_version =
      {
        filename = "__base__/graphics/entity/pipe/hr-pipe-corner-down-right.png",
        priority = "extra-high",
        width = 128,
        height = 128,
        scale = 0.5
      }
    },
    corner_down_left =
    {
      filename = "__base__/graphics/entity/pipe/pipe-corner-down-left.png",
      priority = "extra-high",
      width = 64,
      height = 64,
      hr_version =
      {
        filename = "__base__/graphics/entity/pipe/hr-pipe-corner-down-left.png",
        priority = "extra-high",
        width = 128,
        height = 128,
        scale = 0.5
      }
    },
    t_up =
    {
      filename = "__base__/graphics/entity/pipe/pipe-t-up.png",
      priority = "extra-high",
      width = 64,
      height = 64,
      hr_version =
      {
        filename = "__base__/graphics/entity/pipe/hr-pipe-t-up.png",
        priority = "extra-high",
        width = 128,
        height = 128,
        scale = 0.5
      }
    },
    t_down =
    {
      filename = "__base__/graphics/entity/pipe/pipe-t-down.png",
      priority = "extra-high",
      width = 64,
      height = 64,
      hr_version =
      {
        filename = "__base__/graphics/entity/pipe/hr-pipe-t-down.png",
        priority = "extra-high",
        width = 128,
        height = 128,
        scale = 0.5
      }
    },
    t_right =
    {
      filename = "__base__/graphics/entity/pipe/pipe-t-right.png",
      priority = "extra-high",
      width = 64,
      height = 64,
      hr_version =
      {
        filename = "__base__/graphics/entity/pipe/hr-pipe-t-right.png",
        priority = "extra-high",
        width = 128,
        height = 128,
        scale = 0.5
      }
    },
    t_left =
    {
      filename = "__base__/graphics/entity/pipe/pipe-t-left.png",
      priority = "extra-high",
      width = 64,
      height = 64,
      hr_version =
      {
        filename = "__base__/graphics/entity/pipe/hr-pipe-t-left.png",
        priority = "extra-high",
        width = 128,
        height = 128,
        scale = 0.5
      }
    },
    cross =
    {
      filename = "__base__/graphics/entity/pipe/pipe-cross.png",
      priority = "extra-high",
      width = 64,
      height = 64,
      hr_version =
      {
        filename = "__base__/graphics/entity/pipe/hr-pipe-cross.png",
        priority = "extra-high",
        width = 128,
        height = 128,
        scale = 0.5
      }
    },
    ending_up =
    {
      filename = "__base__/graphics/entity/pipe/pipe-ending-up.png",
      priority = "extra-high",
      width = 64,
      height = 64,
      hr_version =
      {
        filename = "__base__/graphics/entity/pipe/hr-pipe-ending-up.png",
        priority = "extra-high",
        width = 128,
        height = 128,
        scale = 0.5
      }
    },
    ending_down =
    {
      filename = "__base__/graphics/entity/pipe/pipe-ending-down.png",
      priority = "extra-high",
      width = 64,
      height = 64,
      hr_version =
      {
        filename = "__base__/graphics/entity/pipe/hr-pipe-ending-down.png",
        priority = "extra-high",
        width = 128,
        height = 128,
        scale = 0.5
      }
    },
    ending_right =
    {
      filename = "__base__/graphics/entity/pipe/pipe-ending-right.png",
      priority = "extra-high",
      width = 64,
      height = 64,
      hr_version =
      {
        filename = "__base__/graphics/entity/pipe/hr-pipe-ending-right.png",
        priority = "extra-high",
        width = 128,
        height = 128,
        scale = 0.5
      }
    },
    ending_left =
    {
      filename = "__base__/graphics/entity/pipe/pipe-ending-left.png",
      priority = "extra-high",
      width = 64,
      height = 64,
      hr_version =
      {
        filename = "__base__/graphics/entity/pipe/hr-pipe-ending-left.png",
        priority = "extra-high",
        width = 128,
        height = 128,
        scale = 0.5
      }
    },
    horizontal_window_background =
    {
      filename = "__base__/graphics/entity/pipe/pipe-horizontal-window-background.png",
      priority = "extra-high",
      width = 64,
      height = 64,
      hr_version =
      {
        filename = "__base__/graphics/entity/pipe/hr-pipe-horizontal-window-background.png",
        priority = "extra-high",
        width = 128,
        height = 128,
        scale = 0.5
      }
    },
    vertical_window_background =
    {
      filename = "__base__/graphics/entity/pipe/pipe-vertical-window-background.png",
      priority = "extra-high",
      width = 64,
      height = 64,
      hr_version =
      {
        filename = "__base__/graphics/entity/pipe/hr-pipe-vertical-window-background.png",
        priority = "extra-high",
        width = 128,
        height = 128,
        scale = 0.5
      }
    },
    fluid_background =
    {
      filename = "__base__/graphics/entity/pipe/fluid-background.png",
      priority = "extra-high",
      width = 32,
      height = 20,
      hr_version =
      {
        filename = "__base__/graphics/entity/pipe/hr-fluid-background.png",
        priority = "extra-high",
        width = 64,
        height = 40,
        scale = 0.5
      }
    },
    low_temperature_flow =
    {
      filename = "__base__/graphics/entity/pipe/fluid-flow-low-temperature.png",
      priority = "extra-high",
      width = 160,
      height = 18
    },
    middle_temperature_flow =
    {
      filename = "__base__/graphics/entity/pipe/fluid-flow-medium-temperature.png",
      priority = "extra-high",
      width = 160,
      height = 18
    },
    high_temperature_flow =
    {
      filename = "__base__/graphics/entity/pipe/fluid-flow-high-temperature.png",
      priority = "extra-high",
      width = 160,
      height = 18
    },
    gas_flow =
    {
      filename = "__base__/graphics/entity/pipe/steam.png",
      priority = "extra-high",
      line_length = 10,
      width = 24,
      height = 15,
      frame_count = 60,
      axially_symmetrical = false,
      direction_count = 1,
      hr_version =
      {
        filename = "__base__/graphics/entity/pipe/hr-steam.png",
        priority = "extra-high",
        line_length = 10,
        width = 48,
        height = 30,
        frame_count = 60,
        axially_symmetrical = false,
        direction_count = 1
      }
    }
  }
end














data:extend(
{
 {
    type = "assembling-machine",
    name = "smelter",
    icon = "__base__/graphics/icons/chemical-plant.png",
    icon_size = 64, icon_mipmaps = 4,
    flags = {"placeable-neutral","placeable-player", "player-creation"},
    minable = {mining_time = 0.1, result = "smelter"},
    max_health = 300,
    corpse = "chemical-plant-remnants",
    dying_explosion = "chemical-plant-explosion",
    collision_box = {{-1.2, -1.2}, {1.2, 1.2}},
    selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
    damaged_trigger_effect = hit_effects.entity(),
    drawing_box = {{-1.5, -1.9}, {1.5, 1.5}},
    module_specification =
    {
      module_slots = 3
    },
    allowed_effects = {"consumption", "speed", "productivity", "pollution"},

    animation = make_4way_animation_from_spritesheet({ layers =
    {
      {
        filename = "__base__/graphics/entity/chemical-plant/chemical-plant.png",
        width = 108,
        height = 148,
        frame_count = 24,
        line_length = 12,
        shift = util.by_pixel(1, -9),
        hr_version =
        {
          filename = "__base__/graphics/entity/chemical-plant/hr-chemical-plant.png",
          width = 220,
          height = 292,
          frame_count = 24,
          line_length = 12,
          shift = util.by_pixel(0.5, -9),
          scale = 0.5
          }
      },
      {
        filename = "__base__/graphics/entity/chemical-plant/chemical-plant-shadow.png",
        width = 154,
        height = 112,
        repeat_count = 24,
        frame_count = 1,
        shift = util.by_pixel(28, 6),
        draw_as_shadow = true,
        hr_version =
        {
          filename = "__base__/graphics/entity/chemical-plant/hr-chemical-plant-shadow.png",
          width = 312,
          height = 222,
          repeat_count = 24,
          frame_count = 1,
          shift = util.by_pixel(27, 6),
          draw_as_shadow = true,
          scale = 0.5
          }
      }
    }}),
    working_visualisations =
    {
      {
        apply_recipe_tint = "primary",
        north_animation =
        {
          filename = "__base__/graphics/entity/chemical-plant/chemical-plant-liquid-north.png",
          frame_count = 24,
          line_length = 6,
          width = 32,
          height = 24,
          shift = util.by_pixel(24, 14),
          hr_version =
          {
            filename = "__base__/graphics/entity/chemical-plant/hr-chemical-plant-liquid-north.png",
            frame_count = 24,
            line_length = 6,
            width = 66,
            height = 44,
            shift = util.by_pixel(23, 15),
            scale = 0.5
          }
        },
        east_animation =
        {
          filename = "__base__/graphics/entity/chemical-plant/chemical-plant-liquid-east.png",
          frame_count = 24,
          line_length = 6,
          width = 36,
          height = 18,
          shift = util.by_pixel(0, 22),
          hr_version =
          {
            filename = "__base__/graphics/entity/chemical-plant/hr-chemical-plant-liquid-east.png",
            frame_count = 24,
            line_length = 6,
            width = 70,
            height = 36,
            shift = util.by_pixel(0, 22),
            scale = 0.5
          }
        },
        south_animation =
        {
          filename = "__base__/graphics/entity/chemical-plant/chemical-plant-liquid-south.png",
          frame_count = 24,
          line_length = 6,
          width = 34,
          height = 24,
          shift = util.by_pixel(0, 16),
          hr_version =
          {
            filename = "__base__/graphics/entity/chemical-plant/hr-chemical-plant-liquid-south.png",
            frame_count = 24,
            line_length = 6,
            width = 66,
            height = 42,
            shift = util.by_pixel(0, 17),
            scale = 0.5
          }
        },
        west_animation =
        {
          filename = "__base__/graphics/entity/chemical-plant/chemical-plant-liquid-west.png",
          frame_count = 24,
          line_length = 6,
          width = 38,
          height = 20,
          shift = util.by_pixel(-10, 12),
          hr_version =
          {
            filename = "__base__/graphics/entity/chemical-plant/hr-chemical-plant-liquid-west.png",
            frame_count = 24,
            line_length = 6,
            width = 74,
            height = 36,
            shift = util.by_pixel(-10, 13),
            scale = 0.5
          }
        }
      },
      {
        apply_recipe_tint = "secondary",
        north_animation =
        {
          filename = "__base__/graphics/entity/chemical-plant/chemical-plant-foam-north.png",
          frame_count = 24,
          line_length = 6,
          width = 32,
          height = 22,
          shift = util.by_pixel(24, 14),
          hr_version =
          {
            filename = "__base__/graphics/entity/chemical-plant/hr-chemical-plant-foam-north.png",
            frame_count = 24,
            line_length = 6,
            width = 62,
            height = 42,
            shift = util.by_pixel(24, 15),
            scale = 0.5
          }
        },
        east_animation =
        {
          filename = "__base__/graphics/entity/chemical-plant/chemical-plant-foam-east.png",
          frame_count = 24,
          line_length = 6,
          width = 34,
          height = 18,
          shift = util.by_pixel(0, 22),
          hr_version =
          {
            filename = "__base__/graphics/entity/chemical-plant/hr-chemical-plant-foam-east.png",
            frame_count = 24,
            line_length = 6,
            width = 68,
            height = 36,
            shift = util.by_pixel(0, 22),
            scale = 0.5
          }
        },
        south_animation =
        {
          filename = "__base__/graphics/entity/chemical-plant/chemical-plant-foam-south.png",
          frame_count = 24,
          line_length = 6,
          width = 32,
          height = 18,
          shift = util.by_pixel(0, 18),
          hr_version =
          {
            filename = "__base__/graphics/entity/chemical-plant/hr-chemical-plant-foam-south.png",
            frame_count = 24,
            line_length = 6,
            width = 60,
            height = 40,
            shift = util.by_pixel(1, 17),
            scale = 0.5
          }
        },
        west_animation =
        {
          filename = "__base__/graphics/entity/chemical-plant/chemical-plant-foam-west.png",
          frame_count = 24,
          line_length = 6,
          width = 36,
          height = 16,
          shift = util.by_pixel(-10, 14),
          hr_version =
          {
            filename = "__base__/graphics/entity/chemical-plant/hr-chemical-plant-foam-west.png",
            frame_count = 24,
            line_length = 6,
            width = 68,
            height = 28,
            shift = util.by_pixel(-9, 15),
            scale = 0.5
          }
        }
      },
      {
        apply_recipe_tint = "tertiary",
        fadeout = true,
        constant_speed = true,
        north_position = util.by_pixel_hr(-30, -161),
        east_position = util.by_pixel_hr(29, -150),
        south_position = util.by_pixel_hr(12, -134),
        west_position = util.by_pixel_hr(-32, -130),
        render_layer = "wires",
        animation =
        {
          filename = "__base__/graphics/entity/chemical-plant/chemical-plant-smoke-outer.png",
          frame_count = 47,
          line_length = 16,
          width = 46,
          height = 94,
          animation_speed = 0.5,
          shift = util.by_pixel(-2, -40),
          hr_version =
          {
            filename = "__base__/graphics/entity/chemical-plant/hr-chemical-plant-smoke-outer.png",
            frame_count = 47,
            line_length = 16,
            width = 90,
            height = 188,
            animation_speed = 0.5,
            shift = util.by_pixel(-2, -40),
            scale = 0.5
          }
        }
      },
      {
        apply_recipe_tint = "quaternary",
        fadeout = true,
        constant_speed = true,
        north_position = util.by_pixel_hr(-30, -161),
        east_position = util.by_pixel_hr(29, -150),
        south_position = util.by_pixel_hr(12, -134),
        west_position = util.by_pixel_hr(-32, -130),
        render_layer = "wires",
        animation =
        {
          filename = "__base__/graphics/entity/chemical-plant/chemical-plant-smoke-inner.png",
          frame_count = 47,
          line_length = 16,
          width = 20,
          height = 42,
          animation_speed = 0.5,
          shift = util.by_pixel(0, -14),
          hr_version =
          {
            filename = "__base__/graphics/entity/chemical-plant/hr-chemical-plant-smoke-inner.png",
            frame_count = 47,
            line_length = 16,
            width = 40,
            height = 84,
            animation_speed = 0.5,
            shift = util.by_pixel(0, -14),
            scale = 0.5
          }
        }
      }
    },
    vehicle_impact_sound = sounds.generic_impact,
    open_sound = sounds.machine_open,
    close_sound = sounds.machine_close,
    working_sound =
    {
      sound =
      {
        {
          filename = "__base__/sound/chemical-plant-1.ogg",
          volume = 0.5,
        },
        {
          filename = "__base__/sound/chemical-plant-2.ogg",
          volume = 0.5,
        },
        {
          filename = "__base__/sound/chemical-plant-3.ogg",
          volume = 0.5,
        }
      },
      --max_sounds_per_type = 3,
      --idle_sound = { filename = "__base__/sound/idle1.ogg", volume = 0.3 },
      apparent_volume = 1.5,
      fade_in_ticks = 4,
      fade_out_ticks = 20,
    },
    crafting_speed = 1,
    energy_source =
    {
      type = "electric",
      usage_priority = "secondary-input",
      emissions_per_minute = 4
    },
    energy_usage = "210kW",
    crafting_categories = {"remelting"},
    fluid_boxes =
    {
      {
        production_type = "input",
        pipe_covers = pipecoverspictures(),
        base_area = 10,
        base_level = -1,
        pipe_connections = {{ type="input", position = {-1, -2} }}
      },
      {
        production_type = "input",
        pipe_covers = pipecoverspictures(),
        base_area = 10,
        base_level = -1,
        pipe_connections = {{ type="input", position = {1, -2} }}
      },
      {
        production_type = "output",
        pipe_covers = pipecoverspictures(),
        base_level = 1,
        pipe_connections = {{ position = {-1, 2} }}
      },
      {
        production_type = "output",
        pipe_covers = pipecoverspictures(),
        base_level = 1,
        pipe_connections = {{ position = {1, 2} }}
      }
    },
    water_reflection =
    {
      pictures =
      {
        filename = "__base__/graphics/entity/chemical-plant/chemical-plant-reflection.png",
        priority = "extra-high",
        width = 28,
        height = 36,
        shift = util.by_pixel(5, 60),
        variation_count = 4,
        scale = 5,
      },
      rotate = false,
      orientation_to_variation = true
    }
  },
 
 

  
  
  
   {
    type = "furnace",
    name = "domen-furnace",
    icon = "__base__/graphics/icons/electric-furnace.png",
    icon_size = 64, icon_mipmaps = 4,
    flags = {"placeable-neutral", "placeable-player", "player-creation"},
    minable = {mining_time = 0.2, result = "domen-furnace"},
    max_health = 350,
    corpse = "electric-furnace-remnants",
    dying_explosion = "electric-furnace-explosion",
    resistances =
    {
      {
        type = "fire",
        percent = 80
      }
    },
    collision_box = {{-1.2, -1.2}, {1.2, 1.2}},
    selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
    damaged_trigger_effect = hit_effects.entity(),
  --  module_specification =
 --   {
 --     module_slots = 2,
 --     module_info_icon_shift = {0, 0.8}
  --  },
    crafting_categories = {"iron-smelting"},
    result_inventory_size = 3,
    energy_usage = "90kW",
    crafting_speed = 1,
    source_inventory_size = 1,
    energy_source =
    {
      type = "burner",
      fuel_category = "burnable",
      effectivity = 1,
      fuel_inventory_size = 1,
      emissions_per_minute = 2,
      smoke =
      {
        {
          name = "smoke",
          deviation = {0.1, 0.1},
          frequency = 5,
          position = {0.0, -0.8},
          starting_vertical_speed = 0.08,
          starting_frame_deviation = 60
        }
      }
    },
	
    vehicle_impact_sound = sounds.generic_impact,
    open_sound = sounds.machine_open,
    close_sound = sounds.machine_close,
	fluid_boxes =
    {
      {
        production_type = "input",
        pipe_picture = assembler3pipepictures(),
        pipe_covers = pipecoverspictures(),
        base_area = 10,
        base_level = -1,
        pipe_connections = {{ type="input", position = {0, -2} }},
        secondary_draw_orders = { north = -1 }
      },
      {
        production_type = "output",
        pipe_picture = assembler3pipepictures(),
        pipe_covers = pipecoverspictures(),
        base_area = 10,
        base_level = 1,
        pipe_connections = {{ type="output", position = {0, 2} }},
        secondary_draw_orders = { north = -1 }
      },
      off_when_no_fluid_recipe = true
    },
     
    working_sound =
    {
      sound =
      {
        filename = "__base__/sound/electric-furnace.ogg",
        volume = 0.6
      },
      audible_distance_modifier = 0.6,
      fade_in_ticks = 4,
      fade_out_ticks = 20
    },
    animation =
    {
      layers =
      {
        {
          filename = "__base__/graphics/entity/electric-furnace/electric-furnace-base.png",
          priority = "high",
          width = 129,
          height = 100,
          frame_count = 1,
          shift = {0.421875, 0},
          hr_version =
          {
            filename = "__base__/graphics/entity/electric-furnace/hr-electric-furnace.png",
            priority = "high",
            width = 239,
            height = 219,
            frame_count = 1,
            shift = util.by_pixel(0.75, 5.75),
            scale = 0.5
          }
        },
        {
          filename = "__base__/graphics/entity/electric-furnace/electric-furnace-shadow.png",
          priority = "high",
          width = 129,
          height = 100,
          frame_count = 1,
          shift = {0.421875, 0},
          draw_as_shadow = true,
          hr_version =
          {
            filename = "__base__/graphics/entity/electric-furnace/hr-electric-furnace-shadow.png",
            priority = "high",
            width = 227,
            height = 171,
            frame_count = 1,
            draw_as_shadow = true,
            shift = util.by_pixel(11.25, 7.75),
            scale = 0.5
          }
        }
      }
    },
    working_visualisations =
    {
      {
        animation =
        {
          filename = "__base__/graphics/entity/electric-furnace/electric-furnace-heater.png",
          priority = "high",
          width = 25,
          height = 15,
          frame_count = 12,
          animation_speed = 0.5,
          shift = {0.015625, 0.890625},
          hr_version =
          {
            filename = "__base__/graphics/entity/electric-furnace/hr-electric-furnace-heater.png",
            priority = "high",
            width = 60,
            height = 56,
            frame_count = 12,
            animation_speed = 0.5,
            shift = util.by_pixel(1.75, 32.75),
            scale = 0.5
          }
        },
        light = {intensity = 0.4, size = 6, shift = {0.0, 1.0}, color = {r = 1.0, g = 1.0, b = 1.0}}
      },
      {
        animation =
        {
          filename = "__base__/graphics/entity/electric-furnace/electric-furnace-propeller-1.png",
          priority = "high",
          width = 19,
          height = 13,
          frame_count = 4,
          animation_speed = 0.5,
          shift = {-0.671875, -0.640625},
          hr_version =
          {
            filename = "__base__/graphics/entity/electric-furnace/hr-electric-furnace-propeller-1.png",
            priority = "high",
            width = 37,
            height = 25,
            frame_count = 4,
            animation_speed = 0.5,
            shift = util.by_pixel(-20.5, -18.5),
            scale = 0.5
          }
        }
      },
      {
        animation =
        {
          filename = "__base__/graphics/entity/electric-furnace/electric-furnace-propeller-2.png",
          priority = "high",
          width = 12,
          height = 9,
          frame_count = 4,
          animation_speed = 0.5,
          shift = {0.0625, -1.234375},
          hr_version =
          {
            filename = "__base__/graphics/entity/electric-furnace/hr-electric-furnace-propeller-2.png",
            priority = "high",
            width = 23,
            height = 15,
            frame_count = 4,
            animation_speed = 0.5,
            shift = util.by_pixel(3.5, -38),
            scale = 0.5
          }
        }
      }
    },
    fast_replaceable_group = "furnace",
    water_reflection =
    {
      pictures =
      {
        filename = "__base__/graphics/entity/electric-furnace/electric-furnace-reflection.png",
        priority = "extra-high",
        width = 24,
        height = 24,
        shift = util.by_pixel(5, 40),
        variation_count = 1,
        scale = 5,
      },
      rotate = false,
      orientation_to_variation = false
    }
  },
 
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  

  {
    type = "assembling-machine",
    name = "ore-crusher",
    icon = "__base__/graphics/icons/assembling-machine-1.png",
    icon_size = 64, icon_mipmaps = 4,
    flags = {"placeable-neutral", "placeable-player", "player-creation"},
    minable = {mining_time = 0.2, result = "ore-crusher"},
    max_health = 300,
    corpse = "assembling-machine-1-remnants",
    dying_explosion = "assembling-machine-1-explosion",
    resistances =
    {
      {
        type = "fire",
        percent = 70
      }
    },
    collision_box = {{-1.2, -1.2}, {1.2, 1.2}},
    selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
    damaged_trigger_effect = hit_effects.entity(),
    --fast_replaceable_group = "assembling-machine",
  --  next_upgrade = "assembling-machine-2",
    alert_icon_shift = util.by_pixel(-3, -12),
    animation =
    {
      layers =
      {
        {
          filename = "__base__/graphics/entity/assembling-machine-1/assembling-machine-1.png",
          priority="high",
          width = 108,
          height = 114,
          frame_count = 32,
          line_length = 8,
          shift = util.by_pixel(0, 2),
          hr_version =
          {
            filename = "__base__/graphics/entity/assembling-machine-1/hr-assembling-machine-1.png",
            priority="high",
            width = 214,
            height = 226,
            frame_count = 32,
            line_length = 8,
            shift = util.by_pixel(0, 2),
            scale = 0.5
          }
        },
        {
          filename = "__base__/graphics/entity/assembling-machine-1/assembling-machine-1-shadow.png",
          priority="high",
          width = 95,
          height = 83,
          frame_count = 1,
          line_length = 1,
          repeat_count = 32,
          draw_as_shadow = true,
          shift = util.by_pixel(8.5, 5.5),
          hr_version =
          {
            filename = "__base__/graphics/entity/assembling-machine-1/hr-assembling-machine-1-shadow.png",
            priority="high",
            width = 190,
            height = 165,
            frame_count = 1,
            line_length = 1,
            repeat_count = 32,
            draw_as_shadow = true,
            shift = util.by_pixel(8.5, 5),
            scale = 0.5
          }
        }
      }
    },
    crafting_categories = {"crushing"},
    crafting_speed = 0.5,
    energy_source =
    {
      type = "electric",
      usage_priority = "secondary-input",
      emissions_per_minute = 4
    },
    energy_usage = "75kW",
    open_sound = sounds.machine_open,
    close_sound = sounds.machine_close,
    vehicle_impact_sound = sounds.generic_impact,
    working_sound =
    {
      sound =
      {
        {
          filename = "__base__/sound/assembling-machine-t1-1.ogg",
          volume = 0.5
        },
      },
      audible_distance_modifier = 0.5,
      fade_in_ticks = 4,
      fade_out_ticks = 20
    }
  },
  
   {
    type = "assembling-machine",
    name = "metal-caster",
    icon = "__base__/graphics/icons/assembling-machine-2.png",
    icon_size = 64, icon_mipmaps = 4,
    flags = {"placeable-neutral", "placeable-player", "player-creation"},
    minable = {mining_time = 0.2, result = "metal-caster"},
    max_health = 350,
    corpse = "assembling-machine-2-remnants",
    dying_explosion = "assembling-machine-2-explosion",
    alert_icon_shift = util.by_pixel(-3, -12),
    resistances =
    {
      {
        type = "fire",
        percent = 70
      }
    },
    fluid_boxes = 
    {
      {
        production_type = "input",
        pipe_picture = assembler2pipepictures(),
        pipe_covers = pipecoverspictures(),
        base_area = 10,
        base_level = -1,
        pipe_connections = {{ type="input", position = {0, -2} }},
        secondary_draw_orders = { north = -1 }
      },

     -- off_when_no_fluid_recipe = true
    },
    collision_box = {{-1.2, -1.2}, {1.2, 1.2}},
    selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
    damaged_trigger_effect = hit_effects.entity(),
    fast_replaceable_group = "assembling-machine",
    --next_upgrade = "assembling-machine-3",
    animation =
    {
      layers =
      {
        {
          filename = "__base__/graphics/entity/assembling-machine-2/assembling-machine-2.png",
          priority = "high",
          width = 108,
          height = 110,
          frame_count = 32,
          line_length = 8,
          shift = util.by_pixel(0, 4),
          hr_version =
          {
            filename = "__base__/graphics/entity/assembling-machine-2/hr-assembling-machine-2.png",
            priority = "high",
            width = 214,
            height = 218,
            frame_count = 32,
            line_length = 8,
            shift = util.by_pixel(0, 4),
            scale = 0.5
          }
        },
        {
          filename = "__base__/graphics/entity/assembling-machine-2/assembling-machine-2-shadow.png",
          priority = "high",
          width = 98,
          height = 82,
          frame_count = 32,
          line_length = 8,
          draw_as_shadow = true,
          shift = util.by_pixel(12, 5),
          hr_version =
          {
            filename = "__base__/graphics/entity/assembling-machine-2/hr-assembling-machine-2-shadow.png",
            priority = "high",
            width = 196,
            height = 163,
            frame_count = 32,
            line_length = 8,
            draw_as_shadow = true,
            shift = util.by_pixel(12, 4.75),
            scale = 0.5
          }
        }
      }
    },
    open_sound = sounds.machine_open,
    close_sound = sounds.machine_close,
    vehicle_impact_sound = sounds.generic_impact,
    working_sound =
    {
      sound =
      {
        {
          filename = "__base__/sound/assembling-machine-t2-1.ogg",
          volume = 0.45
        },
      },
      audible_distance_modifier = 0.5,
      fade_in_ticks = 4,
      fade_out_ticks = 20
    },
    crafting_categories = {"casting"},

    crafting_speed = 0.75,
    energy_source =
    {
      type = "electric",
      usage_priority = "secondary-input",
      emissions_per_minute = 3
    },
    energy_usage = "150kW",
 --   module_specification =
 --   {
 --     module_slots = 2
--    },
  --  allowed_effects = {"consumption", "speed", "productivity", "pollution"}
  },
 
  
  
  
    {
    type = "pipe",
    name = "casting-pipe",
    icon = "__base__/graphics/icons/pipe.png",
    icon_size = 64, icon_mipmaps = 4,
    flags = {"placeable-neutral", "player-creation", "fast-replaceable-no-build-while-moving"},
    minable = {mining_time = 0.1, result = "casting-pipe"},
    max_health = 100,
    corpse = "pipe-remnants",
    dying_explosion = "pipe-explosion",
    resistances =
    {
      {
        type = "fire",
        percent = 100
      }
    },
    fast_replaceable_group = "pipe",
    collision_box = {{-0.29, -0.29}, {0.29, 0.29}},
    selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
    damaged_trigger_effect = hit_effects.entity(),
    fluid_box =
    {
      base_area = 1,
      pipe_connections =
      {
        { position = {0, -1} },
        { position = {1, 0} },
        { position = {0, 1} },
        { position = {-1, 0} }
      }
    },
    vehicle_impact_sound = sounds.generic_impact,
    pictures = pipepictures(),
    working_sound =
    {
      sound = sounds.pipe,
      match_volume_to_activity = true,
      audible_distance_modifier = 0.3,
      fade_in_ticks = 4,
      fade_out_ticks = 60
    },
    open_sound = sounds.machine_open,
    close_sound = sounds.machine_close,

    horizontal_window_bounding_box = {{-0.25, -0.28125}, {0.25, 0.15625}},
    vertical_window_bounding_box = {{-0.28125, -0.5}, {0.03125, 0.125}}
  },

  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
 --[[
    {
    type = "furnace",
    name = "steel-furnace",
    icon = "__base__/graphics/icons/steel-furnace.png",
    icon_size = 64, icon_mipmaps = 4,
    flags = {"placeable-neutral", "placeable-player", "player-creation"},
    minable = {mining_time = 0.2, result = "steel-furnace"},
    max_health = 300,
    corpse = "steel-furnace-remnants",
    dying_explosion = "steel-furnace-explosion",
    vehicle_impact_sound = sounds.generic_impact,
    open_sound = sounds.machine_open,
    close_sound = sounds.machine_close,
    working_sound =
    {
      sound =
      {
        {
          filename = "__base__/sound/steel-furnace.ogg",
          volume = 0.46
        }
      },
      max_sounds_per_type = 4,
      audible_distance_modifier = 0.37,
      fade_in_ticks = 4,
      fade_out_ticks = 20
    },
    resistances =
    {
      {
        type = "fire",
        percent = 100
      }
    },
    collision_box = {{-0.7, -0.7}, {0.7, 0.7}},
    selection_box = {{-0.8, -1}, {0.8, 1}},
    damaged_trigger_effect = hit_effects.entity(),
    crafting_categories = {"smelting"},
    result_inventory_size = 1,
    energy_usage = "90kW",
    crafting_speed = 2,
    source_inventory_size = 1,
    energy_source =
    {
      type = "burner",
      fuel_category = "chemical",
      effectivity = 1,
      emissions_per_minute = 4,
      fuel_inventory_size = 1,
      smoke =
      {
        {
          name = "smoke",
          frequency = 10,
          position = {0.7, -1.2},
          starting_vertical_speed = 0.08,
          starting_frame_deviation = 60
        }
      }
    },
    animation =
    {
      layers =
      {
        {
          filename = "__base__/graphics/entity/steel-furnace/steel-furnace.png",
          priority = "high",
          width = 85,
          height = 87,
          frame_count = 1,
          shift = util.by_pixel(-1.5, 1.5),
          hr_version =
          {
            filename = "__base__/graphics/entity/steel-furnace/hr-steel-furnace.png",
            priority = "high",
            width = 171,
            height = 174,
            frame_count = 1,
            shift = util.by_pixel(-1.25, 2),
            scale = 0.5
          }
        },
        {
          filename = "__base__/graphics/entity/steel-furnace/steel-furnace-shadow.png",
          priority = "high",
          width = 139,
          height = 43,
          frame_count = 1,
          draw_as_shadow = true,
          shift = util.by_pixel(39.5, 11.5),
          hr_version =
          {
            filename = "__base__/graphics/entity/steel-furnace/hr-steel-furnace-shadow.png",
            priority = "high",
            width = 277,
            height = 85,
            frame_count = 1,
            draw_as_shadow = true,
            shift = util.by_pixel(39.25, 11.25),
            scale = 0.5
          }
        }
      }
    },
    working_visualisations =
    {
      {
        north_position = {0.0, 0.0},
        east_position = {0.0, 0.0},
        south_position = {0.0, 0.0},
        west_position = {0.0, 0.0},
        animation =
        {
          filename = "__base__/graphics/entity/steel-furnace/steel-furnace-fire.png",
          priority = "high",
          line_length = 8,
          width = 29,
          height = 40,
          frame_count = 48,
          direction_count = 1,
          shift = util.by_pixel(-0.5, 6),
          hr_version =
          {
            filename = "__base__/graphics/entity/steel-furnace/hr-steel-furnace-fire.png",
            priority = "high",
            line_length = 8,
            width = 57,
            height = 81,
            frame_count = 48,
            direction_count = 1,
            shift = util.by_pixel(-0.75, 5.75),
            scale = 0.5
          }
        },
        light = {intensity = 1, size = 1, color = {r = 1.0, g = 1.0, b = 1.0}}
      },
      {
        north_position = {0.0, 0.0},
        east_position = {0.0, 0.0},
        south_position = {0.0, 0.0},
        west_position = {0.0, 0.0},
        effect = "flicker", -- changes alpha based on energy source light intensity
        animation =
        {
          filename = "__base__/graphics/entity/steel-furnace/steel-furnace-glow.png",
          priority = "high",
          width = 60,
          height = 43,
          frame_count = 1,
          shift = {0.03125, 0.640625},
          blend_mode = "additive"
        }
      },
      {
        north_position = {0.0, 0.0},
        east_position = {0.0, 0.0},
        south_position = {0.0, 0.0},
        west_position = {0.0, 0.0},
        effect = "flicker", -- changes alpha based on energy source light intensity
        animation =
        {
          filename = "__base__/graphics/entity/steel-furnace/steel-furnace-working.png",
          priority = "high",
          line_length = 8,
          width = 64,
          height = 75,
          frame_count = 1,
          direction_count = 1,
          shift = util.by_pixel(0, -4.5),
          blend_mode = "additive",
          hr_version =
          {
            filename = "__base__/graphics/entity/steel-furnace/hr-steel-furnace-working.png",
            priority = "high",
            line_length = 8,
            width = 130,
            height = 149,
            frame_count = 1,
            direction_count = 1,
            shift = util.by_pixel(0, -4.25),
            blend_mode = "additive",
            scale = 0.5
          }
        }
      }
    },
    fast_replaceable_group = "furnace",
    water_reflection =
    {
      pictures =
      {
        filename = "__base__/graphics/entity/steel-furnace/steel-furnace-reflection.png",
        priority = "extra-high",
        width = 20,
        height = 24,
        shift = util.by_pixel(0, 45),
        variation_count = 1,
        scale = 5,
      },
      rotate = false,
      orientation_to_variation = false
    }
  },


   {
    type = "mining-drill",
    name = "burner-mining-drill",
    icon = "__base__/graphics/icons/burner-mining-drill.png",
    icon_size = 64, icon_mipmaps = 4,
    flags = {"placeable-neutral", "player-creation"},
    resource_categories = {"basic-solid"},
    minable = {mining_time = 0.3, result = "burner-mining-drill"},
    max_health = 150,
    corpse = "burner-mining-drill-remnants",
    dying_explosion = "burner-mining-drill-explosion",
    collision_box = {{ -0.7, -0.7}, {0.7, 0.7}},
    selection_box = {{ -1, -1}, {1, 1}},
    damaged_trigger_effect = hit_effects.entity(),
    mining_speed = 0.25,
    working_sound =
    {
      sound =
      {
        {
          filename = "__base__/sound/burner-mining-drill.ogg",
          volume = 0.6
        },
        {
          filename = "__base__/sound/burner-mining-drill-1.ogg",
          volume = 0.6
        }
      },
      --max_sounds_per_type = 3,
      fade_in_ticks = 4,
      fade_out_ticks = 20
    },
    open_sound = sounds.machine_open,
    close_sound = sounds.machine_close,
    vehicle_impact_sound = sounds.generic_impact,
    allowed_effects = {}, -- no beacon effects on the burner drill
    energy_source =
    {
      type = "burner",
      fuel_category = "chemical",
      effectivity = 1,
      fuel_inventory_size = 1,
      emissions_per_minute = 12,
      smoke =
      {
        {
          name = "smoke",
          deviation = {0.1, 0.1},
          frequency = 3
        }
      }
    },
    energy_usage = "150kW",
    animations =
    {
      north =
      {
        layers =
        {
          {
            priority = "high",
            width = 87,
            height = 95,
            line_length = 4,
            shift = util.by_pixel(2.5, 0.5),
            filename = "__base__/graphics/entity/burner-mining-drill/burner-mining-drill-N.png",
            frame_count = 32,
            animation_speed = 0.5,
            run_mode = "forward-then-backward",
            hr_version =
            {
              priority = "high",
              width = 173,
              height = 188,
              line_length = 4,
              shift = util.by_pixel(2.75, 0.5),
              filename = "__base__/graphics/entity/burner-mining-drill/hr-burner-mining-drill-N.png",
              frame_count = 32,
              animation_speed = 0.5,
              run_mode = "forward-then-backward",
              scale = 0.5
            }
          },
          {
            priority = "high",
            width = 109,
            height = 76,
            line_length = 4,
            shift = util.by_pixel(23.5, -1),
            filename = "__base__/graphics/entity/burner-mining-drill/burner-mining-drill-N-shadow.png",
            frame_count = 32,
            animation_speed = 0.5,
            run_mode = "forward-then-backward",
            draw_as_shadow = true,
            hr_version =
            {
              priority = "high",
              width = 217,
              height = 150,
              line_length = 4,
              shift = util.by_pixel(23.75, -1),
              filename = "__base__/graphics/entity/burner-mining-drill/hr-burner-mining-drill-N-shadow.png",
              frame_count = 32,
              animation_speed = 0.5,
              run_mode = "forward-then-backward",
              draw_as_shadow = true,
              scale = 0.5
            }
          }
        }
      },
      east =
      {
        layers =
        {
          {
            priority = "high",
            width = 93,
            height = 84,
            line_length = 4,
            shift = util.by_pixel(2.5, 1),
            filename = "__base__/graphics/entity/burner-mining-drill/burner-mining-drill-E.png",
            frame_count = 32,
            animation_speed = 0.5,
            run_mode = "forward-then-backward",
            hr_version =
            {
              priority = "high",
              width = 185,
              height = 168,
              line_length = 4,
              shift = util.by_pixel(2.75, 1),
              filename = "__base__/graphics/entity/burner-mining-drill/hr-burner-mining-drill-E.png",
              frame_count = 32,
              animation_speed = 0.5,
              run_mode = "forward-then-backward",
              scale = 0.5
            }
          },
          {
            priority = "high",
            width = 93,
            height = 65,
            line_length = 4,
            shift = util.by_pixel(13.5, 0.5),
            filename = "__base__/graphics/entity/burner-mining-drill/burner-mining-drill-E-shadow.png",
            frame_count = 32,
            animation_speed = 0.5,
            run_mode = "forward-then-backward",
            draw_as_shadow = true,
            hr_version =
            {
              priority = "high",
              width = 185,
              height = 128,
              line_length = 4,
              shift = util.by_pixel(13.75, 0.5),
              filename = "__base__/graphics/entity/burner-mining-drill/hr-burner-mining-drill-E-shadow.png",
              frame_count = 32,
              animation_speed = 0.5,
              run_mode = "forward-then-backward",
              draw_as_shadow = true,
              scale = 0.5
            }
          }
        }
      },
      south =
      {
        layers =
        {
          {
            priority = "high",
            width = 87,
            height = 87,
            line_length = 4,
            shift = util.by_pixel(0.5, -0.5),
            filename = "__base__/graphics/entity/burner-mining-drill/burner-mining-drill-S.png",
            frame_count = 32,
            animation_speed = 0.5,
            run_mode = "forward-then-backward",
            hr_version =
            {
              priority = "high",
              width = 174,
              height = 174,
              line_length = 4,
              shift = util.by_pixel(0.5, -0.5),
              filename = "__base__/graphics/entity/burner-mining-drill/hr-burner-mining-drill-S.png",
              frame_count = 32,
              animation_speed = 0.5,
              run_mode = "forward-then-backward",
              scale = 0.5
            }
          },
          {
            priority = "high",
            width = 88,
            height = 69,
            line_length = 4,
            shift = util.by_pixel(11, 2.5),
            filename = "__base__/graphics/entity/burner-mining-drill/burner-mining-drill-S-shadow.png",
            frame_count = 32,
            animation_speed = 0.5,
            run_mode = "forward-then-backward",
            draw_as_shadow = true,
            hr_version =
            {
              priority = "high",
              width = 174,
              height = 137,
              line_length = 4,
              shift = util.by_pixel(11, 2.75),
              filename = "__base__/graphics/entity/burner-mining-drill/hr-burner-mining-drill-S-shadow.png",
              frame_count = 32,
              animation_speed = 0.5,
              run_mode = "forward-then-backward",
              draw_as_shadow = true,
              scale = 0.5
            }
          }
        }
      },
      west =
      {
        layers =
        {
          {
            priority = "high",
            width = 91,
            height = 88,
            line_length = 4,
            shift = util.by_pixel(-1.5, 0),
            filename = "__base__/graphics/entity/burner-mining-drill/burner-mining-drill-W.png",
            frame_count = 32,
            animation_speed = 0.5,
            run_mode = "forward-then-backward",
            hr_version =
            {
              priority = "high",
              width = 180,
              height = 176,
              line_length = 4,
              shift = util.by_pixel(-1.5, 0),
              filename = "__base__/graphics/entity/burner-mining-drill/hr-burner-mining-drill-W.png",
              frame_count = 32,
              animation_speed = 0.5,
              run_mode = "forward-then-backward",
              scale = 0.5
            }
          },
          {
            priority = "high",
            width = 89,
            height = 66,
            line_length = 4,
            shift = util.by_pixel(7.5, 1),
            filename = "__base__/graphics/entity/burner-mining-drill/burner-mining-drill-W-shadow.png",
            frame_count = 32,
            animation_speed = 0.5,
            run_mode = "forward-then-backward",
            draw_as_shadow = true,
            hr_version =
            {
              priority = "high",
              width = 176,
              height = 130,
              line_length = 4,
              shift = util.by_pixel(7.5, 1),
              filename = "__base__/graphics/entity/burner-mining-drill/hr-burner-mining-drill-W-shadow.png",
              frame_count = 32,
              animation_speed = 0.5,
              run_mode = "forward-then-backward",
              draw_as_shadow = true,
              scale = 0.5
            }
          }
        }
      }
    },
    monitor_visualization_tint = {r=78, g=173, b=255},
    resource_searching_radius = 0.99,
    vector_to_place_result = {-0.5, -1.3},
    fast_replaceable_group = "mining-drill",

    circuit_wire_connection_points = circuit_connector_definitions["burner-mining-drill"].points,
    circuit_connector_sprites = circuit_connector_definitions["burner-mining-drill"].sprites,
    circuit_wire_max_distance = default_circuit_wire_max_distance
  }

]]--
  
  
  
  
  
  
  
}
)
 