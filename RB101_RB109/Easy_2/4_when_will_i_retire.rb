print 'What is your age? '
user_age = gets.to_i
print 'At what age would you like to retire? '
user_retire_age = gets.to_i

current_year = Time.now.year
years_left = user_retire_age - user_age
retire_year = current_year + years_left

puts "It's #{current_year}. You will retire in #{retire_year}."
puts "You have only #{years_left} years of work to go!"