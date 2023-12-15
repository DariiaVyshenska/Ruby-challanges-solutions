OPERATIONS_HASH = {
  '+' => :+,
  '-' => :-,
  '*' => :*,
  '/' => :/,
  '%' => :%,
  '**' => :**
}

def prompt(message)
  puts "==> #{message}"
end

user_numbers = []
prompt 'Enter the first number:'
user_numbers << gets.to_i

prompt 'Enter the second number:'
user_numbers << gets.to_i

OPERATIONS_HASH.each do |key, operation|
  operation_result = user_numbers.reduce(operation)
  prompt "#{user_numbers[0]} #{key} #{user_numbers[1]} = #{operation_result}"
end
