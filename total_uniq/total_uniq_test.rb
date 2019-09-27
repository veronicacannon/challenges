require 'minitest/autorun'
require 'minitest/pride'

require_relative 'total_uniq'

# main test class
class TotalUniqTest < Minitest::Test
  def test_two_simple_words
    assert_equal(count_unique('apple', 'play'), 5)
  end

  def test_more_words
    assert_equal(count_unique('sore', 'zebra'), 7)
  end

  def test_short_word
    assert_equal(count_unique('a', 'soup'), 5)
  end
end
