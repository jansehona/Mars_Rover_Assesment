require './mars_rover'
require './operator'
#
# describe Operator do
#
#   describe "#receive_commands" do
#     #before :each do
     operator = Operator.new(@mars_rover)
#     #end


# it "changes direction" do
#   mars_rover = MarsRover.new
#   mars_rover.receive_commands([:L])
#   expect(mars_rover.change_direction).to eql(:west)
#   mars_rover.receive_commands([:R])
#   expect(mars_rover.change_direction).to eql(:east)
#   mars_rover.receive_commands([:L,:L])
#   expect(mars_rover.change_direction).to eql(:south)
#   mars_rover.receive_commands([:R,:R])
#   expect(mars_rover.change_direction).to eql(:south)
# end
#

      # it "turns the rover left" do
      #   mars_rover = MarsRover.new
      #   @operator.receive_commands([:L])
      #   expect(@mars_rover.direction).to eql(:turn_left)
      # end
#     #end
#
#     #context "given input R" do
#       it "turns the rover right" do
#         @operator.receive_commands "R"
#         expect(@mars_rover.direction).to eql(:turn_right)
#       end
#     #end
#
#     #context "given input M" do
#       it "moves the rover" do
#         @operator.receive_commands "M"
#         expect(@mars_rover.move_forward)
#       end
#     #end
#
#     #context "given input LL" do
#       it "turns the rover left twice" do
#         @operator.receive_commands "LL"
#         expect(@mars_rover.turn_left).twice
#       end
#     #end
#
#     #context "given input LR" do
#       it "turns the rover left than right" do
#         @operator.receive_commands "LR"
#         expect(@mars_rover.turn_left)
#         expect(@mars_rover.turn_right)
#       end
#     #end
#
#     #context "given input MM" do
#       it "moves the rover twice" do
#         @operator.receive_commands "MM"
#         expect(@mars_rover.move_forward).twice
#       end
#     #end
#
#     #context "given input LRMMRL" do
#       it "turns left the rover, turns right the rover, move the rover twice, turns the rover right, turns the rover left" do
#         @operator.receive_commands "LRMMRL"
#         expect(@mars_rover.turn_left)
#         expect(@mars_rover.turn_left)
#         expect(@mars_rover.turn_right)
#         expect(@mars_rover.move_forward).twice
#         expect(@mars_rover.turn_right)
#         expect(@mars_rover.turn_left)
#       end
#     end
#     end
#   #end
