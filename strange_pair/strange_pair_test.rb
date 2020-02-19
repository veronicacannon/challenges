require 'minitest/autorun'
require 'minitest/pride'

require_relative 'strange_pair'

# test class
class StrangePairTest < Minitest::Test
  def test_short_words
    assert_equal(true, strange_pair?('ratio', 'orator'))
  end

  def test_not_pair
    assert_equal(false, strange_pair?('hello', 'goodbye'))
  end

  def test_half_equal
    assert_equal(false, strange_pair?('red', 'pear'))
  end
end
