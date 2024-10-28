local wibox = require("wibox")
local beautiful = require("beautiful")
local lain = require("lain")

local markup = lain.util.markup

local memory = lain.widget.mem({
  settings = function()
    widget:set_text(mem_now.used .. " MiB")
  end
})

local memory_icon = wibox.widget {
  markup = markup.fontfg("JetBrainsMonoNL Bold 12", "#f9e2af", "  "),
  widget = wibox.widget.textbox
}

local memory_widget = wibox.container.background(
  wibox.container.margin(
    wibox.widget {
      memory_icon,
      memory.widget,
      layout = wibox.layout.align.horizontal
    }, 5, 5
  ),
  beautiful.memory_widget_bg
)

return memory_widget
