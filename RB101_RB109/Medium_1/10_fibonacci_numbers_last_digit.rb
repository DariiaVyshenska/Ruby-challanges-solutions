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

def fibonacci_last(nth)
  fibonacci(nth) % 10
end


p fibonacci_last(15)        # -> 0  (the 15th Fibonacci number is 610)
p fibonacci_last(20)        # -> 5 (the 20th Fibonacci number is 6765)
p fibonacci_last(100)       # -> 5 (the 100th Fibonacci number is 354224848179261915075)
p fibonacci_last(100_001)   # -> 1 (this is a 20899 digit number)
p fibonacci_last(1_000_007) # -> 3 (this is a 208989 digit number)
fibonacci_last(123456789) # -> 4
