def stringy(len, start=1)
  start = start.to_s
  next_val = start == '1' ? '0':'1'
  
  out_str = ''
  len.times do |inx|
    new_value = inx.even? ? start:next_val
    out_str << new_value
  end
  out_str
end


puts stringy(6) == '101010'
puts stringy(9) == '101010101'
puts stringy(4) == '1010'
puts stringy(7) == '1010101'
puts '=========='
puts stringy(6,0) == '010101'