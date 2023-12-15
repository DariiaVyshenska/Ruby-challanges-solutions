def print_in_box(sent)
  len = sent.size + 4
  top_bottom = '+' + '-' * (len - 2) + '+'
  pad_line = '|' + ' ' * (len - 2) + '|'
  cent_line = '| ' + sent + ' |'
  puts top_bottom
  puts pad_line
  puts cent_line
  puts pad_line
  puts top_bottom
end

print_in_box('To boldly go where no one has gone before.')
print_in_box('')
print_in_box('Abyss and Komoe are great!')
