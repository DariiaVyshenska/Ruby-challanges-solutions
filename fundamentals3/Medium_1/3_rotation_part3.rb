def rotate_str(str)
  str[1..-1] + str[0]
end

def rotate_rightmost_digits(num, amount)
  str = num.to_s
  str[-amount..-1] = rotate_str(str[-amount..-1])
  str.to_i
end

def max_rotation(num)
  str = num.to_s
  (1..str.size).to_a.reverse_each { |i| str = rotate_rightmost_digits(str, i)}
  str
end

p max_rotation(735291) == 321579
p max_rotation(3) == 3
p max_rotation(35) == 53
p max_rotation(105) == 15 # the leading zero gets dropped
p max_rotation(8_703_529_146) == 7_321_609_845
