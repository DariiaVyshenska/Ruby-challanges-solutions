def uppercase?(str)
  # clean_str = str.delete('^A-Za-z')
  # clean_str.chars.all? { |ch| ('A'..'Z').include?(ch) }
  
  !str.chars.any? { |ch| ('a'..'z').include?(ch) }
end

p uppercase?('t') == false
p uppercase?('T') == true
p uppercase?('Four Score') == false
p uppercase?('FOUR SCORE') == true
p uppercase?('4SCORE!') == true
p uppercase?('') == true
