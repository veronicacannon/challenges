# frozen_string_literal: true

require 'minitest/autorun'
require 'minitest/pride'

require_relative 'card'
require_relative 'deck'

# main test class
class DeckOfCardsTest < Minitest::Test
  def test_creating_card
    card1 = Card.new(2, :diamonds)
    assert_output(/2 of diamonds/) { card1.output_card }
  end

  def test_full_deck
    assert_equal(52, Deck.new.all_cards.count)
  end

  def test_off_the_top
    assert_instance_of(Card, Deck.new.deal)
  end

  def test_shuffle
    deck = Deck.new
    refute_equal(deck.deal, deck.deal)
  end
end
