require 'minitest/autorun'
require 'minitest/pride'

require_relative 'umbrellas'

# main test class
class TestUmbrellas < Minitest::Test
  def test_one_value_cloudy
    assert_equal(min_umbrellas(['cloudy']), 0,
                 'wrong answer for one value of cloudy')
  end

  def test_one_value_rainy
    assert_equal(min_umbrellas(['rainy']), 1,
                 'wrong answer for one value of rainy')
  end

  def test_always_rainy
    assert_equal(min_umbrellas(%w[rainy rainy rainy rainy]), 1,
                 'wrong answer for always rainy')
  end

  def test_thunderstorms
    assert_equal(min_umbrellas(%w[overcast rainy clear thunderstorms]), 2, 
                 'wrong answer for 2 dry mornings and 2 rainy afternoons.')
  end
end
