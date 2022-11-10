local gears = require("gears")
local awful = require("awful")

local taglist_buttons = gears.table.join(
  awful.button({ }, 1, function(t) t:view_only() end),
  awful.button({ MOD_KEY }, 1, function(t)
    if client.focus then
      client.focus:move_to_tag(t)
    end
  end),
  awful.button({ }, 3, awful.tag.viewtoggle),
  awful.button({ MOD_KEY }, 3, function(t)
    if client.focus then
      client.focus:toggle_tag(t)
    end
  end),
  awful.button({ }, 4, function(t) awful.tag.viewnext(t.screen) end),
  awful.button({ }, 5, function(t) awful.tag.viewprev(t.screen) end)
)

local function get_tag_list_widget(s)
  awful.tag.new({ "", "  " }, s, awful.layout.suit.max.fullscreen)
  awful.tag.new({ "", "", "", "" }, s, awful.layout.suit.tile)

  local tagList = awful.widget.taglist {
    screen  = s,
    filter  = awful.widget.taglist.filter.all,
    buttons = taglist_buttons
  }

  return tagList;
end

return get_tag_list_widget
