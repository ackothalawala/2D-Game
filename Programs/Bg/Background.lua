
local function Backgrounds()

local bg1 = display.newImage("./Assets/bg3.png")

bg1.x = display.contentCenterX 
bg1.y = display.contentCenterY 
bg1.width = 2980
bg1.height = 360


local function scrollbg(self, event)
    
    if self.x < -2980 then
        self.x = 2980
    else
    self.x = self.x - 2
    end
    
    end

    bg1.enterFrame = scrollbg
    Runtime:addEventListener("enterFrame", bg1)


    
local bg2 = display.newImage("./Assets/bg3.png")
bg2.x = display.contentCenterX + 2980
bg2.y = display.contentCenterY  

bg2.width =3005
bg2.height = 360


bg2.enterFrame =  scrollbg
Runtime:addEventListener("enterFrame",bg2)



end

return Backgrounds