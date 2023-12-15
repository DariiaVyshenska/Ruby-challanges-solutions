BLOCKS = %w(B|O   X|K   D|Q   C|P   N|A G|T   R|E   F|S   J|W   H|U
  V|I   L|Y   Z|M)

def block_word?(str)
  upcase_str = str.upcase
  BLOCKS.all? { |block| upcase_str.scan(/#{block}/).size <= 1 }
end

p block_word?('BATCH') == true
p block_word?('BUTCH') == false
p block_word?('jest') == true
p block_word?('BATCHh') == false
