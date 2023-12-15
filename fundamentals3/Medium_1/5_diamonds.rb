def get_centered_stars(n, hight)
  # ('*' * n).center(hight)
  return '*'.center(hight) if n == 1
  
  row = '*' + (' ' * (n - 2)) + '*'
  row.center(hight)
end

def group_of_stars(count_arr, hight)
  count_arr.each_with_object([]) do |el, obj|
    obj << get_centered_stars(el, hight) if el.odd?
  end
end

def get_both_dimond_sides(hight)
  all_stars = []
  all_stars = group_of_stars((1..hight).to_a, hight)
  all_stars << group_of_stars((1...hight).to_a.reverse, hight)
end

def diamonds(hight)
  all_stars = get_both_dimond_sides(hight)
  all_stars.each { |i| puts i}
end

diamonds(1)
puts
diamonds(3)
puts
diamonds(9)
