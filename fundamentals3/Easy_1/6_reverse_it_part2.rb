def reverse_words(in_str)
  reverse_if_len_more_four = proc { |word| word.reverse! if word.length >= 5 }
  in_str.split(' ').each(&reverse_if_len_more_four).join(' ')
end

puts reverse_words('Professional') == 'lanoisseforP'
puts reverse_words('Walk around the block') == 'Walk dnuora the kcolb'
puts reverse_words('Launch School') == 'hcnuaL loohcS'
