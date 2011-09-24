require "rover"

describe Rover do

  describe "when the position of rover is (1, 1)" do
      
       it "should return (1,1,S) Given direction of 'W' & instruction of 'L' " do
          rover = Rover.new(1, 1, "W")
          rover.move "L"
          rover.direction.should == "S"
      end
      
       it "should return (1,1,E) Given direction of 'S' & instruction of 'L' " do
          rover = Rover.new(1, 1, "S")
          rover.move "L"
          rover.direction.should == "E"
      end 
       it "should return (1,1,N) Given direction of 'E' & instruction of 'L' " do
          rover = Rover.new(1, 1, "E")
          rover.move "L"
          rover.direction.should == "N"
      end
      
       it "should return (1,1,W) Given direction of 'N' & instruction of 'L' " do
          rover = Rover.new(1, 1, "N")
          rover.move "L"
          rover.direction.should == "W"
      end 

    end
end