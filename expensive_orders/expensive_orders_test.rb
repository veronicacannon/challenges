require 'minitest/autorun'
require 'minitest/pride'

require_relative 'expensive_orders'

# main test class
class TestExpensiveOrders < Minitest::Test
  def test_mixed_orders
    orders = { 'a' => 3000, 'b' => 200, 'c' => 1050 }
    assert_equal({ 'a' => 3000, 'c' => 1050 }, expensive_orders(orders, 1000))
  end

  def test_all_expensive
    orders = { 'a' => 3000, 'b' => 4000, 'c' => 5000 }
    assert_equal({ 'a' => 3000, 'b' => 4000, 'c' => 5000 },
                 expensive_orders(orders, 1000))
  end

  def test_all_cheap
    orders = { 'a' => 3, 'b' => 4, 'c' => 5 }
    assert_equal({},
                 expensive_orders(orders, 5))
  end

  def test_lunch
    orders = { 'Deluxe Burger' => 35, 'Icecream Shake' => 4, 'Fries' => 5 }
    assert_equal({}, expensive_orders(orders, 40))
  end
end
