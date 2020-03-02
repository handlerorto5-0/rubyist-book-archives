class Array
  def my_map
    c = 0
    acc = []
    until c==size
      acc << yield  self[c].to_s
      c +=1
    end
    acc 
  end
end

names = ["man","oil","women"]
names.my_map {|name| puts name.upcase }
