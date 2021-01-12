DOUBLE_CHARS = ('a'..'z').to_a - %w[a e i o u]

def double_consonants(str)
  new_str = ''
  str.each_char do |ch|
    new_str << (DOUBLE_CHARS.include?(ch.downcase) ? (ch * 2) : ch)
  end
  new_str
end

p double_consonants('String') == "SSttrrinngg"
p double_consonants("Hello-World!") == "HHellllo-WWorrlldd!"
p double_consonants("July 4th") == "JJullyy 4tthh"
p double_consonants('') == ""
