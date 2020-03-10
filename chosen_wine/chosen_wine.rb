# given an array of wines and prices
# chose the second-cheapest

def chosen_wine(wines)
  return nil if wines.empty?
  return wines.first['name'] if wines.count == 1
  prices = wines.map { |wine| wine[:price] }.sort
  second_cheapest =  prices[-2] || prices.last
  chosen = wines.detect { |wine| wine[:price] == second_cheapest }
  chosen[:name]
end
