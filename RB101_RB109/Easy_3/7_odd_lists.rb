def oddities(arr)
  new_arr = []
  arr.each_with_index { |val, idx| new_arr << val if idx.even?}
  new_arr
end

# def oddities2(arr)
#   new_arr = []
#   count = 0
#   arr.each do |element|
#     new_arr << element if count.even?
#     count += 1
#   end
#   new_arr
# end

# def oddities3(arr)
#   new_arr = []
#   count = 0
#   for i in arr
#     new_arr << i if count.even?
#     count += 1
#   end
#   new_arr
# end

# def evenities(arr)
#   new_arr = []
#   arr.each_with_index { |val, idx| new_arr << val if idx.odd?}
#   new_arr
# end

p oddities3([2, 3, 4, 5, 6]) == [2, 4, 6]
p oddities3([1, 2, 3, 4, 5, 6]) == [1, 3, 5]
p oddities3(['abc', 'def']) == ['abc']
p oddities3([123]) == [123]
p oddities3([]) == []
# puts "======="
# p evenities([2, 3, 4, 5, 6]) == [3, 5]
# p evenities([1, 2, 3, 4, 5, 6]) == [2, 4, 6]
# p evenities(['abc', 'def']) == ['def']
# p evenities([123]) == []
# p evenities([]) == []