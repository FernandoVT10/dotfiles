local awful = require("awful")
local wibox = require("wibox")
local beautiful = require("beautiful")
local separators = require("lain.util.separators")

local separator = separators.arrow_left


local function set_bar(s)
  local wibar = awful.wibar({ position = "top", screen = s })

  local tag_list_widget = require("main.bar.tagList")

  local clock_widget = require("main.bar.clock")
  local volume_widget = require("main.bar.volume")
  local cpu_widget = require("main.bar.cpu")
  local memory_widget = require("main.bar.memory")

  local systray_widget = wibox.widget.systray()
  systray_widget:set_base_size(20)

  wibar:setup {
    layout = wibox.layout.align.horizontal,
    {
      tag_list_widget(s),
      left = 5,
      widget = wibox.container.margin
    },
    nil,
    {
      layout = wibox.layout.fixed.horizontal,
      {
        systray_widget,
        top = 5,
        right = 5,
        widget = wibox.container.margin
      },

      separator(beautiful.bg_normal, beautiful.memory_widget_bg),
      memory_widget,

      separator(beautiful.memory_widget_bg, beautiful.cpu_widget_bg),
      cpu_widget,

      separator(beautiful.cpu_widget_bg, beautiful.volume_widget_bg),
      volume_widget,

      separator(beautiful.volume_widget_bg, beautiful.clock_widget_bg),
      clock_widget
    },
  }
end

return set_bar
