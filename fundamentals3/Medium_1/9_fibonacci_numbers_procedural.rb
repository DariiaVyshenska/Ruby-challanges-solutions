def fibonacci(num)
  return nil if !(num.is_a? Numeric) || num.negative?

  return 0 if num.zero?

  num1, num2 = 1, 1
  while num > 2
    num1, num2 = num2, num1 + num2
    num -= 1
  end
  num2
end

p fibonacci(1) == 1
p fibonacci(2) == 1
p fibonacci(3) == 2
p fibonacci(4) == 3
p fibonacci(5) == 5
p fibonacci(12) == 144

p fibonacci(20) == 6765
p fibonacci(100) == 354224848179261915075
# p fibonacci(100_001) # => 4202692702.....8285979669707537501
p fibonacci(-1)
p fibonacci('a')
