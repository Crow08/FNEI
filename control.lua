if not fnei then fnei = {} end
if not fnei.rc then fnei.rc = {} end
if not fnei.mc then fnei.mc = {} end
if not fnei.gui then fnei.gui = {} end
if not fnei.main_gui then fnei.main_gui = {} end
if not fnei.recipe_gui then fnei.recipe_gui = {} end

function out(string)
  game.players["npo6ka"].print(string)
end

require "libs/utils"
require "libs/utils_style"
require "controls/main_control"
require "controls/recipe_control"

script.on_event(defines.events.on_tick, function(event)
  for _,player in pairs(game.players) do
    if player ~= nil and player.opened_gui_type ~= 0 and fnei.gui.is_gui_open(player) then
      fnei.gui.exit_from_gui(player)
      player.opened = nil
    end
  end
end)

script.on_event("pressed-fnei-gui-key", function(event)
  local player = game.players[event.player_index]
  fnei.main_key(player)
end)

script.on_event("pressed-fnei-back-key", function(event)
  local player = game.players[event.player_index]
  fnei.back_key(player)
end)

function open_tech(player, name, list)
  local tech = player.force.technologies[name]
  if tech then
    for _,tech in pairs(tech.prerequisites) do
      if tech.researched == false then
        list = open_tech(player, tech.name, list)
        tech.researched = true
        table.insert( list, tech.name )
      end
    end
  end
  return list
end

function reload_tech_tech(player, list)
  for i=1,#list do
    local tech = player.force.technologies[list[i]]
    if tech then
      tech.researched = false
    end
  end
end

function show_tech(player, name)
  if player.force.technologies[name] then
    local list = {}
    list = open_tech(player, name, list)
    player.force.current_research = name
    reload_tech_tech(player, list)
    fnei.gui.exit_from_gui(player)
    player.opened = 2
    player.force.current_research = nil
  end
end

script.on_event("pressed-fnei-gui2-key", function(event)
  local player = game.players[event.player_index]  

  if not global.fnei then
    global.fnei = {}
  end
  if not global.fnei[player.name] then
    global.fnei[player.name] = {}
  end
  if not global.fnei[player.name].is_massage then
    player.print({"fnei.warning-message-1"})
    player.print({"fnei.warning-message-2"})
    global.fnei[player.name].is_massage = true
  end
end)

script.on_event(defines.events.on_gui_click, function(event)
  local player = game.players[event.player_index]
  local element = event.element
  if element.name == "fnei_search_field" and event.button == defines.mouse_button_type.right then
    fnei.mc.clear_search_text(player)
  elseif element.name == "fnei_prev_main_page" then
    fnei.mc.main_gui_prev_page(player)
  elseif element.name == "fnei_next_main_page" then
    fnei.mc.main_gui_next_page(player)
  elseif element.name == "fnei_recipe_left_key" then
    fnei.rc.recipe_gui_prev(player)
  elseif element.name == "fnei_recipe_right_key" then
    fnei.rc.recipe_gui_next(player)
  elseif element.name == "fnei_recipe_back_key" then
    fnei.rc.back_key(player)
  elseif element.name == "fnei_recipe_exit_key" then
    fnei.rc.main_key(player)
  elseif element.name == "fnei_recipe_settings_key" then
    player.print("This function is not available in this version of the mod")
    player.print("The options window is under construction")
  elseif element.type == "sprite-button" then
    if element.name ~= nil then
      if string.match(element.name, "fnei%_item%_") or string.match(element.name, "fnei%_fluid%_") then
        local elem_name = ""
        if string.match(element.name, "fnei%_item%_") then 
          elem_name = {name = string.sub(element.name, 11), type = "item"}
        else
          elem_name = {name = string.sub(element.name, 12), type = "fluid"}
        end
        if event.button == defines.mouse_button_type.left then
          fnei.rc.element_left_click(player, elem_name)
        elseif event.button == defines.mouse_button_type.right then
          fnei.rc.element_right_click(player, elem_name)
        end
      elseif string.match(element.name, "fnei%_technology%_") then
        show_tech(player, string.sub(element.name, 17))
      end
    end
  end
end)

script.on_event(defines.events.on_gui_text_changed, function(event)
  local player = game.players[event.player_index]
  local element = event.element
  if element.name == "fnei_search_field" then
    fnei.mc.search_text_cheged(player)
  end
end)

function fnei.back_key(player)
  fnei.rc.back_key(player)
end

function fnei.main_key(player)
  fnei.rc.main_key(player)
end