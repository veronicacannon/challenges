require 'minitest/autorun'
require 'minitest/pride'

require_relative 'square_sum'

# main test class
class SquareSumTest < Minitest::Test
  def test_simple_squares
    assert_equal(square_sum([1, 2, 2]), 9)
  end
end
