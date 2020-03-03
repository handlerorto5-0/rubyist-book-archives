print "Enter file name: "
filename = gets.chomp

begin
  fn = File.open(filename)
rescue => e
  logfile.puts("User tried to open #{filename}, #{Time.now}")
  logfile.puts("Exception: #{e.message}")
  raise
end
