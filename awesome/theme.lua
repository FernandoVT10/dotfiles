local theme_assets = require("beautiful.theme_assets")
local xresources = require("beautiful.xresources")
local dpi = xresources.apply_dpi

local gfs = require("gears.filesystem")
local themes_path = gfs.get_themes_dir()

local gears = require("gears")

local theme = {}

local bg_color = "#030209"
local dark_bg_color = "#08070e"
local fg_color = "#B7B5E4";

theme.font          = "JetBrains Bold 8"

-- Default Settings

theme.bg_normal     = "#11111b"
theme.bg_focus      = theme.bg_normal
theme.bg_urgent     = theme.bg_normal
theme.bg_minimize   = theme.bg_normal
theme.bg_systray    = theme.bg_normal

theme.fg_normal     = "#cdd6f4"
theme.fg_focus      = "#89b4fa"
theme.fg_urgent     = theme.fg_normal
theme.fg_minimize   = theme.fg_normal

theme.useless_gap   = dpi(0)
theme.border_width  = dpi(0)
theme.border_normal = "#000"
theme.border_focus  = "#000"
theme.border_marked = "#000"

theme.wibar_height = 30

theme.taglist_spacing = 5
theme.taglist_font = "JetBrains Mono 8"

-- Custom Sytles
theme.clock_widget_bg = "#11111b"
theme.volume_widget_bg = "#181825"
theme.cpu_widget_bg = "#1e1e2e"
theme.memory_widget_bg = "#181825"

theme.wallpaper = "/home/fernando/Documents/Syncthing/Wallpapers/785576.png"

theme.icon_theme = os.getenv("HOME") .. "/.icons/Infinity-Dark-Icons/"

return theme
