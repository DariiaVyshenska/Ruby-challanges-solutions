def average(arr_of_int)
  arr_of_int.sum.to_f / arr_of_int.length
end

puts average([1, 6])# == 3 # integer division: (1 + 6) / 2 -> 3
puts average([1, 5, 87, 45, 8, 8])# == 25
puts average([9, 47, 23, 95, 16, 52])# == 40
