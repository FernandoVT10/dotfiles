local wibox = require("wibox")
local beautiful = require("beautiful")
local markup = require("lain.util.markup")

local clock_icon = wibox.widget {
  markup = markup.fg.color("#a6adc8", " "),
  widget = wibox.widget.textbox
}

local clock_text = wibox.widget.textclock("%I:%M:%S", 1)

local clock_widget = wibox.container.background(
  wibox.container.margin(
    wibox.widget {
      clock_icon,
      clock_text,
      layout = wibox.layout.align.horizontal
    }, 5, 10
  ),
  beautiful.clock_widget_bg
)

return clock_widget
