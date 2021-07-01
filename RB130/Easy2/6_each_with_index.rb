def each_with_index(arr)
  idx = 0
  loop do
    yield(arr[idx], idx)
    idx += 1
    break if idx == arr.size
  end
  arr
end

result = each_with_index([1, 3, 6]) do |value, index|
  puts "#{index} -> #{value**index}"
end

puts result == [1, 3, 6]
