#!/usr/bin/ruby
require './mars_rover'
require './operator'

 describe Operator do

     @operator = Operator.new(@mars_rover)

      it "turns the rover left" do
        expect(@mars_rover.direction).to eql(:turn_left) if @operator.receive_commands == "L"
      end

      it "turns the rover right" do
        @operator.receive_commands "R"
        expect(@mars_rover.direction).to eql(:turn_right)
      end

      it "moves the rover" do
        @operator.receive_commands "M"
        expect(@mars_rover.move_forward)
      end

      it "turns the rover left twice" do
        @operator.receive_commands "LL"
        expect(@mars_rover.turn_left).twice
      end

      it "turns the rover left than right" do
        @operator.receive_commands "LR"
        expect(@mars_rover.turn_left)
        expect(@mars_rover.turn_right)
      end

      it "moves the rover twice" do
        @operator.receive_commands "MM"
        expect(@mars_rover.move_forward).twice
      end

      it "turns left the rover, turns right the rover, move the rover twice, turns the rover right, turns the rover left" do
        @operator.receive_commands "LRMMRL"
        expect(@mars_rover.turn_left)
        expect(@mars_rover.turn_left)
        expect(@mars_rover.turn_right)
        expect(@mars_rover.move_forward).twice
        expect(@mars_rover.turn_right)
        expect(@mars_rover.turn_left)
      end
    end
