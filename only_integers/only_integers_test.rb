require 'minitest/autorun'
require 'minitest/pride'

require_relative 'only_integers'

class OnlyIntegersTest < Minitest::Test
  def test_all_integers
    assert_equal([1, 2, 3], return_only_integer([1, 2, 3]))
  end

  def test_mix_of_elements
    assert_equal([1, 2, 3], return_only_integer([1, 'red', 2, 'blue', 3]))
  end

  def test_no_integers
    assert_equal([], return_only_integer(%w[red green blue]))
  end

  def test_float
    assert_equal([4], return_only_integer(['donkey', 2.3, 4]))
  end

  def test_another_mix
    assert_equal([9, 2, 16], return_only_integer([9, 2, "space", "car", "lion", 16]))
  end
end
