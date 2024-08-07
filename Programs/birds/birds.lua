
 local function Birds()

    --bird1

    local sheetData = {
        width = 10,
        height = 10,
        numFrames = 9,
        sheetContentwidth = 10,
        sheetContentheight = 10,
    
    }
    
    local mysheet = graphics.newImageSheet("./Assets/Birds/bird1.png", sheetData)
    
    
    local sequenceData ={
        {name = "normalFly", start = 1, count = 9 , time = 700},
        -- {name = "fastFly" ,frames = {1,2,3,4,5,6,7,8,9}, time = 400}
    }
    
        local animation1 = display.newSprite(mysheet, sequenceData)
        animation1.x =  display.contentCenterX +300
        animation1.y = display.contentCenterY -150
        animation1:play()
    
    local function scrollbird1(self, event)

        if self.x < -60 then
            self.x = display.contentCenterX + 2000
        else
            self.x = self.x - 0.7
        end

    end

    animation1.enterFrame = scrollbird1
    Runtime:addEventListener("enterFrame",animation1)



   -- bird2

    local sheetData = {
        width = 13,
        height = 13,
        numFrames = 9,
        sheetContentwidth = 40,
        sheetContentheight = 40,

    }
    
    local mysheet = graphics.newImageSheet("./Assets/Birds/bird2.png", sheetData)
    
    
    local sequenceData ={
        -- {name = "normalFly", start = 1, count = 9 , time = 600},
        {name = "fastFly" ,frames = {1,2,3,4,5,6,7,8}, time = 600}
    }
    
        local animation2 = display.newSprite(mysheet, sequenceData)
        animation2.x =  display.contentCenterX + 400
        animation2.y = display.contentCenterY  - 120
        animation2:play()

        local function scrollbird2(self, event)
            if self.x <-70 then 
                self.x = display.contentCenterX + 2100
            else
                self.x= self.x - 0.65
            end
           
            
        end

        animation2.enterFrame = scrollbird2
        Runtime:addEventListener("enterFrame", animation2)


      
    
end
    

return Birds
