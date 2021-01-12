def leading_substrings(str)
  new_arr = []
  0.upto(str.size - 1) { |i| new_arr << str.slice(0..i) }
  new_arr
end

def substrings(str)
  end_idx = str.size - 1
  new_arr = []
  0.upto(end_idx) do |i|
    new_arr.concat(leading_substrings(str[i..end_idx]))
  end
  new_arr
end

p substrings('abcde') == [
  'a', 'ab', 'abc', 'abcd', 'abcde',
  'b', 'bc', 'bcd', 'bcde',
  'c', 'cd', 'cde',
  'd', 'de',
  'e'
]
