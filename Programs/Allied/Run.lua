local function Run()

    local sheetData = {
        width = 31,
        height = 40,
        numFrames = 4,
        sheetContentwidth = 311,
        sheetContentheight = 43,
    }

    local mysheet = graphics.newImageSheet("./Assets/Run/run1.png",sheetData)
    
    local sequenceData = {
        {name = " run ",start = 1, count = 5 , time = 360}
    }

    local animation = display.newSprite(mysheet, sequenceData)
        animation.x =  display.contentCenterX -100
        animation.y = display.contentCenterY  +130
        animation:play()

end
return Run