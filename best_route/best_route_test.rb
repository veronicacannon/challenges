require 'minitest/autorun'
require 'minitest/pride'

require_relative 'best_route'

# main test class
class ChooseBestTest < Minitest::Test
  def test_simple_journey
    ts = [50, 55, 56, 57, 58]
    assert_equal(163, choose_best_sum(163, 3, ts))
  end

  def test_longer_journey
    ts = [91, 74, 73, 85, 73, 81, 87]
    assert_equal(228, choose_best_sum(230, 3, ts))
  end
end
