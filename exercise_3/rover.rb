
class Rover

  def initialize(location_x, location_y, direction)
    @location_x = location_x.to_i
    @location_y = location_y.to_i
    @direction = direction
  end

  puts "how would you like Rover to move? ex L, R or M"
  instructions = gets.chomp.split("")

#this code is not being read for some reason
  def read_instruction(instructions)
      instructions.each do |command|
          if command == "L"
            self.turn("L")
          elsif command == "R"
            self.turn("R")
          elsif command == "M"
            self.move
          else
            puts "error"
          end
        end
      puts "#{@location_x} #{@location_y} #{@direction}"
  end

  puts "What is the size of the plateau? ex 5 5"
  x_max, y_max = gets.split(" ")


  puts "What is Rover's starting position? ex 1 2 N"
  start = gets.chomp.split()
  start[0] = location_x
  start[1] = location_y
  start[2] = direction
  #error this variable are undefined?


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

puts "Rover is now at #{@location_x} #{@location_y} facing #{@direction}"

# ralph = Rover.new(plateau_max, start_position, instructions)
