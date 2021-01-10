def triangle(num)
  count = num
  loop do
    break if count < 1
    puts ('*' * count).rjust(num, ' ')
    count -= 1
  end
end

triangle(5)
triangle(9)
