os.execute("clear")
print("Starting...")

-- Libraries
print("Loading libraries...")
local component = require("component")
local sides = require("sides")
local event = require("event")
print("Fully loaded!")

-- Main Program
while true do
  for i,player in ipairs(component.radar.getPlayers()) do
  if player.name ~= nil then
    component.redstone.setOutput(sides.bottom, 20)
    os.sleep(10)
    component.redstone.setOutput(sides.bottom, 0)
  end --end if
  end --end for
end --end while
