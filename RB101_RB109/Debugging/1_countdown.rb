# 10.times do |i|
#   puts 10 - i
# end
#
# puts 'LAUNCH!'

def decrease(counter)
  counter - 1
end

counter = 10

until counter == 0 do
  puts counter
  counter = decrease(counter)
end

puts 'LAUNCH!'
