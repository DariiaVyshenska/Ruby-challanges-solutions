pass = nil
REAL_PASS = "SecreT"
REAL_USERNAME = "admin"

loop do
  puts ">> Please enter user name:"
  username = gets.chomp
  puts ">> Please enter your password:"
  pass = gets.chomp
  break if (pass == REAL_PASS) && (username == REAL_USERNAME)
  puts ">> Authorization failed!"
end

puts "Welcome!"