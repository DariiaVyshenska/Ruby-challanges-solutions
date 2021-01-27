def get_new_row(start_idx, mx_nrow, flat_arr)
  new_el = []
  loop do
    break if start_idx > flat_arr.size - 1

    new_el << flat_arr[start_idx]
    start_idx += mx_nrow
  end
  new_el
end

def transpose_mtx(arr)
  m = arr[0].size
  new_arr = []
  flat_arr = arr.flatten

  0.upto(m - 1) do |i|
    new_arr << get_new_row(i, m, flat_arr)
  end
  new_arr # for transpose_mtx! here should be arr.replace(new_arr)
end

matrix = [
  [1, 5, 8],
  [4, 7, 2],
  [3, 9, 6]
]

new_matrix = transpose_mtx(matrix)

p new_matrix == [[1, 4, 3], [5, 7, 9], [8, 2, 6]]
p matrix == [[1, 5, 8], [4, 7, 2], [3, 9, 6]]

# need to make sure this will work. smth to do with m and n!!!
matrix2 = [
  [1, 4, 7, 10, 'a'],
  [2, 5, 8, 11, 'b'],
  [3, 6, 9, 12, 'c']
]
p transpose_mtx(matrix2)

matrix2 = [
  [1, 2],
  [3, 4],
  [5, 6]
]
p transpose_mtx(matrix2)
