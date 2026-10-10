global = {}

function global:load()
  loggedData = {
    username = "unknown",
    date = os.date("%Y-%m-%d"),
    time = os.date("%H:%M:%S"),
    level = 0,
    unit = 0
  }

  Scene = 0
end

function global:update(dt)
  Width = love.graphics.getWidth()
  Height = love.graphics.getHeight()
end
