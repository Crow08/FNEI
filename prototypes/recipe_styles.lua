data:extend({
  {
    type = "sprite",
    name = "fnei_time_icon",
    filename = "__core__/graphics/clock-icon.png",
    priority = "extra-high-no-scale",
    width = 32,
    height = 32,
    scale = 1,
  },
  {
    type = "sprite",
    name = "fnei_back_key",
    filename = "__FNEI__/graphics/back_32.png",
    priority = "extra-high-no-scale",
    width = 32,
    height = 32,
    scale = 1,
  },
  {
    type = "sprite",
    name = "fnei_settings_key",
    filename = "__FNEI__/graphics/settings_32.png",
    priority = "extra-high-no-scale",
    width = 32,
    height = 32,
    scale = 1,
  },
  {
    type = "sprite",
    name = "fnei_exit_key",
    filename = "__FNEI__/graphics/quit_32.png",
    priority = "extra-high-no-scale",
    width = 32,
    height = 32,
    scale = 1,
  },
  {
    type = "sprite",
    name = "fnei_left_key",
    filename = "__FNEI__/graphics/prev_32.png",
    priority = "extra-high-no-scale",
    width = 32,
    height = 32,
    scale = 1,
  },
  {
    type = "sprite",
    name = "fnei_right_key",
    filename = "__FNEI__/graphics/next_32.png",
    priority = "extra-high-no-scale",
    width = 32,
    height = 32,
    scale = 1,
  },
})

-------------------------Font style-----------------------

data.raw["gui-style"].default["fnei_red_recipe_title_label"] =
{
    type = "label_style",
    parent = "label_style",
    align = "center",
    font = "font-mb",
    scalable = false,
    height = 36,
    width = 348,
    font_color = {r=1, g=0.2537254, b=0.25980392}
}

data.raw["gui-style"].default["fnei_recipe_title_label"] =
{
    type = "label_style",
    parent = "label_style",
    align = "center",
    font = "font-mb",
    scalable = false,
    height = 36,
    width = 348,
    scale = 1,
    scalable = false,
}

data.raw["gui-style"].default["fnei_recipe_madein"] =
{
    type = "label_style",
    parent = "label_style",
    align = "center",
    scalable = false,
    height = 36,
    width = 190,
    scale = 1,
    scalable = false,
}

data.raw["gui-style"].default["fnei_recipe_technologies"] =
{
    type = "label_style",
    parent = "label_style",
    align = "center",
    scalable = false,
    height = 68,
    width = 190,
    scale = 1,
    scalable = false,
}
-------------------------flow_style--------------------------

data.raw["gui-style"].default["fnei_recipe_flow"] =
{
  type = "flow_style",
  minimal_width = 526,
  maximal_width = 526,
  minimal_height = 710,
  maximal_height = 710,
  scalable = false,
}

data.raw["gui-style"].default["fnei_arrow_flow"] =
{
  type = "flow_style",
    top_padding = 5,
    right_padding = 0,
    bottom_padding = 0,
    left_padding = 0,
    horizontal_spacing = 0,
    vertical_spacing = 0,
    resize_row_to_width = true,
    resize_to_row_height = true,
    max_on_row = 0,
}

data.raw["gui-style"].default["fnei_list_elements_flow"] =
{
  type = "flow_style",
  minimal_height = 38,
  maximal_height = 38,
}

data.raw["gui-style"].default["fnei_recipe_element"] =
{
    type = "label_style",
    parent = "label_style",
    align = "center",
    scalable = false,
    height = 36,
    scale = 1,
}

-------------------------frame_style--------------------------

data.raw["gui-style"].default["fnei_recipe_main_frame"] =
{
  type = "frame_style",
  parent = "fnei_default_frame",
  minimal_width = 520,
  maximal_width = 520,
  scalable = false,
}

data.raw["gui-style"].default["fnei_recipe_header_frame"] =
{
  type = "frame_style",
  parent = "fnei_default_frame",
  minimal_width = 508,
  maximal_width = 508,
  scalable = false,
}

data.raw["gui-style"].default["fnei_recipe_paging_frame"] =
{
  type = "frame_style",
  parent = "fnei_default_frame",
  left_padding = 7,
  minimal_width = 508,
  maximal_width = 508,
  scalable = false,
}

