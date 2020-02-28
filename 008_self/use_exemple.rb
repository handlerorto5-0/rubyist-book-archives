# defining class methods
class C
  def self.x
    puts "Class method of slass C "
    puts "self #{self}"
  end
end

# defining multiple class methods
class D
  class << self
    def x
    end
    def y 
    end
  end
end