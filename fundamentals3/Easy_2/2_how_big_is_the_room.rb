puts 'Enter the length of the room in meters:'
room_length = gets.to_f
puts 'Enter the width of the room in meters:'
room_width = gets.to_f

area_meters = (room_length * room_width).round(2)
area_feet = (area_meters * 10.7639).round(2)

puts "The area of the room is #{area_meters} square meters " + \
     "(#{area_feet} square feet)."