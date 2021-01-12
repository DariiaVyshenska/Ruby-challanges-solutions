def center_of(str)
  str_size = str.chars.size
  idx = str_size / 2
  if str_size.even?
    return str.slice(idx - 1, 2)
  end
  str.slice(idx)
end

p center_of('I love ruby') == 'e'
p center_of('Launch School') == ' '
p center_of('Launch') == 'un'
p center_of('Launchschool') == 'hs'
p center_of('x') == 'x'
