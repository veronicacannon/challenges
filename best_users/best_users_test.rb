require 'minitest/autorun'
require 'minitest/pride'

require_relative 'best_users'

# main test class
class BestUsers < Minitest::Test
  def test_basic_array_1
    a1 = %w[A042 B004 A025 A042 C025]
    a2 = %w[B009 B040 B004 A042 A025 A042]
    a3 = %w[A042 A025 B004]
    assert_equal(id_best_users(a1, a2, a3), [[5, ['A042']], [3, %w[A025 B004]]])
  end

  def test_no_every_month_users
    a1 = %w[A043 B004 A025 A042 C025]
    a2 = %w[B009 B040 B003 A042 A027 A044]
    a3 = %w[A041 A026 B005]
    assert_equal(id_best_users(a1, a2, a3), [])
  end

  def test_basic_array_2
    a1 = %w[A042 B004 A025 A042 C025]
    a2 = %w[B009 B040 B004 A042 A025 A042]
    a3 = %w[A042 B004 A025 A042 C025 B009 B040 B004 A042 A025 A042]
    a4 = %w[A042 A025 B004]
    assert_equal(id_best_users(a1, a2, a3, a4),
                 [[9, ['A042']], [5, %w[A025 B004]]])
  end
end
