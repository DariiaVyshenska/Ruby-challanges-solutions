def greetings(arr, hsh)
  name = arr.map(&:capitalize).join(' ')
  profess = [hsh[:title], hsh[:occupation]].map(&:capitalize).join(' ')
  puts format(%(Hello, #{name}! Nice to have a #{profess} around.))
end

greetings(['John', 'Q', 'Doe'], { title: 'Master', occupation: 'Plumber' })
#=> Hello, John Q Doe! Nice to have a Master Plumber around.
