def color_locate(colors, color)
  colors.split(' ').include?(color)
end

colors = 'blue pink yellow orange'
puts color_locate(colors, 'yellow')
puts color_locate(colors, 'purple')