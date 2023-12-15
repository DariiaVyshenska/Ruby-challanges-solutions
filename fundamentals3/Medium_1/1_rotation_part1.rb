def rotate_array(arr)
  arr_copy = Array.new(arr)
  arr_copy << arr_copy.shift
end

def rotate_str(str)
  str[1..-1] + str[0]
end

def rotate_num(num)
  rotate_str(num.to_s).to_i
end

p rotate_array([7, 3, 5, 2, 9, 1]) == [3, 5, 2, 9, 1, 7]
p rotate_array(['a', 'b', 'c']) == ['b', 'c', 'a']
p rotate_array(['a']) == ['a']

x = [1, 2, 3, 4]
p rotate_array(x) == [2, 3, 4, 1]   # => true
p x == [1, 2, 3, 4]                 # => true

puts '****'
p rotate_str('something') == 'omethings'

puts '****'
p rotate_num(12345) == 23451
