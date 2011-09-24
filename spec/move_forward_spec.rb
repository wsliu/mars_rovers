require "spec_helper"

describe Rover do

  context "when the position of rover is (1, 1)" do
    it "should return (1,2,N) Given direction of 'N' & instruction of 'M' " do
      rover = Rover.new(1, 1, North.new)
      rover.move "M"
      rover.x.should == 1
      rover.y.should == 2
    end
    
    it "should return (2,1,E) Given direction of 'E' & instruction of 'M' " do
      rover = Rover.new(1, 1, East.new)
      rover.move "M"
      rover.x.should == 2
      rover.y.should == 1
    end
    
    it "should return (1,0,S) Given direction of 'N' & instruction of 'M' " do
      rover = Rover.new(1, 1, South.new)
      rover.move "M"
      rover.x.should == 1
      rover.y.should == 0
    end
    
     it "should return (0,1,W) Given direction of 'E' & instruction of 'M' " do
        rover = Rover.new(1, 1, West.new)
        rover.move "M"
        rover.x.should == 0
        rover.y.should == 1
    end
    
    it "should raise exception given incorrect instuction" do
      rover = Rover.new(1, 1, West.new)
      lambda {rover.move('error')}.should raise_error "Incorrect instuction."
    end
  end
end