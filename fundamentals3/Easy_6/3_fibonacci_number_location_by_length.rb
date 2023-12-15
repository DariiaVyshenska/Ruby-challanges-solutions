def find_fibonacci_index_by_length(numb_len)
  first_num = 1
  second_num = 2
  count = 3

  loop do
    _ = first_num + second_num
    first_num, second_num = second_num, _
    count += 1
    # p [first_num, second_num, count]
    break if second_num.to_s.size == numb_len
  end

  count
end

p find_fibonacci_index_by_length(2) == 7          # 1 1 2 3 5 8 13
p find_fibonacci_index_by_length(3) == 12         # 1 1 2 3 5 8 13 21 34 55 89 144
p find_fibonacci_index_by_length(10) == 45
p find_fibonacci_index_by_length(100) == 476
p find_fibonacci_index_by_length(1000) == 4782
# p find_fibonacci_index_by_length(10000) == 47847
