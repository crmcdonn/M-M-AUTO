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
    currentEventZone = getObjectFromGUID("3f2ac6")
end

--[[ The newEvent funciton is called after the show ships button is clicked. --]]
function newEvent()  
    local eventCardDeck = Global.getVar('eventCardDeck')
    local globalSnapList = Global.getVar('globalSnapList')
    eventCardDeck.takeObject(
        {
            position = Global.positionToWorld(globalSnapList[76].position), flip = true, smooth = false

        }
    )
    Wait.frames(
        function()
            for _, occupyingObject in ipairs(currentEventZone.getObjects()) do
                local currentEventName = occupyingObject.getName()
                print(currentEventName)
            end
        end,
        60
    )
end