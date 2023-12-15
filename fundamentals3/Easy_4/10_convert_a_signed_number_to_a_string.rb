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

def signed_integer_to_string(num)
  sign = case num <=> 0
         when -1 
           num *= -1
           '-'
         when 1 then '+'
         else ''
         end
  sign + integer_to_string(num)
end

p signed_integer_to_string(4321) == '+4321'
p signed_integer_to_string(-123) == '-123'
p signed_integer_to_string(0) == '0'
