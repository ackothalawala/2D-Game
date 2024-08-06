local function Helicopter()

    local physics = require("physics")
    physics.start()

    local sheetData = {
        width = 85,
        height = 50,
        numFrames = 4,
        sheetContentwidth = 50,
        sheetContentheight = 70,

    }


    local mysheet = graphics.newImageSheet("./Assets/heli.png", sheetData)
    
    
    local sequenceData ={
        {name = "normalFly", start = 1, count = 4 , time = 500},
        -- {name = "fastFly" ,frames = {1,2,3,4}, time = 400}
    }
    
        local animation = display.newSprite(mysheet, sequenceData)
        animation.x =  display.contentCenterX - 90
        animation.y = display.contentCenterY  - 100
       animation.rotation =  9
        animation:play()
    

physics.addBody(animation, "dynamic",{density = 1, friction = 0.3, bounce = 0.2, radius = 30})

physics.setGravity(0, 0)


end

return Helicopter