--[[ Lua code. See documentation: https://api.tabletopsimulator.com/ --]]

players = {"Red", "Yellow", "Green", "Blue"}

--[[ Gets the game objects for easy use. --]]
function onLoad()
    gloryCardDeck = getObjectFromGUID("c2369c")
end

--[[ The onLoad event is called after the game save finishes loading. --]]
function onLoad()

end

--[[ The onUpdate event is called once per frame. --]]
function onUpdate()

end



function onPlayerChangeColor(player_color)
    if player_color ~= "Grey" then
        getObjectFromGUID("c2369c").deal(1, player_color)
    end
end