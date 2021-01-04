SQ_FEET_TO_INCHES_CONSTANT = 144
SQ_FEET_TO_CM_CONSTANT = 929.0304

puts 'Enter the length of the room in feet:'
room_length = gets.to_f
puts 'Enter the width of the room in feet:'
room_width = gets.to_f

area_feet = (room_length * room_width).round(2)
area_inches = area_feet * SQ_FEET_TO_INCHES_CONSTANT
area_cm = area_feet * SQ_FEET_TO_CM_CONSTANT

puts "The area of the room is: \n" \
     "#{area_feet} square feet,\n" \
     "#{area_inches} square inches,\n" \
     "#{area_cm} square centimeters."
