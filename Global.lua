--[[ Lua code. See documentation: https://api.tabletopsimulator.com/ --]]


--[[ The onLoad event is called after the game save finishes loading. --]]
function onLoad()
    shipCardDeck = getObjectFromGUID("628efe") 

    gloryCardDeck = getObjectFromGUID("c2369c")
    gloryCardDeck.randomize()

    captainCardDeck = getObjectFromGUID("eda3a7")
    captainCardDeck.randomize()
    
    cargoCardDeck = getObjectFromGUID("e44d45")
    cargoCardDeck.randomize()

    rumorCardDeck = getObjectFromGUID("08749a")
    rumorCardDeck.randomize()

    missionCardDeck = getObjectFromGUID("13a887")
    missionCardDeck.randomize()

    eventCardDeck = getObjectFromGUID("a6e0fe")
    eventCardDeck.randomize()

    merchantsTokenBag = getObjectFromGUID("e4ebe4")
    merchantsTokenBag.randomize()

    goodsTokenBag = getObjectFromGUID("b266fd")
    goodsTokenBag.randomize()

    modsTokenBag = getObjectFromGUID("9c1043")
    modsTokenBag.randomize()

    npcmodsTokenBag = getObjectFromGUID("c691c6")
    npcmodsTokenBag.randomize()


    
    globalSnapList = Global.getSnapPoints()



    redPlayerMat = getObjectFromGUID("fc8314")
    redSnapList = redPlayerMat.getSnapPoints()

    greenPlayerMat = getObjectFromGUID("bf311e")
    greenSnapList = greenPlayerMat.getSnapPoints()

    bluePlayerMat = getObjectFromGUID("ade0fe")
    blueSnapList = bluePlayerMat.getSnapPoints()

    yellowPlayerMat = getObjectFromGUID("969079")
    yellowSnapList = yellowPlayerMat.getSnapPoints()
end

--[[ The onUpdate event is called once per frame. --]]
function onUpdate()

end

--[[The shipSpawn event is called when a player or NPC ship is spawned. --]]
function shipSpawn(name) 
	print("Ship Spawn")
end