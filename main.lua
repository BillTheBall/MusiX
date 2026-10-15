love.frame = 0

function love.load()
  Width = 0
  Height = 0
  MouseX = 0
  MouseY = 0
  love.profiler = require('LIB/profiling/profile')
  love.profiler.start()
  INIT = require("SRC.init")
  init:load()
end

function love.update(dt)
  Width = love.graphics.getWidth()
  Height = love.graphics.getHeight()
  MouseX = love.mouse.getX()
  MouseY = love.mouse.getY()
  init:update(dt)
  love.frame = love.frame + 1
  if love.frame % 100 == 0 then
    love.report = love.profiler.report(35)
    --print(love.report or "Please wait...")
    love.profiler.reset()
  end
end

function love.draw()
  init:draw()
end
