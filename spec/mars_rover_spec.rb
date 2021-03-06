#!/usr/bin/ruby
require './mars_rover'
require './operator'

describe MarsRover do
  let(:mars_rover) { MarsRover.new }

  it "starting point at position 0,0" do
    expect(mars_rover.position).to eql(ORIGINAL_POSITION)
    expect(mars_rover.facing_direction)
  end

it "start moving to the NORTH" do
  expect(mars_rover.move_forward)
  expect(mars_rover.position).to eql(MOVE_FORWARD)
end

  it "continue moving forward" do
    expect(mars_rover.move_forward)
    expect(mars_rover.position).to eql(MOVE_FORWARD)
  end

  it "moves backward" do
    expect(mars_rover.move_backward)
    expect(mars_rover.position).to eql(MOVE_BACKWARD)
  end

  it "turns left" do
    expect(mars_rover.turn_left)
    expect(mars_rover.direction).to eql(:west)
  end

  it "turns right" do
    expect(mars_rover.turn_right)
    expect(mars_rover.direction).to eql(:east)
  end

private
    ORIGINAL_POSITION = [0,0]
    MOVE_FORWARD = [0,1]
    MOVE_BACKWARD = [0,-1]
    TURN_LEFT = :west
end
