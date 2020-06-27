-- Libraries
local event = require("event")
local computer = require("computer")
local component = require("component")

-- Main Program
component.modem.open(123)
while true do
	local _, _, _, _, _, string = event.pull("modem")
	if string == "reboot" then computer.shutdown(true) end
end
