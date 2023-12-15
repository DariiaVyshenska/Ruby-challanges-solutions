def round_money(amount)
  # amount.round(2)
  sprintf("%.2f", amount)
end

print 'What is the bill? '
bill = gets.to_f
print 'What is the tip percentage? '
tip_perc = gets.to_f

tip_amount = (tip_perc * bill) / 100
total_amount = bill + tip_amount

puts "The tip is $#{round_money(tip_amount)}"
puts "The total is $#{round_money(total_amount)}"