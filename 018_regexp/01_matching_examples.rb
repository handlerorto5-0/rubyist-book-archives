str = "My phone number is (123) 555-1234."
phone_re = %r{\((\d{3})\)\s+(\d{3})-(\d{4})}
m = phone_re.match(str)
unless m
  puts "There was no match-sorry."
  exit
end
print "The whole string we started with: "
puts m.string
print "The entire part of the string that matched: "
puts m[0]
puts "The thee captures: "
3.times do |index|
  puts "Capture ##{index + 1}: #{m.captures[index]}"
end
puts "Here's another way to get the first capture: "
print  "Capture #1: "
puts m[1]
puts "-------------------------"
print "The part of the string before the part that matched was: "
puts m.pre_match
print "The part of the string after the part that matched was: "
puts m.post_match
print "The second capture began at character "
puts m.begin(2)
print "The third capture ended at character "
puts m.end(3)
