local watch = hs.screen.watcher.newWithActiveScreen(function ()
  local screens = hs.screen.allScreens()
  local prim = hs.screen.mainScreen()
  for index,screen in pairs(screens) do
    if screen:name() ~= prim:name() then
      screen:setBrightness(0)
    end
  end
end)

watch:start()
