def get_bool_switch(arr_size, position)
  (1..arr_size).to_a.map { |i| (i % position).zero? }
end

def switch_one(flags_arr, arr_size, position)
  sw_idxs = get_bool_switch(arr_size, position)
  flags_arr.each_index do |idx|
    flags_arr[idx] = !flags_arr[idx] if sw_idxs[idx]
  end
  nil
end

def switch_all(flags_arr, arr_size)
  (1..arr_size).each { |i| switch_one(flags_arr, arr_size, i) }
  nil
end

def get_light_on_position(flags_arr)
  flags_arr.each_index.select { |idx| flags_arr[idx] }.map { |i| i + 1 }
end

def lights(arr_size)
  flags_arr = Array.new(arr_size, false)
  switch_all(flags_arr, arr_size)
  get_light_on_position(flags_arr)
end

p lights(5) == [1, 4]
p lights(10) == [1, 4, 9]
p lights(3) == [1]
p lights(4) == [1, 4]
p lights(1000) == [1, 4, 9, 16, 25, 36, 49, 64, 81, 100, 121, 144, 169, 196, 225, 256, 289, 324, 361, 400, 441, 484, 529, 576, 625, 676, 729, 784, 841, 900, 961]
