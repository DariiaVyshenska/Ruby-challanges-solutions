def century_ending(centr)
  ending = if %w[11 12 13].include?(centr[-2, 2])
             'th'
           elsif centr[-1] == '1'
             'st'
           elsif centr[-1] == '2'
             'nd'
           elsif centr[-1] == '3'
             'rd'
           else
             'th'
           end
  centr + ending
end

def century(year)
  centr = year / 100
  centr += 1 unless (year % 100).zero?
  century_ending(centr.to_s)
end

p century(2000) == '20th'
p century(2001) == '21st'
p century(1965) == '20th'
p century(256) == '3rd'
p century(5) == '1st'
p century(10103) == '102nd'
p century(1052) == '11th'
p century(1127) == '12th'
p century(11201) == '113th'

# century(2000)# == '20th'
# century(2001)# == '21st'
# century(1965)# == '20th'
# century(256)# == '3rd'
# century(5)# == '1st'
# century(10103)# == '102nd'
# century(1052)# == '11th'
# century(1127)# == '12th'
# century(11201)# == '113th'
