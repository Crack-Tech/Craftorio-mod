
data:extend(
{
 {
    type = "assembling-machine",
    name = "assembling-machine-3",
    icon = "__base__/graphics/icons/assembling-machine-3.png",
    icon_size = 64, icon_mipmaps = 4,
    flags = {"placeable-neutral","placeable-player", "player-creation"},
    minable = {mining_time = 0.2, result = "assembling-machine-3"},
    max_health = 400,
    corpse = "assembling-machine-3-remnants",
    dying_explosion = "assembling-machine-3-explosion",
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
    open_sound = sounds.machine_open,
    close_sound = sounds.machine_close,
    vehicle_impact_sound = sounds.generic_impact,
    working_sound =
    {
      sound =
      {
        {
          filename = "__base__/sound/assembling-machine-t3-1.ogg",
          volume = 0.45
        },
      },
      audible_distance_modifier = 0.5,
      fade_in_ticks = 4,
      fade_out_ticks = 20
    },
    collision_box = {{-1.2, -1.2}, {1.2, 1.2}},
    selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
    damaged_trigger_effect = hit_effects.entity(),
    drawing_box = {{-1.5, -1.7}, {1.5, 1.5}},
    fast_replaceable_group = "assembling-machine",
    animation =
    {
      layers =
      {
        {
          filename = "__base__/graphics/entity/assembling-machine-3/assembling-machine-3.png",
          priority = "high",
          width = 108,
          height = 119,
          frame_count = 32,
          line_length = 8,
          shift = util.by_pixel(0, -0.5),
          hr_version =
          {
            filename = "__base__/graphics/entity/assembling-machine-3/hr-assembling-machine-3.png",
            priority = "high",
            width = 214,
            height = 237,
            frame_count = 32,
            line_length = 8,
            shift = util.by_pixel(0, -0.75),
            scale = 0.5
          }
        },
        {
          filename = "__base__/graphics/entity/assembling-machine-3/assembling-machine-3-shadow.png",
          priority = "high",
          width = 130,
          height = 82,
          frame_count = 32,
          line_length = 8,
          draw_as_shadow = true,
          shift = util.by_pixel(28, 4),
          hr_version =
          {
            filename = "__base__/graphics/entity/assembling-machine-3/hr-assembling-machine-3-shadow.png",
            priority = "high",
            width = 260,
            height = 162,
            frame_count = 32,
            line_length = 8,
            draw_as_shadow = true,
            shift = util.by_pixel(28, 4),
            scale = 0.5
          }
        }
      }
    },

    crafting_categories = {"basic-crafting", "crafting", "advanced-crafting", "crafting-with-fluid"},
    crafting_speed = 1.25,
    energy_source =
    {
      type = "electric",
      usage_priority = "secondary-input",
      emissions_per_minute = 2
    },
    energy_usage = "375kW",
    module_specification =
    {
      module_slots = 4
    },
    allowed_effects = {"consumption", "speed", "productivity", "pollution"}
  },
  {
    type = "fluid-wagon",
    name = "fluid-wagon",
    icon = "__base__/graphics/icons/fluid-wagon.png",
    icon_size = 64, icon_mipmaps = 4,
    flags = {"placeable-neutral", "player-creation", "placeable-off-grid"},
    minable = {mining_time = 0.5, result = "fluid-wagon"},
    mined_sound = {filename = "__core__/sound/deconstruct-large.ogg",volume = 0.8},
    max_health = 600,
    capacity = 25000,
    corpse = "fluid-wagon-remnants",
    dying_explosion = "fluid-wagon-explosion",
    collision_box = {{-0.6, -2.4}, {0.6, 2.4}},
    selection_box = {{-1, -2.703125}, {1, 3.296875}},
    damaged_trigger_effect = hit_effects.entity(),
    vertical_selection_shift = -0.796875,
    weight = 1000,
    max_speed = 1.5,
    braking_force = 3,
    friction_force = 0.50,
    air_resistance = 0.01,
    connection_distance = 3,
    joint_distance = 4,
    energy_per_hit_point = 6,
    resistances =
    {
      {
        type = "fire",
        decrease = 15,
        percent = 50
      },
      {
        type = "physical",
        decrease = 15,
        percent = 30
      },
      {
        type = "impact",
        decrease = 50,
        percent = 60
      },
      {
        type = "explosion",
        decrease = 15,
        percent = 30
      },
      {
        type = "acid",
        decrease = 3,
        percent = 20
      }
    },
    back_light = rolling_stock_back_light(),
    stand_by_light = rolling_stock_stand_by_light(),
    color = {r = 0.43, g = 0.23, b = 0, a = 0.5},
    pictures =
    {
      layers =
      {
        {
          priority = "very-low",
          dice = 4,
          width = 208,
          height = 210,
          back_equals_front = true,
          direction_count = 128,
          allow_low_quality_rotation = true,
          filenames =
          {
            "__base__/graphics/entity/fluid-wagon/fluid-wagon-1.png",
            "__base__/graphics/entity/fluid-wagon/fluid-wagon-2.png",
            "__base__/graphics/entity/fluid-wagon/fluid-wagon-3.png",
            "__base__/graphics/entity/fluid-wagon/fluid-wagon-4.png"
          },
          line_length = 4,
          lines_per_file = 8,
          shift = {0 + 0.013, -1 + 0.077},
          hr_version =
          {
            priority = "very-low",
            dice = 4,
            width = 416,
            height = 419,
            back_equals_front = true,
            direction_count = 128,
            allow_low_quality_rotation = true,
            filenames =
            {
              "__base__/graphics/entity/fluid-wagon/hr-fluid-wagon-1.png",
              "__base__/graphics/entity/fluid-wagon/hr-fluid-wagon-2.png",
              "__base__/graphics/entity/fluid-wagon/hr-fluid-wagon-3.png",
              "__base__/graphics/entity/fluid-wagon/hr-fluid-wagon-4.png",
              "__base__/graphics/entity/fluid-wagon/hr-fluid-wagon-5.png",
              "__base__/graphics/entity/fluid-wagon/hr-fluid-wagon-6.png",
              "__base__/graphics/entity/fluid-wagon/hr-fluid-wagon-7.png",
              "__base__/graphics/entity/fluid-wagon/hr-fluid-wagon-8.png"
            },
            line_length = 4,
            lines_per_file = 4,
            shift = {0 + 0.013, -1 + 0.077},
            scale = 0.5
          }
        },
        {
          flags = { "shadow" },
          priority = "very-low",
          dice = 4,
          width = 251,
          height = 188,
          back_equals_front = true,
          draw_as_shadow = true,
          direction_count = 128,
          allow_low_quality_rotation = true,
          filenames =
          {
            "__base__/graphics/entity/fluid-wagon/fluid-wagon-shadow-1.png",
            "__base__/graphics/entity/fluid-wagon/fluid-wagon-shadow-2.png",
            "__base__/graphics/entity/fluid-wagon/fluid-wagon-shadow-3.png",
            "__base__/graphics/entity/fluid-wagon/fluid-wagon-shadow-4.png"
          },
          line_length = 4,
          lines_per_file = 8,
          shift = {0.875 + 0.013, 0.3125 + 0.077},
          hr_version =
          {
            flags = { "shadow" },
            priority = "very-low",
            dice = 4,
            width = 501,
            height = 375,
            back_equals_front = true,
            draw_as_shadow = true,
            direction_count = 128,
            allow_low_quality_rotation = true,
            filenames =
            {
              "__base__/graphics/entity/fluid-wagon/hr-fluid-wagon-shadow-1.png",
              "__base__/graphics/entity/fluid-wagon/hr-fluid-wagon-shadow-2.png",
              "__base__/graphics/entity/fluid-wagon/hr-fluid-wagon-shadow-3.png",
              "__base__/graphics/entity/fluid-wagon/hr-fluid-wagon-shadow-4.png",
              "__base__/graphics/entity/fluid-wagon/hr-fluid-wagon-shadow-5.png",
              "__base__/graphics/entity/fluid-wagon/hr-fluid-wagon-shadow-6.png",
              "__base__/graphics/entity/fluid-wagon/hr-fluid-wagon-shadow-7.png"
            },
            line_length = 4,
            lines_per_file = 5,
            shift = {0.875 + 0.013, 0.3125 + 0.077},
            scale = 0.5
          }
        }
      }
    },
    minimap_representation =
    {
      filename = "__base__/graphics/entity/fluid-wagon/fluid-wagon-minimap-representation.png",
      flags = {"icon"},
      size = {20, 40},
      scale = 0.5
    },
    selected_minimap_representation =
    {
      filename = "__base__/graphics/entity/fluid-wagon/fluid-wagon-selected-minimap-representation.png",
      flags = {"icon"},
      size = {20, 40},
      scale = 0.5
    },
    wheels = standard_train_wheels,
    drive_over_tie_trigger = drive_over_tie(),
    tie_distance = 50,
    working_sound =
    {
      sound =
      {
        filename = "__base__/sound/train-wheels.ogg",
        volume = 0.3
      },
      match_volume_to_activity = true
    },
    crash_trigger = crash_trigger(),
    sound_minimum_speed = 0.1,
    vehicle_impact_sound = sounds.generic_impact,
    water_reflection = locomotive_reflection()
  },
  {
    type = "storage-tank",
    name = "storage-tank",
    icon = "__base__/graphics/icons/storage-tank.png",
    icon_size = 64, icon_mipmaps = 4,
    flags = {"placeable-player", "player-creation"},
    minable = {mining_time = 0.5, result = "storage-tank"},
    max_health = 500,
    corpse = "storage-tank-remnants",
    dying_explosion = "storage-tank-explosion",
    collision_box = {{-1.3, -1.3}, {1.3, 1.3}},
    selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
    damaged_trigger_effect = hit_effects.entity(),
    fluid_box =
    {
      base_area = 250,
      pipe_covers = pipecoverspictures(),
      pipe_connections =
      {
        { position = {-1, -2} },
        { position = {2, 1} },
        { position = {1, 2} },
        { position = {-2, -1} }
      }
    },
    two_direction_only = true,
    window_bounding_box = {{-0.125, 0.6875}, {0.1875, 1.1875}},
    pictures =
    {
      picture =
      {
        sheets =
        {
          {
            filename = "__base__/graphics/entity/storage-tank/storage-tank.png",
            priority = "extra-high",
            frames = 2,
            width = 110,
            height = 108,
            shift = util.by_pixel(0, 4),
            hr_version =
            {
              filename = "__base__/graphics/entity/storage-tank/hr-storage-tank.png",
              priority = "extra-high",
              frames = 2,
              width = 219,
              height = 215,
              shift = util.by_pixel(-0.25, 3.75),
              scale = 0.5
            }
          },
          {
            filename = "__base__/graphics/entity/storage-tank/storage-tank-shadow.png",
            priority = "extra-high",
            frames = 2,
            width = 146,
            height = 77,
            shift = util.by_pixel(30, 22.5),
            draw_as_shadow = true,
            hr_version =
            {
              filename = "__base__/graphics/entity/storage-tank/hr-storage-tank-shadow.png",
              priority = "extra-high",
              frames = 2,
              width = 291,
              height = 153,
              shift = util.by_pixel(29.75, 22.25),
              scale = 0.5,
              draw_as_shadow = true
            }
          }
        }
      },
      fluid_background =
      {
        filename = "__base__/graphics/entity/storage-tank/fluid-background.png",
        priority = "extra-high",
        width = 32,
        height = 15
      },
      window_background =
      {
        filename = "__base__/graphics/entity/storage-tank/window-background.png",
        priority = "extra-high",
        width = 17,
        height = 24,
        hr_version =
        {
          filename = "__base__/graphics/entity/storage-tank/hr-window-background.png",
          priority = "extra-high",
          width = 34,
          height = 48,
          scale = 0.5
        }
      },
      flow_sprite =
      {
        filename = "__base__/graphics/entity/pipe/fluid-flow-low-temperature.png",
        priority = "extra-high",
        width = 160,
        height = 20
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
        animation_speed = 0.25,
        hr_version =
        {
          filename = "__base__/graphics/entity/pipe/hr-steam.png",
          priority = "extra-high",
          line_length = 10,
          width = 48,
          height = 30,
          frame_count = 60,
          axially_symmetrical = false,
          animation_speed = 0.25,
          direction_count = 1,
          scale = 0.5
        }
      }
    },
    flow_length_in_ticks = 360,
    vehicle_impact_sound = sounds.generic_impact,
    open_sound = sounds.machine_open,
    close_sound = sounds.machine_close,
    working_sound =
    {
      sound =
      {
          filename = "__base__/sound/storage-tank.ogg",
          volume = 0.6
      },
      match_volume_to_activity = true,
      audible_distance_modifier = 0.5,
      max_sounds_per_type = 3
    },

    circuit_wire_connection_points = circuit_connector_definitions["storage-tank"].points,
    circuit_connector_sprites = circuit_connector_definitions["storage-tank"].sprites,
    circuit_wire_max_distance = default_circuit_wire_max_distance,
    water_reflection =
    {
      pictures =
      {
        filename = "__base__/graphics/entity/storage-tank/storage-tank-reflection.png",
        priority = "extra-high",
        width = 24,
        height = 24,
        shift = util.by_pixel(5, 35),
        variation_count = 1,
        scale = 5,
      },
      rotate = false,
      orientation_to_variation = false
    }
  },

  {
    type = "pump",
    name = "pump",
    icon = "__base__/graphics/icons/pump.png",
    icon_size = 64, icon_mipmaps = 4,
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 0.2, result = "pump"},
    max_health = 180,
    fast_replaceable_group = "pipe",
    corpse = "pump-remnants",
    dying_explosion = "pump-explosion",
    collision_box = {{-0.29, -0.9}, {0.29, 0.9}},
    selection_box = {{-0.5, -1}, {0.5, 1}},
    working_sound =
    {
      sound =
      {
          filename = "__base__/sound/pump.ogg",
          volume = 0.3
      },
      audible_distance_modifier = 0.5,
      max_sounds_per_type = 2
    },
    damaged_trigger_effect = hit_effects.entity(),
    resistances =
    {
      {
        type = "fire",
        percent = 80
      },
      {
        type = "impact",
        percent = 30
      }
    },
    fluid_box =
    {
      base_area = 1,
      height = 4,
      pipe_covers = pipecoverspictures(),
      pipe_connections =
      {
        { position = {0, -1.5}, type="output" },
        { position = {0, 1.5}, type="input" }
      }
    },
    energy_source =
    {
      type = "electric",
      usage_priority = "secondary-input",
      drain = "1kW"
    },
    energy_usage = "29kW",
    pumping_speed = 200,
    vehicle_impact_sound = sounds.generic_impact,
    open_sound = sounds.machine_open,
    close_sound = sounds.machine_close,

    animations =
    {
      north =
      {
        filename = "__base__/graphics/entity/pump/pump-north.png",
        width = 53,
        height = 79,
        line_length =8,
        frame_count =32,
        animation_speed = 0.5,
        shift = util.by_pixel(8.000, 7.500),
        hr_version =
        {
          filename = "__base__/graphics/entity/pump/hr-pump-north.png",
          width = 103,
          height = 164,
          scale = 0.5,
          line_length =8,
          frame_count =32,
          animation_speed = 0.5,
          shift = util.by_pixel(8, 3.5) -- {0.515625, 0.21875}
        }
      },
      east =
      {
        filename = "__base__/graphics/entity/pump/pump-east.png",
        width = 66,
        height = 60,
        line_length =8,
        frame_count =32,
        animation_speed = 0.5,
        shift = util.by_pixel(0, 4),
        hr_version =
        {
          filename = "__base__/graphics/entity/pump/hr-pump-east.png",
          width = 130,
          height = 109,
          scale = 0.5,
          line_length =8,
          frame_count =32,
          animation_speed = 0.5,
          shift = util.by_pixel(-0.5, 1.75) --{-0.03125, 0.109375}
        }
      },

      south =
      {
        filename = "__base__/graphics/entity/pump/pump-south.png",
        width = 62,
        height = 87,
        line_length =8,
        frame_count =32,
        animation_speed = 0.5,
        shift = util.by_pixel(13.5, 0.5),
        hr_version =
        {
          filename = "__base__/graphics/entity/pump/hr-pump-south.png",
          width = 114,
          height = 160,
          scale = 0.5,
          line_length =8,
          frame_count =32,
          animation_speed = 0.5,
          shift = util.by_pixel(12.5, -8) -- {0.75, -0.5}
        }
      },
      west =
      {
        filename = "__base__/graphics/entity/pump/pump-west.png",
        width = 69,
        height = 51,
        line_length =8,
        frame_count =32,
        animation_speed = 0.5,
        shift = util.by_pixel(0.5, -0.5),
        hr_version =
        {
          filename = "__base__/graphics/entity/pump/hr-pump-west.png",
          width = 131,
          height = 111,
          scale = 0.5,
          line_length =8,
          frame_count =32,
          animation_speed = 0.5,
          shift = util.by_pixel(-0.25, 1.25) -- {-0.015625, 0.078125}
        }
      }
    },

    fluid_wagon_connector_frame_count = 35,
    fluid_wagon_connector_alignment_tolerance = 2.0 / 32.0,

    fluid_wagon_connector_graphics = require("prototypes.entity.pump-connector"),

    fluid_animation =
    {
      north =
      {
        filename = "__base__/graphics/entity/pump/pump-north-liquid.png",
        apply_runtime_tint = true,
        width = 20,
        height = 13,
        line_length =8,
        frame_count =32,
        shift = util.by_pixel(-0.500, -14.500),
        hr_version =
        {
          filename = "__base__/graphics/entity/pump/hr-pump-north-liquid.png",
          apply_runtime_tint = true,
          width = 38,
          height = 22,
          scale = 0.5,
          line_length =8,
          frame_count =32,
          shift = util.by_pixel(-0.250, -16.750)
        }
      },

      east =
      {
        filename = "__base__/graphics/entity/pump/pump-east-liquid.png",
        width = 18,
        height = 24,
        line_length =8,
        frame_count =32,
        shift = util.by_pixel(6.000, -8.000),
        hr_version =
        {
          filename = "__base__/graphics/entity/pump/hr-pump-east-liquid.png",
          width = 35,
          height = 46,
          scale = 0.5,
          line_length =8,
          frame_count =32,
          shift = util.by_pixel(6.250, -8.500)
        }
      },

      south =
      {
        filename = "__base__/graphics/entity/pump/pump-south-liquid.png",
        width = 26,
        height = 55,
        line_length =8,
        frame_count =32,
        shift = util.by_pixel(3.500, 6.500),
        hr_version =
        {
          filename = "__base__/graphics/entity/pump/hr-pump-south-liquid.png",
          width = 38,
          height = 45,
          scale = 0.5,
          line_length =8,
          frame_count =32,
          shift = util.by_pixel(0.500, -9.250)
        }
      },
      west =
      {
        filename = "__base__/graphics/entity/pump/pump-west-liquid.png",
        width = 18,
        height = 24,
        line_length =8,
        frame_count =32,
        shift = util.by_pixel(-6.000, -9.000),
        hr_version =
        {
          filename = "__base__/graphics/entity/pump/hr-pump-west-liquid.png",
          width = 35,
          height = 47,
          scale = 0.5,
          line_length =8,
          frame_count =32,
          shift = util.by_pixel(-6.500, -9.500)
        }
      }
    },

    glass_pictures =
    {
      north =
      {
        filename = "__base__/graphics/entity/pump/pump-north-glass.png",
        width = 32,
        height = 64,
        hr_version =
        {
          filename = "__base__/graphics/entity/pump/hr-pump-north-glass.png",
          width = 64,
          height = 128,
          scale = 0.5
        }
      },
      east =
      {
        filename = "__base__/graphics/entity/pump/pump-east-glass.png",
        width = 32,
        height = 32,
        shift = util.by_pixel(0.000, -16.000),
        hr_version =
        {
          filename = "__base__/graphics/entity/pump/hr-pump-east-glass.png",
          width = 128,
          height = 192,
          scale = 0.5
        }
      },
      south =
      {
        filename = "__base__/graphics/entity/pump/pump-south-glass.png",
        width = 32,
        height = 64,
        hr_version =
        {
          filename = "__base__/graphics/entity/pump/hr-pump-south-glass.png",
          width = 64,
          height = 128,
          scale = 0.5
        }
      },
      west =
      {
        filename = "__base__/graphics/entity/pump/pump-west-glass.png",
        width = 32,
        height = 96,
        shift = util.by_pixel(0.000, 15.000),
        hr_version =
        {
          filename = "__base__/graphics/entity/pump/hr-pump-west-glass.png",
          width = 192,
          height = 192,
          scale = 0.5,
          shift = util.by_pixel(-16.000, 0.000)
        }
      }
    },

    circuit_wire_connection_points = circuit_connector_definitions["pump"].points,
    circuit_connector_sprites = circuit_connector_definitions["pump"].sprites,
    circuit_wire_max_distance = default_circuit_wire_max_distance
  },
  {
    type = "assembling-machine",
    name = "oil-refinery",
    icon = "__base__/graphics/icons/oil-refinery.png",
    icon_size = 64, icon_mipmaps = 4,
    flags = {"placeable-neutral","player-creation"},
    minable = {mining_time = 0.2, result = "oil-refinery"},
    max_health = 350,
    corpse = "oil-refinery-remnants",
    dying_explosion = "oil-refinery-explosion",
    collision_box = {{-2.4, -2.4}, {2.4, 2.4}},
    selection_box = {{-2.5, -2.5}, {2.5, 2.5}},
    damaged_trigger_effect = hit_effects.entity(),
    drawing_box = {{-2.5, -2.8}, {2.5, 2.5}},
    module_specification =
    {
      module_slots = 3
    },
    scale_entity_info_icon = true,
    allowed_effects = {"consumption", "speed", "productivity", "pollution"},
    crafting_categories = {"oil-processing"},
    crafting_speed = 1,
    energy_source =
    {
      type = "electric",
      usage_priority = "secondary-input",
      emissions_per_minute = 6
    },
    energy_usage = "420kW",

    animation = make_4way_animation_from_spritesheet(
    {
      layers =
      {
        {
          filename = "__base__/graphics/entity/oil-refinery/oil-refinery.png",
          width = 337,
          height = 255,
          frame_count = 1,
          shift = {2.515625, 0.484375},
          hr_version =
          {
            filename = "__base__/graphics/entity/oil-refinery/hr-oil-refinery.png",
            width = 386,
            height = 430,
            frame_count = 1,
            shift = util.by_pixel(0, -7.5),
            scale = 0.5
          }
        },
        {
          filename = "__base__/graphics/entity/oil-refinery/oil-refinery-shadow.png",
          width = 337,
          height = 213,
          frame_count = 1,
          shift = util.by_pixel(82.5, 26.5),
          draw_as_shadow = true,
          hr_version =
          {
            filename = "__base__/graphics/entity/oil-refinery/hr-oil-refinery-shadow.png",
            width = 674,
            height = 426,
            frame_count = 1,
            shift = util.by_pixel(82.5, 26.5),
            draw_as_shadow = true,
            force_hr_shadow = true,
            scale = 0.5
          }
        }
      }
    }),

    working_visualisations =
    {
      {
        north_position = util.by_pixel(34, -65),
        east_position = util.by_pixel(-52, -61),
        south_position = util.by_pixel(-59, -82),
        west_position = util.by_pixel(57, -58),
        animation =
        {
          filename = "__base__/graphics/entity/oil-refinery/oil-refinery-fire.png",
          line_length = 10,
          width = 20,
          height = 40,
          frame_count = 60,
          animation_speed = 0.75,
          shift = util.by_pixel(0, -14),
          hr_version =
          {
            filename = "__base__/graphics/entity/oil-refinery/hr-oil-refinery-fire.png",
            line_length = 10,
            width = 40,
            height = 81,
            frame_count = 60,
            animation_speed = 0.75,
            scale = 0.5,
            shift = util.by_pixel(0, -14.25)
          }
        },
        light = {intensity = 0.4, size = 6, color = {r = 1.0, g = 1.0, b = 1.0}}
      }
    },
    vehicle_impact_sound = sounds.generic_impact,
    open_sound = sounds.machine_open,
    close_sound = sounds.machine_close,
    working_sound =
    {
      sound =
      {
        filename = "__base__/sound/oil-refinery.ogg"
      },
      --idle_sound = { filename = "__base__/sound/idle1.ogg", volume = 0.3 },
      fade_in_ticks = 4,
      fade_out_ticks = 20
    },
    fluid_boxes =
    {
      {
        production_type = "input",
        pipe_covers = pipecoverspictures(),
        base_area = 10,
        base_level = -1,
        pipe_connections = {{ type="input", position = {-1, 3} }}
      },
      {
        production_type = "input",
        pipe_covers = pipecoverspictures(),
        base_area = 10,
        base_level = -1,
        pipe_connections = {{ type="input", position = {1, 3} }}
      },
      {
        production_type = "output",
        pipe_covers = pipecoverspictures(),
        base_level = 1,
        pipe_connections = {{ position = {-2, -3} }}
      },
      {
        production_type = "output",
        pipe_covers = pipecoverspictures(),
        base_level = 1,
        pipe_connections = {{ position = {0, -3} }}
      },
      {
        production_type = "output",
        pipe_covers = pipecoverspictures(),
        base_level = 1,
        pipe_connections = {{ position = {2, -3} }}
      }
    },
    water_reflection =
    {
      pictures =
      {
        filename = "__base__/graphics/entity/oil-refinery/oil-refinery-reflection.png",
        priority = "extra-high",
        width = 40,
        height = 48,
        shift = util.by_pixel(5, 95),
        variation_count = 4,
        scale = 5,
      },
      rotate = false,
      orientation_to_variation = true
    }
  },

  {
    type = "electric-energy-interface",
    name = "electric-energy-interface",
    icons = { {icon = "__base__/graphics/icons/accumulator.png", tint = {r=1, g=0.8, b=1, a=1}} },
    icon_size = 64, icon_mipmaps = 4,
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 0.1, result = "electric-energy-interface"},
    max_health = 150,
    corpse = "medium-remnants",
    subgroup = "other",
    collision_box = {{-0.9, -0.9}, {0.9, 0.9}},
    selection_box = {{-1, -1}, {1, 1}},
    damaged_trigger_effect = hit_effects.entity(),
    drawing_box = {{-1, -1.5}, {1, 1}},
    gui_mode = "all",
    allow_copy_paste = true,
    energy_source =
    {
      type = "electric",
      buffer_capacity = "10GJ",
      usage_priority = "tertiary"
    },

    energy_production = "500GW",
    energy_usage = "0kW",
    -- also 'pictures' for 4-way sprite is available, or 'animation' resp. 'animations'
    picture = accumulator_picture( {r=1, g=0.8, b=1, a=1} ),
    open_sound = sounds.machine_open,
    close_sound = sounds.machine_close,
    vehicle_impact_sound = sounds.generic_impact
  },
  {
    type = "electric-energy-interface",
    name = "hidden-electric-energy-interface",
    icon = "__base__/graphics/icons/solar-panel.png",
    icon_size = 64, icon_mipmaps = 4,
    localised_name = {"item-name.solar-panel"},
    flags = {},
    max_health = 150,
    collision_box = {{0, 0}, {0, 0}},
    selection_box = {{-0, -0}, {0, 0}},
    selectable_in_game = false,
    energy_source =
    {
      type = "electric",
      buffer_capacity = "10GJ",
      usage_priority = "tertiary",
      input_flow_limit = "0kW",
      output_flow_limit = "500GW"
    },
    energy_production = "500GW",
    energy_usage = "0kW",
    picture =
    {
      filename = "__core__/graphics/empty.png",
      priority = "extra-high",
      width = 1,
      height = 1
    },
    order = "h-e-e-i"
  },
  {
    type = "reactor",
    name = "nuclear-reactor",
    icon  = "__base__/graphics/icons/nuclear-reactor.png",
    icon_size = 64, icon_mipmaps = 4,
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 0.5, result = "nuclear-reactor"},
    max_health = 500,
    corpse = "nuclear-reactor-remnants",
    dying_explosion = "nuclear-reactor-explosion",
    consumption = "40MW",
    neighbour_bonus = 1,
    energy_source =
    {
      type = "burner",
      fuel_category = "nuclear",
      effectivity = 1,
      fuel_inventory_size = 1,
      burnt_inventory_size = 1
    },
    collision_box = {{-2.2, -2.2}, {2.2, 2.2}},
    selection_box = {{-2.5, -2.5}, {2.5, 2.5}},
    damaged_trigger_effect = hit_effects.entity(),
    --the collision box of a reactor is increased by this on the sides where it connects to another reactor:
    --neighbour_collision_increase = 0.25,
    lower_layer_picture =
    {
      filename = "__base__/graphics/entity/nuclear-reactor/reactor-pipes.png",
      width = 156,
      height = 156,
      shift = util.by_pixel(-2, -4),
      hr_version =
      {
        filename = "__base__/graphics/entity/nuclear-reactor/hr-reactor-pipes.png",
        width = 320,
        height = 316,
        scale = 0.5,
        shift = util.by_pixel(-1, -5),
      }
    },
    heat_lower_layer_picture =
    {
      filename = "__base__/graphics/entity/nuclear-reactor/reactor-pipes-heated.png",
      width = 156,
      height = 156,
      shift = util.by_pixel(-3, -4),
      hr_version =
      {
        filename = "__base__/graphics/entity/nuclear-reactor/hr-reactor-pipes-heated.png",
        width = 320,
        height = 316,
        scale = 0.5,
        shift = util.by_pixel(-0.5, -4.5),
      }
    },

    picture =
    {
      layers =
      {
        {
          filename = "__base__/graphics/entity/nuclear-reactor/reactor.png",
          width = 154,
          height = 158,
          shift = util.by_pixel(-6, -6),
          hr_version =
          {
            filename = "__base__/graphics/entity/nuclear-reactor/hr-reactor.png",
            width = 302,
            height = 318,
            scale = 0.5,
            shift = util.by_pixel(-5, -7),
          }
        },
        {
          filename = "__base__/graphics/entity/nuclear-reactor/reactor-shadow.png",
          width = 263,
          height = 162,
          shift = { 1.625 , 0 },
          draw_as_shadow = true,
          hr_version =
          {
            filename = "__base__/graphics/entity/nuclear-reactor/hr-reactor-shadow.png",
            width = 525,
            height = 323,
            scale = 0.5,
            shift = { 1.625, 0 },
            draw_as_shadow = true
          }
        }
      }
    },

    working_light_picture =
    {
      filename = "__base__/graphics/entity/nuclear-reactor/reactor-lights-color.png",
      width = 160,
      height = 160,
      shift = { -0.03125, -0.1875 },
      blend_mode = "additive",
      hr_version =
      {
        filename = "__base__/graphics/entity/nuclear-reactor/hr-reactor-lights-color.png",
        width = 320,
        height = 320,
        scale = 0.5,
        shift = { -0.03125, -0.1875 },
        blend_mode = "additive"
      }
    },

    light = {intensity = 0.6, size = 9.9, shift = {0.0, 0.0}, color = {r = 0.0, g = 1.0, b = 0.0}},
    -- use_fuel_glow_color = false, -- should use glow color from fuel item prototype as light color and tint for working_light_picture
    -- default_fuel_glow_color = { 0, 1, 0, 1 } -- color used as working_light_picture tint for fuels that don't have glow color defined

    heat_buffer =
    {
      max_temperature = 1000,
      specific_heat = "10MJ",
      max_transfer = "10GW",
      minimum_glow_temperature = 350,
      connections =
      {
        {
          position = {-2, -2},
          direction = defines.direction.north
        },
        {
          position = {0, -2},
          direction = defines.direction.north
        },
        {
          position = {2, -2},
          direction = defines.direction.north
        },
        {
          position = {2, -2},
          direction = defines.direction.east
        },
        {
          position = {2, 0},
          direction = defines.direction.east
        },
        {
          position = {2, 2},
          direction = defines.direction.east
        },
        {
          position = {2, 2},
          direction = defines.direction.south
        },
        {
          position = {0, 2},
          direction = defines.direction.south
        },
        {
          position = {-2, 2},
          direction = defines.direction.south
        },
        {
          position = {-2, 2},
          direction = defines.direction.west
        },
        {
          position = {-2, 0},
          direction = defines.direction.west
        },
        {
          position = {-2, -2},
          direction = defines.direction.west
        }
      },

      heat_picture =
      {
        filename = "__base__/graphics/entity/nuclear-reactor/reactor-heated.png",
        width = 108,
        height = 128,
        shift = util.by_pixel(1, -7),
        hr_version =
        {
          filename = "__base__/graphics/entity/nuclear-reactor/hr-reactor-heated.png",
          width = 216,
          height = 256,
          scale = 0.5,
          shift = util.by_pixel(3, -6.5),
        }
      },
      heat_glow =
      {
        filename = "__base__/graphics/entity/nuclear-reactor/reactor-heat-glow.png",
        priority = "extra-high",
        width = 188,
        height = 190,
        tint = heat_glow_tint,
        shift = util.by_pixel(-2, -4)
      }
    },

    connection_patches_connected =
    {
      sheet =
      {
        filename = "__base__/graphics/entity/nuclear-reactor/reactor-connect-patches.png",
        width = 32,
        height = 32,
        variation_count = 12,
        hr_version =
        {
          filename = "__base__/graphics/entity/nuclear-reactor/hr-reactor-connect-patches.png",
          width = 64,
          height = 64,
          variation_count = 12,
          scale = 0.5
        }
      }
    },

    connection_patches_disconnected =
    {
      sheet =
      {
        filename = "__base__/graphics/entity/nuclear-reactor/reactor-connect-patches.png",
        width = 32,
        height = 32,
        variation_count = 12,
        y = 32,
        hr_version =
        {
          filename = "__base__/graphics/entity/nuclear-reactor/hr-reactor-connect-patches.png",
          width = 64,
          height = 64,
          variation_count = 12,
          y = 64,
          scale = 0.5
        }
      }
    },

    heat_connection_patches_connected =
    {
      sheet =
      {
        filename = "__base__/graphics/entity/nuclear-reactor/reactor-connect-patches-heated.png",
        width = 32,
        height = 32,
        variation_count = 12,
        hr_version =
        {
          filename = "__base__/graphics/entity/nuclear-reactor/hr-reactor-connect-patches-heated.png",
          width = 64,
          height = 64,
          variation_count = 12,
          scale = 0.5
        }
      }
    },

    heat_connection_patches_disconnected =
    {
      sheet =
      {
        filename = "__base__/graphics/entity/nuclear-reactor/reactor-connect-patches-heated.png",
        width = 32,
        height = 32,
        variation_count = 12,
        y = 32,
        hr_version =
        {
          filename = "__base__/graphics/entity/nuclear-reactor/hr-reactor-connect-patches-heated.png",
          width = 64,
          height = 64,
          variation_count = 12,
          y = 64,
          scale = 0.5
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
          filename = "__base__/sound/nuclear-reactor-1.ogg",
          volume = 0.55
        },
        {
          filename = "__base__/sound/nuclear-reactor-2.ogg",
          volume = 0.55
        }
      },
      --idle_sound = { filename = "__base__/sound/idle1.ogg", volume = 0.3 },
      max_sounds_per_type = 3,
      fade_in_ticks = 4,
      fade_out_ticks = 20
    },

    meltdown_action =
    {
      type = "direct",
      action_delivery =
      {
        type = "instant",
        target_effects =
        {
          {
            type = "create-entity",
            entity_name = "atomic-rocket"
          }
        }
      }
    }
  },
  {
    type = "assembling-machine",
    name = "centrifuge",
    icon = "__base__/graphics/icons/centrifuge.png",
    icon_size = 64, icon_mipmaps = 4,
    flags = {"placeable-neutral", "placeable-player", "player-creation"},
    minable = {mining_time = 0.1, result = "centrifuge"},
    max_health = 350,
    corpse = "centrifuge-remnants",
    dying_explosion = "centrifuge-explosion",
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
    drawing_box = {{-1.5, -2.2}, {1.5, 1.5}},

    always_draw_idle_animation = true,
    idle_animation =
    {
      layers =
      {
        -- Centrifuge A
        {
          filename = "__base__/graphics/entity/centrifuge/centrifuge-C.png",
          priority = "high",
          line_length = 8,
          width = 119,
          height = 107,
          frame_count = 64,
          shift = util.by_pixel(-0.5, -26.5),
          hr_version =
          {
            filename = "__base__/graphics/entity/centrifuge/hr-centrifuge-C.png",
            priority = "high",
            scale = 0.5,
            line_length = 8,
            width = 237,
            height = 214,
            frame_count = 64,
            shift = util.by_pixel(-0.25, -26.5)
          }
        },
        {
          filename = "__base__/graphics/entity/centrifuge/centrifuge-C-shadow.png",
          draw_as_shadow = true,
          priority = "high",
          line_length = 8,
          width = 132,
          height = 74,
          frame_count = 64,
          shift = util.by_pixel(20, -10),
          hr_version =
          {
            filename = "__base__/graphics/entity/centrifuge/hr-centrifuge-C-shadow.png",
            draw_as_shadow = true,
            priority = "high",
            scale = 0.5,
            line_length = 8,
            width = 279,
            height = 152,
            frame_count = 64,
            shift = util.by_pixel(16.75, -10)
          }
        },
        -- Centrifuge B
        {
          filename = "__base__/graphics/entity/centrifuge/centrifuge-B.png",
          priority = "high",
          line_length = 8,
          width = 78,
          height = 117,
          frame_count = 64,
          shift = util.by_pixel(23, 6.5),
          hr_version =
          {
            filename = "__base__/graphics/entity/centrifuge/hr-centrifuge-B.png",
            priority = "high",
            scale = 0.5,
            line_length = 8,
            width = 156,
            height = 234,
            frame_count = 64,
            shift = util.by_pixel(23, 6.5)
          }
        },
        {
          filename = "__base__/graphics/entity/centrifuge/centrifuge-B-shadow.png",
          draw_as_shadow = true,
          priority = "high",
          line_length = 8,
          width = 124,
          height = 74,
          frame_count = 64,
          shift = util.by_pixel(63, 16),
          hr_version =
          {
            filename = "__base__/graphics/entity/centrifuge/hr-centrifuge-B-shadow.png",
            draw_as_shadow = true,
            priority = "high",
            scale = 0.5,
            line_length = 8,
            width = 251,
            height = 149,
            frame_count = 64,
            shift = util.by_pixel(63.25, 15.25)
          }
        },
        -- Centrifuge A
        {
          filename = "__base__/graphics/entity/centrifuge/centrifuge-A.png",
          priority = "high",
          line_length = 8,
          width = 70,
          height = 123,
          frame_count = 64,
          shift = util.by_pixel(-26, 3.5),
          hr_version =
          {
            filename = "__base__/graphics/entity/centrifuge/hr-centrifuge-A.png",
            priority = "high",
            scale = 0.5,
            line_length = 8,
            width = 139,
            height = 246,
            frame_count = 64,
            shift = util.by_pixel(-26.25, 3.5)
          }
        },
        {
          filename = "__base__/graphics/entity/centrifuge/centrifuge-A-shadow.png",
          priority = "high",
          draw_as_shadow = true,
          line_length = 8,
          width = 108,
          height = 54,
          frame_count = 64,
          shift = util.by_pixel(6, 27),
          hr_version =
          {
            filename = "__base__/graphics/entity/centrifuge/hr-centrifuge-A-shadow.png",
            priority = "high",
            draw_as_shadow = true,
            scale = 0.5,
            line_length = 8,
            width = 230,
            height = 124,
            frame_count = 64,
            shift = util.by_pixel(8.5, 23.5)
          }
        }
      }
    },

    animation =
    {
      layers =
      {
        -- Centrifuge C
        {
          filename = "__base__/graphics/entity/centrifuge/centrifuge-C-light.png",
          priority = "high",
          blend_mode = "additive", -- centrifuge
          line_length = 8,
          width = 96,
          height = 104,
          frame_count = 64,
          shift = util.by_pixel(0, -27),

          hr_version =
          {
            filename = "__base__/graphics/entity/centrifuge/hr-centrifuge-C-light.png",
            priority = "high",
            scale = 0.5,
            blend_mode = "additive", -- centrifuge
            line_length = 8,
            width = 190,
            height = 207,
            frame_count = 64,
            shift = util.by_pixel(0, -27.25)
          }
        },
        -- Centrifuge B
        {
          filename = "__base__/graphics/entity/centrifuge/centrifuge-B-light.png",
          priority = "high",
          blend_mode = "additive", -- centrifuge
          line_length = 8,
          width = 65,
          height = 103,
          frame_count = 64,
          shift = util.by_pixel(16.5, 0.5),
          hr_version =
          {
            filename = "__base__/graphics/entity/centrifuge/hr-centrifuge-B-light.png",
            priority = "high",
            scale = 0.5,
            blend_mode = "additive", -- centrifuge
            line_length = 8,
            width = 131,
            height = 206,
            frame_count = 64,
            shift = util.by_pixel(16.75, 0.5)
          }
        },
        -- Centrifuge A
        {
          filename = "__base__/graphics/entity/centrifuge/centrifuge-A-light.png",
          priority = "high",
          blend_mode = "additive", -- centrifuge
          line_length = 8,
          width = 55,
          height = 98,
          frame_count = 64,
          shift = util.by_pixel(-23.5, -2),
          hr_version =
          {
            filename = "__base__/graphics/entity/centrifuge/hr-centrifuge-A-light.png",
            priority = "high",
            scale = 0.5,
            blend_mode = "additive", -- centrifuge
            line_length = 8,
            width = 108,
            height = 197,
            frame_count = 64,
            shift = util.by_pixel(-23.5, -1.75)
          }
        }
      }
    },

    working_visualisations =
    {
      {
        effect = "uranium-glow", -- changes alpha based on energy source light intensity
        light = {intensity = 0.6, size = 9.9, shift = {0.0, 0.0}, color = {r = 0.0, g = 1.0, b = 0.0}}
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
          filename = "__base__/sound/centrifuge-1.ogg",
          volume = 0.3
        },
        {
          filename = "__base__/sound/centrifuge-2.ogg",
          volume = 0.3
        },
        {
          filename = "__base__/sound/centrifuge-6.ogg",
          volume = 0.3
        },
      },
      fade_in_ticks = 4,
      fade_out_ticks = 20,
      --max_sounds_per_type = 3,
      --idle_sound = { filename = "__base__/sound/idle1.ogg", volume = 0.3 },
    },
    crafting_speed = 1,
    crafting_categories = {"centrifuging"},
    energy_source =
    {
      type = "electric",
      usage_priority = "secondary-input",
      emissions_per_minute = 4
    },
    energy_usage = "350kW",
    module_specification =
    {
      module_slots = 2
    },
    allowed_effects = {"consumption", "speed", "productivity", "pollution"},
    water_reflection =
    {
      pictures =
      {
        filename = "__base__/graphics/entity/centrifuge/centrifuge-reflection.png",
        priority = "extra-high",
        width = 28,
        height = 32,
        shift = util.by_pixel(0, 65),
        variation_count = 1,
        scale = 5,
      },
      rotate = false,
      orientation_to_variation = false
    }
  },
  {
    type = "boiler",
    name = "heat-exchanger",
    icon = "__base__/graphics/icons/heat-boiler.png",
    icon_size = 64, icon_mipmaps = 4,
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 0.1, result = "heat-exchanger"},
    max_health = 200,
    corpse = "heat-exchanger-remnants",
    dying_explosion = "heat-exchanger-explosion",
    vehicle_impact_sound = sounds.generic_impact,
    mode = "output-to-separate-pipe",
    resistances =
    {
      {
        type = "fire",
        percent = 90
      },
      {
        type = "explosion",
        percent = 30
      },
      {
        type = "impact",
        percent = 30
      }
    },
    collision_box = {{-1.29, -0.79}, {1.29, 0.79}},
    selection_box = {{-1.5, -1}, {1.5, 1}},
    damaged_trigger_effect = hit_effects.entity(),
    target_temperature = 500,
    fluid_box =
    {
      base_area = 1,
      height = 2,
      base_level = -1,
      pipe_covers = pipecoverspictures(),
      pipe_connections =
      {
        {type = "input-output", position = {-2, 0.5}},
        {type = "input-output", position = {2, 0.5}}
      },
      production_type = "input-output",
      filter = "water"
    },
    output_fluid_box =
    {
      base_area = 1,
      height = 2,
      base_level = 1,
      pipe_covers = pipecoverspictures(),
      pipe_connections =
      {
        {type = "output", position = {0, -1.5}}
      },
      production_type = "output",
      filter = "steam"
    },
    energy_consumption = "10MW",
    energy_source =
    {
      type = "heat",
      max_temperature = 1000,
      specific_heat = "1MJ",
      max_transfer = "2GW",
      min_working_temperature = 500,
      minimum_glow_temperature = 350,
      connections =
      {
        {
          position = {0, 0.5},
          direction = defines.direction.south
        }
      },
      pipe_covers =
        make_4way_animation_from_spritesheet(
        {
          filename = "__base__/graphics/entity/heat-exchanger/heatex-endings.png",
          width = 32,
          height = 32,
          direction_count = 4,
          hr_version =
          {
            filename = "__base__/graphics/entity/heat-exchanger/hr-heatex-endings.png",
            width = 64,
            height = 64,
            direction_count = 4,
            scale = 0.5
          }
        }),
      heat_pipe_covers =
        make_4way_animation_from_spritesheet(
        {
          filename = "__base__/graphics/entity/heat-exchanger/heatex-endings-heated.png",
          width = 32,
          height = 32,
          direction_count = 4,
          hr_version =
          {
            filename = "__base__/graphics/entity/heat-exchanger/hr-heatex-endings-heated.png",
            width = 64,
            height = 64,
            direction_count = 4,
            scale = 0.5
          }
        }),
      heat_picture =
      {
        north =
        {
          filename = "__base__/graphics/entity/heat-exchanger/heatex-N-heated.png",
          priority = "extra-high",
          width = 24,
          height = 48,
          shift = util.by_pixel(-1, 8),
          hr_version =
          {
            filename = "__base__/graphics/entity/heat-exchanger/hr-heatex-N-heated.png",
            priority = "extra-high",
            width = 44,
            height = 96,
            shift = util.by_pixel(-0.5, 8.5),
            scale = 0.5
          }
        },
        east =
        {
          filename = "__base__/graphics/entity/heat-exchanger/heatex-E-heated.png",
          priority = "extra-high",
          width = 40,
          height = 40,
          shift = util.by_pixel(-21, -13),
          hr_version =
          {
            filename = "__base__/graphics/entity/heat-exchanger/hr-heatex-E-heated.png",
            priority = "extra-high",
            width = 80,
            height = 80,
            shift = util.by_pixel(-21, -13),
            scale = 0.5
          }
        },
        south =
        {
          filename = "__base__/graphics/entity/heat-exchanger/heatex-S-heated.png",
          priority = "extra-high",
          width = 16,
          height = 20,
          shift = util.by_pixel(-1, -30),
          hr_version =
          {
            filename = "__base__/graphics/entity/heat-exchanger/hr-heatex-S-heated.png",
            priority = "extra-high",
            width = 28,
            height = 40,
            shift = util.by_pixel(-1, -30),
            scale = 0.5
          }
        },
        west =
        {
          filename = "__base__/graphics/entity/heat-exchanger/heatex-W-heated.png",
          priority = "extra-high",
          width = 32,
          height = 40,
          shift = util.by_pixel(23, -13),
          hr_version =
          {
            filename = "__base__/graphics/entity/heat-exchanger/hr-heatex-W-heated.png",
            priority = "extra-high",
            width = 64,
            height = 76,
            shift = util.by_pixel(23, -13),
            scale = 0.5
          }
        },
      },
      heat_glow =
      {
        north =
        {
          filename = "__base__/graphics/entity/heat-exchanger/heatex-N-glow.png",
          priority = "extra-high",
          width = 38,
          height = 70,
          tint = heat_glow_tint,
          shift = util.by_pixel(0, 8)
        },
        east =
        {
          filename = "__base__/graphics/entity/heat-exchanger/heatex-E-glow.png",
          priority = "extra-high",
          width = 60,
          height = 62,
          shift = util.by_pixel(-22, -12)
        },
        south =
        {
          filename = "__base__/graphics/entity/heat-exchanger/heatex-S-glow.png",
          priority = "extra-high",
          width = 38,
          height = 40,
          tint = heat_glow_tint,
          shift = util.by_pixel(0, -36)
        },
        west =
        {
          filename = "__base__/graphics/entity/heat-exchanger/heatex-W-glow.png",
          priority = "extra-high",
          width = 60,
          height = 64,
          shift = util.by_pixel(20, -12)
        },
      }
    },
    working_sound =
    {
      sound =
      {
        filename = "__base__/sound/heat-exchanger.ogg",
        volume = 0.65
      },
      --max_sounds_per_type = 3,
      audible_distance_modifier = 0.5,
      fade_in_ticks = 4,
      fade_out_ticks = 20,
    },
    open_sound = sounds.machine_open,
    close_sound = sounds.machine_close,

    structure =
    {
      north =
      {
        layers =
        {
          {
            filename = "__base__/graphics/entity/heat-exchanger/heatex-N-idle.png",
            priority = "extra-high",
            width = 131,
            height = 108,
            shift = util.by_pixel(-0.5, 4),
            hr_version =
        {
              filename = "__base__/graphics/entity/heat-exchanger/hr-heatex-N-idle.png",
              priority = "extra-high",
              width = 269,
              height = 221,
              shift = util.by_pixel(-1.25, 5.25),
              scale = 0.5
            }
          },
          {
            filename = "__base__/graphics/entity/boiler/boiler-N-shadow.png",
            priority = "extra-high",
            width = 137,
            height = 82,
            shift = util.by_pixel(20.5, 9),
            draw_as_shadow = true,
            hr_version =
        {
              filename = "__base__/graphics/entity/boiler/hr-boiler-N-shadow.png",
              priority = "extra-high",
              width = 274,
              height = 164,
              scale = 0.5,
              shift = util.by_pixel(20.5, 9),
              draw_as_shadow = true
            }
          }
        }
      },
      east =
      {
        layers =
        {
          {
            filename = "__base__/graphics/entity/heat-exchanger/heatex-E-idle.png",
            priority = "extra-high",
            width = 102,
            height = 147,
            shift = util.by_pixel(-2, -0.5),
            hr_version =
        {
              filename = "__base__/graphics/entity/heat-exchanger/hr-heatex-E-idle.png",
              priority = "extra-high",
              width = 211,
              height = 301,
              shift = util.by_pixel(-1.75, 1.25),
              scale = 0.5
            }
          },
          {
            filename = "__base__/graphics/entity/boiler/boiler-E-shadow.png",
            priority = "extra-high",
            width = 92,
            height = 97,
            shift = util.by_pixel(30, 9.5),
            draw_as_shadow = true,
            hr_version =
        {
              filename = "__base__/graphics/entity/boiler/hr-boiler-E-shadow.png",
              priority = "extra-high",
              width = 184,
              height = 194,
              scale = 0.5,
              shift = util.by_pixel(30, 9.5),
              draw_as_shadow = true
            }
          }
        }
      },
      south =
      {
        layers =
        {
          {
            filename = "__base__/graphics/entity/heat-exchanger/heatex-S-idle.png",
            priority = "extra-high",
            width = 128,
            height = 100,
            shift = util.by_pixel(3, 10),
            hr_version =
        {
              filename = "__base__/graphics/entity/heat-exchanger/hr-heatex-S-idle.png",
              priority = "extra-high",
              width = 260,
              height = 201,
              shift = util.by_pixel(4, 10.75),
              scale = 0.5
            }
          },
          {
            filename = "__base__/graphics/entity/boiler/boiler-S-shadow.png",
            priority = "extra-high",
            width = 156,
            height = 66,
            shift = util.by_pixel(30, 16),
            draw_as_shadow = true,
            hr_version =
        {
              filename = "__base__/graphics/entity/boiler/hr-boiler-S-shadow.png",
              priority = "extra-high",
              width = 311,
              height = 131,
              scale = 0.5,
              shift = util.by_pixel(29.75, 15.75),
              draw_as_shadow = true
            }
          }
        }
      },
      west =
      {
        layers =
        {
          {
            filename = "__base__/graphics/entity/heat-exchanger/heatex-W-idle.png",
            priority = "extra-high",
            width = 96,
            height = 132,
            shift = util.by_pixel(1, 5),
            hr_version =
        {
              filename = "__base__/graphics/entity/heat-exchanger/hr-heatex-W-idle.png",
              priority = "extra-high",
              width = 196,
              height = 273,
              shift = util.by_pixel(1.5, 7.75),
              scale = 0.5
            }
          },
          {
            filename = "__base__/graphics/entity/boiler/boiler-W-shadow.png",
            priority = "extra-high",
            width = 103,
            height = 109,
            shift = util.by_pixel(19.5, 6.5),
            draw_as_shadow = true,
            hr_version =
        {
              filename = "__base__/graphics/entity/boiler/hr-boiler-W-shadow.png",
              priority = "extra-high",
              width = 206,
              height = 218,
              scale = 0.5,
              shift = util.by_pixel(19.5, 6.5),
              draw_as_shadow = true
            }
          }
        }
      }
    },
    fire = {},
    fire_glow = {},
    burning_cooldown = 20,
    water_reflection = boiler_reflection()
  },
  {
    type = "generator",
    name = "steam-turbine",
    icon = "__base__/graphics/icons/steam-turbine.png",
    icon_size = 64, icon_mipmaps = 4,
    flags = {"placeable-neutral","player-creation"},
    minable = {mining_time = 0.3, result = "steam-turbine"},
    max_health = 300,
    corpse = "steam-turbine-remnants",
    dying_explosion = "steam-turbine-explosion",
    alert_icon_shift = util.by_pixel(0, -12),
    effectivity = 1,
    fluid_usage_per_tick = 1,
    maximum_temperature = 500,
    burns_fluid = false,
    resistances =
    {
      {
        type = "fire",
        percent = 70
      }
    },
    fast_replaceable_group = "steam-engine",
    collision_box = {{-1.25, -2.35}, {1.25, 2.35}},
    selection_box = {{-1.5, -2.5}, {1.5, 2.5}},
    damaged_trigger_effect = hit_effects.entity(),
    fluid_box =
    {
      base_area = 1,
      height = 2,
      base_level = -1,
      pipe_covers = pipecoverspictures(),
      pipe_connections =
      {
        { type = "input-output", position = {0, 3} },
        { type = "input-output", position = {0, -3} }
      },
      production_type = "input-output",
      filter = "steam",
      minimum_temperature = 100.0
    },
    energy_source =
    {
      type = "electric",
      usage_priority = "secondary-output"
    },
    horizontal_animation =
    {
      layers =
      {
        {
          filename = "__base__/graphics/entity/steam-turbine/steam-turbine-H.png",
          width = 160,
          height = 123,
          frame_count = 8,
          line_length = 4,
          shift = util.by_pixel(0, -2.5),
          hr_version =
          {
            filename = "__base__/graphics/entity/steam-turbine/hr-steam-turbine-H.png",
            width = 320,
            height = 245,
            frame_count = 8,
            line_length = 4,
            shift = util.by_pixel(0, -2.75),
            scale = 0.5
          }
        },
        {
          filename = "__base__/graphics/entity/steam-turbine/steam-turbine-H-shadow.png",
          width = 217,
          height = 74,
          repeat_count = 8,
          frame_count = 1,
          line_length = 1,
          draw_as_shadow = true,
          shift = util.by_pixel(28.75, 18),
          hr_version =
          {
            filename = "__base__/graphics/entity/steam-turbine/hr-steam-turbine-H-shadow.png",
            width = 435,
            height = 150,
            repeat_count = 8,
            frame_count = 1,
            line_length = 1,
            draw_as_shadow = true,
            shift = util.by_pixel(28.5, 18),
            scale = 0.5
          }
        }
      }
    },
    vertical_animation =
    {
     layers =
     {
        {
          filename = "__base__/graphics/entity/steam-turbine/steam-turbine-V.png",
          width = 108,
          height = 173,
          frame_count = 8,
          line_length = 4,
          shift = util.by_pixel(5, 6.5),
          hr_version =
          {
            filename = "__base__/graphics/entity/steam-turbine/hr-steam-turbine-V.png",
            width = 217,
            height = 347,
            frame_count = 8,
            line_length = 4,
            shift = util.by_pixel(4.75, 6.75),
            scale = 0.5
          }
        },
        {
          filename = "__base__/graphics/entity/steam-turbine/steam-turbine-V-shadow.png",
          width = 151,
          height = 131,
          repeat_count = 8,
          frame_count = 1,
          line_length = 1,
          draw_as_shadow = true,
          shift = util.by_pixel(39.5, 24.5),
          hr_version =
          {
            filename = "__base__/graphics/entity/steam-turbine/hr-steam-turbine-V-shadow.png",
            width = 302,
            height = 260,
            repeat_count = 8,
            frame_count = 1,
            line_length = 1,
            draw_as_shadow = true,
            shift = util.by_pixel(39.5, 24.5),
            scale = 0.5
          }
        }
      }
    },
    smoke =
    {
      {
        name = "turbine-smoke",
        north_position = {0.0, -1.0},
        east_position = {0.75, -0.75},
        frequency = 10 / 32,
        starting_vertical_speed = 0.08,
        slow_down_factor = 1,
        starting_frame_deviation = 60
      }
    },
    vehicle_impact_sound = sounds.generic_impact,
    open_sound = sounds.machine_open,
    close_sound = sounds.machine_close,
    working_sound =
    {
      sound =
      {
        filename = "__base__/sound/steam-turbine.ogg",
        volume = 0.67
      },
      match_speed_to_activity = true,
      audible_distance_modifier = 0.7,
      max_sounds_per_type = 3,
      fade_in_ticks = 4,
      fade_out_ticks = 20
    },
    min_perceived_performance = 0.25,
    performance_to_sound_speedup = 0.5,
    water_reflection =
    {
      pictures =
      {
        filename = "__base__/graphics/entity/steam-turbine/steam-turbine-reflection.png",
        priority = "extra-high",
        width = 40,
        height = 36,
        shift = util.by_pixel(0, 50),
        variation_count = 2,
        repeat_count = 2,
        scale = 5,
      },
      rotate = false,
      orientation_to_variation = true
    }
  },
  {
    type = "heat-pipe",
    name = "heat-pipe",
    icon = "__base__/graphics/icons/heat-pipe.png",
    icon_size = 64, icon_mipmaps = 4,
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 0.1, result = "heat-pipe"},
    max_health = 200,
    corpse = "heat-pipe-remnants",
    dying_explosion = "heat-pipe-explosion",
    random_corpse_variation = true,
    working_sound =
    {
      sound =
      {
        {
          filename = "__base__/sound/heat-pipe.ogg",
          volume = 0.4
        }
      },
      match_volume_to_activity = true,
      max_sounds_per_type = 3,
      fade_in_ticks = 4,
      fade_out_ticks = 20,
    },
    vehicle_impact_sound = sounds.generic_impact,
    resistances =
    {
      {
        type = "fire",
        percent = 90
      },
      {
        type = "explosion",
        percent = 30
      },
      {
        type = "impact",
        percent = 30
      }
    },
    collision_box = {{-0.3, -0.3}, {0.3, 0.3}},
    selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
    damaged_trigger_effect = hit_effects.entity(),
    heat_buffer =
    {
      max_temperature = 1000,
      specific_heat = "1MJ",
      max_transfer = "1GW",
      minimum_glow_temperature = 350,
      connections =
      {
        {
          position = {0, 0},
          direction = defines.direction.north
        },
        {
          position = {0, 0},
          direction = defines.direction.east
        },
        {
          position = {0, 0},
          direction = defines.direction.south
        },
        {
          position = {0, 0},
          direction = defines.direction.west
        }
      },
      heat_glow =
      {
        filename = "__base__/graphics/entity/heat-pipe/heated-glow.png",
        priority = "extra-high",
        width = 55,
        height = 55,
        tint = heat_glow_tint
      }
    },

    connection_sprites = make_heat_pipe_pictures("__base__/graphics/entity/heat-pipe/", "heat-pipe",
      {
        single = { name = "straight-vertical-single", ommit_number = true },
        straight_vertical = { variations = 6 },
        straight_horizontal = { variations = 6 },
        corner_right_up = { name = "corner-up-right", variations = 6 },
        corner_left_up = { name = "corner-up-left", variations = 6 },
        corner_right_down = { name = "corner-down-right", variations = 6 },
        corner_left_down = { name = "corner-down-left", variations = 6 },
        t_up = {},
        t_down = {},
        t_right = {},
        t_left = {},
        cross = { name = "t" },
        ending_up = {},
        ending_down = {},
        ending_right = {},
        ending_left = {}
      }),

    heat_glow_sprites = make_heat_pipe_pictures("__base__/graphics/entity/heat-pipe/", "heated",
      {
        single = { empty = true },
        straight_vertical = { variations = 6 },
        straight_horizontal = { variations = 6 },
        corner_right_up = { name = "corner-up-right", variations = 6 },
        corner_left_up = { name = "corner-up-left", variations = 6 },
        corner_right_down = { name = "corner-down-right", variations = 6 },
        corner_left_down = { name = "corner-down-left", variations = 6 },
        t_up = {},
        t_down = {},
        t_right = {},
        t_left = {},
        cross = { name = "t" },
        ending_up = {},
        ending_down = {},
        ending_right = {},
        ending_left = {}
      })
  },
  {
    type = "simple-entity-with-force",
    name = "simple-entity-with-force",
    render_layer = "object",
    icon = "__base__/graphics/icons/steel-chest.png",
    icon_size = 64, icon_mipmaps = 4,
    flags = {"placeable-neutral", "player-creation"},
    order = "s-e-w-f",
    minable = {mining_time = 0.1, result = "simple-entity-with-force"},
    max_health = 100,
    corpse = "small-remnants",
    collision_box = {{-0.35, -0.35}, {0.35, 0.35}},
    selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
    picture =
    {
      filename = "__base__/graphics/entity/steel-chest/steel-chest.png",
      priority = "extra-high",
      width = 32,
      height = 40,
      shift = util.by_pixel(-11, 4.5),
    }
  },
  {
    type = "simple-entity-with-owner",
    name = "simple-entity-with-owner",
    render_layer = "object",
    icon = "__base__/graphics/icons/wooden-chest.png",
    icon_size = 64, icon_mipmaps = 4,
    flags = {"placeable-neutral", "player-creation"},
    order = "s-e-w-o",
    minable = {mining_time = 0.1, result = "simple-entity-with-owner"},
    max_health = 100,
    corpse = "small-remnants",
    collision_box = {{-0.35, -0.35}, {0.35, 0.35}},
    selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
    picture =
    {
      layers =
      {
        {
          filename = "__base__/graphics/entity/iron-chest/iron-chest.png",
          priority = "extra-high",
          width = 34,
          height = 38,
          shift = util.by_pixel(0, -0.5),
        },
        {
          filename = "__base__/graphics/entity/iron-chest/iron-chest.png",
          priority = "extra-high",
          width = 10,
          height = 33,
          x = 18,
          shift = util.by_pixel(0, -0.5),
          apply_runtime_tint = true
        }
      }
    }
  }
})

