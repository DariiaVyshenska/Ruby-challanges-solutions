ALLOWED_CHARS = ('a'..'z').to_a + ('0'..'9').to_a

def palindrome?(str)
  str.reverse == str
end

def real_palindrome?(str)
  test_str = str.downcase.chars.select { |i| ALLOWED_CHARS.include?(i) }.join
  palindrome?(test_str)
end

p real_palindrome?('madam') == true
p real_palindrome?('Madam')== true           # (case does not matter)
p real_palindrome?("Madam, I'm Adam") == true # (only alphanumerics matter)
p real_palindrome?('356653') == true
p real_palindrome?('356a653') == true
p real_palindrome?('123ab321') == false