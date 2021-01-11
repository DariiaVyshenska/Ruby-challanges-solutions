def staggered_case(str)
  new_str = ''
  str.each_char
  .each_with_index { |ch, idx| new_str << (idx.even? ? ch.upcase : ch.downcase) }
  new_str
end

p staggered_case('I Love Launch School!') == 'I LoVe lAuNcH ScHoOl!'
p staggered_case('ALL_CAPS') == 'AlL_CaPs'
p staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 NuMbErS'
