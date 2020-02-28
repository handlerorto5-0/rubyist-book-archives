# stacklikeness - the last in, first out (LIFO)

module Stacklike
  def stack
    @stack ||=[]
  end
  def add_to_stack(obj)
    stack.push(obj)
  end
  def take_from_stack
    stack.pop
  end
end