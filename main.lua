require "constants"
local Ball = require("ball")
local Player = require("player")
local CPU = require("cpu")
ball = Ball.new()
player = Player.new()
cpu = CPU.new()

function love.load()

end

function love.update(dt)
  ball:update(dt, player, cpu)
  player:update(dt)
  cpu:update(dt, ball)
end

function love.draw()

    ball:draw()
    player:draw()
    cpu:draw()
end
