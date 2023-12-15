numbers = {
  high:   100,
  medium: 50,
  low:    10
}

half_numbers = numbers.each_value.map {|i| i/2}
# or 
# half_numbers = numbers.map {|x,y| y/2}
p half_numbers