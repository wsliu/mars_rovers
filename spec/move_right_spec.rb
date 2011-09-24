require "spec_helper"

describe Rover do

  describe "when the position of rover is (1, 1)" do

       it "should return (1,1,R) Given direction of 'S' & instruction of 'R' " do
          rover = Rover.new(1, 1, South.new)
          rover.move "R"
          rover.direction.class.should == West
      end
      
       it "should return (1,1,N) Given direction of 'W' & instruction of 'R' " do
          rover = Rover.new(1, 1, West.new)
          rover.move "R"
          rover.direction.class.should == North
      end 
       it "should return (1,1,E) Given direction of 'N' & instruction of 'R' " do
          rover = Rover.new(1, 1, North.new)
          rover.move "R"
          rover.direction.class.should == East
      end
      
       it "should return (1,1,S) Given direction of 'E' & instruction of 'R' " do
          rover = Rover.new(1, 1, East.new)
          rover.move "R"
          rover.direction.class.should == South
      end
end
end