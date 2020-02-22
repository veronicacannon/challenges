require 'minitest/autorun'
require 'minitest/pride'

require_relative 'highest_pair'

# test class
class HighestPairTest < Minitest::Test
  def test_one_pair
    assert_equal([true, '2'], highest_pair(%w[2 2 3 4 5]))
  end

  def test_ace_high_pair
    assert_equal([true, 'A'], highest_pair(%w[2 3 4 A A]))
  end

  def test_no_pair
    assert_equal(false, highest_pair(%w[A 2 3 4 5]))
  end
end
