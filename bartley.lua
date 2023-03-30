--[[ Lua code. See documentation: https://api.tabletopsimulator.com/ --]]

players = {"Red", "Yellow", "Green", "Blue"}
--Global.grid.visible = true

--[[ The onLoad event is called after the game save finishes loading. --]]
function onLoad()
    gloryCardDeck = getObjectFromGUID("c2369c")
    gloryCardDeck.randomize()

    captainCardDeck = getObjectFromGUID("5c23eb")
    captainCardDeck.randomize()
    
end

--[[ The onUpdate event is called once per frame. --]]
function onUpdate()

end



function onPlayerChangeColor(player_color)
    if player_color ~= "Grey" then
        getObjectFromGUID("c2369c").deal(1, player_color)
        --captainZone = getObjectFromGUID("41f748")
        
        snapList = getObjectFromGUID("fc8314").getSnapPoints()
        --getObjectFromGUID("5c23eb").takeObject({flip=true, position=snapList[100].position})

        
        getObjectFromGUID("5c23eb").takeObject(
            {
                position = getObjectFromGUID("fc8314").positionToWorld(snapList[37].position),
                --flip = true DONT WORK
            
            }
        )
    end
end