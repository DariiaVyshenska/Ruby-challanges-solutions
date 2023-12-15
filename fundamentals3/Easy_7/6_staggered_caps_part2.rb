ALL_CHRS = ('A'..'Z').to_a + ('a'..'z').to_a

def staggered_case(str)
  new_str = ''
  up_flag = true
  str.chars.each do |i|
    if ALL_CHRS.include?(i)
      if up_flag
        new_str << i.upcase
      else
        new_str << i.downcase
      end
      up_flag = !up_flag
    else
      new_str << i
    end
  end
  new_str
end

p staggered_case('I Love Launch School!') == 'I lOvE lAuNcH sChOoL!'
p staggered_case('ALL CAPS') == 'AlL cApS'
p staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 nUmBeRs'
