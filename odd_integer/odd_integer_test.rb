require 'minitest/autorun'
require 'minitest/pride'

require_relative 'odd_integer'

# test class
class OddIntegerTest < Minitest::Test
  def test_small_array
    assert_equal(2, find_odd([1, 2, 1]))
  end

  def test_big_array
    assert_equal(5, find_odd([20, 1, 1, 2, 2, 3, 3, 5, 5, 4, 20, 4, 5]))
  end

  def test_one_element_array
    assert_equal(10, find_odd([10]))
  end
end
