require 'minitest/autorun'
require 'minitest/pride'

require_relative 'additive_inverse'

# test class
class AdditiveInverseTest < Minitest::Test
  def test_simple_array
    assert_equal([1, 2, 3], additive_inverse([-1, -2, -3]))
  end

  def test_mixed_array
    assert_equal([100, -22, 4], additive_inverse([-100, 22, -4]))
  end

  def test_array_with_zero
    assert_equal([1, 0, -1], additive_inverse([-1, 0, 1]))
  end
end
