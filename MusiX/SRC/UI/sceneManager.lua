sceneManager = {}

suit = require 'LIB/suit'
flux = require 'LIB.flux.flux'
Heading1 = love.graphics.newFont("CONTENT/EXTRA/Sourcerer-Regular.woff2", 40)
Heading2 = love.graphics.newFont("CONTENT/EXTRA/Sourcerer-Regular.woff2", 28)
Heading3 = love.graphics.newFont("CONTENT/EXTRA/Sourcerer-Regular.woff2", 24)
Body = love.graphics.newFont("CONTENT/EXTRA/Sourcerer-Regular.woff2", 20)
SubText = love.graphics.newFont("CONTENT/EXTRA/Sourcerer-Regular.woff2", 14)

local SPLASH = require("SRC.UI.SPLASH.splashScreen")
local UNITS = require("SRC.UI.MAIN.units")
function sceneManager:load()
  splash:load()
  units:load()
  suit.theme.color.normal = { bg = { 120 / 255, 200 / 255, 60 / 255 }, fg = { 1, 1, 1 } }
  suit.theme.color.hovered = { bg = { 120 / 255, 200 / 255, 60 / 255 }, fg = { 1, 1, 1 } }
  suit.theme.color.active = { bg = { 120 / 255, 200 / 255, 60 / 255 }, fg = { 1, 1, 1 } }
  suit.theme.color.shadows = { bg = { 80 / 255, 160 / 255, 20 / 255 }, fg = { 1, 1, 1 } }
end

function sceneManager:update(dt)
  if Scene == 0 then
    splash:update(dt)
  elseif Scene == 1 then
    units:update(dt)
  end
end

function sceneManager:draw()
  if Scene == 0 then
    splash:draw()
  elseif Scene == 1 then
    units:draw()
  end
end
