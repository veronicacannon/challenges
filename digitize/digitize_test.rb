require 'minitest/autorun'
require 'minitest/pride'

require_relative 'digitize'

# main test class
class DigitizeTest < Minitest::Test
  def test_single_digit
    assert_equal(digitize(1), [1])
  end

  def test_short_digit
    assert_equal(digitize(123), [1, 2, 3])
  end

  def test_big_digit
    assert_equal(digitize(15_098), [1, 5, 0, 9, 8])
  end
end
