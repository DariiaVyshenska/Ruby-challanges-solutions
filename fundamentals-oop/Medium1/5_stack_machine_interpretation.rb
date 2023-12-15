class MinilangError < StandardError; end

class Minilang
  CMNDS = %w(push add sub mult div mod pop print)

  def initialize(cmnds)
    fill_register(0)
    @stack = []
    @commands_arr = cmnds.downcase.split
  end

  def eval
  begin
    commands_arr.each do |cmnd|
      check_command(cmnd)
      run_command(cmnd)
    end
  rescue MinilangError => e
    puts e.message
  end
  end

  private

  attr_reader :stack, :register, :commands_arr

  def run_command(cmnd)
    if valid_integer?(cmnd)
      fill_register(cmnd.to_i)
    else
      send cmnd
    end
  end

  def push
    @stack.push(register)
  end

  def add
    @register += stack_pop
  end

  def sub
    @register -= stack_pop
  end

  def mult
    @register *= stack_pop
  end

  def div
    @register = @register / stack_pop
  end

  def mod
    @register = @register.remainder(stack_pop)
  end

  def pop
    check_stack
    @register = stack_pop
  end

  def stack_pop
    @stack.pop
  end

  def print
    puts register
  end

  def check_command(cmnd)
    raise MinilangError, "Invalid token: #{cmnd.upcase}"  unless valid_command?(cmnd)
  end

  def valid_command?(cmnd)
    CMNDS.include?(cmnd) || valid_integer?(cmnd)
  end

  def valid_integer?(num)
    !!(num.to_i.to_s == num)
  end

  def fill_register(num)
    @register = num
  end

  def check_stack
    raise MinilangError, 'Empty stack!' if stack_empty?
  end

  def stack_empty?
    stack.size == 0
  end
end

Minilang.new('PRINT').eval
# 0

Minilang.new('5 PUSH 3 MULT PRINT').eval
# 15

Minilang.new('5 PRINT PUSH 3 PRINT ADD PRINT').eval
# 5
# 3
# 8

Minilang.new('5 PUSH 10 PRINT POP PRINT').eval
# 10
# 5

Minilang.new('5 PUSH POP POP PRINT').eval
# Empty stack!

Minilang.new('3 PUSH PUSH 7 DIV MULT PRINT ').eval
# 6

Minilang.new('4 PUSH PUSH 7 MOD MULT PRINT ').eval
# 12

Minilang.new('-3 PUSH 5 XSUB PRINT').eval
# Invalid token: XSUB

Minilang.new('-3 PUSH 5 SUB PRINT').eval
# 8

Minilang.new('6 PUSH').eval
# (nothing printed; no PRINT commands)
