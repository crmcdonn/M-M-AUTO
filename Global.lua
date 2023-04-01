--[[ Lua code. See documentation: https://api.tabletopsimulator.com/ --]]


--[[ The onLoad event is called after the game save finishes loading. --]]
function onLoad()
    shipCardDeck = getObjectFromGUID("628efe") 

    gloryCardDeck = getObjectFromGUID("c2369c")
    gloryCardDeck.randomize()

    captainCardDeck = getObjectFromGUID("5c23eb")
    captainCardDeck.randomize()
    
    cargoCardDeck = getObjectFromGUID("e44d45")
    cargoCardDeck.randomize()

    rumorCardDeck = getObjectFromGUID("08749a")
    rumorCardDeck.randomize()

    missionCardDeck = getObjectFromGUID("db8b7b")
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
end

--[[ The onUpdate event is called once per frame. --]]
function onUpdate()

end