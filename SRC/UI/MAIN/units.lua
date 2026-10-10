units = {}

function units:load()

end

function units:update(dt)
  unitText1 = {
    "Unit 1",
    "Learning Notes"
  }
  suit.Button("duolingo", unitText1, Width * 0.04, Height * 0.05, Width * 0.92, Height * 0.15)

  --suit.Label("Settings Menu", { align = "left" }, 50, 20, 150, 30)
end

function units:draw()
  love.graphics.setColor(0, 0, 0)
  love.graphics.rectangle("line", Width - Width, Height - 80, Width, Height * 0.2)

  love.graphics.setColor(1, 1, 1)
  suit.draw()
end
