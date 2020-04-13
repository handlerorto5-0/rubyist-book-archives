class Person
  attr_accessor :age
  def initialize(options)
    self.age = options[:age]
  end
  def teenager?
    (13..19) === age 
  end
end

people = 10.step(25, 3).map {|i| p Person.new(:age => i)}
puts "Teens"
teens = people.partition {|person|p  person.teenager?}
puts "#{teens[0].size} teens: #{teens[1].size} non-teens"
