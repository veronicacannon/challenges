# frozen_string_literal: true

require 'minitest/autorun'
require 'minitest/pride'

require_relative 'sub_the'

# test class
class SubTheTest < Minitest::Test
  def test_without_vowels
    assert_equal('a boy ran at a wall',
                 replace_the('the boy ran at the wall'))
  end

  def test_sub_with_vowels
    assert_equal('a dog and an envelope',
                 replace_the('the dog and the envelope'))
  end
end
