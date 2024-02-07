require "constants";

local Ball = {
  p_x = 0,
  p_y = 0,
  p_w = BLOCK_SIZE,
  p_h = BLOCK_SIZE * 4,
  p_speed = 10
}


function Ball.new()
  local self = {}
  return setmetatable(self, Ball)
end


function Ball:update(dt)
  if love.keyboard.isDown("down") then
    if self.p_y + self.p_h < GH then
      self.p_y = self.p_y + self.p_speed
    end
  end
  if love.keyboard.isDown("up") then
    if self.p_y > 0 then
      self.p_y = self.p_y - self.p_speed
    end
  end
end

function Ball:draw()
  print(p_x)
  love.graphics.setColor(255, 255, 255)
  love.graphics.rectangle("fill", self.p_x, self.p_y, self.p_w, self.p_h)
end



function Ball.__index(tab, key)
  return Ball[key]
end


return Ball
