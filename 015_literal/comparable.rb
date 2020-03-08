class Bid
  include Comparable
  attr_reader :estimate
  def initialize(estimate)
    @estimate = estimate 
  end
  def <=>(other_bid)
    # -1 0 1
    self.estimate <=> other_bid.estimate 
  end
end

bid1 = Bid.new(100)
bid2 = Bid.new(110)
bid3 = Bid.new(120)

if bid1 < bid2
  puts " Its expensive!"
end

if bid2.between?(bid1, bid3)
  puts " Its betweene! "
end
