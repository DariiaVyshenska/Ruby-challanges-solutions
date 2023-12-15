# def insert_by_idx(arr, val)
#   bool = arr.map { |i| i > val }
#   idx = bool.find_index(true)
#   if idx
#     arr.insert(idx, val)
#   else
#     arr << val
#   end
#   arr
# end
#
# def merge(arr1, arr2)
#   concat_arr = arr1 + arr2
#   new_arr = concat_arr[0..0]
#   concat_arr[1...concat_arr.size].each do |val|
#     insert_by_idx(new_arr, val)
#   end
#   new_arr
# end

def merge(arr1, arr2)
  new_arr = []
  sh_idx = 0
  l_idx = 0

  if arr1.size > arr2.size
    arr_short, arr_long = arr2, arr1
  elsif arr1.size < arr2.size
    arr_short, arr_long = arr1, arr2
  else
    arr_short, arr_long = arr1, arr2
  end

  size_short = arr_short.size
  size_long = arr_long.size
  loop do
    break if (sh_idx == (size_short)) | (l_idx == (size_long))

    if arr_short[sh_idx] < arr_long[l_idx]
      new_arr << arr_short[sh_idx]
      sh_idx += 1
    elsif arr_short[sh_idx] == arr_long[l_idx]
      new_arr << (arr_short[sh_idx] + arr_long[l_idx])
      sh_idx += 1
      l_idx += 1
    else
      new_arr << arr_long[l_idx]
      l_idx += 1
    end
  end

  new_arr.concat(arr_long[l_idx..-1]) if l_idx != size_long
  new_arr.concat(arr_short[sh_idx..-1]) if sh_idx != size_short
  new_arr
end




# p merge([1, 5, 9], [2, 6, 8]) == [1, 2, 5, 6, 8, 9]
# p merge([2, 6, 8], [1, 5, 9]) == [1, 2, 5, 6, 8, 9]
# p merge([1, 1, 3], [2, 2]) == [1, 1, 2, 2, 3]
p merge([], [1, 4, 5]) == [1, 4, 5]
# p merge([1, 4, 5], []) == [1, 4, 5]
p merge([5], [])
