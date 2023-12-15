pass = nil
real_pass = "SecreT"

loop do
  puts ">> Please enter your password:"
  pass = gets.chomp
  break if pass == real_pass
  puts "Invalid password!"
end

puts "Welcome!"