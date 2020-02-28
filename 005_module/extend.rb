module Convertible
  def c2f(celsius)
    celsius * 9.0 / 5 + 32
  end
  def f2c(fahrenheit)
    (fahrenheit - 32) * 5 / 9.0
  end
end

class Temperature
  extend Convertible
end

puts Temperature.c2f(100)
puts Temperature.f2c(212)