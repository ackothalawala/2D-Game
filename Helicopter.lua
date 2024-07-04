local function Helicopter()

    local sheetData = {
        width = 95,
        height = 50,
        numFrames = 4,
        sheetContentwidth = 100,
        sheetContentheight = 200,

    }


    local mysheet = graphics.newImageSheet("./Assets/heli.png", sheetData)
    
    
    local sequenceData ={
        {name = "normalFly", start = 1, count = 4 , time = 600},
        {name = "fastFly" ,frames = {1,2,3,4}, time = 400}
    }
    
        local animation = display.newSprite(mysheet, sequenceData)
        animation.x =  display.contentCenterX + 80
        animation.y = display.contentCenterY  - 100
        animation.rotation = 100
        animation:play()
    



end

return Helicopter