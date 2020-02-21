require 'minitest/autorun'
require 'minitest/pride'

require_relative 'triangle'

# test class
class TriangleTest < Minitest::Test
  def test_triangle_1
    assert_equal(true, triangle?(3, 4, 5))
  end

  def test_triangle_2
    assert_equal(false, triangle?(2, 5, 7))
  end

  def test_triangle_3
    assert_equal(true, triangle?(3, 3, 3))
  end

  def test_triangle_4
    assert_equal(false, triangle?(2, 5, 9))
  end

  def test_triangle_5
    assert_equal(true, triangle?(11, 12, 20))
  end
end
