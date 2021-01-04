def str_palindrome?(str)
  str.reverse == str
end

def arr_palindrome?(arr)
  arr.map { |str| str_palindrome?(str)}.all?
end

def palindrome?(test_obj)
  return_val = nil
  test_obj.is_a?(String) ? return_val = str_palindrome?(test_obj) : nil
  test_obj.is_a?(Array) ? return_val = arr_palindrome?(test_obj) : nil
  return_val
end

p palindrome?('madam')# == true
p palindrome?('Madam')# == false
p palindrome?(['madam', 'Madam'])# == false
p palindrome?(['madam', '356653'])# == true