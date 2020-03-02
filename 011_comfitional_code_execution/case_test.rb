puts case
when user.first_name == "David", user.last_name == "Black"
  puts "You might be David Black."
when Time.now.wday == 1
  puts "You're not David Black, but at least it's Monday!"
else
  puts "You're not David Black, and it's not Friday."
end 
