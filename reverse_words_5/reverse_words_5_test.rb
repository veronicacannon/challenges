# frozen_string_literal: true

require 'minitest/autorun'
require 'minitest/pride'

require_relative 'reverse_words_5'

# test class
class ReverseWords5Test < Minitest::Test
  def test_all_words_less_than_5_long
    assert_equal('The dog is big.', reverse('The dog is big.'))
  end

  def test_all_words_more_than_5_long
    assert_equal('esreveR', reverse('Reverse'))
  end

  def test_typical_sentence
    assert_equal('This is a lacipyt .ecnetnes',
                 reverse('This is a typical sentence.'))
  end

  def test_hypenated_words
    assert_equal('ruoF-ytxiS semoc gniksa for .daerb',
                 reverse('Sixty-Four comes asking for bread.'))
  end
end
