# def fibonacci(n)
#   return 1 if n <= 2
#   fibonacci(n-2) + fibonacci(n-1)
# end


def fibonacci_tail(nth, acc1, acc2)
  # return 0 if nth.zero? # to take care of edge case F(0)
  if nth == 1
    acc1
  elsif nth == 2
    acc2
  else
    # puts "acc1 is #{acc2}, ass2 is #{acc2 + acc1}"
    fibonacci_tail(nth - 1, acc2, acc2 + acc1)
  end
end

def fibonacci(nth)
  fibonacci_tail(nth, 1, 1)
end

# p fibonacci(1) == 1
# p fibonacci(2) == 1
# p fibonacci(3) == 2
# p fibonacci(4) == 3
# p fibonacci(5) == 5
# p fibonacci(12) == 144
# p fibonacci(20) == 6765
p fibonacci(0) == 0
