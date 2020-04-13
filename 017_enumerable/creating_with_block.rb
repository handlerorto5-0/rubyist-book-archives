e = Enumerator.new do |y|
  puts "Starting up the block!"
  (1..3).each {|i| y << i}
  puts "Exiting the block!"
end

p e.to_a
p e.select {|x| x > 2}


