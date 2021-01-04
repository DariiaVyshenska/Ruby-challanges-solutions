# the code will print:
# Moe
# Larry
# CURLY
# SHEMP
# Harpo
# CHICO
# Groucho
# Zeppo
# when we are looping through elements of array1 and putting them into 
# array2 we are creating references (we basically do reassignment, we could
# use #each_with_index and #[]= as well). Since for each element for
# both arrays the reference points to the same memory slot AND we are using
# #upcase! method that mutates the caller, we have array1 == array2
