require 'minitest/autorun'
require 'minitest/pride'

require_relative 'char_count'

# test class
class CharCountTest < Minitest::Test
  def test_lots_of_chars
    assert_equal(6, char_count('b', 'baby blue bubble'))
  end

  def test_no_char
    assert_equal(0, char_count('z', 'music is marvelous'))
  end

  def test_stutter
    assert_equal(25, char_count('s', 'sssssssssssssssssssssssss'))
  end

  def test_numbers_in_phrase
    assert_equal(2, char_count('7', '10795426697'))
  end
end
