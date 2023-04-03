function onLoad()
    params = {
        click_function = "setupTable",
        function_owner = self,
        position       = {0, 0.05, 0},
        rotation       = {0, 0, 0},
        width          = 1560,
        height         = 975,
        tooltip        = "Setup the board.",
    }
    self.createButton(params)
	setupButton = getObjectFromGUID("fde60e")
end

function setupTable(player_color)
    --[[ if player_color ~= "Grey" then
        local gloryCardDeck = Global.getVar('gloryCardDeck')
        print(gloryCardDeck)
        gloryCardDeck.deal(1, player_color)
        --captainZone = getObjectFromGUID("41f748")
        
        snapList = getObjectFromGUID("fc8314").getSnapPoints()
        --getObjectFromGUID("5c23eb").takeObject({flip=true, position=snapList[100].position})

        
        getObjectFromGUID("5c23eb").takeObject(
            {
                position = getObjectFromGUID("fc8314").positionToWorld(snapList[37].position),
                --flip = true DONT WORKaw
            
            }
        )
    end --]]
	local merchantsTokenBag = Global.getVar('merchantsTokenBag')
	local goodsTokenBag = Global.getVar('goodsTokenBag')
	local modsTokenBag = Global.getVar('modsTokenBag')
	local globalSnapList = Global.getVar('globalSnapList')
	local missionCardDeck = Global.getVar('missionCardDeck')
	local zoneMission1 = Global.getVar('zoneMission1')
	local zoneMission2 = Global.getVar('zoneMission2')
	
	for i = 1, 2 do
		takenObject = missionCardDeck.takeObject(
			{ 
				position = Global.positionToWorld(globalSnapList[i+73].position),
				smooth = false,
				flip = true
			}
		)
		Global.call("cardCheck",takenObject)
		print(cardName)
	end
	
	for i = 1, 23, 2 do
		goodsTokenBag.takeObject(
			{ 
				position = Global.positionToWorld(globalSnapList[i+40].position), 
				rotation = {0, 182.18, 0}, 
				smooth = true
			}
		)
	end
	for i = 27, 33, 2 do
		goodsTokenBag.takeObject(
			{ 
				position = Global.positionToWorld(globalSnapList[i+40].position), 
				rotation = {0, 182.18, 0}, 
				smooth = true
			}
		)
	end
	for i = 2, 32, 2 do
		modsTokenBag.takeObject(
			{ 
				position = Global.positionToWorld(globalSnapList[i+40].position), 
				rotation = {0, 182.18, 180}, 
				smooth = true
			}
		)
	end
	for i = 1, merchantsTokenBag.getQuantity() do
		merchantsTokenBag.takeObject(
			{ 
				position = Global.positionToWorld(globalSnapList[i+40].position), 
				rotation = {0, 182.18, 180}, 
				smooth = true
			}
		)
	end
	setupButton.setScale({0, 0, 0})
	setupButton.setPosition({1000, 1000, 1000})
end