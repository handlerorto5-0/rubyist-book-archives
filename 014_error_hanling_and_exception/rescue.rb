def open_user_file
  print "File to open: "
  filename = gets.chomp
  # binding.irb
  begin
    fh = File.open(filename)
  rescue
    puts "Couldn't open your file!"
    return
  end
  yield fn if block_given?
  fh.close
end

open_user_file 


