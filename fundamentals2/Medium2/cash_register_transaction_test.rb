# require 'simplecov'
# SimpleCov.start

require 'stringio'
require 'minitest/autorun'
require 'minitest/reporters'
Minitest::Reporters.use!

require_relative 'cash_register'
require_relative 'transaction'

class CashRegisterTest < MiniTest::Test
  def setup
    @my_register = CashRegister.new(100)
    @my_transaction = Transaction.new(12)
    @my_transaction.amount_paid = 20
  end

  def test_accept_money
    @my_register.accept_money(@my_transaction)
    assert_equal(120, @my_register.total_money)
  end

  def test_change
    assert_equal(8, @my_register.change(@my_transaction))
  end

  def test_give_receipt
    assert_output("You've paid $12.\n") do
      @my_register.give_receipt(@my_transaction )
    end
  end

end

class TransactionTest < MiniTest::Test
  def setup
    @my_transaction = Transaction.new(12)
  end

  def test_prompt_for_payment
    input = StringIO.new("12\n")
    output = StringIO.new
    @my_transaction.prompt_for_payment(input: input, output: output)
    assert_equal(12, @my_transaction.amount_paid)
  end
end
