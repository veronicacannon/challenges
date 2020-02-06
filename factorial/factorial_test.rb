require 'minitest/autorun'
require 'minitest/pride'

require_relative 'factorial'

class FactorialTest < Minitest::Test
  def test_simple_factorial
    assert_equal(6, factorial(3))
  end

  def test_higher_factorial
    assert_equal(120, factorial(5))
  end

  def test_even_higher_factorial
    assert_equal(479001600, factorial(12))
  end
end
