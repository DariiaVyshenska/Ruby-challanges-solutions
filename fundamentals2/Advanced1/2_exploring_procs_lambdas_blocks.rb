# # Group 1
# my_proc = proc { |thing| puts "This is a #{thing}." }
# puts my_proc
# puts my_proc.class
# my_proc.call
# my_proc.call('cat')

# Observations:
# - proc can be bond to variable
# - procs can be created via Proc::new or Kernel#proc methods
# - proc can be passed to other methods as an argument via providing the variable name to which this proc is bond
# - procs belong to a class Proc
# - to call a proc we can use method #call on it and provide any nessessary arguments to it.
# - If block expects an argument but is not provided one, the variable that holds the argument will then reference `nil`. And when referenced it will not lead to raising an exception. Procs have lenient arity.
#
# # Group 2
# my_lambda = lambda { |thing| puts "This is a #{thing}." }
# my_second_lambda = -> (thing) { puts "This is a #{thing}." }
# puts my_lambda
# puts my_second_lambda
# puts my_lambda.class
# my_lambda.call('dog')
# my_lambda.call
# my_third_lambda = Lambda.new { |thing| puts "This is a #{thing}." }

# Observations:
# - there is no class Lambda.
# - all lambdas belong to class Proc
# - we can create a lambda via Kernel#lambda method
# - Kernel#lambda is 'Equivalent to Proc.new, except the resulting Proc objects check the number of parameters passed when called.'
# - lambda can be bond to a variable
# - lambda can also be created through the following syntax:
# var_name = ->(*args) { block }
# - when lambda is called with correct number of arguments it executes the block,
# but when called with less/more arguments than defined it will raise ArgumentError
# - lambdas have strict arity

# # Group 3
# def block_method_1(animal)
#   yield
# end
#
# block_method_1('seal') { |seal| puts "This is a #{seal}."}
# block_method_1('seal')
#
# Observations:
# - blocks can be passed to any method
# - to use the block withing the method we use `yield` to call the block
# - if we don't provide any arguments to `yield` then the block will be called with no arguments. if any parameters for the block were defined, they will be referencing `nil` in this situation (lenient arity)
# - to pass an argument to a block we need to pass it to `yield` as argument
# - if `yield` is used within the method (without any guard clause) and the method is called without a block - a LocalJumpError will be raised

# # Group 4
# def block_method_2(animal)
#   yield(animal)
# end
#
# block_method_2('turtle') { |turtle| puts "This is a #{turtle}."}
# block_method_2('turtle') do |turtle, seal|
#   puts "This is a #{turtle} and a #{seal}."
# end
# animal = 'hello'
# block_method_2('turtle') { puts "This is a #{animal}."}
#
# Observations:
# - if block expects arguments but does not receive them - these variables will be referencing `nil`. Same will happen if we provide an additional unexpected argument to a block
# - closures are formed by blocks, which means they retain the memory of their surrounding scope. If we reference in the block a variable that was initialized before we created a block, then it will be availiable to a block. But this variable was neither initialized before the block nor passed to the block as an argument, Ruby will raise a NameError (undefined local variable or method)
