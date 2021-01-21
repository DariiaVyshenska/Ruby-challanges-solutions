POWER = 2

def sum_square_difference(num)
  return 'Error! The number must be positive integer!' unless num.positive?

  num_arr = (1..num).to_a
  num_arr.reduce(&:+)**POWER - num_arr.map { |i| i**POWER }.reduce(&:+)
end

p sum_square_difference(0)
p sum_square_difference(3) == 22
# -> (1 + 2 + 3)**2 - (1**2 + 2**2 + 3**2)
p sum_square_difference(10) == 2640
p sum_square_difference(1) == 0
p sum_square_difference(100) == 25164150
