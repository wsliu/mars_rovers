class Rover
  attr_reader :coordinate, :direction

  def initialize x, y, direction
    @coordinate = [x, y]
    @direction = direction
  end

  def move instructions
    instructions.each_char do |instruction|
      if instruction == "M"
        move_forward
      elsif instruction == "L"
        move_left
      elsif instruction == "R"
        move_right
      else raise "Incorrect instuction."
      end
    end
  end

  def move_forward
    [0, 1].each do |index|
      @coordinate[index] += @direction.go_ahead[index]
    end
    
  end

  def move_left
    @direction = @direction.turn_left
  end

  def move_right
    @direction = @direction.turn_right
  end
end