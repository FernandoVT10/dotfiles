local wibox = require("wibox")
local lain = require("lain")
local beautiful = require("beautiful")

local markup = lain.util.markup

local alsa = lain.widget.alsa({
  settings = function()
    widget:set_text(volume_now.level .. "%")
  end,
  timeout = 1
})

local volume_icon = wibox.widget {
  markup = markup.fontfg("JetBrains Mono 10", "#89b4fa", " "),
  widget = wibox.widget.textbox
}

local volume_widget = wibox.container.background(
  wibox.container.margin(
    wibox.widget {
      volume_icon,
      alsa.widget,
      layout = wibox.layout.align.horizontal
    }, 5, 5
  ),
  beautiful.volume_widget_bg
)

return volume_widget
