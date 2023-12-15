name = 'Bob'
save_name = name
name.upcase!
puts name, save_name

# this code will print out:
# BOB
# BOB
# because both name and save_name are pointing to the same memory slot
# that stores 'Bob'. when we use #upcase! method, this method mutates the 
# caller, not reasignes the variable. Therefore, we still have both 
# name and save_name pointing to the same memory slot, but now
# this slot contains different information, which is "BOB"