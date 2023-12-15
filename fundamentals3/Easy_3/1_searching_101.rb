TOTAL_ROUNDS = 6

def endings(num)
  case num
  when 1 then 'st'
  when 2 then 'nd'
  when 3 then 'rd'
  else 'th'
  end
end

def get_search_array
  numbers_arr = []
  (TOTAL_ROUNDS - 1).times do |i|
    input_number = i + 1
    puts "==> Enter the #{input_number}#{endings(input_number)} number:"
    numbers_arr << gets.chomp.to_i
  end
  numbers_arr
end

def get_num_to_search
  puts '==> Enter the last number:'
  gets.chomp.to_i
end

search_arr = get_search_array
search_num = get_num_to_search

result = search_arr.include?(search_num) ? 'appears' : 'does not appear'
puts "The number #{search_num} #{result} in #{search_arr}."
