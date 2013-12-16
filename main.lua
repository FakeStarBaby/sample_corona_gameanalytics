local storyboard = require("storyboard")
local GA = require ("gameAnalytics.GameAnalytics")

storyboard.purgeOnSceneChange = true
storyboard.gotoScene("menu", "fade", 500)

GA.isDebug          = true
GA.runInSimulator   = true
GA.submitSystemInfo = true
GA.archiveEvents    = true
GA.useStoryboard = true
GA.submitStoryboardEvents = true

GA.init({
  game_key   = "YOUR_GA_GAME_KEY",
  secret_key = "YOUR_SECRET_KEY",
  build_name = "1.0",
})
