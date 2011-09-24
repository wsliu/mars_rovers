class Direction
end

class North < Direction
  def turn_left
    West.new
  end
  
  def turn_right
    East.new
  end
end

class West < Direction
  def turn_left
    South.new
  end
  
  def turn_right
    North.new
  end
end

class South < Direction
  def turn_left
    East.new
  end
  
  def turn_right
    West.new
  end
end

class East < Direction
  def turn_left
    North.new
  end
  
  def turn_right
    South.new
  end
end
