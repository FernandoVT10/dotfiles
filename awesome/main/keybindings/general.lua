local awful = require("awful")
local gears = require("gears")
local hotkeys_popup = require("awful.hotkeys_popup")

local function focusNextClientByIndex()
  awful.client.focus.byidx(1)
end

local function focusPreviousClientByIndex()
  awful.client.focus.byidx(-1)
end

local function focusNextScreen()
  awful.screen.focus_relative(1)
end

local function focusPreviousScreen()
  awful.screen.focus_relative(-1)
end

local generalBindings = gears.table.join(
  -- client manipulation
  awful.key({ MOD_KEY }, "j", focusNextClientByIndex, {
    description = "focus next by index",
    group = "client"
  }),
  awful.key({ MOD_KEY }, "k", focusPreviousClientByIndex, {
    description = "focus previous by index",
    group = "client"
  }),

  -- Layout manipulation
  awful.key({ MOD_KEY, "Shift" }, "j", function () awful.client.swap.byidx(  1) end, {
    description = "swap with next client by index",
    group = "client"
  }),
  awful.key({ MOD_KEY, "Shift" }, "k", function () awful.client.swap.byidx( -1) end, {
    description = "swap with previous client by index",
    group = "client"
  }),
  awful.key({ MOD_KEY, "Control" }, "j", function () awful.screen.focus_relative( 1) end, {
    description = "focus the next screen",
    group = "screen"
  }),
  awful.key({ MOD_KEY, "Control" }, "k", function () awful.screen.focus_relative(-1) end, {
    description = "focus the previous screen",
    group = "screen"
  }),
  awful.key({ MOD_KEY }, "Tab",
    function ()
      awful.client.focus.history.previous()
      if client.focus then
        client.focus:raise()
      end
    end,
    {
      description = "go back",
      group = "client"
    }
  ),
  awful.key({ MOD_KEY }, "l", function () awful.tag.incmwfact( 0.05) end, {
    description = "increase master width factor",
    group = "layout"
  }),
  awful.key({ MOD_KEY }, "h", function () awful.tag.incmwfact(-0.05) end, {
    description = "decrease master width factor",
    group = "layout"
  }),
  awful.key({ MOD_KEY, "Shift" }, "h", function () awful.tag.incnmaster( 1, nil, true) end, {
    description = "increase the number of master clients",
    group = "layout"
  }),
  awful.key({ MOD_KEY, "Shift" }, "l", function () awful.tag.incnmaster(-1, nil, true) end, {
    description = "decrease the number of master clients",
    group = "layout"
  }),
  awful.key({ MOD_KEY, "Control" }, "h", function () awful.tag.incncol( 1, nil, true) end, {
    description = "increase the number of columns",
    group = "layout"
  }),
  awful.key({ MOD_KEY, "Control" }, "l", function () awful.tag.incncol(-1, nil, true) end, {
    description = "decrease the number of columns",
    group = "layout"
  }),
  awful.key({ MOD_KEY }, "space", function () awful.layout.inc( 1) end, {
    description = "select next",
    group = "layout"
  }),
  awful.key({ MOD_KEY, "Shift" }, "space", function () awful.layout.inc(-1) end, {
    description = "select previous",
    group = "layout"
  }),
  awful.key({ MOD_KEY }, "o", function (c) c:move_to_screen() end, {
    description = "move to screen",
    group = "client"
  }),

  -- awesome keybindings
  awful.key({ MOD_KEY, "Control" }, "r", awesome.restart, {
    description = "reload awesome",
    group = "awesome"
  }),
  awful.key({ MOD_KEY, "Shift" }, "q", awesome.quit, {
    description = "quit awesome", group = "awesome"
  }),
  awful.key({ MOD_KEY }, "s", hotkeys_popup.show_help, {
    description = "show help",
    group = "awesome"
  }),

  -- screen manipulation
  awful.key({ MOD_KEY }, "n", focusNextScreen, {
    description = "focus the next screen",
    group = "screen"
  }),
  awful.key({ MOD_KEY }, "m", focusPreviousScreen, {
    description = "focus the previous screen",
    group = "screen"
  })
)

return generalBindings;
