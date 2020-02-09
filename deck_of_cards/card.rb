# frozen_string_literal: true

# main Card class
class Card
  attr_accessor :rank, :suit

  def initialize(rank, suit)
    self.rank = rank
    self.suit = suit
  end

  def output_card
    puts "#{rank} of #{suit}"
  end

  def self.random_card
    Card.new(rand(10), :spades)
  end
end
