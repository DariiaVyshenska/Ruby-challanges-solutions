def leading_substrings(str)
  new_arr = []
  0.upto(str.size - 1) { |i| new_arr << str.slice(0..i) }
  new_arr
end

def substrings(str)
  end_idx = str.size - 1
  new_arr = []
  0.upto(end_idx) do |i|
    new_arr.concat(leading_substrings(str[i..end_idx]))
  end
  new_arr
end

def palindromes(str)
  all_comp = substrings(str)
  all_comp = all_comp.map(&:downcase).map { |i| i.delete('^a-z')}
  all_comp.select { |i| i.size > 1 && i == i.reverse}
end

p palindromes('abcd') == []
p palindromes('madam') == ['madam', 'ada']
p palindromes('hello-madam-did-madam-goodbye')
 # == [
 #  'll', '-madam-', '-madam-did-madam-', 'madam', 'madam-did-madam', 'ada',
 #  'adam-did-mada', 'dam-did-mad', 'am-did-ma', 'm-did-m', '-did-', 'did',
 #  '-madam-', 'madam', 'ada', 'oo']
p palindromes('knitting cassettes') == [  'nittin', 'itti', 'tt', 'ss', 'settes', 'ette', 'tt']
