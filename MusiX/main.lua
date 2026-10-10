love.frame = 0

function love.load()
  love.profiler = require('profile')
  love.profiler.start()
  INIT = require("SRC.init")
  init:load()
end

function love.update(dt)
  init:update(dt)
  love.frame = love.frame + 1
  if love.frame % 100 == 0 then
    love.report = love.profiler.report(35)
    print(love.report or "Please wait...")
    love.profiler.reset()
  end
end

function love.draw()
  init:draw()
end
