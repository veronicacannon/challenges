require 'minitest/autorun'
require 'minitest/pride'

require_relative 'transform_upvotes'

# main test class
class TransformUpvotesTest < Minitest::Test
  def test_one_value_without_k
    assert_equal(transform_upvotes('32'), [32])
  end

  def test_only_values_with_k
    assert_equal(transform_upvotes('6.8k 13.5k'), [6800, 13500])
  end

  def test_mix
    assert_equal(transform_upvotes('5.5k 8.9k 32'), [5500, 8900, 32])
  end

  def test_round_down
    assert_equal(transform_upvotes('20.3k 3.8k 7.7k 992'), [20300, 3800, 7700, 992])
  end
end