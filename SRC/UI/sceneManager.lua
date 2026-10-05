sceneManager = {}

suit = require 'LIB/suit'
flux = require 'LIB.flux.flux'

local SPLASH = require("SRC.UI.SPLASH.splashScreen")
function sceneManager:load()
  splash:load()
  suit.theme.color.normal = { bg = { 120 / 255, 200 / 255, 60 / 255 }, fg = { 1, 1, 1 } }
  suit.theme.color.hovered = { bg = { 120 / 255, 200 / 255, 60 / 255 }, fg = { 1, 1, 1 } }
  suit.theme.color.active = { bg = { 120 / 255, 200 / 255, 60 / 255 }, fg = { 1, 1, 1 } }
  suit.theme.color.shadows = { bg = { 80 / 255, 160 / 255, 20 / 255 }, fg = { 1, 1, 1 } }
end

function sceneManager:update(dt)
  splash:update(dt)
end

function sceneManager:draw()
  if Scene == 0 then
    splash:draw()
  end


  if Scene == 1 then
    love.graphics.setBackgroundColor(0 / 255, 0 / 255, 0 / 255)
  end
end
