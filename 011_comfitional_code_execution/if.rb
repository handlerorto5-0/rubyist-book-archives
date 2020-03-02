x = 12
if x > 10 then puts x end 
if x > 10; puts x; end 

def print_conditionally
  print "Enter an integer: "
  n = gets.to_i
  if n > 0
    puts "Your number is positive."
  elsif n < 0
    puts "Your number is negative." 
  else 
    puts "Your number is zero."    
  end
end
print_conditionallyi 

# negating congitions with not and !
if not (x==0); puts x; end
if !(x==0); puts x; end
if not x==0; puts x; end
if !x==1; puts x; end
if (!x)==0; puts x; end

# the unless keyword
unless x > 100
  puts "Small number"
else
  puts "Big number"
end
# conditionfl modifiers
puts "Big number!" if x > 100
puts "Big number!" unless x <= 100
puts "done" && return (x>y && a<b)
#error patern
if nil;end
if false;end


