init = {}

local SCENEMANAGER = require("SRC.UI.sceneManager")
local GLOBALVARIABLES = require("SRC.GLOBAL.globalVariables")

function logData()
  loggedData = {
    username = "unknown",
    date = os.date("%Y-%m-%d"),
    time = os.date("%H:%M:%S"),
    level = 0,
    unit = 0
  }
  local fileContent = "return {\n"
  fileContent = fileContent .. "    username = '" .. loggedData.username .. "',\n"
  fileContent = fileContent .. "    date = '" .. loggedData.date .. "',\n"
  fileContent = fileContent .. "    time = '" .. loggedData.time .. "',\n"
  fileContent = fileContent .. "    level = " .. loggedData.level .. ",\n"
  fileContent = fileContent .. "    unit = " .. loggedData.unit .. ", \n"
  fileContent = fileContent .. "}"
  love.filesystem.write("log.txt", fileContent)
  print("All variables saved successfully!")
end

function loadlogData()
  if love.filesystem.getInfo("log.txt") then
    local chunk, err = love.filesystem.load("log.txt")

    if chunk then
      setfenv(chunk, {})
      local success, loggedData = pcall(chunk)

      if success and type(loggedData) == "table" then
        local username = loggedData.username
        local date     = loggedData.date
        local time     = loggedData.time
        local level    = loggedData.level
        local unit     = loggedData.unit

        print("Username: " .. username .. "Date:" .. date .. "Time:" .. time .. "Level" .. level .. "Unit" .. unit)
        return loggedData
      end
    end
  end

  print("Failed to load or file doesn't exist.")
  return nil
end

function init:load()
  logData()
  loadlogData()
  global:load()
  sceneManager:load()
  local success, message = love.filesystem.write("log.json", "Logs")
  if success then
    print('file created')
  else
    print('file not created: ' .. message)
  end
end

function init:update(dt)
  global:update(dt)
  sceneManager:update(dt)
end

function init:draw()
  sceneManager:draw()
end
