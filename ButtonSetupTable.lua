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
end

function setupTable(player_color)
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