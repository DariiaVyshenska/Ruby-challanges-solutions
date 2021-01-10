def halvsies(arr)
  arr_size = arr.size
  hlf_idx = (arr_size / 2)
  hlf_idx += 1 if arr_size.odd?
  [arr.slice(0, hlf_idx), arr.slice(hlf_idx, arr_size - hlf_idx)]
end

p halvsies([1, 2, 3, 4]) == [[1, 2], [3, 4]]
p halvsies([1, 5, 2, 4, 3]) == [[1, 5, 2], [4, 3]]
p halvsies([5]) == [[5], []]
p halvsies([]) == [[], []]
