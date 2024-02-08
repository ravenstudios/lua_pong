require "constants";

local Ball = {
  x = GW / 2 - BLOCK_SIZE / 2,
  y = GH / 2 - BLOCK_SIZE / 2,
  width = BLOCK_SIZE,
  height = BLOCK_SIZE,
  x_speed = 10,
  y_speed = 10
}


function Ball.new()
  local self = {}
  return setmetatable(self, Ball)
end


function Ball:update(dt, player, cpu)
  self.x = self.x + self.x_speed
  self.y = self.y + self.y_speed
  -- if player then self.x_speed = 1 end
  if self:check_collision(player) then self.x_speed = -self.x_speed end
  if self:check_collision(cpu) then self.x_speed = -self.x_speed end
  -- if self.x + self.width > GW or self.x < 0 then self.x_speed = -self.x_speed end
  if self.y + self.height > GH or self.y < 0 then self.y_speed = -self.y_speed end
end

function Ball:draw()
  print(y)
  love.graphics.setColor(255, 255, 255)
  love.graphics.rectangle("fill", self.x, self.y, self.width, self.height)
end

function Ball:check_collision(obj)

  return self.x < obj.x + obj.width and
    self.x + self.width > obj.x and
    self.y < obj.y + obj.height and
    self.y + self.height > obj.y
end

function Ball.__index(tab, key)
  return Ball[key]
end


return Ball
