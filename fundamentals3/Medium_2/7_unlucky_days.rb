def friday_13th(year)
  fridaythirtinths = 0
  1.upto(12) do |month|
    fridaythirtinths += 1 if Time.new(year, month, 13).friday?
  end
  fridaythirtinths
end

p friday_13th(2015) == 3
p friday_13th(1986) == 1
p friday_13th(2019) == 2
