def count_occurrences(in_arr)
  out_arr = Hash.new(0)
  in_arr.each { |element| out_arr[element] += 1 }
  out_arr.each { |key, value| puts "#{key} => #{value}" }
  #nil
end

def count_occurrences_caseins(in_arr)
  case_dn_arr = in_arr.map(&:downcase)
  count_occurrences(case_dn_arr)
end

vehicles = [
  'car', 'car', 'truck', 'car', 'SUV', 'truck',
  'motorcycle', 'motorcycle', 'car', 'truck', 'suv'
  ]

puts 'Case sensative results:'
count_occurrences(vehicles)
puts '========='
puts 'Case insensative results:'
count_occurrences_caseins(vehicles)
