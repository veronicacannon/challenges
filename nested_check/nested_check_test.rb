require 'minitest/autorun'
require 'minitest/pride'

require_relative 'nested_check'

# main test class
class NestedCheckTest < Minitest::Test
  def test_sequence
    assert_equal(can_nest([1, 2, 3, 4], [0, 6]), true)
  end

  def test_small_next
    assert_equal(can_nest([3, 1], [4, 0]), true)
  end

  def test_strict_inequality
    assert_equal(can_nest([9, 9, 8], [8, 9]), false)
  end

  def test_greater_than_range
    assert_equal(can_nest([1, 2, 3, 4], [2, 3]), false)
  end
end
