class Cat

  def initialize(name, preferred_food, meal_time)
    @name = name
    @preferred_food = preferred_food
    @meal_time = meal_time
  end

  # def eats_at
    # raise @meal_time.inspect
    # raise (@meal_time > 12).inspect
    # hour =
    # if @meal_time > 12
    #   "#{@meal_time - 12}pm"
    # elsif @meal_time == 12
    #   "12pm"
    # else
    #   "#{@meal_time}am"
    # end
  def eats_at
    hour =  case @meal_time
            when 13..23
              "#{@meal_time - 12}pm"
            when 12
              "12pm"
            else
              "#{@meal_time}am"
            end
    return hour
  end

  def meow
    "My name is #{@name} and I eat #{@preferred_food} at #{meal_time2}"
  end

end

moe = Cat.new("Moe", "Whiskas", 23)
mango = Cat.new("Mango", "Fancy Feast", 5)

puts moe.eats_at
