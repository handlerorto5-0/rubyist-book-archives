class Person
  attr_accessor :name
end

david = Person.new
david.name = "David"
joe = Person.new
joe.name = "Joe"
ruby = Person.new
ruby.name = "Ruby"

module Secretive
  def name
    "[not available]"
  end
end

class << ruby
  include Secretive
end

puts "We've got one person named #{joe.name}, "
puts "one named #{david.name}, "
puts "and one named #{ruby.name}."
