
class Rover

  puts "What is the size of the plateau?"
  user_input = gets.split(" ")
  plateau_max = []
  plateau_max << user_input


  puts "What is Rover's starting position?"
  user_input2 = gets.split(" ")
  user_input2.each do |x, y, d|
                      x = location_x
                      y = location_y
                      d = direction
                  end
                  return start_position
  end

  puts "how would you like Rover to move?"
  instructions = gets.split(" ")


  def initialize(location_x, location_y, direction)
    @location_x = location_x
    @location_y = location_y
    @direction = direction
  end

  def plateau_max(plateau_max)
    plateau_max.split = @plateau_max
  end

  def start_position(start_position)
    start_position.split = @start_position
  end

  def instructions(instructions)
    instructions.split = @instructions
  end

  def read_instruction(instructions)
    instructions.each do |a|
      if a == "L" || "R"
        a = @direction
      elsif a == "M"
        a.move
      end
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

#
# ralph = Rover.new(plateau_max, start_position, instructions)
