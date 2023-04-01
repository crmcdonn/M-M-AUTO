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
