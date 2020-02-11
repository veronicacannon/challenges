# frozen_string_literal: true

require 'minitest/autorun'
require 'minitest/pride'

require_relative 'not_like_others'

# test class
class NotLikeOthersTest < Minitest::Test
  def test_first_is_unique
    assert_equal(1, unique([1, 0, 0, 0, 0]))
  end

  def test_middle_is_unique
    assert_equal(0.77, unique([0, 0, 0, 0.77, 0, 0]))
  end

  def test_negative_is_unique
    assert_equal(-100, unique([100, 100, 100, -100, 100]))
  end
end
