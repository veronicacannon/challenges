require 'minitest/autorun'
require 'minitest/pride'

require_relative 'planet_name'

# main test class
class PlanetNameTest < Minitest::Test
  def test_planet_5
    assert_equal(get_planet_name(5), 'Jupiter')
  end

  def test_planet_3
    assert_equal(get_planet_name(3), 'Earth')
  end

  def test_planet_4
    assert_equal(get_planet_name(4), 'Mars')
  end

  def test_planet_8
    assert_equal(get_planet_name(8), 'Neptune')
  end

  def test_planet_1
    assert_equal(get_planet_name(1), 'Mercury')
  end
end
