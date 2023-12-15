def merge(array1, array2)
  index2 = 0
  result = []

  array1.each do |value|
    while index2 < array2.size && array2[index2] <= value
      result << array2[index2]
      index2 += 1
    end
    result << value
  end

  result.concat(array2[index2..-1])
end

# def merge_sort(arr)
#   return arr if arr.size == 1
#
#   half_idx = arr.size / 2
#   arr1, arr2 = arr[0...half_idx], arr[half_idx..-1]
#   merge(merge_sort(arr1), merge_sort(arr2))
# end

#
# p merge_sort([9, 5, 7, 1]) == [1, 5, 7, 9]
# p merge_sort([5, 3]) == [3, 5]
# p merge_sort(%w(Sue Pete Alice Tyler Rachel Kim Bonnie)) == %w(Alice Bonnie Kim Pete Rachel Sue Tyler)
# p merge_sort([7, 3, 9, 15, 23, 1, 6, 51, 22, 37, 54, 43, 5, 25, 35, 18, 46]) == [1, 3, 5, 6, 7, 9, 15, 18, 22, 23, 25, 35, 37, 43, 46, 51, 54]

def merge_sort_nonrec(arr)
  split_arr = arr.each_with_object([]) { |el, obj| obj << [el] }

  loop do
    new_arr = []
    split_arr << [] if split_arr.size.odd?

    split_arr.each_index do |idx|
      new_arr << merge(split_arr[idx], split_arr[idx + 1]) if idx.even?
    end

    split_arr.replace(new_arr)
    break if split_arr.size == 1
  end

  split_arr[0]
end

p merge_sort_nonrec([9, 5, 7, 1]) == [1, 5, 7, 9]
p merge_sort_nonrec([9, 5, 7]) == [5, 7, 9]
p merge_sort_nonrec([5, 3]) == [3, 5]
p merge_sort_nonrec(%w(Sue Pete Alice Tyler Rachel Kim Bonnie)) == %w(Alice Bonnie Kim Pete Rachel Sue Tyler)
p merge_sort_nonrec([7, 3, 9, 15, 23, 1, 6, 51, 22, 37, 54, 43, 5, 25, 35, 18, 46]) == [1, 3, 5, 6, 7, 9, 15, 18, 22, 23, 25, 35, 37, 43, 46, 51, 54]
