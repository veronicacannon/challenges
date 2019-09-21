require 'minitest/autorun'
require 'minitest/pride'

require_relative 'square_sum'

# main test class
class SquareSumTest < Minitest::Test
  def test_simple_squares
    assert_equal(9, square_sum([1, 2, 2]))
  end
end