function get_leg_hit_the_ground_trigger()
  return
    {
      {
        type = "create-trivial-smoke",
        smoke_name = "smoke-building",
        repeat_count = 4,
        starting_frame_deviation = 5,
        starting_frame_speed_deviation = 5,
        offset_deviation = {{-0.2, -0.2}, {0.2, 0.2}},
        speed_from_center = 0.03
      }
    }
end

data:extend(
{
--[[  or instead of picture it is possible to define animations with variations
   random_animation_offset = false,
   animations =
   {
     {
       width = 152,
       height = 120,
       line_length = 5,
       frame_count = 60,
       animation_speed = 0.25,
       filename = "__base__/graphics/entity/smoke/smoke.png"
     },
     {
       width = 152,
       height = 120,
       line_length = 5,
       frame_count = 60,
       animation_speed = 0.875,
       filename = "__base__/graphics/entity/smoke/smoke.png"
     }
   }
]]--
  {
    type = "flame-thrower-explosion",
    name = "dummy-flame-thrower-explosion",
    flags = {"not-on-map"},
    -- It needs some animation
    animations =
    {
      {
        filename = "__base__/graphics/entity/blue-beam/blue-beam.png",
        priority = "extra-high",
        width = 187,
        height = 1,
        frame_count = 6
      }
    },
    light = {intensity = 0.2, size = 20},
    slow_down_factor = 1,
    smoke = "smoke-fast",
    smoke_count = 1,
    smoke_slow_down_factor = 0.95,
    damage = {amount = 0.25, type = "fire"}
  },
  {
    type = "arrow",
    name = "fake-selection-box-2x2",
    flags = {"placeable-off-grid", "not-on-map"},
    circle_picture =
    {
      filename = "__core__/graphics/arrows/fake-selection-box-2x2.png",
      priority = "low",
      width = 128,
      height = 128,
      scale = 0.5
    },
    arrow_picture =
    {
      filename = "__core__/graphics/empty.png",
      priority = "low",
      width = 1,
      height = 1
    }
  },
  {
    type = "artillery-flare",
    name = "artillery-flare",
    icon = "__base__/graphics/icons/artillery-targeting-remote.png",
    icon_size = 64, icon_mipmaps = 4,
    flags = {"placeable-off-grid", "not-on-map"},
    map_color = {r=1, g=0.5, b=0},
    life_time = 60 * 60,
    initial_height = 0,
    initial_vertical_speed = 0,
    initial_frame_speed = 1,
    shots_per_flare = 1,
    early_death_ticks = 3 * 60,
    pictures =
    {
      {
        filename = "__core__/graphics/shoot-cursor-red.png",
        priority = "low",
        width = 258,
        height = 183,
        frame_count = 1,
        scale = 1,
        flags = {"icon"}
      },
      --{
      --  filename = "__base__/graphics/entity/sparks/sparks-02.png",
      --  width = 36,
      --  height = 32,
      --  frame_count = 19,
      --  line_length = 19,
      --  shift = {0.03125, 0.125},
      --  tint = { r = 1.0, g = 0.9, b = 0.0, a = 1.0 },
      --  animation_speed = 0.3,
      --}
    }
  },
  {
    type = "unit",
    name = "compilatron",
    icon = "__base__/graphics/icons/compilatron.png",
    icon_size = 64, icon_mipmaps = 4,
    flags = {"placeable-player", "placeable-enemy", "placeable-off-grid", "not-repairable", "breaths-air"},
    map_color = {r = 0, g = 0.365, b = 0.58, a = 1},
    max_health = 100,
    order = "z-z-z",
    subgroup="enemies",
    has_belt_immunity = true,
    selectable_in_game = true,
    can_open_gates = true,
    healing_per_tick = 0,
    collision_box = {{-0.2, -0.2}, {0.2, 0.2}},
    selection_box = {{-0.8, -1.3}, {0.8, 0.5}},
    attack_parameters =
    {
      type = "projectile",
      damage_modifier = 1,
      range = 0.5,
      cooldown = 35,
      ammo_category = "melee",
      ammo_type =
      {
        category = "melee",
        target_type = "entity",
        action =
        {
          type = "direct",
          action_delivery =
          {
            type = "instant",
            target_effects =
            {
              type = "damage",
              damage =
              {
                amount = 10,
                type = "physical"
              }
            }
          }
        }
      },
      animation =
      {
        layers =
        {
          compilatron_animations.walk_shadow,
          compilatron_animations.walk
        }
      }
    },
    vision_distance = 30,
    movement_speed = 0.2,
    distance_per_frame = 0.1,
    pollution_to_join_attack = 1,
    distraction_cooldown = 300,
    min_pursue_time = 10 * 60,
    max_pursue_distance = 50,
    run_animation =
    {
      layers =
      {
        compilatron_animations.walk_shadow,
        compilatron_animations.walk
      }
    },
    water_reflection =
    {
      pictures =
      {
        filename = "__base__/graphics/entity/compilatron/compilatron-reflection.png",
        priority = "extra-high",
        width = 20,
        height = 20,
        shift = util.by_pixel(0, 67 * 0.5),
        scale = 5,
        variation_count = 1
      },
      rotate = false,
      orientation_to_variation = false
    }
  },
  {
    type = "speech-bubble",
    name = "compi-speech-bubble",
    style = "compilatron_speech_bubble",
    wrapper_flow_style = "compilatron_speech_bubble_wrapper",
    fade_in_out_ticks = 60 * 0.5,
    flags = {"not-on-map", "placeable-off-grid"}
  },
  {
    type = "spider-vehicle",
    name = "spidertron",
    collision_box = {{-1, -1}, {1, 1}},
    selection_box = {{-1, -1}, {1, 1}},
    icon = "__base__/graphics/icons/spidertron.png",
    mined_sound = {filename = "__core__/sound/deconstruct-large.ogg",volume = 0.8},
    open_sound = { filename = "__base__/sound/spidertron/spidertron-door-open.ogg", volume= 0.35 },
    close_sound = { filename = "__base__/sound/spidertron/spidertron-door-close.ogg", volume = 0.4 },
    sound_minimum_speed = 0.1,
    sound_scaling_ratio = 0.6,
    working_sound =
    {
      sound =
      {
        filename = "__base__/sound/spidertron/spidertron-vox.ogg",
        volume = 0.35
      },
      activate_sound =
      {
        filename = "__base__/sound/spidertron/spidertron-activate.ogg",
        volume = 0.5
      },
      deactivate_sound =
      {
        filename = "__base__/sound/spidertron/spidertron-deactivate.ogg",
        volume = 0.5
      },
      match_speed_to_activity = true,
    },
    icon_size = 64, icon_mipmaps = 4,
    weight = 1,
    braking_force = 1,
    friction_force = 1,
    flags = {"placeable-neutral", "player-creation", "placeable-off-grid"},
    collision_mask = {},
    minable = {mining_time = 1, result = "spidertron"},
    max_health = 3000,
    resistances =
    {
      {
        type = "fire",
        decrease = 15,
        percent = 60
      },
      {
        type = "physical",
        decrease = 15,
        percent = 60
      },
      {
        type = "impact",
        decrease = 50,
        percent = 80
      },
      {
        type = "explosion",
        decrease = 20,
        percent = 75
      },
      {
        type = "acid",
        decrease = 0,
        percent = 70
      },
      {
        type = "laser",
        decrease = 0,
        percent = 70
      },
      {
        type = "electric",
        decrease = 0,
        percent = 70
      }
    },
    minimap_representation =
    {
      filename = "__base__/graphics/entity/spidertron/spidertron-map.png",
      flags = {"icon"},
      size = {128, 128},
      scale = 0.5
    },
    corpse = "spidertron-remnants",
    dying_explosion = "spidertron-explosion",
    energy_per_hit_point = 1,
    guns = { "spidertron-rocket-launcher-1", "spidertron-rocket-launcher-2", "spidertron-rocket-launcher-3", "spidertron-rocket-launcher-4" },
    inventory_size = 80,
    equipment_grid = "spidertron-equipment-grid",
    height = 1.5,
    torso_rotation_speed = 0.005,
    chunk_exploration_radius = 3,
    selection_priority = 51,
    graphics_set = spidertron_animations.torso,
    energy_source =
    {
      type = "void",
    },
    movement_energy_consumption = "250kW",
    automatic_weapon_cycling = true,
    chain_shooting_cooldown_modifier = 0.5,
    spider_engine =
    {
      legs =
      {
        { -- 1
          leg = "spidertron-leg-1",
          mount_position = util.by_pixel(15, -22),--{0.5, -0.75},
          ground_position = {2.25, -2.5},
          blocking_legs = {2},
          leg_hit_the_ground_trigger = get_leg_hit_the_ground_trigger()
        },
        { -- 2
          leg = "spidertron-leg-2",
          mount_position = util.by_pixel(23, -10),--{0.75, -0.25},
          ground_position = {3, -1},
          blocking_legs = {1, 3},
          leg_hit_the_ground_trigger = get_leg_hit_the_ground_trigger()
        },
        { -- 3
          leg = "spidertron-leg-3",
          mount_position = util.by_pixel(25, 4),--{0.75, 0.25},
          ground_position = {3, 1},
          blocking_legs = {2, 4},
          leg_hit_the_ground_trigger = get_leg_hit_the_ground_trigger()
        },
        { -- 4
          leg = "spidertron-leg-4",
          mount_position = util.by_pixel(15, 17),--{0.5, 0.75},
          ground_position = {2.25, 2.5},
          blocking_legs = {3},
          leg_hit_the_ground_trigger = get_leg_hit_the_ground_trigger()
        },
        { -- 5
          leg = "spidertron-leg-5",
          mount_position = util.by_pixel(-15, -22),--{-0.5, -0.75},
          ground_position = {-2.25, -2.5},
          blocking_legs = {6, 1},
          leg_hit_the_ground_trigger = get_leg_hit_the_ground_trigger()
        },
        { -- 6
          leg = "spidertron-leg-6",
          mount_position = util.by_pixel(-23, -10),--{-0.75, -0.25},
          ground_position = {-3, -1},
          blocking_legs = {5, 7},
          leg_hit_the_ground_trigger = get_leg_hit_the_ground_trigger()
        },
        { -- 7
          leg = "spidertron-leg-7",
          mount_position = util.by_pixel(-25, 4),--{-0.75, 0.25},
          ground_position = {-3, 1},
          blocking_legs = {6, 8},
          leg_hit_the_ground_trigger = get_leg_hit_the_ground_trigger()
        },
        { -- 8
          leg = "spidertron-leg-8",
          mount_position = util.by_pixel(-15, 17),--{-0.5, 0.75},
          ground_position = {-2.25, 2.5},
          blocking_legs = {7},
          leg_hit_the_ground_trigger = get_leg_hit_the_ground_trigger()
        }
      },
      military_target = "spidertron-military-target",
    }
  },
  make_spidertron_leg(1),
  make_spidertron_leg(2),
  make_spidertron_leg(3),
  make_spidertron_leg(4),
  make_spidertron_leg(5),
  make_spidertron_leg(6),
  make_spidertron_leg(7),
  make_spidertron_leg(8),
  {
    type = "simple-entity-with-force",
    name = "spidertron-military-target",
    icon = "__base__/graphics/icons/steel-chest.png",
    collision_mask = {},
    icon_size = 64, icon_mipmaps = 4,
    max_health = 3000,
    corpse = "small-remnants",
    collision_box = {{-1, -1}, {1, 1}},
    selection_box = {{-1, -1}, {1, 1}},
    picture =
    {
      filename = "__base__/graphics/entity/steel-chest/steel-chest.png",
      priority = "extra-high",
      width = 32,
      height = 40,
      shift = util.by_pixel(-11, 4.5),
    }
  },
}
)

