# frozen_string_literal: true

require 'minitest/autorun'
require 'minitest/pride'

require_relative 'longest_time'

# test case
class MakeTitleTest < Minitest::Test
  def test_hours_longest
    assert_equal(1, longest_time(1, 59, 3598))
  end

  def test_minutes_longest
    assert_equal(300, longest_time(2, 300, 1500))
  end

  def test_seconds_longest
    assert_equal(59400, longest_time(15, 955, 59400))
  end

  def test_rounding_errors
    assert_equal(154, longest_time(2, 154, 1500))
  end
end