def valid_number?(number_string)
  number_string.to_i.to_s == number_string
end

n = nil
d = nil

loop do
  puts ">> Please enter the numerator:"
  n = gets.chomp
  break if valid_number?(n)
  puts ">> Invalid input. Only integers are allowed."
end

loop do
  puts ">> Please enter the denominator:"
  d = gets.chomp
  if d == "0"
    puts ">> Invalid input. A denominator of 0 is not allowed."
  else
    break if valid_number?(d)
    puts ">> Invalid input. Only integers are allowed."
  end

end

puts "#{n}/#{d} is #{n.to_i/d.to_i}"