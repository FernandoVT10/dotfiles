local awful = require("awful")
local gears = require("gears")

local get_files_from_folder = require("main.getFilesFromFolder")

-- Defined on the rc.lua
local wallpaper_list = get_files_from_folder(WALLPAPER_FOLDER)
local active_wallpaper = 0

local function changeWallpaper ()
  for s in screen do
    gears.wallpaper.maximized(wallpaper_list[active_wallpaper], s)
  end

  if active_wallpaper == #wallpaper_list then
    active_wallpaper = 0
  else
    active_wallpaper = active_wallpaper + 1
  end
end

local customBindings = gears.table.join(
  -- Standard program
  awful.key({ MOD_KEY }, "Return", function () awful.spawn(TERMINAL .. " tmux") end, {
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
  awful.key({ }, "XF86AudioLowerVolume", function () awful.util.spawn("amixer set Master 5%-") end),
  awful.key({ MOD_KEY }, "w", changeWallpaper, {
    description = "Change to the next wallpaper",
    group = "screen"
  })
)

return customBindings
