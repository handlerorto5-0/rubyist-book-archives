class Person
  attr_accessor :name, :age, :email
  def to_ary
    [name, age, email]
  end
end

slava = Person.new
slava.name = "Slava"
slava.age = 49
alava.email = "str_token@mail.ru"
array = []
array.concat(slava)
p array
# ["Slava", 49, "str_token@mail.ru"]
