class Person
  PEOPLE = []
  attr_reader :name, :hobbies, :friends
  def initialize(name)
    @name = name
    @hobbies = []
    @friends = []
    PEOPLE << self # when a new person init
  end

  def has_hobby(hobby)
    @hobbies << hobby
  end
  def has_friend(friend)
    @friends << friend
  end

  def Person.method_missing(m, *args)
    method = m.to_s
    if method.start_with?("all_with_")
      attr = method[9..-1]
      if Person.public_method_defined?(attr)
        PEOPLE.find_all do |person|
          person.send(attr).include?(args[0])
        end
      else
        raise ArgumentError, "Can't find #{attr} "
      end
    else
      super
    end
  end
end

i = Person.new("Ivan")
s = Person.new("Sergey")
a = Person.new("Andrey")
r = Person.new("Rinat")
i.has_friend(s)
i.has_friend(a)
a.has_friend(s)
r.has_hobby("litroboll")
Person.all_with_friends(s).each do |person|
  puts "#{person.name} is friends with #{s.name}"
end
Person.all_with_hobbies("litroboll").each do |person|
  puts "#{person.name} is into litroboll"
end