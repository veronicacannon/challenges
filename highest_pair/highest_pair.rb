# return highest pair, three of a kind doesn't score

def highest_pair(cards)
  deck = {
    'A' => 0, 'K' => 0, 'Q' => 0, 'J' => 0, '10' => 0, '9' => 0,
    '8' => 0, '7' => 0, '6' => 0, '5' => 0, '4' => 0, '3' => 0, '2' => 0
  }
  cards.each { |card| deck[card] = deck[card] + 1 }
  pairs = deck.find { |_k, v| v >= 2 }
  return false if pairs.nil?
  [true, pairs[0]]
end
