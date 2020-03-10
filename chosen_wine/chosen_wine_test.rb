require 'minitest/autorun'
require 'minitest/pride'

require_relative 'chosen_wine'

# test class
class ChosenWineTest < Minitest::Test
  def test_no_wine
    assert_nil chosen_wine([])
  end

  def test_one_wine
    assert_equal('Wine A',
                 chosen_wine([{ 'name' => 'Wine A', 'price' => 8.99 }]))
  end

  def test_list_of_wines
    assert_equal('Wine 9', chosen_wine([
      { "name": "Wine A", "price": 8.99 },
      { "name": "Wine 32", "price": 13.99 },
      { "name": "Wine 9", "price": 10.99 }
    ]))
  end
end
