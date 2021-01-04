# def running_total(arr)
#   new_arr = []
#   arr.length.times { |i| new_arr << arr.slice(0, (i + 1)).reduce(:+) }
#   new_arr
# end

def running_total(arr)
  current_val = 0
  arr.each_with_object([]) {|i, obj| obj << current_val += i}
end

p running_total([2, 5, 13]) == [2, 7, 20]
p running_total([14, 11, 7, 15, 20]) == [14, 25, 32, 47, 67]
p running_total([3]) == [3]
p running_total([]) == []