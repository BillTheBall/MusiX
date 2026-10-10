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
  timer = 2
  flux.to(text, 0.2, { firstalpha = 0 }):ease("linear"):delay(0.6)
  flux.to(text, 0.2, { r = 255 }):ease("linear"):delay(0.8)
  flux.to(text, 0.2, { g = 255 }):ease("linear"):delay(0.8)
  flux.to(text, 0.2, { b = 255 }):ease("linear"):delay(0.8)
  flux.to(text, 0.1, { alpha = 1 }):ease("linear"):delay(0.84)
end

function splash:update(dt)
  timer = timer - dt
  if timer < 0 then
    Scene = 1
  end
  --suit.Button("Click Me", { align = "left" }, Width * 0.04, Height * 0.05, Width * 0.92, Height * 0.15)
  -- Placing a Label with custom options at x=50, y=20
  --suit.Label("Settings Menu", { align = "left" }, 50, 20, 150, 30)
  print(text.alpha)
  flux.update(dt)
end

function splash:draw(dt)
  love.graphics.setBackgroundColor(text.r / 255, text.g / 255, text.b / 255)
  --[[
  love.graphics.rectangle('fill', Width * 0, Height * 0.9, Width * 1, Height * 0.12)

  love.graphics.setColor(44 / 255, 51 / 255, 57 / 255)
  love.graphics.setLineWidth(3)
  love.graphics.rectangle("line", Width * -0.1, Height * 0.9, Width * 1.2, Height * 0.12)

  love.graphics.setColor(23 / 255, 30 / 255, 38 / 255)
  ]] --
  love.graphics.setColor(1, 1, 1, text.firstalpha)
  love.graphics.draw(logo, Width * 0.4 - 10, Height * 0.4)
  love.graphics.setColor(0, 0, 0, text.alpha)
  love.graphics.print("MusiX", Width * 0.5 - 50, Height * 0.5 - 25, 0)
  love.graphics.setColor(1, 1, 1)
  suit.draw()
end
