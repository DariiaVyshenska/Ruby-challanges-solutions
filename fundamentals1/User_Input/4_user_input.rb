# my initial answer
loop do
  puts "Do you want me to print something? (y/n)"
  answer = gets.chomp.downcase
  if answer == "y"
    puts "something"
    break
  elsif answer == "n"
    break
  else
    puts ">> Invalid input! Please enter y or n"
    next
  end
end

# # re-writing the correct answer
# answer = nil

# loop do
#   puts "Do you want me to print something? (y/n)"
#   answer = gets.chomp.downcase
#   break if %w(y n).include? answer
#   puts ">> Invalid input! Please enter y or n"
# end

# puts "something" if answer == 'y'