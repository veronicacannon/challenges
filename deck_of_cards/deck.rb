# frozen_string_literal: true

require './card.rb'
SUITS = %i[hearts spades diamonds clubs].freeze
RANKS = %w[A 2 3 4 5 6 7 8 9 J 10 Q K].freeze

# main Deck class
class Deck
  def initialize
    @deck = standard__52_card_deck
  end

  def all_cards
    @deck
  end

  def standard__52_card_deck
    cards = []
    SUITS.each do |suit|
      RANKS.each do |rank|
        cards << Card.new(rank, suit)
      end
    end
    cards
  end

  def deal
    @deck.shift
  end
end
