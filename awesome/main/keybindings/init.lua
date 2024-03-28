local gears = require("gears")

local bindings = gears.table.join(
  require("main.keybindings.tags"),
  require("main.keybindings.general"),
  require("main.keybindings.custom")
)

root.keys(bindings)
