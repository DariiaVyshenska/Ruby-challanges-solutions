def bubble_sort!(arr)
  loop do
    sorted_flag = true
    0.upto(arr.size - 2) do |idx|
      next if arr[idx] <= arr[idx + 1]

      arr[idx + 1], arr[idx] = arr[idx], arr[idx + 1]
      sorted_flag = false
    end
    break if sorted_flag
  end
  arr
end

array = [5, 3]
bubble_sort!(array)
p array == [3, 5]

array = [6, 2, 7, 1, 4]
bubble_sort!(array)
p array == [1, 2, 4, 6, 7]

array = %w(Sue Pete Alice Tyler Rachel Kim Bonnie)
bubble_sort!(array)
p array == %w(Alice Bonnie Kim Pete Rachel Sue Tyler)
