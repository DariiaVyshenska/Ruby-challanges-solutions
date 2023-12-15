def repeater(str)
  new_str = ''
  str.each_char { |ch| new_str << ch*2 }
  new_str
end

p repeater('Hello') == "HHeelllloo"
p repeater("Good job!") == "GGoooodd  jjoobb!!"
p repeater('') == ''
