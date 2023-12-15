AVAIL_METHODS = {
  's' => [:+, 'sum'],
  'p' => [:*, 'product']
}

def prompt(message)
  puts ">> #{message}"
end

def valid_integer?(num)
  num.to_i.to_s == num
end

def valid_integer_input?(num)
  valid_integer?(num) && num.to_i.positive?
end

def user_number
  loop do
    prompt 'Please enter an integer greater than 0:'
    user_number = gets.chomp
    break user_number.to_i if valid_integer_input?(user_number)

    prompt 'Error! Please, provide a NON-ZERO INTEGER.'
  end
end

def user_method_choice
  loop do
    prompt "Enter 's' to compute the sum, 'p' to compute the product."
    user_method_choice = gets.chomp
    break user_method_choice if AVAIL_METHODS.keys.include?(user_method_choice)

    puts 'Error! Please, provide a valid method selection.'
  end
end

user_number = get_user_number
user_method_choice = get_user_method_choice

perform_method, output_name = AVAIL_METHODS[user_method_choice]
result = (1..user_number).reduce(perform_method)

puts "The #{output_name} of the integers between 1 and #{user_number}" \
    " is #{result}."
