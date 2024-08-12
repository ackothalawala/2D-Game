local function Girl()

    local sheetData = {
        width = 44,
        height = 111,
        numFrames = 10,
        sheetContentwidth = 221,
        sheetContentheight = 222
    }

    local mysheet = graphics.newImageSheet("./Assets/Girl/r2.png",sheetData)
    
    local sequenceData = {
        {name = " run ",start = 1, count = 10 , time = 500}
    }

    local animation = display.newSprite(mysheet, sequenceData)
        animation.x =  display.contentCenterX - 90
        animation.y = display.contentCenterY  - 100
       animation.rotation =  9
        animation:play()

end
return Girl