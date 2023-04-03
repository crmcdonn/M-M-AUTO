function onLoad()
    params = {
        click_function = "newEvent",
        function_owner = self,
        position       = {0, 0.05, 0},
        rotation       = {0, 0, 0},
        width          = 1340,
        height         = 980,
        tooltip        = "Draw a new event card.",
    }
    self.createButton(params)
end

--[[ The newEvent funciton is called after the show ships button is clicked. --]]
function newEvent()  
    local eventCardDeck = Global.getVar('eventCardDeck')
    local globalSnapList = Global.getVar('globalSnapList')
	local zoneCurrentEvent = Global.getVar('zoneCurrentEvent')
    
	eventCardDeck.takeObject(
        {
            position = Global.positionToWorld(globalSnapList[76].position), flip = true, smooth = false
        }
    )
	Global.call("cardCheck",zoneCurrentEvent)
	if string.find(currentCardName, "Naval Ship") or string.find(currentCardName, "Pirate") then
		raceCheck(currentCardName)
		occupyingObject.setRotationSmooth(cardRotation, false, true)
		occupyingObject.setPositionSmooth(cardPosition, false, false)
		Global.call("shipSpawn",currentCardName,currentCardDesc)
	else
		print("No Ship Spawn")
	end
    --[[Wait.frames(
        function()
            for _, occupyingObject in ipairs(zoneCurrentEvent.getObjects()) do
                currentEventName = occupyingObject.getName()
				currentEventDesc = occupyingObject.getDescription()
                print(currentEventName)
				if string.find(currentEventName, "Naval Ship") or string.find(currentEventName, "Pirate") then
					raceCheck(currentEventName)
					occupyingObject.setRotationSmooth(cardRotation, false, true)
					occupyingObject.setPositionSmooth(cardPosition, false, false)
					Global.call("shipSpawn",currentEventName,currentEventDesc)
				else
					print("No Ship Spawn")
				end
            end
        end,
        60
    )--]]
end

--[[ The raceCheck function is called when an NPC ship is spawned. --]]
function raceCheck(race)
local globalSnapList = Global.getVar('globalSnapList')
	if string.find(race, "Dutch") then
		cardPosition = Global.positionToWorld(globalSnapList[13].position)
		cardRotation = {0.00, 171.77, 0.00}
	elseif string.find(race, "English") then
		cardPosition = Global.positionToWorld(globalSnapList[14].position)
		cardRotation = {0.00, 186.67, 0.00}
	elseif string.find(race, "French") then
		cardPosition = Global.positionToWorld(globalSnapList[10].position)
	    cardRotation = {0.00, 179.58, 0.00}
	elseif string.find(race, "Spanish") then
		cardPosition = Global.positionToWorld(globalSnapList[9].position)
		cardRotation = {0.00, 181.67, 0.00}
	elseif string.find(race, "Pirate Frigate") then
		cardPosition = Global.positionToWorld(globalSnapList[11].position)
		cardRotation = {0.00, 177.33, 0.00}
	elseif string.find(race, "Pirate Sloop") then
		cardPosition = Global.positionToWorld(globalSnapList[12].position)
		cardRotation = {0.00, 181.76, 0.00}
	end
	return cardPosition, cardRotation
end