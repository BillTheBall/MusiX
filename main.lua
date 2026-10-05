function love.load()
  INIT = require("SRC.init")

  init:load()
end

function love.update(dt)
  init:update(dt)
end

function love.draw()
  init:draw()
end
