print 'What is your name? '
name = gets.chomp.capitalize

if name.end_with?('!')
  #name.upcase!.delete_suffix!('!')
  name.upcase!.chop!
  puts "HELLO #{name}. WHY ARE WE SCREAMING?"
else
  name.capitalize!
  puts "Hello #{name}."
end
