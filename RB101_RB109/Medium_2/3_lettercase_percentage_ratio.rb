UPCASE = ('A'..'Z').to_a
LOWCASE = ('a'..'z').to_a

def one_letter_hsh_update(hsh, letter)
  if UPCASE.include?(letter)
    hsh[:uppercase] += 1
  elsif LOWCASE.include?(letter)
    hsh[:lowercase] += 1
  else
    hsh[:neither] += 1
  end
  hsh
end

def letter_percentages(str)
  str_size = str.size.to_f
  count_hsh = { lowercase: 0, uppercase: 0, neither: 0 }
  str.chars.each { |ch| one_letter_hsh_update(count_hsh, ch) }
  count_hsh.each_pair { |k, v| count_hsh[k] = (v / str_size * 100).round(2) }
  count_hsh
end

p letter_percentages('abCdef 123') == { lowercase: 50, uppercase: 10, neither: 40 }
p letter_percentages('AbCd +Ef') == { lowercase: 37.5, uppercase: 37.5, neither: 25 }
p letter_percentages('123') == { lowercase: 0, uppercase: 0, neither: 100 }
p letter_percentages('abcdefGHI') == {:lowercase=>66.67, :uppercase=>33.33, :neither=>0.0}
