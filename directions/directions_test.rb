require 'minitest/autorun'
require 'minitest/pride'

require_relative 'directions.rb'

# main test class
class DirectionsTest < Minitest::Test
  def test_go_west
    a = %w[NORTH SOUTH SOUTH EAST WEST NORTH WEST]
    assert_equal(reduce_directions(a), ['WEST'])
  end

  def test_all_cancel
    u = %w[NORTH WEST SOUTH EAST]
    assert_equal(reduce_directions(u), reduce_directions(u))
  end

  def test_weird
    c = %w[EAST EAST WEST NORTH WEST EAST EAST SOUTH NORTH WEST]
    assert_equal(reduce_directions(c), %w[EAST NORTH])
  end
end
