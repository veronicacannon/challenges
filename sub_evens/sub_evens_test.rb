require 'minitest/autorun'
require 'minitest/pride'

require_relative 'sub_evens'

# test class
class SubEvensTest < Minitest::Test
  def test_small_range
    assert_equal(90, sum_even_nums_in_range(10, 20))
  end

  def test_medium_range
    assert_equal(1360, sum_even_nums_in_range(63, 97))
  end

  def test_large_range
    assert_equal(5050, sum_even_nums_in_range(51, 150))
  end
end
