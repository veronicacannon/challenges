# frozen_string_literal: true

require 'minitest/autorun'
require 'minitest/pride'

require_relative 'capitalize_names'

# test class
class CapitalizeNamesTest < Minitest::Test
  def test_all_lowercase
    assert_equal(['Sue-ting', 'Javier', 'Kobe'],
                 cap_me(['sue-ting', 'javier', 'kobe']))
  end

  def test_mixed_case
    assert_equal(%w[Samuel Mabelle Letitia Meridith],
                 cap_me(%w[samuel MABELLE letitia meridith]))
  end

  def test_capitalized_case
    assert_equal(%w[Slyvia Kristal Sharilyn Calista],
                 cap_me(%w[Slyvia Kristal Sharilyn Calista]))
  end
end
