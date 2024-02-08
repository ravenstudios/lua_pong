require "constants";

local Player = {
  x = 0,
  y = 0,
  width = BLOCK_SIZE,
  height = BLOCK_SIZE * 4,
  speed = 10
}


function Player.new()
  local self = {}
  return setmetatable(self, Player)
end


function Player:update(dt)
  if love.keyboard.isDown("down") then
    if self.y + self.height < GH then
      self.y = self.y + self.speed
    end
  end
  if love.keyboard.isDown("up") then
    if self.y > 0 then
      self.y = self.y - self.speed
    end
  end
end

function Player:draw()
  print(x)
  love.graphics.setColor(255, 255, 255)
  love.graphics.rectangle("fill", self.x, self.y, self.width, self.height)
end



function Player.__index(tab, key)
  return Player[key]
end


return Player
