class Roster
  attr_accessor :players
end

class Player 
  attr_accessor :name, :position
  def initialize(name, position)
    @name = name
    @position = position 
  end
end

ivanov = Player.new("Ivan Ivanov", "Forward")
petrov = Player.new("Petya Petrov", "Guard")
tourney_roster1 = Roster.new 
tourney_roster1.players = [ivanov, petrov]

if tourney_roster1.players.first.position == "Forward"
  puts "Forward: #{tourney_roster1.players.first.name}"
end


tourney_roster2 = Roster.new 
# игроки не ороеделены, но & заблокирует ошибку
if tourney_roster2.players&.first&.position == "Forward"
  puts "Forward: #{tourney_roster1.players.first.name}"
end
