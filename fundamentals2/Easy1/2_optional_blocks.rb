def compute(el)
  return el unless block_given?

  yield(el)
end

# p compute { 5 + 3 } == 8
# p compute { 'a' + 'b' } == 'ab'
# p compute == 'Does not compute.'

p compute(3) { |n| n + 1 } == 4
p compute('a') { |ch| [1, 2, 3] << ch} ==[1, 2, 3, "a"]
p compute('smth') == 'smth'
