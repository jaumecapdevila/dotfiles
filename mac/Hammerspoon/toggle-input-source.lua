-- The hyperkey is mapped to caps lock
local hyper = { "cmd", "alt", "ctrl", "shift" }

local SPANISH_LAYOUT <const> = "Spanish"
local BRITISH_LAYOUT <const> = "British"

hs.hotkey.bind(hyper, 'i', function()
  local currenyLayout = hs.keycodes.currentLayout()
  local isChanged = false
  local nextLayout = currenyLayout == SPANISH_LAYOUT and BRITISH_LAYOUT or SPANISH_LAYOUT
  isChanged = hs.keycodes.setLayout(nextLayout)
  if isChanged == false then
    hs.alert.show("Error changing layout")
  end
end)
