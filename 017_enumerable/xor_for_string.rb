class String
  def ^(key)
    kenum = key.each_byte.cycle
    each_byte.map {|byte| byte ^ kenum.next}.pack("C*").force_encoding(self.encoding)
  end
end

str = "Nice little string."
puts "String: #{str}"
key = "secret!"
puts "Key: #{key}"
x = str^key 
puts "XOR-string: #{x}"
orig = x^key
puts "Original string: #{orig}"
