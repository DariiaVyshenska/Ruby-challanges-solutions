def rotate_str(str)
  str[1..-1] + str[0]
end

def rotate_rightmost_digits(num, amount)
  str = num.to_s
  str[-amount..-1] = rotate_str(str[-amount..-1])
  str.to_i
end

p rotate_rightmost_digits(735291, 1) == 735291
p rotate_rightmost_digits(735291, 2) == 735219
p rotate_rightmost_digits(735291, 3) == 735912
p rotate_rightmost_digits(735291, 4) == 732915
p rotate_rightmost_digits(735291, 5) == 752913
p rotate_rightmost_digits(735291, 6) == 352917
