local function Run()

    local physics = require("physics")
    physics.start()

    --background

    local sheetData = {
        width = 34,
        height = 54,
        numFrames = 4,
        sheetContentwidth = 170.5,
        sheetContentheight = 105.5,
    }

    local mysheet = graphics.newImageSheet("./Assets/Run/run.png",sheetData)
    
    local sequenceData = {
        {name = " run ",start = 1, count = 5 , time = 280}
    }

    local animation = display.newSprite(mysheet, sequenceData)
        animation.x =  display.contentCenterX -110
        animation.y = display.contentCenterY  +135
        animation:play()

     
     physics.setGravity(0,0)   
    physics.addBody(animation,"dynamic",{density=0.1,bounce=0.1,friction=0.2,radius=12})

    local function onTouch (event)

        if event.phase == "began" or event.phase == "moved" then

            animation:setLinearVelocity(0, -90)

        elseif event.phase == "ended" then

            animation:setLinearVelocity(0, 10)

        end

        return true
        
    end

    animation:addEventListener("touch", onTouch)

    return animation

end
return Run