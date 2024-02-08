require "constants";

local CPU = {
  x = GW - BLOCK_SIZE,
  y = 0,
  width = BLOCK_SIZE,
  height = BLOCK_SIZE * 4,
  speed = 10
}


function CPU.new()
  local self = {}
  return setmetatable(self, CPU)
end


function CPU:update(dt, ball)
  self.y = ball.y
end

function CPU:draw()
  love.graphics.setColor(255, 255, 255)
  love.graphics.rectangle("fill", self.x, self.y, self.width, self.height)
end



function CPU.__index(tab, key)
  return CPU[key]
end


return CPU
