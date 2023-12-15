def fizzbuzz(start_num, end_num)
  num_arr = (start_num..end_num).to_a
  num_arr.each_with_index do |num, idx|
    num_arr[idx] = 'Fizz' if num.remainder(3) == 0
    num_arr[idx] = 'Buzz' if num.remainder(5) == 0
    num_arr[idx] = 'FizzBuzz' if num.remainder(3*5) == 0
  end
  puts num_arr * ', '
end

fizzbuzz(1, 15) # -> 1, 2, Fizz, 4, Buzz, Fizz, 7, 8, Fizz, Buzz, 11, Fizz, 13, 14, FizzBuzz

#num_arr[i].remainder(3) == 0
