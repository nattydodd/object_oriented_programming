class Paperboy

  def initialize(name, side)
    @name = name
    @side = side
    @experience = 0
    @earnings = 0
  end

  def deliver(start_address, end_address)
    @experience = 0
    if @side == "odd"
      (start_address..end_address).each do |address|
        if address % 2 != 0
          @experience += 1
        end
      end
    end
    if @side == "even"
      (start_address..end_address).each do |address|
        if address % 2 == 0
          @experience += 1
        end
      end
    end
    expected_quota = quota
    if (@experience - expected_quota) == 0
      @earnings = @experience * 0.25
    elsif (@experience - expected_quota) > 0
      @earnings = (@experience - expected_quota) * 0.50 + (@experience * 0.25)
    else
      @earnings = (@experience * 0.25) - 2
    end
    return @earnings
  end


  def quota
    (@experience / 2) + 50
  end

  def report
    puts "I'm #{@name}, I've delivered #{@experience} papers and earned $#{@earnings} so far!"
  end

end

jim = Paperboy.new("Jim", "even")
puts jim.deliver(4, 88)
puts jim.report
