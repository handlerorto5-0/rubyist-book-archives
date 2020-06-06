class C
  def talk
    puts "Hi from original class!"
  end
end

module M
  def talk
    puts "Hillo from module!"
  end
end

c = C.new
c.talk
class << c
  include M
  p ancestors
end
c.talk
