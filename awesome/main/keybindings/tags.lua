local awful = require("awful")
local gears = require("gears")

local function focusTagByIndex(index)
  local screen = awful.screen.focused()
  local tag = screen.tags[index]
  if tag then
    tag:view_only()
  end
end

local function toggleTagByIndex(index)
  local screen = awful.screen.focused()
  local tag = screen.tags[index]
  if tag then
    awful.tag.viewtoggle(tag)
  end
end

local function moveClientToTagByIndex(index)
  if client.focus then
    local tag = client.focus.screen.tags[index]
    if tag then
      client.focus:move_to_tag(tag)
    end
  end
end

local keys = {}

for i = 1, 6 do
  keys = gears.table.join(keys,
    -- View tag only.
    awful.key(
      { MOD_KEY },
      "#" .. i + 9,
      function () focusTagByIndex(i) end,
      {
        description = "view tag #"..i,
        group = "tag"
      }
    ),
    -- Toggle tag display.
    awful.key(
      { MOD_KEY, "Control" },
      "#" .. i + 9,
      function () toggleTagByIndex(i) end,
      {
        description = "toggle tag #" .. i,
        group = "tag"
      }
    ),
    -- Move client to tag.
    awful.key(
      { MOD_KEY, "Shift" },
      "#" .. i + 9,
      function () moveClientToTagByIndex(i) end,
      {
        description = "move focused client to tag #"..i,
        group = "tag"
      }
    )
  )
end

return keys
