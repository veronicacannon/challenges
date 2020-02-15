# frozen_string_literal: true

require 'minitest/autorun'
require 'minitest/pride'

require_relative 'make_title'

# test case
class MakeTitleTest < Minitest::Test
  def test_short_string
    assert_equal('A Title', make_title('a title'))
  end

  def test_long_string
    assert_equal('His Heart Is Consumed By Vengence',
                 make_title('His heart is consumed by vengence'))
  end
end
