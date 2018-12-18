class MarsRover
  attr_reader :position, :direction

  def initialize(current_position=[0,0])
    @position = current_position
  end

  def move_forward
    @direction = :north
    @position = [0,1]
end

def move_backward
  @direction = :south
  @position = [0,-1]
end

  def facing_direction
    @direction = :north
    @position = [0,0]
  end

  def turn_left
    @direction = :west
  end

  def turn_right
    @direction = :east
  end

end
