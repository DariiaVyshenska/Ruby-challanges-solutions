DIGITS_TO_CHARS = ['0', '1', '2', '3', '4', '5', '6', '7', '8', '9']

def integer_to_string(num)
  dec = 1
  str_arr = []
  loop do
    curren_reminder = num % 10 ** dec
    previous_dec = 10**(dec - 1)
    previous_reminder = num % previous_dec
    curr_number = (curren_reminder - previous_reminder) / previous_dec

    str_arr << DIGITS_TO_CHARS[curr_number]
    
    break if (num / 10 ** dec) == 0
    dec += 1
  end
  str_arr.reverse.join
end


p integer_to_string(4321) == '4321'
p integer_to_string(0) == '0'
p integer_to_string(5000) == '5000'