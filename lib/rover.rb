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
    case @direction.class.to_s
    when "North"
      @y += 1
    when "South"
      @y -= 1
    when "West"
      @x -= 1
    when "East"
      @x += 1
    end
  end

  def move_left
    @direction = @direction.turn_left
  end

  def move_right
    @direction = @direction.turn_right
  end
end