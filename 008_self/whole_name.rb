class Person
  attr_accessor :first_mane, :middle_name, :last_name
  def whole_name
    n = first_mane + " "
    n << "#{middle_name} " if middle_name
    n << last_name
  end
end

ivan = Person.new
ivan.first_mane = "Ivan"
ivan.last_name = "Ivanov"
puts "Ivan's whole name: #{ivan.whole_name}"
ivan.middle_name = "Ivanovich"
puts "Ivan's new whole name: #{ivan.whole_name}"