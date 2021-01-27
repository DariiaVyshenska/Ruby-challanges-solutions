def print_one_line(lspace, starspace)
  starspacing = ' ' * starspace
  lspacins = ' ' * lspace
  str = lspacins + '*' + starspacing + '*' + starspacing + '*'
  puts str
end

def print_central_line(num)
  puts '*' * num
end

def print_updown_lines(n_half, reverse_flag)
  sp_arr = (0...n_half).to_a
  sp_arr.reverse! if reverse_flag

  n_half.times do |idx|
    print_one_line(sp_arr[idx], sp_arr.reverse[idx])
  end
end

def print_all_lines(n)
  n_half = n / 2
  print_updown_lines(n_half, false)
  print_central_line(n)
  print_updown_lines(n_half, true)
end

print_all_lines(21)
