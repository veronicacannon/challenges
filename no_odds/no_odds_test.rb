require 'minitest/autorun'
require 'minitest/pride'

require_relative 'no_odds'

# main test class
class NoOddsTest < Minitest::Test
  def test_simple_array
    assert_equal(no_odds([1, 2, 3, 4, 5]), [2, 4])
  end

  def test_all_odd_array
    assert_equal(no_odds([3, 5, 7, 9]), [])
  end

  def test_all_even_array
    assert_equal(no_odds([2, 4, 6, 8]), [2, 4, 6, 8])
  end

  def test_empty_arry
    assert_equal(no_odds([]), [])
  end
end