local red_chest = util.table.deepcopy(data.raw["container"]["steel-chest"])
red_chest.minable = nil
red_chest.name = "red-chest"
red_chest.order = "r-e-d"
local red_chest_reference = data.raw["logistic-container"]["logistic-chest-passive-provider"]
red_chest.icon = util.table.deepcopy(red_chest_reference.icon)
red_chest.icon_size = red_chest_reference.icon_size
red_chest.icon_mipmaps = red_chest_reference.icon_mipmaps
red_chest.picture = util.table.deepcopy(red_chest_reference.animation)
data:extend({red_chest})

local blue_chest = util.table.deepcopy(data.raw["container"]["steel-chest"])
blue_chest.minable = nil
blue_chest.name = "blue-chest"
blue_chest.order = "b-l-u-e"
local blue_chest_reference = data.raw["logistic-container"]["logistic-chest-requester"]
blue_chest.icon = util.table.deepcopy(blue_chest_reference.icon)
blue_chest.icon_size = blue_chest_reference.icon_size
blue_chest.icon_mipmaps = blue_chest_reference.icon_mipmaps
blue_chest.picture = util.table.deepcopy(blue_chest_reference.animation)
data:extend({blue_chest})

local full_resistances = function()
  return {
    {
      type = "fire",
      percent = 100
    },
    {
      type = "impact",
      percent = 100
    },
    {
      type = "physical",
      percent = 100
    },
    {
      type = "explosion",
      percent = 100
    }
  }
