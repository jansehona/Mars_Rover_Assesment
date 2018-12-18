class Operator

  def initialize(mars_rover)
    @mars_rover = MarsRover.new
  end

  def receive_commands(commands)
    commands.each do |command|
      case command
        when command == 'L'
          @mars_rover.turn_left
        when command == 'R'
          @mars_rover.turn_right
        when command == 'M'
          @mars_rover.move_forward
        when command == 'LL'
          @mars_rover.turn_left.twice
        when command == 'LR'
          @mars_rover.turn_left
          @mars_rover.turn_right
        when command == 'MM'
          @mars_rover.move_forward.twice
        when command == 'LRMMRL'
          @mars_rover.turn_left
          @mars_rover.turn_right
          @mars_rover.move_forward.twice
          @mars_rover.turn_right
          @mars_rover.turn_left
      end
    end
  end
end
