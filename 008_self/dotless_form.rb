class C
  def C.no_dot
    puts "As long as self is C, you can xall this method with no dot"
  end
  no_dot # shorthand self.no_dot, because we’re inside C ’s definition block
end
C.no_dot

# calling one instance method from amother
class D
  def x
    puts "This is method 'x'"
  end
  def y
    puts "this is method 'y', aboyt to call x withoyt a dot"
    x
  end
end
d = D.new
d.y