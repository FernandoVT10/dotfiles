pcall(require, "luarocks.loader")

local gears = require("gears")
local awful = require("awful")
local beautiful = require("beautiful")
local menubar = require("menubar")

require("awful.autofocus")

require("awful.hotkeys_popup.keys")

beautiful.init(gears.filesystem.get_configuration_dir() .. "/theme.lua")

MOD_KEY = "Mod4"
TERMINAL = "kitty"

-- Define the layouts that i'm going to use
awful.layout.layouts = {
    awful.layout.suit.tile,
    awful.layout.suit.floating,
    awful.layout.suit.spiral,
    awful.layout.suit.max.fullscreen,
}

menubar.utils.terminal = TERMINAL

local set_bar = require("main.bar")

awful.screen.connect_for_each_screen(function(s)
  set_bar(s)
end)

awful.spawn({"feh --bg-scale ~/Pictures/Wallpaper/Yuukari.png"})

require("main.keybindings")
require("main.rules")
require("main.signals")
