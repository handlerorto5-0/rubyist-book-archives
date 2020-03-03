def fuzzy_method (x)
  raise ArgumentError, "I need a number under 10" unless x < 10
end

begin
  fuzzy_method(20)
rescue ArgumentError => e
  puts "that was not an acceptable number!"
  puts "here's the backtrace for this exeption:"
  puts e.backtrace 
  puts "and here's the exeption object's message: "
  puts e.message 
end
