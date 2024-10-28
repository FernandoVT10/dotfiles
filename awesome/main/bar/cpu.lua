local wibox = require("wibox")
local beautiful = require("beautiful")
local lain = require("lain")

local markup = lain.util.markup

local cpu = lain.widget.cpu({
  settings = function()
    widget:set_text(cpu_now.usage .. "%")
  end
})

local cpu_icon = wibox.widget {
  markup = markup.fontfg("JetBrainsMonoNL Bold 16", "#a6e3a1", "󰍛 "),
  widget = wibox.widget.textbox
}

local cpu_widget = wibox.container.background(
  wibox.container.margin(
    wibox.widget {
      cpu_icon,
      cpu.widget,
      layout = wibox.layout.align.horizontal
    }, 5, 5
  ),
  beautiful.cpu_widget_bg
)

return cpu_widget
