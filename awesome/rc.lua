pcall(require, "luarocks.loader")

local gears = require("gears")
local awful = require("awful")
local beautiful = require("beautiful")
local menubar = require("menubar")
local get_files_from_folder = require("main.getFilesFromFolder")

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

WALLPAPER_FOLDER = string.format("%s/Pictures/Wallpaper", os.getenv("HOME"))

local wallpaper_list = get_files_from_folder(WALLPAPER_FOLDER)
local wallpaper = wallpaper_list[math.random(0, #wallpaper_list)]

local function set_wallpaper(s)
  gears.wallpaper.maximized(wallpaper, s, false)
end

-- Re-set wallpaper when a screen's geometry changes (e.g. different resolution)
screen.connect_signal("property::geometry", set_wallpaper)

local set_bar = require("main.bar")

awful.screen.connect_for_each_screen(function(s)
  set_wallpaper(s)
  set_bar(s)
end)

require("main.keybindings")
require("main.rules")
require("main.signals")
