class Ticket
  def initialize(venue, date)
    @venue=venue
    @date=date
  end
  def venue
    @venue
  end
  def date
    @date
  end
  def price=(amount) # same set_price(amount)
    @price=amount
  end
  def price
    @price
  end
end

th=Ticket.new("Town Hall", "2013-11-12")
cc=Ticket.new("Convention Center", "2014-12-14")
puts "We've created two ticket."
puts "The first is for a #{th.venue} event on #{th.date}."
puts "The second is for an event on #{cc.date} at #{cc.venue}."

th.price=(63.00)
puts "The ticket costs $#{"%.2f" % th.price}."
th.price=(70.00)
puts "Whoops -- it just went up. It now xosts $#{"%.2f" % th.price}."