data.raw["gui-style"].default["fnei_recipe_ingr_frame"] =
{
  type = "frame_style",
  parent = "fnei_default_frame",
  left_padding = 3,
  scalable = false,
}

data.raw["gui-style"].default["fnei_recipe_res_frame"] =
{
  type = "frame_style",
  parent = "fnei_default_frame",
  left_padding = 3,
  scalable = false,
}

data.raw["gui-style"].default["fnei_recipe_list_ingr_frame"] =
{
  type = "frame_style",
  parent = "fnei_default_frame",
  left_padding = 3,
  scalable = false,
}

data.raw["gui-style"].default["fnei_recipe_list_res_frame"] =
{
  type = "frame_style",
  parent = "fnei_default_frame",
  left_padding = 3,
  scalable = false,
}

-------------------------table_style--------------------------

data.raw["gui-style"].default["fnei_recipe_main_table"] =
{
  type = "table_style",
  parent = "fnei_default_table",
  scalable = false,
}

data.raw["gui-style"].default["fnei_recipe_header_table"] =
{
  type = "table_style",
  parent = "fnei_default_table",
  horizontal_spacing = 1,
  scalable = false,
}

data.raw["gui-style"].default["fnei_recipe_paging_table"] =
{
  type = "table_style",
  parent = "fnei_default_table",
  scalable = false,
}

data.raw["gui-style"].default["fnei_recipe_type_lable"] =
{
    type = "label_style",
    parent = "label_style",
    align = "right",
    scalable = false,
    height = 36,
    width = 190,
    scale = 1,
    scalable = false,
}

data.raw["gui-style"].default["fnei_recipe_paging_label"] =
{
    type = "label_style",
    parent = "label_style",
    align = "left",
    scalable = false,
    height = 36,
    width = 190,
    scale = 1,
    scalable = false,
}

data.raw["gui-style"].default["fnei_prod_table"] =
{
  type = "table_style",
  parent = "fnei_default_table",
  scalable = false,
}

data.raw["gui-style"].default["fnei_recipe_list_elements"] =
{
  type = "table_style",
  parent = "table_style",
  vertical_spacing = 2,
  scalable = false,
}

----------------------scroll_pane_style-----------------------

data.raw["gui-style"].default["fnei_scroll_recipe_style"] =
{
  type = "scroll_pane_style",
  maximal_width = 240,
  minimal_width = 240,
  maximal_height = 330,
  scalable = false,
}

------------------------button_style-------------------------

data.raw["gui-style"].default["fnei_left_arrow_button_style"] = 
{
  type = "button_style",
  parent = "slot_button_style",
  height = 28,
  width = 28,
  scalable = false,
  clicked_graphical_set = {
    type = "monolith",
    monolith_image = {
      filename = "__FNEI__/graphics/prev_click_32.png",
      height = 32,
      priority = "extra-high-no-scale",
      width = 32,
    },
  },
  default_graphical_set = {
    type = "monolith",
    monolith_image = {
      filename = "__FNEI__/graphics/prev_32.png",
      height = 32,
      priority = "extra-high-no-scale",
      width = 32,
    },
  },
  hovered_graphical_set = {
    type = "monolith",
    monolith_image = {
      filename = "__FNEI__/graphics/prev_sel_32.png",
      height = 32,
      priority = "extra-high-no-scale",
      width = 32,
    },
  }
}

data.raw["gui-style"].default["fnei_right_arrow_button_style"] = 
{
  type = "button_style",
  parent = "slot_button_style",
  height = 28,
  width = 28,
  scalable = false,
  clicked_graphical_set = {
    type = "monolith",
    monolith_image = {
      filename = "__FNEI__/graphics/next_click_32.png",
      height = 32,
      priority = "extra-high-no-scale",
      width = 32,
    },
  },
  default_graphical_set = {
    type = "monolith",
    monolith_image = {
      filename = "__FNEI__/graphics/next_32.png",
      height = 32,
      priority = "extra-high-no-scale",
      width = 32,
    },
  },
  hovered_graphical_set = {
    type = "monolith",
    monolith_image = {
      filename = "__FNEI__/graphics/next_sel_32.png",
      height = 32,
      priority = "extra-high-no-scale",
      width = 32,
    },
  }
}

