local function Vehicles()
    
    local car1 = display.newImage("./Assets/car.png")
    car1.x = display.contentCenterX - 160
    car1.y = display.contentCenterY -800
    car1.width = 70
    car1.height = 30
    car1.rotation = 90
    
    local function scrollcar1(self, event)
        self.y = self.y + 0.5
        if self.y < 0 then
            self.y = 10
        end
    end
    car1.enterFrame = scrollcar1
    Runtime:addEventListener("enterFrame", car1)
    
    end

    return Vehicles