end

local infinity_chest = util.table.deepcopy(data.raw["logistic-container"]["logistic-chest-storage"])
infinity_chest.type = "infinity-container"
infinity_chest.name = "infinity-chest"
infinity_chest.icon = "__base__/graphics/icons/infinity-chest.png"
infinity_chest.gui_mode = "admins" -- all, none, admins
infinity_chest.erase_contents_when_mined = true
infinity_chest.animation = nil
infinity_chest.animation_sound = nil
infinity_chest.picture =
{
  layers =
  {
    {
      filename = "__base__/graphics/entity/infinity-chest/infinity-chest.png",
      priority = "extra-high",
      width = 34,
      height = 42,
      shift = util.by_pixel(0, -3),
      hr_version =
      {
        filename = "__base__/graphics/entity/infinity-chest/hr-infinity-chest.png",
        priority = "extra-high",
        width = 68,
        height = 84,
        shift = util.by_pixel(0, -3),
        scale = 0.5,
      }
    },
    {
      filename = "__base__/graphics/entity/infinity-chest/infinity-chest-shadow.png",
      priority = "extra-high",
      width = 58,
      height = 24,
      shift = util.by_pixel(12, 6),
      draw_as_shadow = true,
      hr_version =
      {
        filename = "__base__/graphics/entity/infinity-chest/hr-infinity-chest-shadow.png",
        priority = "extra-high",
        width = 116,
        height = 48,
        shift = util.by_pixel(12, 6),
        draw_as_shadow = true,
        scale = 0.5,
      }
    }
  }
}
infinity_chest.logistic_mode = nil
infinity_chest.logistic_slots_count = 30
infinity_chest.minable = {mining_time = 0.1, result = "infinity-chest"}
infinity_chest.resistances = full_resistances()
data:extend({infinity_chest})

