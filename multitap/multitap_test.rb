require 'minitest/autorun'
require 'minitest/pride'

require_relative 'multitap.rb'

# main test class
class MultitapTest < Minitest::Test
  def test_simple_phrase
    assert_equal(presses('LOL'), 9)
  end

  def test_phrase_with_spaces
    assert_equal(presses('HOW R U'), 13)
  end
end
