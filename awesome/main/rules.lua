local beautiful = require("beautiful")
local awful = require("awful")
local gears = require("gears")

-- client key bindings

local function toggleFullScreen(c)
  c.fullscreen = not c.fullscreen
  c:raise()
end

local function killFocusedClient(c) c:kill() end

local clientkeys = gears.table.join(
  awful.key({ MOD_KEY }, "f", toggleFullScreen, {
    description = "toggle fullscreen",
    group = "client"
  }),
  awful.key({ MOD_KEY, "Shift" }, "c", killFocusedClient, {
    description = "close",
    group = "client"
  })
)

-- client mouse bindings

local clientbuttons = gears.table.join(
  -- focus client
  awful.button({ }, 1, function (c)
    c:emit_signal("request::activate", "mouse_click", {raise = true})
  end),
  -- move client
  awful.button({ MOD_KEY }, 1, function (c)
    c:emit_signal("request::activate", "mouse_click", {raise = true})
    awful.mouse.client.move(c)
  end),
  -- resize client
  awful.button({ MOD_KEY }, 3, function (c)
    c:emit_signal("request::activate", "mouse_click", {raise = true})
    awful.mouse.client.resize(c)
  end)
)

awful.rules.rules = {
  {
    rule = { },
    properties = {
      border_width = beautiful.border_width,
      border_color = beautiful.border_normal,
      focus = awful.client.focus.filter,
      raise = true,
      keys = clientkeys,
      buttons = clientbuttons,
      screen = awful.screen.preferred,
      placement = awful.placement.no_overlap+awful.placement.no_offscreen,
      title_enabled = false
    }
  },
  {
    rule_any = {
      instance = {
        "DTA",  -- Firefox addon DownThemAll.
        "copyq",  -- Includes session name in class.
        "pinentry",
      },
      class = {
        "Arandr",
        "Blueman-manager",
        "Gpick",
        "Kruler",
        "MessageWin",  -- kalarm.
        "Sxiv",
        "Tor Browser", -- Needs a fixed window size to avoid fingerprinting by screen size.
        "Wpa_gui",
        "veromix",
        "xtightvncviewer"},

      -- Note that the name property shown in xprop might be set slightly after creation of the client
      -- and the name shown there might not match defined rules here.
      name = {
        "Event Tester",  -- xev.
      },
      role = {
        "AlarmWindow",  -- Thunderbird's calendar.
        "ConfigManager",  -- Thunderbird's about:config.
        "pop-up",       -- e.g. Google Chrome's (detached) Developer Tools.
      }
    },
    properties = { floating = true }
  },

  -- custom rules
  -- {
  --   rule = { class = "Brave-browser" },
  --   properties = {
  --     tag = awful.screen.focused().tags[2]
  --   }
  -- },
}