local infinity_pipe = util.table.deepcopy(data.raw["pipe"]["pipe"])
infinity_pipe.type = "infinity-pipe"
infinity_pipe.name = "infinity-pipe"
infinity_pipe.icon = nil
infinity_pipe.icons =
{{
  icon = "__base__/graphics/icons/pipe.png",
  tint = {r = 0.5, g = 0.5, b = 1}
}}
infinity_pipe.gui_mode = "admins" -- all, none, admins
infinity_pipe.minable = {mining_time = 0.1, result = "infinity-pipe"}
infinity_pipe.resistances = full_resistances()
for name, picture in pairs(infinity_pipe.pictures) do
  if name ~= "high_temperature_flow" and name ~= "middle_temperature_flow" and name ~= "low_temperature_flow" and name ~= "gas_flow" then
    picture.tint = {r = 0.5, g = 0.5, b = 1}
    if picture.hr_version then
      picture.hr_version.tint = {r = 0.5, g = 0.5, b = 1}
    end
  end
end
data:extend({infinity_pipe})

data:extend({
{
  name = "burner-generator",
  type = "burner-generator",
  icon = "__base__/graphics/icons/steam-engine.png",
  icon_size = 64, icon_mipmaps = 4,
  flags = {"placeable-neutral","player-creation"},
  max_health = 400,
  dying_explosion = "medium-explosion",
  corpse = "steam-engine-remnants",
  collision_box = {{-1.35, -2.35}, {1.35, 2.35}},
  selection_box = {{-1.5, -2.5}, {1.5, 2.5}},
  max_power_output = "1MW",
  minable = {mining_time = 1, result = "burner-generator"},
  animation =
  {
    north = util.table.deepcopy(data.raw.generator["steam-engine"].vertical_animation),
    east = util.table.deepcopy(data.raw.generator["steam-engine"].horizontal_animation),
    south = util.table.deepcopy(data.raw.generator["steam-engine"].vertical_animation),
    west = util.table.deepcopy(data.raw.generator["steam-engine"].horizontal_animation)
  },
  -- idle_animation can also be specified
  burner =
  {
    fuel_category = "chemical",
    effectivity = 0.5,
    fuel_inventory_size = 1,
    emissions_per_minute = 10,
    smoke =
    {
      {
        name = "smoke",
        north_position = {0.9, 0.0},
        east_position = {-2.0, -2.0},
        deviation = {0.1, 0.1},
        frequency = 9
      }
    }
  },
  energy_source =
  {
    type = "electric",
    usage_priority = "secondary-output"
  }
}})