data.raw["gui-style"].default["fnei_red_tech_button_style"] = 
{
  type = "button_style",
  parent = "slot_button_style",
  height = 68,
  width = 68,

  clicked_graphical_set = {
    type = "monolith",
    bottom_monolith_border = 1,
    left_monolith_border = 1,
    right_monolith_border = 1,
    top_monolith_border = 1,
    monolith_image = {
      filename = "__core__/graphics/gui.png",
      height = 36,
      priority = "extra-high-no-scale",
      width = 36,
      x = 111,
      y = 36,
    },
  },
  default_graphical_set = {
    type = "monolith",
    bottom_monolith_border = 1,
    left_monolith_border = 1,
    right_monolith_border = 1,
    top_monolith_border = 1,
    monolith_image = {
      filename = "__core__/graphics/gui.png",
      height = 36,
      priority = "extra-high-no-scale",
      width = 36,
      x = 111,
      y = 36,
    },
  },
  hovered_graphical_set = {
    type = "monolith",
    bottom_monolith_border = 1,
    left_monolith_border = 1,
    right_monolith_border = 1,
    top_monolith_border = 1,
    monolith_image = {
      filename = "__core__/graphics/gui.png",
      height = 36,
      priority = "extra-high-no-scale",
      width = 36,
      x = 111,
      y = 36,
    },
  },
}

data.raw["gui-style"].default["fnei_yellow_tech_button_style"] = 
{
  type = "button_style",
  parent = "slot_button_style",
  height = 68,
  width = 68,

  clicked_graphical_set = {
    type = "monolith",
    bottom_monolith_border = 1,
    left_monolith_border = 1,
    right_monolith_border = 1,
    top_monolith_border = 1,
    monolith_image = {
      filename = "__core__/graphics/gui.png",
      height = 36,
      priority = "extra-high-no-scale",
      width = 36,
      x = 111,
      y = 72,
    },
  },
  default_graphical_set = {
    type = "monolith",
    bottom_monolith_border = 1,
    left_monolith_border = 1,
    right_monolith_border = 1,
    top_monolith_border = 1,
    monolith_image = {
      filename = "__core__/graphics/gui.png",
      height = 36,
      priority = "extra-high-no-scale",
      width = 36,
      x = 111,
      y = 72,
    },
  },
  hovered_graphical_set = {
    type = "monolith",
    bottom_monolith_border = 1,
    left_monolith_border = 1,
    right_monolith_border = 1,
    top_monolith_border = 1,
    monolith_image = {
      filename = "__core__/graphics/gui.png",
      height = 36,
      priority = "extra-high-no-scale",
      width = 36,
      x = 111,
      y = 72,
    },
  },
}

data.raw["gui-style"].default["fnei_green_tech_button_style"] = 
{
  type = "button_style",
  parent = "slot_button_style",
  height = 68,
  width = 68,

  clicked_graphical_set = {
    type = "monolith",
    bottom_monolith_border = 1,
    left_monolith_border = 1,
    right_monolith_border = 1,
    top_monolith_border = 1,
    monolith_image = {
      filename = "__core__/graphics/gui.png",
      height = 36,
      priority = "extra-high-no-scale",
      width = 36,
      x = 111,
      y = 108,
    },
  },
  default_graphical_set = {
    type = "monolith",
    bottom_monolith_border = 1,
    left_monolith_border = 1,
    right_monolith_border = 1,
    top_monolith_border = 1,
    monolith_image = {
      filename = "__core__/graphics/gui.png",
      height = 36,
      priority = "extra-high-no-scale",
      width = 36,
      x = 111,
      y = 108,
    },
  },
  hovered_graphical_set = {
    type = "monolith",
    bottom_monolith_border = 1,
    left_monolith_border = 1,
    right_monolith_border = 1,
    top_monolith_border = 1,
    monolith_image = {
      filename = "__core__/graphics/gui.png",
      height = 36,
      priority = "extra-high-no-scale",
      width = 36,
      x = 111,
      y = 108,
    },
  },
}