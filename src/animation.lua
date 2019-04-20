-- @Author: maolong.he@gmail.com
-- @Date:   2019-04-20 11:56:04
-- @Last Modified by:   maolong.he@gmail.com
-- @Last Modified time: 2019-04-20 15:16:26

local msPerFrame = 160

local poseSequences = {
  atk = {
    name = "atk",
    start = 1,
    count = 12,
    time = msPerFrame * 12,
    loopCount = 1,
  },

  mov = {
    name = "mov",
    start = 1,
    count = 11,
    time = msPerFrame * 11,
    loopCount = 1,
  },
  
  spc = {
    name = "spc",
    start = 1,
    count = 5,
    time = msPerFrame * 5,
    loopCount = 1,
  },
}

local poseOptions = {
  atk = {width=64, height=64, numFrames = 12},
  mov = {width=48, height=48, numFrames = 11},
  spc = {width=48, height=48, numFrames = 5},
}

local resourceRoot = "resource/art"
local poses = {
  "mov",
  "atk",
  "spc"
}

local animation = {}

function animation.getPosePath(t, npc_index)
  return string.format("%s/unit_%s/%d.png", resourceRoot, t, npc_index)
end


local animationPlay = {}
function animationPlay:playAttack()
  self.atk.isVisible = true
  self.atk:play()
end

function animationPlay:playMove()
  self.mov.isVisible = true
  self.mov:play()
end

function animationPlay:playSpc()
  self.spc.isVisible = true
  self.spc:play()
end

function animationPlay:setPos(x, y)
   self.atk.x = x
   self.atk.y = y

   self.mov.x = x
   self.mov.y = y

   self.spc.x = x
   self.spc.y = y
end


function animation.loadModel(npc_index)
  local result = {}

  for _, v in ipairs(poses) do
    local sheet = graphics.newImageSheet(animation.getPosePath(v, npc_index), poseOptions[v])
    local sprite = display.newSprite(sheet, poseSequences[v])
    sprite.isVisible = false
    result[v] = sprite
  end

  setmetatable(result, {__index=animationPlay})
  return result
end


return animation