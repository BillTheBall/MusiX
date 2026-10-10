sceneManager = {}

suit = require 'LIB/suit'
flux = require 'LIB.flux.flux'
Heading1 = love.graphics.newFont("CONTENT/EXTRA/Sourcerer-Regular.ttf", 40)
Heading2 = love.graphics.newFont("CONTENT/EXTRA/Sourcerer-Regular.ttf", 28)
Heading3 = love.graphics.newFont("CONTENT/EXTRA/Sourcerer-Regular.ttf", 24)
Normal = love.graphics.newFont("CONTENT/EXTRA/Sourcerer-Regular.ttf", 20)
SubText = love.graphics.newFont("CONTENT/EXTRA/Sourcerer-Regular.ttf", 14)
love.graphics.setFont(Heading1)

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
