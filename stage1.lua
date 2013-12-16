local storyboard = require("storyboard")
local scene = storyboard.newScene()

function scene:createScene(event)
  local group = self.view

  local background = display.newRect(group, 0, 0, display.contentWidth, display.contentHeight)
  background.anchorX = 0
  background.anchorY = 0
  background:setFillColor(255, 255, 255)

  local widget = require("widget")
  local title = widget.newButton{
    label = "STAGE1",
    onRelease = function(event)
      storyboard.gotoScene("stage2", "fade", 500)
    end,
  }
  title.x = display.contentCenterX
  title.y = display.contentCenterY
  group:insert(title)
end

function scene:willEnterScene(event)
  local group = self.view
end

function scene:enterScene(event)
  local group = self.view
end

function scene:exitScene(event)
  local group = self.view
end

function scene:didExitScene(event)
  local group = self.view
end

function scene:destroyScene(event)
  local group = self.view
end

function scene:overlayBegan(event)
  local group = self.view
  local overlayScene = event.sceneName
end

function scene:overlayEnded(event)
  local group = self.view
  local overlayScene = event.sceneName
end

scene:addEventListener("createScene"   , scene)
scene:addEventListener("willEnterScene", scene)
scene:addEventListener("enterScene"    , scene)
scene:addEventListener("exitScene"     , scene)
scene:addEventListener("didExitScene"  , scene)
scene:addEventListener("destroyScene"  , scene)
scene:addEventListener("overlayBegan"  , scene)
scene:addEventListener("overlayEnded"  , scene)

return scene
