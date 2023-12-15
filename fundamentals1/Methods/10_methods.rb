def name(x)
  x.sample
end

def activity(x)
  x.sample
end

def sentence(x,y)
  "#{x} went #{y} today!"
end



names = ['Dave', 'Sally', 'George', 'Jessica']
activities = ['walking', 'running', 'cycling']

puts sentence(name(names), activity(activities))