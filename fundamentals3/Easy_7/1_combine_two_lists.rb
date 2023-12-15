# def interleave(arr1, arr2)
#   new_arr = Array.new(arr1.size + arr2.size)
#   arr1_copy = Array(arr1)
#   arr2_copy = Array(arr2)
#   new_arr.each_index { |i| new_arr[i] = arr1_copy.shift if i.even?}
#   new_arr.each_index { |i| new_arr[i] = arr2_copy.shift if i.odd?}
#   new_arr
# end
def interleave(array1, array2)
  result = []
  array1.each_with_index do |element, index|
    result << element << array2[index]
  end
  result
end

a = [1, 2, 3]
b = ['a', 'b', 'c']

p interleave(a, b)# == [1, 'a', 2, 'b', 3, 'c']
p a
p b