data:extend(
{
  {
    type = "heat-interface",
    name = "heat-interface",
    icon = "__base__/graphics/icons/heat-interface.png",
    icon_size = 64, icon_mipmaps = 4,
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 0.1, result = "heat-interface"},
    max_health = 150,
    corpse = "small-remnants",
    collision_box = {{-0.4, -0.4}, {0.4, 0.4}},
    selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
    gui_mode = "admins", -- all, none, admins
    resistances = full_resistances(),
    heat_buffer =
    {
      max_temperature = 1000,
      specific_heat = "10MJ",
      max_transfer = "10GW",
      connections =
      {
        {
          position = {0, 0},
          direction = defines.direction.north
        },
        {
          position = {0, 0},
          direction = defines.direction.east
        },
        {
          position = {0, 0},
          direction = defines.direction.south
        },
        {
          position = {0, 0},
          direction = defines.direction.west
        }
      }
    },
    picture =
    {
      filename = "__base__/graphics/icons/heat-interface.png",
      height = 32,
      width = 32,
      x = 64,
      flags = {"no-crop"},
      hr_version = {
        filename = "__base__/graphics/icons/heat-interface.png",
        height = 64,
        width = 64,
        scale = 0.5,
        flags = {"no-crop"},
      }
    }
  }
}
)
