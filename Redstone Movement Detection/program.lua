os.execute("clear")
print("Starting...")

-- Libraries
local component = require("component")
local test
local sides = require("sides")
local event = require("event")
print("Fully loaded!")

-- Main Program
while true do
  local id, _, x, y, z, entity = event.pull("motion")
  for i,player in ipairs(component.radar.getPlayers()) do print(player.name) end
  component.redstone.setOutput(sides.bottom, 20)
  os.sleep(10)
  component.redstone.setOutput(sides.bottom, 0)
end
