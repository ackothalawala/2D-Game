
 local function Birds()

    --bird1

    local sheetData = {
        width = 10,
        height = 10,
        numFrames = 9,
        sheetContentwidth = 30,
        sheetContentheight = 30,
    
    }
    
    local mysheet = graphics.newImageSheet("./Assets/bird1.png", sheetData)
    
    
    local sequenceData ={
        {name = "normalFly", start = 1, count = 9 , time = 900},
        {name = "fastFly" ,frames = {1,2,3,4,5,6,7,8}, time = 400}
    }
    
        local animation = display.newSprite(mysheet, sequenceData)
        animation.x =  display.contentCenterX + 160
        animation.y = display.contentCenterY -30
        animation.rotation = 90
        animation:play()
    
    --bird2


    local sheetData = {
        width = 13,
        height = 13,
        numFrames = 9,
        sheetContentwidth = 40,
        sheetContentheight = 40,

    }
    
    local mysheet = graphics.newImageSheet("./Assets/bird2.png", sheetData)
    
    
    local sequenceData ={
        {name = "normalFly", start = 1, count = 9 , time = 600},
        {name = "fastFly" ,frames = {1,2,3,4,5,6,7,8}, time = 400}
    }
    
        local animation = display.newSprite(mysheet, sequenceData)
        animation.x =  display.contentCenterX + 165
        animation.y = display.contentCenterY  -250
        animation.rotation = 90
        animation:play()

        local function scrollbird2(self, event)
            self.y = self.y + 0.12
            -- if self.y < 0 then
            --     self.y = 10
            -- end
        end

        animation.enterFrame = scrollbird2
        Runtime:addEventListener("enterFrame", animation)


      
    
end
    

return Birds
