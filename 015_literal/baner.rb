class Banner
  def initialize(test)
    @test = test 
  end
  def to_s
    @test 
  end
  def +@
    @test.upcase 
  end
  def -@
    @test.downcase 
  end
  def !
    @test.reverse
  end
end

banner = Banner.new("Eat at Vas-Vas")
puts banner 
puts +banner 
puts -banner 

puts !banner 
puts (not banner)
