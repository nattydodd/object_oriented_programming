class Rover
  def initialize(location_x, location_y, direction)
    @location_x = location
    @location_y = location
    @direction = direction
  end

  def read_instruction
  end


  def turn(rotation)
    case rotation
      when "L"
        if @direction == "N"
          @direction = "W"
        elsif @direction == "E"
          @direction = "N"
        elsif @direction == "S"
          @direction = "E"
        elsif @direction == "W"
          @direction = "S"
        else
          puts "does not exist"
      end
      when "R"
        if @direction == "N"
          @direction = "E"
        elsif @direction == "E"
          @direction = "S"
        elsif @direction == "S"
          @direction = "W"
        elsif @direction == "W"
          @direction = "N"
        else
          puts "does not exist"
      end
    end
  end

  def move
    if @direction == "N"
      @location_y += 1
    elsif @direction == "E"
      @location_x += 1
    elsif @direction == "W"
      @location_x -= 1
    elsif @direction == "S"
      @location_y -= 1
    else
      puts "doesn't exist"
    end
  end



end
