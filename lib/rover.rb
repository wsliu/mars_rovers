class Rover
  attr_reader :x, :y, :direction

  def initialize x, y, direction
    @x, @y, @direction  = x, y, direction
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
    case @direction
    when "N"
      @y += 1
    when "S"
      @y -= 1
    when "W"
      @x -= 1
    when "E"
      @x += 1
    end
  end

  def move_left
    case @direction
    when "N"
      @direction = "W"
    when "W"
      @direction = "S"
    when "S"
      @direction = "E"
    when "E"
      @direction = "N"
    end
  end

  def move_right
    case @direction
    when "N"
      @direction = "E"
    when "E"
      @direction = "S"
    when "S"
      @direction = "W"
    when "W"
      @direction = "N"
    end
  end
end