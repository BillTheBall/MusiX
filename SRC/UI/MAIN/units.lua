units = {}

local ui = love.graphics.newImage("CONTENT/PROGRAM/MENU/MusiXUINew.png")
function units:load()

end

unitText1 = {
  "Unit 1",
  "Learning Notes"
}
unitText2 = {
  "Unit 2",
  "Practicing Notes"
}
function units:update(dt)
  suit.Button("unit", unitText1, { 1, 0, 0 }, { align = "center", id = "1" }, Width * 0.056, Height * 0.209,
    Width * 0.413,
    Height * 0.302)
  suit.Button("unit", unitText2, { 0, 1, 0 }, { align = "center", id = "2" }, Width * 0.535, Height * 0.209,
    Width * 0.413,
    Height * 0.302)
  print("X: " .. MouseX / Width .. "\tY: " .. MouseY / Height)
  --suit.Label("Settings Menu", { align = "left" }, 50, 20, 150, 30)
end

function units:draw()
  love.graphics.draw(ui, 0, 0, 0, Width / 390, Height / 840)
  love.graphics.setColor(0, 0, 0)
  love.graphics.rectangle("line", Width - Width, Height - 80, Width, Height * 0.2)

  love.graphics.setColor(1, 1, 1)
  suit.draw()
end
