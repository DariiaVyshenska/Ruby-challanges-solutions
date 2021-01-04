def multiply(num1, num2)
  num1 * num2
end

def square(num, power)
  arr = Array.new(size = power, default = num)
  arr.reduce { |sq, x| multiply(sq, x) }
end


p square(2, 4)