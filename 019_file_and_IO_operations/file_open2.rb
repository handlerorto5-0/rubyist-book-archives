File.open("code/hits.txt") do |f|
  f.each do |record|
    album, artist, year = record.chomp.split('/')
    puts "\"#{album}, \" performed by #{artist}, reached #1 in #{year}."
  end 
end
