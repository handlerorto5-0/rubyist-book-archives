# instanse variables
class Person
  def whole_name
    n = $first_name + " "
    n << "#{$middle_name} " if $middle_name
    n << $last_name
  end
end

ivan = Person.new
$first_name = "Ivan"
$middle_name = "Ivanovich"
$last_name = "Ivanov"
puts ivan.whole_name

puts $.
puts $0
puts $$
