
local function Backgrounds()

local bg1 = display.newImage("./Assets/bg3.png")

bg1.x = display.contentCenterX -180
bg1.y = display.contentCenterY + 2740 
bg1.anchorX = 1
bg1.anchorY = 1
bg1.width = 2980
bg1.height = 360
bg1.rotation = 90



local function scrollbg(self, event)
    self.y = self.y - 0.5
    if self.y < 0 then
        self.y = 3970
    end
end
bg1.enterFrame = scrollbg
Runtime:addEventListener("enterFrame", bg1)


local bg2 = display.newImage("./Assets/bg2.png")
bg2.x = display.contentCenterX -180
bg2.y = display.contentCenterY  +3740
bg2.anchorX = 1
bg2.anchorY = 1

bg2.height = 360
bg2.width = 1010
bg2.rotation = 90

bg2.enterFrame = scrollbg
Runtime:addEventListener("enterFrame", bg2)



end

return Backgrounds