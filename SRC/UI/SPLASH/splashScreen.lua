splash = {}

local timer = 0
local text = {
  firstalpha = 1,
  alpha = 0,
  r = 186,
  g = 123,
  b = 215
}

local logo = love.graphics.newImage("CONTENT/PROGRAM/MusiXLogo.png")
function splash:load()
  timer = 1
  flux.to(text, 0.2, { firstalpha = 0 }):ease("linear"):delay(0.3)
  flux.to(text, 0.2, { r = 255 }):ease("linear"):delay(0.5)
  flux.to(text, 0.2, { g = 255 }):ease("linear"):delay(0.5)
  flux.to(text, 0.2, { b = 255 }):ease("linear"):delay(0.5)
  flux.to(text, 0.1, { alpha = 1 }):ease("linear"):delay(0.54)
end

function splash:update(dt)
  timer = timer - dt
  if timer < 0 then
    Scene = 1
  end
  flux.update(dt)
end

function splash:draw(dt)
  love.graphics.setBackgroundColor(text.r / 255, text.g / 255, text.b / 255)
  love.graphics.setColor(1, 1, 1, text.firstalpha)
  love.graphics.draw(logo, Width * 0.4 - 10, Height * 0.4)
  love.graphics.setColor(0, 0, 0, text.alpha)
  love.graphics.setFont(Heading1)
  love.graphics.print("MusiX", Width * 0.5 - 50, Height * 0.5 - 25, 0)
  love.graphics.setFont(Body)
  love.graphics.setColor(1, 1, 1)
end
