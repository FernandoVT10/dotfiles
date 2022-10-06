local awful = require("awful")
local gears = require("gears")

local customBindings = gears.table.join(
  -- Standard program
  awful.key({ MOD_KEY }, "Return", function () awful.spawn(TERMINAL) end, {
    description = "open a terminal",
    group = "launcher"
  }),
  -- Rofi
  awful.key({ MOD_KEY }, "p", function() awful.util.spawn("rofi -show drun -theme \"apps-launcher\"") end, {
    description = "Show Rofi",
    group = "launcher"
  }),

  -- Volume
  awful.key({ }, "XF86AudioRaiseVolume", function () awful.util.spawn("amixer set Master 5%+") end),
  awful.key({ }, "XF86AudioLowerVolume", function () awful.util.spawn("amixer set Master 5%-") end)
)

return customBindings
