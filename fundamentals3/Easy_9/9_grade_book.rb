def get_grade(grade1, grade2, grade3)
  mean = [grade1, grade2, grade3].inject(&:+) / 3
  case mean
  when 90..100 then 'A'
  when 80..90 then 'B'
  when 70..80 then 'C'
  when 60..70 then 'D'
  when 0..60 then 'F'
  end
end

p get_grade(95, 90, 93) == "A"
p get_grade(50, 50, 95) == "D"
p get_grade(89.9999, 89.9999, 89.9999) == "B"
p get_grade(90, 90, 90) == "A"
