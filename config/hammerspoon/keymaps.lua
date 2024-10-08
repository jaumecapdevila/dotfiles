-- The hyperkey is mapped to caps lock
local hyper = { "cmd", "alt", "ctrl", "shift" }

------------------------------- APP LAUNCH/TOGGLE ------------------------------
local apps = {
  b = "Arc", -- Browser
  v = "Visual Studio Code", -- Code Editor
  z = "Zed", -- Secondary Code Editor
  f = "Finder", -- File Explorer
  g = "GitHub Desktop", -- Git Client
  n = "Bear", -- Notes Taking
  m = "Microsoft Outlook", -- Mail Client
  t = "Warp", -- Terminal
  ["1"] = "1Password", -- Password Manager
}

local LaunchOrToggle = function(key, app_name, app_filename)
  hs.hotkey.bind(hyper, key, function()
    local app = hs.application.find(app_name)
    print(app)
    -- Toggle - show
    local awin = nil
    if app then awin = app:mainWindow() end
    -- Toggle - hide
    if awin and app and app:isFrontmost() then
      app:hide()
    else
      -- Launch
      if app_filename then return hs.application.launchOrFocus(app_filename) end

      app = hs.application.find(app_name)

      hs.application.launchOrFocus(app_name)
      app.setFrontmost(app)
      app.activate(app)
    end
  end)
end

for key, app_name in pairs(apps) do
  LaunchOrToggle(key, app_name)
end
