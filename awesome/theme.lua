local xresources = require("beautiful.xresources")
local dpi = xresources.apply_dpi

local theme = {}

theme.font          = "JetBrainsMonoNL Bold 10"

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

theme.wibar_height = 35

theme.taglist_spacing = 5

-- Custom Sytles
theme.clock_widget_bg = "#11111b"
theme.volume_widget_bg = "#181825"
theme.cpu_widget_bg = "#1e1e2e"
theme.memory_widget_bg = "#181825"

theme.wallpaper = "/home/fernando/Pictures/Wallpaper"

theme.icon_theme = os.getenv("HOME") .. "/.icons/Infinity-Dark-Icons/"

return theme
