p( 
  File.open('report.dat').slice_before do |line|
    p=line.start_with?("=")
  end.to_a
 )


