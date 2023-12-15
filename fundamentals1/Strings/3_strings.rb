name = 'Roger'

# version one
# puts name.downcase == 'RoGeR'.downcase
# puts name.downcase == 'DAVE'.downcase

# version two
def compare_str(x,y)
  return x.casecmp(y) == 0 ? true : false
end

puts compare_str(name, 'RoGeR')
puts compare_str(name, 'DAVE')