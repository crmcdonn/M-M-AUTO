function onLoad()
    params = {
        click_function = "showShipCards",
        function_owner = self,
        position       = {0, 0.05, 0},
        rotation       = {0, 0, 0},
        width          = 1610,
        height         = 970,
        tooltip        = "Show/Hide ship deck.",
    }
    self.createButton(params)
end

--[[ The showShipCards funciton is called after the show ships button is clicked. --]]
function showShipCards()  
    local shipCardDeck = Global.getVar('shipCardDeck')

    shipCardDeck.setPosition({-45.00, 2.50, 27.00})
end 