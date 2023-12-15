def cleanup(str)
  str.tr('^a-zA-Z', ' ').squeeze(' ')
end

# Second Solution:
# ALPHABET = ('a'..'z').to_a
# def cleanup(str)
#   new_str = str.chars.map do |l|
#     ALPHABET.include?(l.downcase) ? l : ' '
#   end
#   new_str.join.squeeze(' ')
# end

p cleanup("---what's my +*& line?") == ' what s my line '
p cleanup("---what's my +*& line?")
