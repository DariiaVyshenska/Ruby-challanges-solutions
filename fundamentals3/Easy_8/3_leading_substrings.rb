def leading_substrings(str)
  new_arr = []
  0.upto(str.size - 1) { |i| new_arr << str.slice(0..i) }
  new_arr
end

p leading_substrings('abc') == ['a', 'ab', 'abc']
p leading_substrings('a') == ['a']
p leading_substrings('xyzzy') == ['x', 'xy', 'xyz', 'xyzz', 'xyzzy']
