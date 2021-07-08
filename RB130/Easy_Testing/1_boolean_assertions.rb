require 'minitest/autorun'
require "minitest/reporters"

Minitest::Reporters.use!


require_relative 'todolist'

class BooleanTest < MiniTest::Test
  def test_odd
    value = ...

    assert_equal(true, value.odd?)
  end
end
