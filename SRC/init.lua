init = {}

local SCENEMANAGER = require("SRC.UI.sceneManager")
local GLOBALVARIABLES = require("SRC.GLOBAL.globalVariables")
function init:load()
  global:load()
  sceneManager:load()
end

function init:update(dt)
  global:update(dt)
  sceneManager:update(dt)
end

function init:draw()
  sceneManager:draw()
end
