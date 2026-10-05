function love.load()
  love.filesystem.setIdentity("MusiXLogs")
  INIT = require("SRC.init")

  init:load()
end

function love.update(dt)
  init:update(dt)
end

function love.draw()
  init:draw()
end
