require "constants"
local Ball = require("ball")

ball = Ball.new()
function love.load()


    -- cpu_x, cpu_y, cpu_w, cpu_h = GW - BLOCK_SIZE, 0, BLOCK_SIZE, BLOCK_SIZE * 4
    -- ball_x, ball_y, ball_w, ball_h = GW / 2, GH / 2, BLOCK_SIZE, BLOCK_SIZE
end

-- Increase the size of the rectangle every frame.
function love.update(dt)
  ball:update(dt)
end

-- Draw a coloured rectangle.
function love.draw()
    -- In versions prior to 11.0, color component values are (0, 102, 102)
    -- love.graphics.setColor(255, 255, 255)
    ball:draw()
    -- love.graphics.rectangle("fill", cpu_x, cpu_y, cpu_w, cpu_h)
    -- love.graphics.rectangle("fill", ball_x, ball_y, ball_w, ball_h)
end
