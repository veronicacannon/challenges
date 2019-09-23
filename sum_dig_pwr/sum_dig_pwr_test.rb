require 'minitest/autorun'
require 'minitest/pride'

require_relative 'sum_dig_pwr'

# main test class
class SumDigPwrTest < Minitest::Test
  def test_single_digit_numbers
    assert_equal(sum_dig_pwr(1, 10), [1, 2, 3, 4, 5, 6, 7, 8, 9])
  end

  def test_long_range
    assert_equal(sum_dig_pwr(1, 100), [1, 2, 3, 4, 5, 6, 7, 8, 9, 89])
  end

  def test_none_collected
    assert_equal(sum_dig_pwr(90, 100), [])
  end

  def test_double_digits
    assert_equal(sum_dig_pwr(50, 150), [89, 135])
  end
end
