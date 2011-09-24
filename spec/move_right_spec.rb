require "rover"
# require "position"
describe Rover do

  describe "when the position of rover is (1, 1)" do

       it "should return (1,1,R) Given direction of 'S' & instruction of 'R' " do
          rover = Rover.new(1, 1, "S")
          rover.move "R"
          rover.direction.should == "W"
      end
      
       it "should return (1,1,N) Given direction of 'W' & instruction of 'R' " do
          rover = Rover.new(1, 1, "W")
          rover.move "R"
          rover.direction.should == "N"
      end 
       it "should return (1,1,E) Given direction of 'N' & instruction of 'R' " do
          rover = Rover.new(1, 1, "N")
          rover.move "R"
          rover.direction.should == "E"
      end
      
       it "should return (1,1,S) Given direction of 'E' & instruction of 'R' " do
          rover = Rover.new(1, 1, "E")
          rover.move "R"
          rover.direction.should == "S"
      end
end
end