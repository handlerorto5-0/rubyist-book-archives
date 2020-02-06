class Ticked
  def initialize
    puts "Creating a new ticket!"
  end
  def event
    "Can't ready be specified yet..."
  end
  def data
    Time.new.strftime("%m-%d-%y")
  end
  def price
    200.50
  end
end

ticked=Ticked.new

puts ticked.event
puts ticked.data
puts ticked.price

def ticked.price
  117.50
end
puts ticked.price