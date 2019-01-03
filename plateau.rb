#!/usr/bin/ruby
require './mars_rover'
require './operator'

plateau = ARGF.gets

while !ARGF.eof
  rover_position = ARGF.gets
  position = rover_position.split[0, 2]
  direction = Directions.from_s(rover_position.split[2])

  @mars_rover = MarRover.new(direction, position)
  Operator.new(@mars_rover).receive_commands ARGF.gets

  puts rover
end
puts "=========="
puts @mars_rover
