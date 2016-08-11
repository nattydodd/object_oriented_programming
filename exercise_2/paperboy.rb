class Paperboy

  def initialize(name, side)
    @name = name
    @side = side
    @experience = 0
    @earnings = 0
  end

  def deliver(end_address, start_address)
    papers_delivered = 0
    if side == "odd"
      start_address..end_address.each do |address|
        if address % 2 != 0
          papers_delivered += 1
        end
      end
    if side == "even"
      start_address..end_address.each do |address|
        if address % 2 == 0
          papers_delivered += 1
        end
      end
    expected_quota = quota
    if (papers_delivered - expected_quota) == 0
      @earnings = paper_delivered * 0.25
    elsif (papers_delivered - expected_quota) > 0
      @earnings = (papers_delivered - expected_quota) * 0.50 + (expected_quota * 0.25)
    else
      @earnings = (papers_delivered * 0.25) - 2
    end
    return @earnings
   end


  def quota
    (@experience / 2) + 50
  end














end

jim = Paperboy.new("Jim", "even")
