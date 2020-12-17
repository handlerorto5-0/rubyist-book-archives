# irb -I. -r sym2proc
# %w{slava rodin}.map(&:capitalize)
#
class Symbol
  def to_proc
    puts "In the new Symbol#to_proc!"
    Proc.new {|obj| obj.public_send(self)}
  end
end

%w{slava rodin}.map(&:capitalize)
