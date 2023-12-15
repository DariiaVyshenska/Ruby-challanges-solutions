creature_age = (20..200).to_a.sample

puts "=>Please, enter creature's name: "
creature_name = gets.chomp.capitalize
creature_name = 'Teddy' if creature_name.empty?

puts "#{creature_name} is #{creature_age} years old!"
