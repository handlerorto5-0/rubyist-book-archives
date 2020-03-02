class Ticket
  attr_accessor :venue, :date, :name 
  def initialize(name, venue, date)
    self.venue = venue
    self.date = date 
    self.name = name 
  end
  def === (other_ticked)
    self.date == other_ticked.date  
  end
end

class TicketComparer 
  def self.compare(a,b,c)
    case a
    when b 
      puts "Same date as #{b.name}"
    when c
      puts "Same date ad #{c.name}"
    else
      puts "No match..."
    end
  end
end

ticket1 = Ticket.new("ticket1","Town Hall", "07/08/18")
ticket2 = Ticket.new("ticket2","Conference Center", "07/08/18")
ticket3 = Ticket.new("ticket3","Town Hall", "08/09/18")
puts "#{ticket1.name} is for an event on: #{ticket1.date}."
TicketComparer.compare(ticket1,ticket2,ticket3)
puts "--------------"
case ticket1
when ticket2
  puts "And same date as ticket2"
when ticket3
  puts "And same date as ticket3"
else
  puts "No match..."
end
