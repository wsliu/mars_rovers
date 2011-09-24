require "spec_helper"

describe Rover do
  context "when the position of rover is (1, 1)" do
    it "should return (1,3,N) Given direction of 'N' & instructions of 'MM' " do
      rover = Rover.new(1, 1, North.new)
      rover.move "MM"
      rover.x.should == 1
      rover.y.should == 3
      rover.direction.class.should == North
    end


    it "should return (1,3,N) Given direction of 'N' & instructions of 'LMLMLMLMM' " do
      rover = Rover.new(1, 2, North.new)
      rover.move "LMLMLMLMM"
      rover.x.should == 1
      rover.y.should == 3
      rover.direction.class.should == North
    end

    it "should return (5,1,E) Given direction of 'N' & instructions of 'MMRMMRMRRM' " do
      rover = Rover.new(3, 3, East.new)
      rover.move "MMRMMRMRRM"
      rover.x.should == 5
      rover.y.should == 1
      rover.direction.class.should == East
    end
  end
end