require 'minitest/autorun'
require 'minitest/pride'

require_relative 'reverse_words'

# main test class
class ReverseWordsTest < Minitest::Test
  def test_simple_greeting
    assert_equal(solution('Hello, world!'), 'world! Hello,')
  end
end
