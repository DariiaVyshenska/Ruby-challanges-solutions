def valid_number?(number_string)
  number_string.to_i.to_s == number_string && number_string.to_i != 0
end


def get_number
  loop do
    puts ">> Please enter a positive or negative integer:"
    x = gets.chomp
    return x.to_i if valid_number?(x)
    puts '>> Invalid input. Only non-zero integers are allowed.'
  end
end

a = nil
b = nil

loop do
  a = get_number
  b = get_number
  break if [a, b].min < 0 && [a, b].max > 0
  puts '>> Sorry. One integer must be positive, one must be negative.'
  puts '>> Please start over.'
end

puts "#{a} + #{b} = #{a+b}"